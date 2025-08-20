@echo off
setlocal

:: Lấy đường dẫn thư mục hiện tại (nơi file .bat đang chạy)
set "CurrentDir=%~dp0"

:: Xuất thông báo
echo =======================================
echo Dang xu ly thu muc: %CurrentDir%
echo Vui long cho...
echo =======================================

:: Gọi PowerShell để unblock file
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Get-ChildItem -Path '%CurrentDir%' -Recurse | Unblock-File"

echo.
echo ✅ Hoan tat! Tat ca file trong "%CurrentDir%" da duoc xu ly.
pause
