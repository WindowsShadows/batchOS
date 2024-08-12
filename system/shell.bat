cls
:main_config
title batchOS %os_ver%
if not defined firstStart echo set firstStart=false >> settings\settings.bat
:main
echo.
echo batchOS v%os_ver% 
echo You are %username%@%custom_pcname%
echo Type "help" to access the system documentation.
echo.

:prompt
set /p "command=[%username%@%custom_pcname%]$⠀"

for /f "tokens=1,*" %%a in ("%command%") do (
    set "cmd=%%a"
    set "params=%%b"
)
:command_checker
:: Check for commands lol
if /i "%cmd%"=="exit" goto :exit
if /i "%cmd%"=="pkgman" goto :pkgman
if /i "%cmd%"=="calc" goto :simplecalc
if /i "%cmd%"=="logoff" goto :logoff
if /i "%cmd%"=="3dtest" goto :3dtest
if /i "%cmd%"=="help" goto :help
if "%cmd%"=="" goto :prompt

:: If command is not recognized, execute it as a CMD command with parameters
%cmd% %params%
if errorlevel 1 goto :error
goto :prompt

:help
call system\help.bat %params%
goto :prompt

:exit
call api\os\exit_os.bat %params%

:logoff
call api\os\logoff.bat %params%

:simplecalc
call apps\simplecalc\main.bat %params%

:3dtest
call apps\shade_engine\main.bat %params%

:pkgman
call apps\pkgman\main.bat %params%

:return
title batchOS %os_ver%
goto prompt

:error
echo Invalid command
goto :return