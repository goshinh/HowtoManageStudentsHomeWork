@ECHO OFF
rem Author:ITDAMAO
rem Feature:CreatDir.bat ��������Ŀ¼
rem Created Time��2018-04-02 13:20
rem Last Modified Time:2018-04-10 10:51


setlocal EnableDelayedExpansion
rem �����ļ�01�༶�嵥.txt
echo �����ļ�01�༶�嵥.txt
if exist .\01�༶�嵥.txt (echo ��ǰĿ¼������01�༶�嵥.txt����) else (
echo ��ǰĿ¼�²�����01�༶�嵥.txt,��������
echo # ��#��ͷ����ע����,�ű������ȡ>>01�༶�嵥.txt
echo. >>01�༶�嵥.txt
echo # 99-default��Ϊȱʡ��,�ɳ����Զ�����>>01�༶�嵥.txt
echo 99-default>>01�༶�嵥.txt
echo. >>01�༶�嵥.txt)

rem �����ļ�02��ʱ�嵥.txt
echo �����ļ�02��ʱ�嵥.txt
if exist .\02��ʱ�嵥.txt (echo ��ǰĿ¼������02��ʱ�嵥.txt����) else (
echo ��ǰĿ¼�²�����02��ʱ�嵥.txt,��������
echo # ��#��ͷ����ע����,�ű������ȡ>>02��ʱ�嵥.txt
echo. >>02��ʱ�嵥.txt
echo # default��Ϊȱʡ��,�ɳ����Զ�����>>02��ʱ�嵥.txt
echo default>>02��ʱ�嵥.txt
echo. >>02��ʱ�嵥.txt)

rem �����ļ������༶ѧ���嵥
echo �����ļ������༶ѧ���嵥
set listOfStu=03���༶ѧ���嵥
if exist .\!listOfStu! (echo ��Ŀ¼�Ѵ���) else (
mkdir .\!listOfStu!
)
for /f "eol=#" %%h in (01�༶�嵥.txt) do (
set cName=%%h
echo !cName!
if exist .\!listOfStu!\!cName!.txt (echo !listOfStu! Ŀ¼������ !cName!.txt����) else (
echo # ��#��ͷ����ע����,�ű������ȡ>>.\!listOfStu!\!cName!.txt
echo. >>.\!listOfStu!\!cName!.txt
echo # 99-ѧ�� ��Ϊȱʡ��,�ɳ����Զ�����>>.\!listOfStu!\!cName!.txt
echo 99-ѧ��>>.\!listOfStu!\!cName!.txt
echo. >>.\!listOfStu!\!cName!.txt)
)

rem �����ļ��У����༶��ҵͳ��
echo �����ļ��У�04���༶��ҵͳ��
set countOfStu=04���༶��ҵͳ��
if exist .\!countOfStu! (echo ��Ŀ¼�Ѵ���) else (
mkdir .\!countOfStu!
)

rem Ϊÿ���༶���������ռ�ѧ����ҵ��Ŀ¼
echo Ϊÿ���༶���������ռ�ѧ����ҵ��Ŀ¼
for /f "eol=#" %%i in (01�༶�嵥.txt) do (
set className=%%i
echo !className!
for /f  "eol=#" %%j in (02��ʱ�嵥.txt) do (
set lessonName=%%j
mkdir .\!className!\!lessonName!\)

)
pause
