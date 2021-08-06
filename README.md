# Fire-TV-4k-2K-and-Google-TV-debloat
Fire TV 4k , 2K and Google TV debloat

!!! You need Root Access on FireTV !!!
!!! You need Root Access on FireTV !!!
!!! You need Root Access on FireTV !!!
!!! You need Root Access on FireTV !!!
!!! No Access to Search and Amazon Store !!!
!!! Amazon Launcher will be replaced with Leanback Launcher !!!


1, Download All.
   
1,1 For Google TV you only need to Run 2-Settings.cmd

2, Download Firmware 

   2k = https://www.mediafire.com/file/w0kxioqooow8ns2/ftvs2k-5.2.8.2.zip/file

   4k = https://www.mediafire.com/file/d8y55woimj4bqr0/ftvs4k-6.2.8.1r2.zip/file

   and Copy ftvs2k-5.2.8.2.zip and ftvs4k-6.2.8.1r2.zip to Root Folder.

3, Enable ADB Debugging in FireTV Setting.

4, Test if ADB working  ( command line > #adb shell )

5, Reboot to TWRP with connected USB Cable
   
   adb shell reboot recovery
   
   ( Not use an OTG-Cable )

6, run 1-FTV-Firmware.cmd and Select your device 
   !!! All Data will be lost !!!
   
7, Wait for Device comming Up.
   
   Complete Amazon OOBE.
    
   Enable ADB Debugging in FireTV Setting.
    
   Test if ADB working  ( command line > #adb shell )
    
   Test and Allow Root for adb shell 
   command line > #adb shell 
   command line > #adb shell su
    
   If you have Root Access on adb shell go to next Step
    
 
8, run 2-Settings.cmd
    
   Debloat Script will run and Reboot, wait
   for device to come Up.
   
9, run 3-CleanSDcard.cmd to Clean the FireTV Storage if you want.

10, Done
     
