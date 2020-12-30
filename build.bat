@echo off
rd /s /q Release
md Release

pyinstaller  -F -i photo_of_the_day.ico set_wallpaper.py
move /y dist\set_wallpaper.exe Release\set_wallpaper.exe

pyinstaller  -F -w -i photo_of_the_day.ico set_wallpaper.py
move /y dist\set_wallpaper.exe Release\set_wallpaper_noconsole.exe

echo "********************built********************"

::clean
echo "********************cleaning temp files********************"
rd /s /q build
rd /s /q __pycache__
del /q set_wallpaper.spec
rd /s /q dist

echo "********************succeed********************"

pause
