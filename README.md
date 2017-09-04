# Pixel Theme for Android Oreo

A simple Pixel theme for Android Oreo devices using Oreo's OverlayManagerService.

The majority of the theme was pulled straight from the sailfish-opr6.170623.012 and marlin-opr6.170623.012 factory images.

As of now, this repository contains 3 overlay themes:
* **Framework**
  * A framework-res overlay containing the modifications found in the Pixel factory image. Install this to enable the "Pixel Blue" system wide color scheme. [framework-res source](https://github.com/android/platform_frameworks_base/tree/master/core/res)
* **NavbarPixel**
  * A SystemUI overlay containing only the ic_sysbar_* icons from the Pixel and PixelXL factory images. Install this to get Pixel style navbar icons.
* **SystemUI**
  * An empty SystemUI overlay. Use this as a template to customize SystemUI. [SystemUI source](https://github.com/android/platform_frameworks_base/tree/master/packages/SystemUI/res)
 
 
 Each theme can be customized by adding/modifying any resource in the `Theme_*/app/app/src/main/res/` folder. The `Theme_*/resources` shortcut will take you there.

To figure out the names of resources, take a look at Android's source code. Links are above. `res/drawable*/` and `res/values/` are interesting places to start.
 
To install:
* [Download](https://github.com/adriancampos/android-OPixelTheme/archive/master.zip)/clone this repo
* Extract
* Ensure you have [adb](https://www.google.com/search?q=install+adb) installed
* Run `install.bat`.

![Nexus 5X with Framework and Navbar Themes](https://i.imgur.com/YQWBu8D.png)