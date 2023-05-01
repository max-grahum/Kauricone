#!/usr/bin/env python3

import tensorflow
import os
from datetime import datetime
import cv2
import numpy as np
import json

# Load trained tensorflow model
model = tensorflow.keras.models.load_model('/home/kauricone/TeamSheep/GrassDetection/code/retrained-model/')

# Specify image dimensions (from images uploaded to FTP server)
height = 2560
width = 1440

# Get date data
time = datetime.now()

year = time.strftime("%Y")
month = time.strftime("%m")
day = time.strftime("%d")

# Move to todays image folder
os.chdir("/home/kauricone/TeamSheep/SheepData/Images/{}/{}/{}/".format(year, month, day))

images = []

# Loop to crop each image down to focus on relevant part of image.
# Checks all files to make sure its a .jpg (some files in the folder arent)
for f in os.listdir("."):
    print(f)
    if f.endswith(".jpg"):
        img = cv2.imread(f)
        cropped_img = img[int(height * 0.38) : int(height - (height * 0.05)), int(width * 0.25) : int(width - (width * 0.10))]
        avg_col_row = np.average(cropped_img, axis=0)
        avg_col = np.average(avg_col_row, axis=0)
        avg_col = avg_col/(255.0)
        images.append([avg_col[0], avg_col[1], avg_col[2]])


# Send processed images to the tensorflow model.
y_pred = model.predict(images)

# Get average, max, and min values from returned list
avg_pred = np.mean(y_pred)
max = np.max(y_pred)
min = np.min(y_pred)

results = [float(avg_pred), float(max), float(min)]

print(results) # testing + confirmation output to log files

# Write grass results to results.json file
def write_json(data, filename="/home/kauricone/TeamSheep/ObjectDetection/results.json"):
    with open(filename, 'r+') as file:
        # read in json file to variable
        file_data = json.loads(file.read())

        # add new data to json file
        file_data["results"][-1]["grass"] = data

        # move write head
        file.seek(0)

        # write data to file
        json.dump(file_data, file, indent=4)

write_json(results) # Write data