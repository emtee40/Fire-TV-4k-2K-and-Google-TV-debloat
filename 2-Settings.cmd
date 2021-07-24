@echo off
color 0a

cls
echo.
echo TV-Sticks Debloat
echo.

:start
cls
ECHO.
ECHO Select TV Stick Version
ECHO.
ECHO 1 - Fire TV 
ECHO 2 - Google TV 192.168.178.10
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

:googltv
echo.
cls
echo.
echo Google TV Debloat 192.168.178.10
echo.
echo Press any Key to Debloat Google TV
pause>nul
adb connect 192.168.178.10
adb push Wallpaper.jpg /sdcard/Wallpaper.jpg
adb install -r LeanbackOnFire_v1.48-release.apk

adb shell "pm disable-user --user 0 com.google.android.apps.tv.launcherx"
wait.exe 5
adb shell "pm disable-user --user 0 com.google.android.tungsten.setupwraith"
adb shell reboot
goto EOF

:firetv
echo.
cls
echo.
echo Fire TV Debloat
echo.
echo Press any Key to Debloat Fire TV
pause>nul
adb shell "rm /sdcard/*" >NUL
adb shell "rm -r /sdcard/Alarms/" >NUL
adb shell "rm -r /sdcard/DCIM/" >NUL
adb shell "rm -r /sdcard/Download/" >NUL
adb shell "rm -r /sdcard/Movies/" >NUL
adb shell "rm -r /sdcard/Music/" >NUL
adb shell "rm -r /sdcard/Notifications/" >NUL
adb shell "rm -r /sdcard/Pictures/" >NUL
adb shell "rm -r /sdcard/Podcasts/" >NUL
adb shell "rm -r /sdcard/Ringtones/" >NUL
adb shell "rm -r /sdcard/backups/" >NUL

echo.
echo Installing Apps
adb push Wallpaper.jpg /sdcard/Wallpaper.jpg
adb install -r com.markus.firetools.apk
adb install -r LeanbackOnFire_v1.48-release.apk
echo.
echo Disable Bloatware
echo.
wait.exe 3
adb shell "su -c pm disable-user --user 0 com.amazon.tv.launcher"
wait.exe 5
adb shell "su -c pm disable-user --user 0 com.amazon.firehomestarter"
adb shell "su -c pm clear com.amazon.device.software.ota"
adb shell "su -c pm disable-user --user 0 com.amazon.tahoe"
adb shell "su -c pm disable-user --user 0 com.amazon.bueller.photos"
adb shell "su -c pm disable-user --user 0 com.amazon.whisperjoin.middleware.np"
adb shell "su -c pm disable-user --user 0 com.amazon.imdb.tv.android.app"
adb shell "su -c pm disable-user --user 0 com.amazon.hedwig"
adb shell "su -c pm disable-user --user 0 com.amazon.whisperplay.service.install"
adb shell "su -c pm disable-user --user 0 com.amazon.whisperplay.contracts"
adb shell "su -c pm disable-user --user 0 com.amazon.bueller.music"
adb shell "su -c pm disable-user --user 0 com.amazon.ags.app"
adb shell "su -c pm disable-user --user 0 com.amazon.ssmsys"
adb shell "su -c pm disable-user --user 0 com.amazon.ssm"
adb shell "su -c pm disable-user --user 0 com.amazon.ftv.screensaver"
adb shell "su -c pm disable-user --user 0 com.amazon.alexashopping"
adb shell "su -c pm disable-user --user 0 com.amazon.ods.kindleconnect"
adb shell "su -c pm disable-user --user 0 com.amazon.firebat"
adb shell "su -c pm disable-user --user 0 com.android.documentsui"
adb shell "su -c pm disable-user --user 0 com.android.providers.downloads.ui"
adb shell "su -c pm disable-user --user 0 com.amazon.avod"
adb shell "su -c pm disable-user --user 0 com.android.traceur"
adb shell "su -c pm disable-user --user 0 com.amazon.ftv.profilepicker"
adb shell "su -c pm disable-user --user 0 com.amazon.shoptv.firetv.client"
adb shell "su -c pm disable-user --user 0 com.amazon.device.software.ota"
adb shell "su -c pm disable-user --user 0 com.amazon.device.software.ota.override"
adb shell "su -c pm disable-user --user 0 com.amazon.tv.forcedotaupdater.v2"
adb shell "su -c pm disable com.amazon.ftv.profilepicker"
adb shell "su -c pm disable com.amazon.shoptv.firetv.client"
adb shell "su -c pm disable com.amazon.device.software.ota"
adb shell "su -c pm disable com.amazon.device.software.ota.override"
adb shell "su -c pm disable com.amazon.tv.forcedotaupdater.v2"
wait.exe 5
echo done
adb shell reboot
goto EOF


:EOF