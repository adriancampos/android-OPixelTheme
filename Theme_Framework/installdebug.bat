adb shell cmd overlay disable com.aecampos.android.theme.framework_res_6p_diego
adb shell pm uninstall com.aecampos.android.theme.framework_res_6p_diego


gradlew.bat installDebug && adb shell cmd overlay enable com.aecampos.android.theme.framework_res_6p_diego

