@echo off

title Clean SD-Card

echo Clean Sd-Card
echo.
:start
cls
ECHO.
ECHO Select TV Stick Version
ECHO.
ECHO 1 - Fire TV Clean Sd-Card
ECHO 2 - Google TV Clean Sd-Card 192.168.178.10
ECHO 3 - EXIT
ECHO.
set choice=
set /p choice=Type 1, 2, or 3 then press ENTER:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto firetv
if '%choice%'=='2' goto googltv
if '%choice%'=='3' goto EOF
ECHO "%choice%" is not valid, try again
ECHO.
goto start


:firetv
echo.
cls
echo.
echo Fire TV Clean Sd-Card
echo.
echo Press any Key to Fire TV Clean Sd-Card
pause>nul
adb shell su -c "rm /sdcard/*"
adb shell su -c "rm -r /sdcard/Alarms/"
adb shell su -c "rm -r /sdcard/DCIM/"
adb shell su -c "rm -r /sdcard/Download/"
adb shell su -c "rm -r /sdcard/Movies/"
adb shell su -c "rm -r /sdcard/Music/"
adb shell su -c "rm -r /sdcard/Notifications/"
adb shell su -c "rm -r /sdcard/Pictures/"
adb shell su -c "rm -r /sdcard/Podcasts/"
adb shell su -c "rm -r /sdcard/Ringtones/"
adb shell su -c "rm -r /sdcard/backups/"
adb shell su -c "rm -r /sdcard/opengapps/"
adb shell "rm /sdcard/*"
adb shell "rm -r /sdcard/Alarms/"
adb shell "rm -r /sdcard/DCIM/"
adb shell "rm -r /sdcard/Download/"
adb shell "rm -r /sdcard/Movies/"
adb shell "rm -r /sdcard/Music/"
adb shell "rm -r /sdcard/Notifications/"
adb shell "rm -r /sdcard/Pictures/"
adb shell "rm -r /sdcard/Podcasts/"
adb shell "rm -r /sdcard/Ringtones/"
adb shell "rm -r /sdcard/backups/"
echo.
goto EOF

:googltv
echo.
cls
echo.
echo Google TV Clean Sd-Card 192.168.178.10
echo.
echo Press any Key to Google TV Clean Sd-Card 
pause>nul
adb connect 192.168.178.10
adb shell su -c "rm /sdcard/*"
adb shell su -c "rm -r /sdcard/Alarms/"
adb shell su -c "rm -r /sdcard/DCIM/"
adb shell su -c "rm -r /sdcard/Download/"
adb shell su -c "rm -r /sdcard/Movies/"
adb shell su -c "rm -r /sdcard/Music/"
adb shell su -c "rm -r /sdcard/Notifications/"
adb shell su -c "rm -r /sdcard/Pictures/"
adb shell su -c "rm -r /sdcard/Podcasts/"
adb shell su -c "rm -r /sdcard/Ringtones/"
adb shell su -c "rm -r /sdcard/backups/"
adb shell su -c "rm -r /sdcard/opengapps/"
adb shell "rm /sdcard/*"
adb shell "rm -r /sdcard/Alarms/"
adb shell "rm -r /sdcard/DCIM/"
adb shell "rm -r /sdcard/Download/"
adb shell "rm -r /sdcard/Movies/"
adb shell "rm -r /sdcard/Music/"
adb shell "rm -r /sdcard/Notifications/"
adb shell "rm -r /sdcard/Pictures/"
adb shell "rm -r /sdcard/Podcasts/"
adb shell "rm -r /sdcard/Ringtones/"
adb shell "rm -r /sdcard/backups/"
echo.
goto EOF

:EOF
