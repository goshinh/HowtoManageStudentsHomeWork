@ECHO OFF
rem Author:ITDAMAO
rem Feature:CreatDir.bat ��������Ŀ¼
rem Created Time��2018-04-02 13:20
rem Last Modified Time:2018-04-23 13:50


setlocal EnableDelayedExpansion
rem �����ļ�A1�༶�嵥.txt
if exist .\A1�༶�嵥.txt (echo ��ǰĿ¼������A1�༶�嵥.txt����) else (
echo ��ǰĿ¼�²�����A1�༶�嵥.txt,��������
echo # ��#��ͷ����ע����,�ű������ȡ>>A1�༶�嵥.txt
echo.>>A1�༶�嵥.txt)

rem �����ļ�A2��ʱ�嵥.txt
if exist .\A2��ʱ�嵥.txt (echo ��ǰĿ¼������A2��ʱ�嵥.txt����) else (
echo ��ǰĿ¼�²�����A2��ʱ�嵥.txt,��������
echo # ��#��ͷ����ע����,�ű������ȡ>>A2��ʱ�嵥.txt
echo.>>A2��ʱ�嵥.txt)

rem �����ļ������༶ѧ���嵥
set listOfStu=A3���༶ѧ���嵥
if exist .\!listOfStu! (echo ��Ŀ¼�Ѵ���) else (
mkdir .\!listOfStu!
)
for /f "eol=#" %%h in (A1�༶�嵥.txt) do (
set cName=%%h
echo !cName!
if exist .\!listOfStu!\!cName!.txt (echo !listOfStu! Ŀ¼������ !cName!.txt����) else (
echo # ��#��ͷ����ע����,�ű������ȡ>>.\!listOfStu!\!cName!.txt
echo.>>.\!listOfStu!\!cName!.txt)
)

rem �����ļ��У����༶��ҵͳ��
set countOfStu=A4���༶��ҵͳ��
if exist .\!countOfStu! (echo ��Ŀ¼�Ѵ���) else (
mkdir .\!countOfStu!
)

rem Ϊÿ���༶���������ռ�ѧ����ҵ��Ŀ¼
for /f "eol=#" %%i in (A1�༶�嵥.txt) do (
set className=%%i
for /f  "eol=#" %%j in (A2��ʱ�嵥.txt) do (
set lessonName=%%j
mkdir .\!className!\!lessonName!\

rem ��ÿ����ʱĿ¼����������ͳ�Ƹÿ�ʱѧ����ҵ�����bat
echo @ECHO OFF>.\!className!\!lessonName!\Listme.bat
echo rem ����:IT��Ħ>>.\!className!\!lessonName!\Listme.bat
echo rem ����:ͳ�Ʊ���ʱѧ������ҵ�����>>.\!className!\!lessonName!\Listme.bat
echo rem ����ʱ�䣺2018-04-23 13:43>>.\!className!\!lessonName!\Listme.bat
echo rem ����޸�ʱ��:%Date:~0,4%-%Date:~5,2%-%Date:~8,2%>>.\!className!\!lessonName!\Listme.bat
echo cd /d %~dp0 >>.\!className!\!lessonName!\Listme.bat
echo ListStatus !lessonName! !className! >>.\!className!\!lessonName!\Listme.bat
)
)
