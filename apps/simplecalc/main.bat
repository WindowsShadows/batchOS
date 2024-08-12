TITLE Calculator
@echo off
CLS
:TOP
Cls
echo ----------------------------------------------------
echo[
echo                    batchOS CALCULATOR
echo[
echo ----------------------------------------------------
echo[
echo[
echo    + = Sum
echo[
echo    - = Sub
echo[
echo    / = Division
echo[
echo    * = Multiply
echo[
echo    ~ = Exit
echo[
echo[
echo ----------------------------------------------------
echo[
set /p ch="Enter Symbol"
if %ch% EQU + GOTO:SUM
if %ch% EQU - GOTO:SUB
if %ch% EQU / GOTO:DIV
IF %ch% EQU * GOTO:MUL
IF %ch% EQU ~ GOTO:EXI
:SUM
CLS
echo ---------------------------------------------------
echo[
echo                         SUM
echo[
echo ---------------------------------------------------
echo[
set /p A=" Enter First Number = "
echo[
set /p B=" Enter Second Number = "
SET /A C=A+B
echo[
echo ---------------------------------------------------
echo %A%+%B%=%C%
PAUSE
GOTO:TOP
:SUB
CLS
echo ---------------------------------------------------
echo[
echo                     SUBTRACTION
echo[
echo ---------------------------------------------------
echo[
set /p A=" Enter First Number = "
echo[
set /p B=" Enter Second Number = "
SET /A C=A-B
echo[
echo ---------------------------------------------------
echo %A%-%B%=%C%
PAUSE
GOTO:TOP
:DIV
CLS
echo ----------------------------------------------------
echo[
echo                      DIVISION
echo[
echo -----------------------------------------------------
echo[
set /p A=" Enter First Number = "
echo[
set /p B=" Enter Second Number = "
SET /A C=A/B
echo[
echo -----------------------------------------------------
echo %A%/%B%=%C%
PAUSE
GOTO:TOP
:MUL
CLS
echo ---------------------------------------------------
echo[
echo                    MULTIPICATION
echo[
echo ----------------------------------------------------
echo[
set /p A=" Enter First Number = "
echo[
set /p B=" Enter Second Number = "
SET /A C=A*B
echo[
echo ----------------------------------------------------
echo %A%*%B%=%C%
PAUSE
GOTO:TOP
:EXI
call api\exit_app.bat
