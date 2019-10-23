# eXperimental Polystyrene Boats

Repository for all the code and hardware designs for the eXperimental Polystyrene Boats. 


To clone, run:

$ git clone --recursive https://github.com/abersailbot/xpb
$ cd dewi

This recursively clones the repository and its submodules.

When new commits are added to the upstream repositories, you need to update the submodules. To do this, run:

$ git submodule update --remote

This will update the submodules to the latest commit on the default branch.

To update all submodules to the latest branch run:

    $ git submodule foreach git checkout master $ git submodule foreach git pull origin master

To deploy, run:

$ cd xpb-deploy
$ ./deploy.sh


# IMPORTANT - Things you need to do manually 

'''Your boat will not work until you do these things:'''

 1. symlink /dev/arduino to your Arduino device. Each Arduino has its own unique ID and will appear in /dev/serial/by-id. Run sudo ls -s /dev/serial/by-id/usb-Arduino__www.arduino.cc__0043_85430363039351A0A032-if00 /dev/arduino (replacing usb-Arduino__www.arduino.cc__0043_85430363039351A0A032-if00 with the appropriate ID)
 2. Install the SPI to UART driver for talking to the GPS. This wasn't ready when wrote this script as we didn't have the hardware to test it with.
 3. Change the GPSD device, edit /etc/default/gpsd and change the line DEVICES="/dev/ttyAMA0" to match the GPS device.

Things you might want to do:

 1. If you want passwordless logins (it really helps when you want to login fast to stop the boat) run ssh-copy-id pi@192.168.40.1 from your own laptop.
 2. Change your WiFi access point name (SSID), edit /etc/hostapd/hostapd.conf and change the SSID line.


