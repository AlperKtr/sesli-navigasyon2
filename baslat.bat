@echo off
setlocal
cd /d "%~dp0"

if exist "C:\Users\alper\AppData\Local\Python\bin\pythonw.exe" (
    start "" "C:\Users\alper\AppData\Local\Python\bin\pythonw.exe" "%~dp0desktop_app\launcher.py"
    exit
)

if exist "C:\Users\alper\AppData\Local\Python\bin\python.exe" (
    start "" /b "C:\Users\alper\AppData\Local\Python\bin\python.exe" "%~dp0desktop_app\launcher.py"
    exit
)

call "%~dp0web-baslat.bat"
exit
