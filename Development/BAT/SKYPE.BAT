  @ ECHO OFF
  @ rem mode con cols=11 lines=1
  @ echo SKYPE 
  @ setlocal ENABLEDELAYEDEXPANSION
  @ set vidx=0
  @ for /F "tokens=*" %%A in (C:\DISC\COMP\KK\KK\KK.txt) do (
  @ set /A vidx=!vidx! + 1 
  @ set var!vidx!=%%A)
  @ rem set var
  @ echo %var1%| C:\HLP\EXE\Clip.exe
  @ "C:\Program Files\Skype\Phone\Skype.exe"

PAUSE