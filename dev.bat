@Echo Off

Set _Delay=2
Set _Monitor=%~dp0\src
Set _Base=%temp%\BaselineState.dir
Set _Chck=%temp%\ChkState.dir
Set _OS=6

Ver|Findstr /I /C:"Version 5">Nul

If %Errorlevel%==0 Set _OS=5 & Set /A _Delay=_Delay*1000


:_StartMon
echo.
echo ----------------------------------------
echo --  Frootend is watching for changes  --
echo --       Press Ctrl-C to cancel       --
echo ----------------------------------------
echo.

Call :_SetBaseline "%_Base%" "%_Monitor%"


:_MonLoop
If %_OS%==5 (Ping 1.0.0.0 -n 1 -w %_Delay%>Nul) Else Timeout %_Delay%>Nul
Call :_SetBaseline "%_Chck%" "%_Monitor%"
FC /A /L "%_Base%" "%_Chck%">Nul
If %ErrorLevel%==0 Goto _MonLoop
::
call build.bat
Goto :_StartMon

:::::::::::::::::::::::::::::::::::::::::::::::::::
:: Subroutine
:::::::::::::::::::::::::::::::::::::::::::::::::::
:_SetBaseline
If Exist "%temp%\tempfmstate.dir" Del "%temp%\tempfmstate.dir"
For /F "Tokens=* Delims=" %%I In ('Dir /S "%~2"') Do (
Set _Last=%%I
>>"%temp%\tempfmstate.dir" Echo.%%I
)
>"%~1" Findstr /V /C:"%_Last%" "%temp%\tempfmstate.dir"
Goto :EOF