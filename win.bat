@echo off
setlocal enabledelayedexpansion

echo === Xiaomi Bloatware Remover ===
echo.

:: Prüfe, ob ADB installiert ist
where adb >nul 2>nul
if errorlevel 1 (
    echo [!] ADB ist nicht installiert oder nicht im PATH.
    pause
    exit /b
)

:: Starte ADB-Server und prüfe Gerät
adb start-server >nul
echo [i] Warte auf Gerät mit USB-Debugging ...
adb wait-for-device

echo [✓] Gerät verbunden: %date% %time%
echo.

:: Liste der zu entfernenden Pakete
set packages=^
 com.miui.analytics^
 com.miui.systemAdSolution^
 com.miui.msa.global^
 com.xiaomi.joyose^
 com.miui.cleanmaster^
 com.miui.videoplayer^
 com.miui.player^
 com.miui.weather2^
 com.miui.bugreport^
 com.mi.webkit^
 com.xiaomi.gamecenter^
 com.mi.android.globalminusscreen^
 com.xiaomi.mipicks^
 com.xiaomi.payment^
 com.duokan.phone.remotecontroller^
 com.mi.global.bbs^
 com.xiaomi.discover^
 com.miui.android.fashiongallery^
 com.miui.yellowpage^
 com.xiaomi.ugd^
 com.miui.wallpaper^
 com.mi.globalbrowser^
 com.amazon.mShop.android.shopping^
 com.amazon.mp3^
 com.amazon.appmanager^
 com.facebook.katana^
 com.facebook.services^
 com.facebook.system^
 com.igg.android.lordsmobile^
 com.zhiliaoapp.musically^
 com.alibaba.aliexpresshd^
 com