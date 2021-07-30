@echo off
color 0a


Echo.
Echo FirmwareUpdate for Fire TV Stick 4k
Echo.

set Firmware2k="ftvs2k-5.2.8.2.zip"
set Firmware4k="ftvs4k-6.2.8.1r2.zip"

echo.

:start
cls
ECHO.
ECHO Select FireTV Stick Version to Flash
ECHO.
ECHO 1 - Fire TV 2K Firmware %Firmware2k%
ECHO 2 - Fire TV 4K Firmware %Firmware4k%
ECHO 3 - Reboot Recovery
ECHO 4 - EXIT
ECHO.
set choice=
set /p choice=Type 1, 2, or 3 then press ENTER:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 2K
if '%choice%'=='2' goto 4K
if '%choice%'=='3' goto TWRP
if '%choice%'=='4' goto EOF
ECHO "%choice%" is not valid, try again
ECHO.
goto start


:2K
echo.
cls
set Firmware="%Firmware2k%"
echo FireTV Stick 2
echo.
echo Firmware File : %Firmware%
echo.
echo Press any Key to Flash Firmware
pause>nul
goto flash

:4K
echo.
cls
set Firmware="%Firmware4k%"
echo FireTV Stick 4K
echo.
echo Firmware File : %Firmware%
echo.
echo Press any Key to Flash Firmware
pause>nul
goto flash

:TWRP
echo.
cls
adb shell reboot recovery
echo Reboot TWRP
echo. 
echo Press any Key to reboot to TWRP
pause>nul
goto start

:flash

echo Cleanup Data, Cache, Dalvik,System.
adb shell rm -rf /sdcard/*
wait 3
adb shell ls /sdcard/
wait 3
adb shell twrp wipe cache
wait 3
adb shell twrp wipe data
wait 3
adb shell twrp wipe dalvik
wait 3
adb shell twrp wipe /system
wait 3

cls
echo.
echo Copy Firmware and Install
adb push Magisk.zip /sdcard/Magisk.zip
wait 3
echo.
adb push %Firmware% /sdcard/firmware.zip
wait 3
echo.
adb shell ls /sdcard/

adb shell twrp install /sdcard/firmware.zip

adb shell twrp install /sdcard/Magisk.zip

adb shell reboot

:EOF



