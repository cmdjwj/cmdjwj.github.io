@echo off
title updateblog
echo ��ȷ�ϲ����ļ��Ƿ��Ѿ����ɲ�ȷ�������ļ�������վ�ļ�����ͬһĿ¼�¡�
pause
rd /s /q blog
xcopy /e /i /q ..\jwjblog\public .\blog
echo �Ƿ������
pause
update.bat
pause