@echo off
title updateblog
echo ��ȷ�ϲ����ļ��Ƿ��Ѿ����ɲ�ȷ�������ļ�������վ�ļ�����ͬһĿ¼�¡�
pause
rd blog /s /q
move ..\jwjblog\public .\
ren public blog
update.bat
pause