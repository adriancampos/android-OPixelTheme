@echo off
echo Please plug in device and enable adb
adb wait-for-device

echo Installing Pixel Vendor Theme
adb install assets\PixelThemeOverlay.apk
echo Enabling Pixel Vendor Theme
adb shell cmd overlay enable com.google.android.theme.pixel

echo Installing Navbar Theme
adb install NavbarPixelTheme\app\app-release.apk
echo Enabling Navbar Theme
adb shell cmd overlay enable com.aecampos.android.theme.navbar.pixel

echo.
echo Done! You may need to reboot your device.
echo Press any key to exit...
pause
