#!/bin/bash
sudo pip3 install adafruit-circuitpython-servokit
sudo usermod -aG i2c jetbot 
sudo groupadd -f -r gpio
sudo usermod -a -G gpio jetbot
sudo cp /opt/nvidia/jetson-gpio/etc/99-gpio.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && sudo udevadm trigger
sudo cp ~/jetson-auto-hand-sanitizer/file/camera.py /usr/local/lib/python3.6/dist-packages/jetbot-0.3.0-py3.6.egg/jetbot/camera.py