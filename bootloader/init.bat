@echo off

title batchOS Initializing

:stage1
echo DEBUG: Stage 1
set os_ver=0.1.0
set warningAccept=none
set trueVar=true

:stage2
:: echo DEBUG: Stage 2
:: Not much here yet
:: echo DEBUG: Stage 3 TRANSITION
call settings\settings.bat
