# unifi-fallback-update

This is a script I wrote to help me adjust the fallback IP of my Unifi Devices, after they have been updated.  Helpfully, Unifi erases any changes to udhcp when they perform an update, so if you wish to change the fallback IP, then you have to do it all over again.  

Edit the script IPs to match your devices.  It assumes you are running it with a valid SSH key loaded that will work on all of the devices (you can set that up in Unifi Settings --> Advanced). 
