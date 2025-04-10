# Raspberry Pi OS Lite to desktop

Raspbian OS the one that has the default PIXEL Desktop has been the Official OS for the Raspberry Pi.

If I am understanding it correctly, it is now called Raspberry Pi OS. I am not sure if this means anything,

other than a name change. Raspberry Pi OS is steel a Debian port. Debian is what I like on my Linux

Microcontrollers. I have put several Linux OS on all for versions of the Raspberry Pi. I normally just use

the Raspbian OS with the default Desktop. Because I like plain old Debian I wonder if you could put the

default OS and add normal debian desktop to it. So, investigated it and the answer was yes.


## Here is what I did:

- Install Raspberry Pi OS Lite on a SD memory card with Raspberry Pi Imager.
- Insert the SD into the Raspberry Pi.
- Boot up and login with default.


### Normal stuff new installs:

- sudo apt update
- sudo apt upgrade
- sudo apt dist-upgrade
- sudo reboot

### Xorg not required if using tasksel:

- sudo apt install xserver-xorg

### XFCE for my Raspberry Pi 3:

- sudo apt install xfce4 xfce4-terminal

### MATE for my Raspberry Pi 4:

- sudo apt install mate-desktop-environment-core

### Cinnamon for Raspberry Pi 5:

- sudo apt install cinnamon #minimal

### LightDM on both Raspberry Pi 3 and 4:
### also not required if using tasksel

- sudo apt install lightdm

### Or you can use tasksel for any Desktop:
### also LXDX may be use if you need a
### lighter desktop like for RPi3.

- sudo tasksel

### Restart system

- sudo reboot


## Installing Package Managers

### Synaptic:

- sudo apt install synaptic

### Pi-Apps

- wget -qO- https://raw.githubusercontent.com/Botspot/pi-apps/master/install | bash

### Gonome Software

-     sudo apt install gnome-software

## Browser

### Chromium:

- sudo apt install chromium-browser

## Installing Editors

- sudo apt install geany

- sudo apt install idle3

- sudo apt install code

- sudo apt install sublime-text

## Programming

### Check for C/C++ versions

- gcc -v

- g++ -v

### check for python 3 version

- python3

### Add Python 3 stuff:

- sudo apt install python3-pip

- sudo pip3 install matplotlib (not working?)

- sudo pip3 uninstall matplotlib



### Mathematica:
- sudo apt install wolfram-engineEditors