     echo off
   
  @ setlocal ENABLEDELAYEDEXPANSION
  @ set vidx=0
  @ for /F "tokens=*" %%A in (C:\DISC\COMP\KK\KK\KK.txt) do (
  @ set /A vidx=!vidx! + 1 
  @ set var!vidx!=%%A)
  @ set var
rem  echo %var1%| C:\HLP\EXE\Clip.exe