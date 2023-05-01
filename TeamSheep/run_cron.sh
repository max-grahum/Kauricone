#!/bin/sh
echo "$PATH"
echo "--Running Daily Image Download Script--"

# Use after run command to redirect output to log file.
#     " >> path/to/log/file 2>&1 "
#  2>&1 is to also log error output


echo "--Gathering Sheep Images--"
cd /home/kauricone/TeamSheep/SheepData 
. /home/kauricone/TeamSheep/SheepData/FTP-daily.sh >> /home/kauricone/TeamSheep/logs/ftp-log.log 2>&1



echo "--Running Detection Script--"
cd /home/kauricone/TeamSheep/ObjectDetection
python3 /home/kauricone/TeamSheep/ObjectDetection/main.py >> /home/kauricone/TeamSheep/logs/detector.log 2>&1



echo "--Running Dry Matter Detection--"
cd /home/kauricone/TeamSheep/GrassDetection/code/
python3 /home/kauricone/TeamSheep/GrassDetection/code/dry_matter_detection.py >> /home/kauricone/TeamSheep/logs/dry-matter.log 2>&1



echo "--Running Email Script--"
cd /home/kauricone/TeamSheep/Notification
python3 /home/kauricone/TeamSheep/Notification/mail.py >> /home/kauricone/TeamSheep/logs/notify.log 2>&1



echo "Complete."
