#!/usr/bin/env python3


import smtplib
from datetime import datetime
import json
import os
import random
from email.mime.text import MIMEText
from email.mime.image import MIMEImage
from email.mime.multipart import MIMEMultipart

# How to print the data from the JSON file
latestIndex = -1   # get latest entry in json file


time = datetime.now()
year = time.strftime('%Y')
month = time.strftime('%m')
day = time.strftime('%d')


# Send Results via Mail
msg = MIMEMultipart()
msg['Subject'] = 'Sheep Update for {} {} {}'.format(time.strftime("%d"), time.strftime("%B"), time.strftime("%Y"))
msg['From'] = 'teamsheepftw@gmail.com'
msg['To'] = 'mmilne@mediacore.co.nz'

#Load JSON data
with open('/home/kauricone/TeamSheep/ObjectDetection/results.json') as f:
    data = json.load(f) #Loads JSON file content to variable


#-----------------------------------------------------------------
# EMAIL CONTENT BUILDING
#-----------------------------------------------------------------
res_string = ("Hi Farm_Owner, \n\n")

# If there are no images for today
if len(data["results"][latestIndex]["images"]) == 0:
    res_string += ("There are no sheep images for today...")
    res_string += ("\n\nPlease check your camera is uploading images correctly.")
    res_string += ("\nContact Team Sheep developers or Kauricone for further help.")
else:
    res_string += ("Results for {}/{}/{}:".format(day, month, year))
    res_string += ("\n -Script Runtime: " + json.dumps(data["results"][latestIndex]["time"]))
    res_string += ("\n -Images Tested: {}".format(len(data["results"][latestIndex]["images"])))
    res_string += ("\n -Sheep Count Median: " + json.dumps(data["results"][latestIndex]["sheep"][1]))
    res_string += ("\n -Sheep Count Maximum: " + json.dumps(data["results"][latestIndex]["sheep"][0]))   

    print(data["results"][latestIndex]["grass"][0] * 100)
    res_string += ("\n\n -Dry Matter Median: {:.2f}%".format(data["results"][latestIndex]["grass"][0] * 100))
    res_string += ("\n -Dry Matter Maximum: {:.2f}%".format(data["results"][latestIndex]["grass"][1] * 100))
    res_string += ("\n -Dry Matter Minimum: {:.2f}%".format(data["results"][latestIndex]["grass"][2] * 100))
    
    res_string += ("\n\nA sample of todays processed images are attached below.")

res_string += ("\n\n--TeamSheep--")




# Create text and add to message
text = MIMEText(res_string)
msg.attach(text)  



#OPEN IMAGES AND ADD TO EMAIL
path = "/home/kauricone/TeamSheep/ObjectDetection/detectron_images/{}/{}/{}/".format(year, month, day)
filelist = os.listdir(path)
imgcount = 0
cleaned_list = []

for i in filelist:
    if i.endswith(".jpg"):
        imgcount += 1
        cleaned_list.append(i)


if imgcount < 3:
    for i in filelist:
        if i.endswith(".jpg"):
            with open(path+i, 'rb') as f:
                img_data = f.read();
                image = MIMEImage(img_data, name="{}".format(i))
                msg.attach(image)
else:
    image_index = [random.randint(1, imgcount-1), random.randint(1, imgcount-1), random.randint(1, imgcount-1)]
    
    for i in image_index:
        print(cleaned_list[i])
        with open(path+cleaned_list[i], 'rb') as f:
            img_data = f.read();
            image = MIMEImage(img_data, name="{}".format(cleaned_list[i]))
            msg.attach(image)




# Login and send message
with smtplib.SMTP('smtp.gmail.com', 587) as smtp:
   smtp.ehlo()
   smtp.starttls()
   smtp.ehlo()

   smtp.login('teamsheepftw@gmail.com', 'qbmtcasawprjwbkd')

   smtp.send_message(msg)


