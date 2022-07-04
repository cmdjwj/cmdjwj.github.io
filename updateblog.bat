@echo off
title updateblog
echo 请确认博客文件是否已经生成并确保博客文件夹与网站文件夹在同一目录下。
pause
rd blog /s /q
move ..\jwjblog\public .\
ren public blog
update.bat
pause