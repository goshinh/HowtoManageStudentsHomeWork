@ECHO OFF
rem Author:ITDAMAO
rem Feature:CreatDir.bat ��������Ŀ¼
rem Created Time��2018-04-02 13:20
rem Last Modified Time:2018-04-10 10:51


setlocal EnableDelayedExpansion
rem �����ļ�A1�༶�嵥.txt
echo �����ļ�A1�༶�嵥.txt
if exist .\A1�༶�嵥.txt (echo ��ǰĿ¼������A1�༶�嵥.txt����) else (
echo ��ǰĿ¼�²�����A1�༶�嵥.txt,��������
echo # ��#��ͷ����ע����,�ű������ȡ>>A1�༶�嵥.txt
echo.>>A1�༶�嵥.txt
echo # "99-ʾ���༶"��Ϊȱʡ��,�ɳ����Զ�����>>A1�༶�嵥.txt
echo 99-ʾ���༶>>A1�༶�嵥.txt
echo.>>A1�༶�嵥.txt)

rem �����ļ�A2��ʱ�嵥.txt
echo �����ļ�A2��ʱ�嵥.txt
if exist .\A2��ʱ�嵥.txt (echo ��ǰĿ¼������A2��ʱ�嵥.txt����) else (
echo ��ǰĿ¼�²�����A2��ʱ�嵥.txt,��������
echo # ��#��ͷ����ע����,�ű������ȡ>>A2��ʱ�嵥.txt
echo.>>A2��ʱ�嵥.txt
echo # "ʾ����ʱ"��Ϊȱʡ��,�ɳ����Զ�����>>A2��ʱ�嵥.txt
echo ʾ����ʱ>>A2��ʱ�嵥.txt
echo.>>A2��ʱ�嵥.txt)

rem �����ļ������༶ѧ���嵥
echo �����ļ������༶ѧ���嵥
set listOfStu=A3���༶ѧ���嵥
if exist .\!listOfStu! (echo ��Ŀ¼�Ѵ���) else (
mkdir .\!listOfStu!
)
for /f "eol=#" %%h in (A1�༶�嵥.txt) do (
set cName=%%h
echo !cName!
if exist .\!listOfStu!\!cName!.txt (echo !listOfStu! Ŀ¼������ !cName!.txt����) else (
echo # ��#��ͷ����ע����,�ű������ȡ>>.\!listOfStu!\!cName!.txt
echo.>>.\!listOfStu!\!cName!.txt
echo # "����"��Ϊȱʡ��,�ɳ����Զ�����>>.\!listOfStu!\!cName!.txt
echo ����>>.\!listOfStu!\!cName!.txt
echo.>>.\!listOfStu!\!cName!.txt)
)

rem �����ļ��У����༶��ҵͳ��
echo �����ļ��У�A4���༶��ҵͳ��
set countOfStu=A4���༶��ҵͳ��
if exist .\!countOfStu! (echo ��Ŀ¼�Ѵ���) else (
mkdir .\!countOfStu!
)

rem Ϊÿ���༶���������ռ�ѧ����ҵ��Ŀ¼
echo Ϊÿ���༶���������ռ�ѧ����ҵ��Ŀ¼
for /f "eol=#" %%i in (A1�༶�嵥.txt) do (
set className=%%i
echo !className!
for /f  "eol=#" %%j in (A2��ʱ�嵥.txt) do (
set lessonName=%%j
mkdir .\!className!\!lessonName!\
rem rd /S /Q .\!className!\!lessonName!\
type nul> .\!className!\!lessonName!\paceholder.file)

)
pause
