echo off

FOR /F "TOKENS=1    eol=/ DELIMS=/ " %%A IN ('time/T') DO SET a0=%%A


echo %a0%
pause

FOR /F "TOKENS=1    eol=/ DELIMS=/ " %%A IN ('time/T') DO SET a1=%%A
echo %a1%
pause

 SET a00=a1-a0
echo %a0%-%a1%


pause