@echo off
echo Installing dependencies...
pip install ntplib Pillow requests wmi pyinstaller
echo.
echo Building exe...
pyinstaller Guardian_v21.spec
echo.
echo Done! Check dist folder for Guardian_V21.exe
pause
