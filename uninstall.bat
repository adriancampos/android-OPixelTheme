@echo off
TITLE Uninstall Themes

:MENU

ECHO --------------Uninstall--------------
ECHO 1.  Navbar
ECHO 2.  Framework
ECHO 3.  SystemUI
ECHO 99. Exit
ECHO -------------------------------------
ECHO.

SET INPUT=
SET /P INPUT=Please select a number: 

IF /I '%INPUT%'=='1' GOTO Navbar
IF /I '%INPUT%'=='2' GOTO Framework
IF /I '%INPUT%'=='3' GOTO SystemUI
IF /I '%INPUT%'=='99' exit

CLS

ECHO Invalid input. Press any key to continue...
PAUSE > NUL
GOTO MENU



:Navbar

call:uninstallTheme com.aecampos.android.theme.customdesktop.navbar.pixel

GOTO MENU

:Framework

call:uninstallTheme com.aecampos.android.theme.customdesktop.framework

GOTO MENU

:SystemUI

call:uninstallTheme com.aecampos.android.theme.customdesktop.systemui

GOTO MENU

:: Utility function that handles removing and uninstalling theme
:: Param1: Package name
:uninstallTheme
echo Please plug in device and enable adb
adb wait-for-device

echo Uninstalling theme
adb shell cmd overlay disable %~1
adb shell pm uninstall %~1

echo.
echo Done! You may need to reboot your device.

goto:eof
