::--------------------------------------------------
:: Modifies on : 23-12-2022
:: By Mei-R
::
::
::--------------------------------------------------
:: Run once , can run inly in batch file , Global
::--------------------------------------------------
:: get
@ECHO off & TITLE Mei-R
:Main
call :GetChar tempchar
echo %tempchar%
goto :Main
goto :eof
:: -----------------------------------------------------------------
:: Functions here
:: -----------------------------------------------------------------
:GetChar
	:: 0123456789abcdefghijklmnopqrstuvwxyz , can change here what char are available,Mei-R
	for /F "tokens=1 delims=," %%a in ('"choice /N /C 0123456789abcdefghijklmnopqrstuvwxyz"') do (set "%~1=%%a")
	EXIT /B 0