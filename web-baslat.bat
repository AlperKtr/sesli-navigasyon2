@echo off
setlocal
cd /d "%~dp0"

if not exist "dist\index.html" (
    echo [!] dist\index.html bulunamadi.
    echo     Lutfen once "npm run build" komutunu calistirin.
    pause
    exit /b 1
)

set "PORT=8080"
set "PYEXE=C:\Users\alper\AppData\Local\Python\bin\python.exe"
if not exist "%PYEXE%" set "PYEXE=python"

echo ============================================================
echo   Sesli Navigasyon - Web Sunucusu
echo ============================================================
echo   Adres : http://localhost:%PORT%/
echo   Durdurmak icin bu pencereyi kapatin veya Ctrl+C basin.
echo ============================================================
echo.

start "" "http://localhost:%PORT%/"
"%PYEXE%" -m http.server %PORT% --directory "%~dp0dist"

if errorlevel 1 (
    echo.
    echo [!] Sunucu baslatilamadi. %PORT% portu kullanimda olabilir.
    pause
)
