@echo off

:repeat
Timeout 2 > NUL

 

@tasklist | find "bmrelay.exe" /c > NUL
IF %ErrorLevel%==1 goto 1
IF NOT %ErrorLevel%==1 goto 0

 

:0
goto repeat

 

:1
start C:\BaeminRelay\bmrelay.exe
goto repeat