@echo off
setlocal ENABLEDELAYEDEXPANSION
set k=0
set /p num1=enter the first number:
set /p num2=enter the second number:
set /a frontnum=%num1% / %num2%
set /a z= %num1% %% %num2%
if %z% equ 0 (
set allnextnum=0
goto print
)
:again
set /a num1=%num1% %% %num2%
if %num1% equ 0 (
goto print
) else (
set /a num1=%num1% * 10
set /a nextnum=!num1!/%num2%
set allnextnum=%allnextnum%!nextnum!
set /a k=%k%+1
if !k! gtr 2000 goto print
goto again
)
:print
set finum=%frontnum%.%allnextnum%
echo %finum%
pause
exit