@echo off
:start
cls
title Windows Boot Manager
color 9f
echo Choose an option
echo.
echo 1. Fast Boot
echo 2. Boot normally
echo 3. Safe Mode
echo 4. Recovery command prompt
echo 5. Shut down
set /p opt=">"
if %opt% == 1 goto fastboot
if %opt% == 2 goto normalboot
if %opt% == 3 goto safeboot
if %opt% == 4 goto recoverycmd
if %opt% == 5 exit
goto start

:safeboot
cls
color 0f
timeout 2 >nul
echo Windows is loading files...
timeout 6 >nul
cls
echo Safe Mode
echo ========
echo.
echo 1. Reboot
echo 2. Shut down
echo 3. Command prompt
set /p safesel=">"
if %safesel% == 1 goto start
if %safesel% == 2 exit
if %safesel% == 3 goto recoverycmd

:fastboot
cls
color 9f
timeout 2 >nul
echo Windows is loading files...
timeout 1 >nul
goto desktop

:desktop
color 0f
cls
echo Desktop
echo =======
echo.
echo 1. Notepad
echo 2. System Information
echo 3. Command Prompt
echo 4. Reboot
echo 5. Shut down
set /p desk=">"
if %desk% == 1 goto notepad
if %desk% == 2 goto systeminfo
if %desk% == 3 goto cmd
if %desk% == 4 goto start
if %desk% == 5 exit

:notepad
cls
start notepad
goto desktop

:systeminfo
cls
echo Windows Batch Version 1.0
timeout 10 >nul
goto desktop

:cmd
cls
start cmd.exe /k cd /d C:\
goto desktop

:normalboot
cls
color 9f
timeout 2 >nul
echo Windows is loading files...
timeout 1 >nul
goto desktop

:desktop
color 0f
cls
echo Desktop
echo =======
echo.
echo 1. Notepad
echo 2. System Information
echo 3. Command Prompt
echo 4. Reboot
echo 5. Shut down
set /p desk=">"
if %desk% == 1 goto notepad
if %desk% == 2 goto systeminfo
if %desk% == 3 goto cmd
if %desk% == 4 goto start
if %desk% == 5 exit

:notepad
cls
start notepad
goto desktop

:systeminfo
cls
echo Windows Batch Version 1.0
timeout 10 >nul
goto desktop

:cmd
cls
start cmd.exe /k cd /d C:\
goto desktop

:recoverycmd
cls
start cmd.exe /k cd /d C:\
goto start

