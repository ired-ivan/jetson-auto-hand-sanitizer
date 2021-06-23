#!/bin/bash
sudo pip3 install adafruit-circuitpython-servokit
sudo usermod -aG i2c jetbot 
sudo groupadd -f -r gpio
sudo usermod -a -G gpio jetbot
sudo udevadm control --reload-rules && sudo udevadm trigger