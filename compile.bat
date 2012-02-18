@ECHO off
REM ------Description------------------------------------------------------
REM Drag your .as file onto this .bat to create a new .bat that will
REM compile and, if compilation successful, open the resulting swf.
REM -----------------------------------------------------------------------


REM ------User-Variables---------------------------------------------------
REM mxmlcPath: Path to mxmlc command line compiler. You may need
REM to change this based on your installation

SET mxmlcPath="C:\flex_sdk_2\bin\mxmlc.exe"


REM opts: Command line options for mxmlc if any. You can get a list
REM of the available options from:
REM http://livedocs.macromedia.com/labs/1/flex/00001191.html
REM or by running:
REM mxmlc.exe -help list advanced details
REM in the command prompt (properly referencing mxmlc.exe)

SET opts=-benchmark=true -creator="Trevor McCauley"

REM -----------------------------------------------------------------------


REM execute compile command
IF EXIST "%~dp0%~n1.swf" (DEL "%~dp1%~n1.swf")
ECHO on
%mxmlcPath% %opts% -file-specs %1
@ECHO off
IF EXIST "%~dp0%~n1.swf" (CALL "%~dp1%~n1.swf") ELSE (PAUSE)
