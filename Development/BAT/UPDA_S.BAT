   @   ECHO OFF
   @ REM !!! NIKOGA NE PUSKAJ PREZ Task Shaduler UPDA_K.EXE  nNE GO STRATIRA !!!
   @ rem   start  C:\HLP\BATEXE\UPDA_K.EXE 

  @    tasklist /nh /fi "imagename eq UPDA_K.EXE" /fo csv > C:\HLP\BAT\_AAA.TXT
  @    setlocal ENABLEDELAYEDEXPANSION
  @    set vidx=0
  @    for /F "tokens=*" %%A in (C:\HLP\BAT\_AAA.TXT) do (
  @    set /A vidx=!vidx! + 1 
  @    set var!vidx!=%%A)
  @    set var
  @    set var0=%var1:~1,10%
  @   ECHO %var0%
  @  ren     IF /i "%var0%"=="UPDA_K.EXE" (Echo String IN found.) ELSE (Echo String NOT found.)
  @       IF /i "%var0%"=="UPDA_K.EXE" (Echo String IN found.) ELSE (START C:\HLP\BATEXE\UPDA_K.EXE)
 

    