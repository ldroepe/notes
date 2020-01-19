@echo off

:: master folder files will be placed in
set VAR_PATH=C:\Users\Lucas\Desktop\School\College\Senior\sem2

set VAR_FILE=%~1
set VAR_CLASS=%~2

:: argument checking
if [%VAR_FILE%] == [] (
    call :F_SPLASH
    exit /B 1
)

if [%VAR_CLASS%] == [] (
    call :F_SPLASH
    exit /B 1
)

if /i "%VAR_FILE%" == "help" (
    call :F_SPLASH
    exit /B 1
)

set VAR_PATH=%VAR_PATH:"=%\%VAR_CLASS:"=%

:: make sure the desired folder exists
if not exist %VAR_PATH%\NUL (
    echo %VAR_PATH% does not exist
    call :F_PRINTHELP

    exit /B -1
)


:: Create note file & start/continue editing
pushd %VAR_PATH%

if exist %VAR_FILE%.md (
    
    :: push blank line & new title
    echo[ >> %VAR_FILE%.md
    echo # %date% >> %VAR_FILE%.md

) else (

    echo # %date% ^| %VAR_FILE% > %VAR_FILE%.md
)

vim %VAR_FILE%.md
popd

exit /B 0

:: Print a lil splashscreen & call help screen
:F_SPLASH
    
    echo Automate your notes!
    call :F_PRINTHELP

goto :eof

:: Print the help splashscreen
:F_PRINTHELP

    echo SYNTAX: testing.bat [filename] [class]
    echo NOTE: [class] is the folder this note will be placed in

goto :eof
