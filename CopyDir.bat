@ECHO OFF
rem ����:IT��Ħ
rem ����:CopyDir.bat���������ļ���
rem CopyDir %1
rem ������%1 ����Դ�������ԡ�\����β

rem ����ʱ�䣺2018-04-02 13:20
rem ����޸�ʱ��:2018-04-02 14:39
rem �����ļ�:�༶����.txt

setlocal EnableDelayedExpansion
for /f "tokens=* delims=" %%i in (�༶����.txt) do (
set className=%%i
xcopy %1 .\!className!\ /s /e
)