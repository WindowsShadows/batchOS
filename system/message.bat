@echo off

:kernel_panic_screen
color 4f
title batchOS KERNEL PANIC
echo.
echo    batchOS v%os_ver% bootloader
echo    ----------------------------------------------------------------------
echo.
echo    batchOS has crashed.
echo    If you got this screen, this is because a critical system file is missing.
echo    If you have a recovery enviroment, you can check the crash dump the system
echo    has made to see what is missing.
echo.
echo    Press any key to shut down.
echo.  
pause >NUL
timeout /t 2 /nobreak >NUL 
color 0f
cls
exit

:warning_screen
color 1f
title batchOS Warning
echo.
echo    batchOS %os_ver% 
echo    ----------------------------------------------------------------------
echo.
echo    Warning!
echo    You are about to run an experimental app which could lead to errors
echo    and corrupt your batchOS installation.
echo    Run at your own risk.
echo.
echo    Press X to quit, or press E to continue.
echo.
choice /c xe /n
if "%errorlevel%"=="1" set warningAccept=false
if "%errorlevel%"=="2" set warningAccept=true
color 0f
cls
call system\shell.bat :postwarning
