@ECHO off
REM ------Description------------------------------------------------------
REM Drag your .as file onto this .bat to create a new .bat that will
REM compile and, if compilation successful, open the resulting swf.
REM -----------------------------------------------------------------------


REM ------User-Variables---------------------------------------------------
REM mxmlcPath: Path to mxmlc command line compiler. You may need
REM to change this based on your installation

SET mxmlcPath="C:\Users\subodh\Documents\stanford\RA\flex\bin\mxmlc.exe"


REM opts: Command line options for mxmlc if any. You can get a list
REM of the available options from:
REM http://livedocs.macromedia.com/labs/1/flex/00001191.html
REM or by running:
REM mxmlc.exe -help list advanced details
REM in the command prompt (properly referencing mxmlc.exe)

SET opts=-benchmark=true -creator="Trevor McCauley"

REM -----------------------------------------------------------------------


REM Generate .bat code and save to file
ECHO @ECHO OFF ^& (IF EXIST "%%~dp0%~n1.swf" (DEL "%%~dp0%~n1.swf")) ^& %mxmlcPath% %opts% -file-specs "%%~dp0%~nx1" ^& (IF EXIST "%%~dp0%~n1.swf" (CALL "%%~dp0%~n1.swf") ELSE (PAUSE)) > "%~dpn1.bat"
REM Immediately execute the generated bat
@ECHO on
CALL "%~dpn1.bat"