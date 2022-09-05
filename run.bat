@echo off
color 3
:menu
echo 1. Start
echo 2. Install
echo 3. Fix
echo 4. Credits
echo.
echo Select one: 
set /p selection=
if %selection% == 1 goto start
if %selection% == 2 goto install
if %selection% == 3 goto fix

CALL :menu

:start
cls
echo [Start]
echo.
echo %product% is starting...
start powershell -noexit -command "node ."

:install
cls
echo [Install]
echo.
echo Installing Dependencies...
echo.
npm i

:fix
cls
echo [Fix]
echo.
echo Fixing...
echo Using --force
echo.
npm audit fix --force