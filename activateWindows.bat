TITLE "ACTIVATE WINDOWS EASILY"
@ECHO OFF

ECHO Please Wait checking to see if windows is activated 

slmgr /xpr

ECHO If you need to activate Windows enter WA otherwise just press Q to quit
set /p Input=Enter WA or Q:
If /I "%Input%"=="WA" goto activate
goto quit
:activate
ECHO Multiple Keys are available enter the number to use that key
set /p Input=Enter 1, 2, 3, 4, 5, or 6:
If /I "%Input%"=="1" goto one 
If /I "%Input%"=="2" goto two 
If /I "%Input%"=="3" goto three 
If /I "%Input%"=="4" goto four 
If /I "%Input%"=="5" goto five 
goto six
:one
slmgr.vbs /ipk 
::null
slmgr /dli
goto quit
:two
slmgr.vbs /ipk 
::null
slmgr /dli
goto quit
:three
slmgr.vbs /ipk 
::null
slmgr /dli
goto quit
:four
slmgr.vbs /ipk 
::null
slmgr /dli
goto quit
:five
slmgr.vbs /ipk 
::null
slmgr /dli
goto quit
:six
slmgr.vbs /ipk 
::null
slmgr /dli
goto quit
:quit
pause