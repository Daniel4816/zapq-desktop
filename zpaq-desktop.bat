@echo off
set zpaq_exe=%appdata%\zpaq\zpaq64.exe
set threads=%NUMBER_OF_PROCESSORS%
set input_path=%1
echo %input_path% | findstr /r "^\" \"$"
if errorlevel 1 (goto skip) else (set input_path=%input_path:~1,-1%)
:skip
For %%A in ("%input_path%") do (
    Set Folder=%%~dpA
    Set Name=%%~nxA
)
set Name="%Name%"
cd %Folder%
echo %Name% | findstr /r .zpaq
if errorlevel 1 (%zpaq_exe% -t%threads% -m57 a %Name%.zpaq %Name%) else (%zpaq_exe% -t%threads% x %Name%)
PAUSE
