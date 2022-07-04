@echo off
title updateblog
echo 请确认博客文件是否已经生成并确保博客文件夹与网站文件夹在同一目录下。
pause
rd /s /q blog
xcopy /e /i /q ..\jwjblog\public .\blog
echo 是否继续？
pause
update.bat
pause