@echo off
TITLE Install Themes

:MENU

ECHO ---------------Install---------------
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

call:installTheme Theme_NavbarPixel com.aecampos.android.theme.customdesktop.navbar.pixel

GOTO MENU

:Framework

call:installTheme Theme_Framework com.aecampos.android.theme.customdesktop.framework

GOTO MENU

:SystemUI

call:installTheme Theme_SystemUI com.aecampos.android.theme.customdesktop.systemui

GOTO MENU


:: Utility function that handles removing old theme, and building, installing and enabling new theme.
:: Param2: Path to source
:: Param2: Package name
:installTheme
echo Please plug in device and enable adb
adb wait-for-device

echo Removing old theme (if exists)
adb shell cmd overlay disable %~2
adb shell pm uninstall %~2

echo Building, installing and enabling theme
pushd %~1
gradlew.bat installDebug && adb shell cmd overlay enable %~2 & popd

echo.
echo Done! You may need to reboot your device.

goto:eof