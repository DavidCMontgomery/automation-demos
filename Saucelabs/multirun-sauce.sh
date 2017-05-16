#!/usr/bin/env bash
ECHO Starting batch run at Saucelabs.com
cd /Users/dmontgomery/Sites/fenz/source/docs/robot-tests

ECHO Win7/Chrome39:
pybot -v REMOTE_URL:http://Heyday:f7d88f4c-b1e1-4deb-be0a-e5e47c5170c9@ondemand.saucelabs.com:80/wd/hub	-d results/Win7Chrome39 	-v DESIRED_CAPABILITIES:"name:Win7 + Chrome39, platform:Windows 7,browserName:chrome,version:39.0"  tests/sauce.robot

ECHO Win7/Chrome40:
pybot -v REMOTE_URL:http://Heyday:f7d88f4c-b1e1-4deb-be0a-e5e47c5170c9@ondemand.saucelabs.com:80/wd/hub	-d results/Win7Chrome40 	-v DESIRED_CAPABILITIES:"name:Win7 + Chrome40, platform:Windows 7,browserName:chrome,version:40.0"	tests/sauce.robot
