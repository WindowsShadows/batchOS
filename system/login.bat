@echo off
title batchOS Login

:: batchOS login system
if not defined firstStart goto :firststart
else goto :startup_screen

:startup_screen
cls
echo batchOS v%os_ver%
echo.
goto :username

:username
set /p username="Username:⠀" 

:username_check
if exist "settings\UserAccountSystem\%username%.acc" goto :password
if not exist "settings\UserAccountSystem\%username%.acc" goto :incorrect_username

:incorrect_username
echo Incorrect username, please check if you typed it correctly.
:: timeout 2 >NUL
goto :startup_screen


:password
set /p password="Password:⠀" 

:password_check
set /p real_password=<"settings\UserAccountSystem\%username%.acc"

:comparison
if %real_password%==%password% goto :correct_credentials
if not %real_password%==%password% goto :incorrect_password

:incorrect_password
echo Incorrect password, please check if you typed it correctly.
goto :password


:correct_credentials
call "system\shell.bat"

:firststart
cls
echo Welcome to batchOS v%os_ver%
echo Please create your user account.
echo.
goto :username_firststart

:username_firststart
set /p username="Username:⠀"
set /p password="Password:⠀"
goto :uac_create_firststart

:uac_create_firststart
echo %password%>"settings\UserAccountSystem\%username%.acc"
goto :password_check


