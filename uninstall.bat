@echo off
echo Please plug in device and enable adb
adb wait-for-device

echo Disabling Pixel Vendor Theme
adb shell cmd overlay disable com.google.android.theme.pixel
echo Unstalling Pixel Vendor Theme
adb uninstall com.google.android.theme.pixel

echo Disabling Navbar Theme
adb shell cmd overlay disable com.aecampos.android.theme.navbar.pixel
echo Uninstalling Navbar Theme
adb uninstall com.aecampos.android.theme.navbar.pixel

echo.
echo Done! You may need to reboot your device.
echo Press any key to exit...
pause
