@ECHO OFF
rem ����:IT��Ħ
rem ����:ͳ��ѧ������ҵ�����
rem ����˵����
rem ͳ��ѧ����ҵ %1 %2,%1,%2������ѡ����.
rem %1�����ʱ,��"Lesson1",%2����༶,��"1-65"������5����
rem ����ʱ�䣺2018-03-30 08:20
rem ����޸�ʱ��:2018-04-16 11:20
rem �����ļ�:A3���༶ѧ���嵥\1-65.txt
rem ��ʱ�ļ�:result.txt,title_row.txt,sort_result.txt,treeList.txt
rem ����ļ�:A4���༶��ҵͳ��\Lesson1_1-65_ͳ��.txt

setlocal EnableDelayedExpansion
rem �ѽ�ѧ�����
set yesnum=""
rem δ��ѧ�����
set nonum=""
rem ѧ������
set totalnum=0

rem �����ļ���
set filename=%1_%2_ͳ��
tree /f .\%2\%1 >A4���༶��ҵͳ��\treeList.txt
for /f "eol=#" %%i in (A3���༶ѧ���嵥\%2.txt) do (
set str=%%i

rem �ڸ�Ŀ¼��������Ŀ¼����������!str!��ÿ���ļ�������������ĸ�Ĵ�Сд
findstr  !str! A4���༶��ҵͳ��\treeList.txt
rem ����ֵΪ1=δ�ҵ�ʱ����ʽ�������
IF  !ERRORLEVEL! NEQ 0 (
set /a nocount+=1
set /a nonum=!nocount!
if !nonum! lss 10 (set nonum=0!nonum!)
ECHO !nonum!	δ��	%2	!str!>>noresult.txt)

rem ����ֵΪ0=�ҵ�ʱ����ʽ�������
IF  !ERRORLEVEL! EQU 0 (
set /a yescount+=1
set /a yesnum=!yescount! 
if !yesnum! lss 10 (set yesnum=0!yesnum!)
ECHO !yesnum!	�ѽ�	%2	!str!>>yesresult.txt)
)
rem �����ɵ�result.txt�ļ���������
sort  noresult.txt > sort_result.txt
echo.>>sort_result.txt
sort  yesresult.txt >> sort_result.txt

rem �ļ�ͷ������
@echo ��    ��	%2> title_row.txt
set /a totalnum=!nocount!+!yescount!
@echo ��    ��	!totalnum!��>> title_row.txt
@echo ��    ʱ	%1>> title_row.txt
@echo ����ʱ��	%Date:~0,4%-%Date:~5,2%-%Date:~8,2%>> title_row.txt
@echo.>> title_row.txt
@echo ���	״̬	�༶	����>> title_row.txt

rem �ϲ��ļ�
copy title_row.txt+sort_result.txt A4���༶��ҵͳ��\%filename%.txt
rem ɾ����ʱ�ļ�:sort_result.txt,title_row.txt
del noresult.txt
del yesresult.txt
del sort_result.txt 
del title_row.txt
del A4���༶��ҵͳ��\treeList.txt