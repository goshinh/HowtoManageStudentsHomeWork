@ECHO OFF
rem ����:IT��Ħ
rem ����:ͳ��ѧ������ҵ�����
rem ����˵����
rem ͳ��ѧ����ҵ %1 %2,%1,%2������ѡ����.
rem %1�����ʱ,��"Lesson1",%2����༶,��"C5G6"������5����
rem ����ʱ�䣺2018-03-30 08:20
rem ����޸�ʱ��:2018-04-10 16:55
rem �����ļ�:03���༶ѧ���嵥\C5G6.txt
rem ��ʱ�ļ�:result.txt,title_row.txt,sort_result.txt
rem ����ļ�:04���༶��ҵͳ��\Lesson1-C5G6.txt

setlocal EnableDelayedExpansion
rem �ѽ�ѧ�����
set yesnum=0
rem δ��ѧ�����
set nonum=0
rem �����ļ���
set filename=%1-%2-ͳ��

for /f "eol=#" %%i in (03���༶ѧ���嵥\%2.txt) do (
set a=%%i
rem �ڸ�Ŀ¼��������Ŀ¼����������!a!��ÿ���ļ�������������ĸ�Ĵ�Сд
findstr /s /i "\<!a!\>" .\%2\%1

rem ����ֵΪ1=δ�ҵ�ʱ����ʽ�������
IF  ERRORLEVEL 1 IF NOT ERRORLEVEL 2 set /a nonum+=1 & @ECHO δ��	!nonum!	%2	!a!>>result.txt
rem ����ֵΪ0=�ҵ�ʱ����ʽ�������
IF  ERRORLEVEL 0 IF NOT ERRORLEVEL 1 set /a yesnum+=1 & @ECHO �ѽ�	!yesnum!	%2	!a!>>result.txt
)
rem �����ɵ�result.txt�ļ���������
sort result.txt > sort_result.txt
rem ɾ����ʱ�ļ�:result.txt
del result.txt
rem �ļ�ͷ������
@echo ��    ��	%2> title_row.txt
@echo ����ʱ��	%Date:~0,4%-%Date:~5,2%-%Date:~8,2%>> title_row.txt
@echo.>> title_row.txt
@echo ״̬	���	�༶	����>> title_row.txt

rem �ϲ��ļ�
copy title_row.txt+sort_result.txt 04���༶��ҵͳ��\%filename%.txt
rem ɾ����ʱ�ļ�:sort_result.txt,title_row.txt
del sort_result.txt title_row.txt
