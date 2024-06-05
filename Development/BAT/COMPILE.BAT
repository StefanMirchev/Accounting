

@ ECHO OFF
@ REM !!!!!   CREATE EXE WITH -> C:\HLP\BAT\BAT-EXE.BAT
@ if exist C:\HLP\ASCI\OPEN1.PRG   C:\HLP\VBS\COMPILE.VBS & exit 
@ rem echo aaa > C:\HLP\ASCI\_WORK_PRG
@ mode con cols=66 lines=30
@ color 2F
@ rem del \HLP\ASCI\OPE*.PRG
@ set var=%1   
@ set t0=@ timeout 1
@ set open1=%var:~3,14%  
@ set fold0=%open1:~0,9%
@ set name0=%open1:~5,4%
@ set open0=%open1:~10,4%
@ rem echo ccccc%name0%dddd  
@ rem echo aaaaa%open1%bbbb%open0%dddd  & pause & exit
@ IF %name0%==PODR (@  echo                 NOT COMPILE WITH THIS COMPILE.EXE !
@  echo                    RUN C:\HLP\PODRED\P.BAT ! & @ pause & exit )
@ IF %name0%==CAL\ ( @  echo                 NOT COMPILE WITH THIS COMPILE.EXE !
@  echo                       RUN C:\HLP\CAL\C.BAT ! & @ pause & exit )
@ IF %name0%==CAL1 ( @  echo                 NOT COMPILE WITH THIS COMPILE.EXE !
@  echo                       RUN C:\HLP\CAL1\C1.BAT ! & @ pause & exit )
@  del %name0%.EXE &  del *.OBJ & cd %fold0%  &  md %fold0%\IZHO & del aaa.txt
@  copy %open0%.PRG %fold0%\IZHO\ & copy %open0%.PRG \HLP\ASCI\OPEN.PRG
@  rem echo aaaaaaaaaaaaaaaaaaaaaaa & pause
@  cd \HLP\ASCI & %t0% 
@  cls
@  echo CONVERT FROM ASCI TO ANSI.     PLEASE WAIT !
@ start C:\DISC\HLP\EXE\hstart.exe /NOCONSOLE \HLP\ASCI\ANSI.EXE 
@ cd %fold0% 
:pak

@ if exist aaa.txt  cmd /c start notepad aaa.txt
@ C:\DISC\HLP\BATEXE\SUBOPEN.exe \HLP\ASCI\OPEN1.PRG 
@ copy C:\HLP\ASCI\OPEN1.PRG  C:\HLP\ASCI\IZHO\
@ echo EDIT OPEN1.PRG  AND  copy C:\HLP\ASCI\OPEN1.PRG  C:\HLP\ASCI\IZHO\ &  pause
@ TASKKILL /F /IM notepad.exe
@ cls
@ echo !!! IF NOT SEE  1 file(s) copied. NOT BEE HAVE CHAGES IN PRG FILE
@ start C:\DISC\HLP\EXE\hstart.exe /NOCONSOLE \HLP\ASCI\ASCI.EXE 
:1 
@ if exist "C:\HLP\ASCI\OPEN2.PRG" ( copy C:\HLP\ASCI\OPEN2.PRG %fold0%\%open0%.PRG ) else (@ timeout 2 & goto :1 )
@ cls 
@  echo FINISH EDIT FILE OPEN1.PRG  
@ ECHO    1. COMPILATION
@ ECHO    2. EXIT
@ C:\Windows\System32\choice.exe /C 12 /N /M "Enter your choice:"
 IF ERRORLEVEL 2 GOTO  END
 IF ERRORLEVEL 1 GOTO COMPILATION

 :COMPILATION
 del C:\HLP\ASCI\OPEN2.PRG 
 cls
 echo C O M P I L A T I O N
rem echo CONVERT FROM ANSI TO ASCI AND COPY \HLP\ASCI\OPEN2.PRG %fold0%\%open0%.PRG.    PLEASE WAIT !
rem  echo !!! IF NOT SEE  1 file(s) copied. NOT BEE HAVE CHAGES IN PRG FILE  !!!
rem  start C:\DISC\HLP\EXE\hstart.exe /NOCONSOLE \HLP\ASCI\ASCI.EXE 
rem timeout 7
rem  copy \HLP\ASCI\OPEN2.PRG %fold0%\%open0%.PRG   
rem  %t0% 
rem if errorlevel 1 pause      ------------------------------------
@ \hlp\clip53\rmake %name0%.rmk > aaa.txt
 rem if errorlevel 1 pause
 if errorlevel 1 goto pak
  del *.OBJ
      @ IF %name0%==SAVE  (
           %t0% & copy %fold0%\%name0%.EXE \DISC%fold0%\%name0%A.exe
           %t0% & start  \DISC\HLP\VBS\%name0%A.VBS 
                          )
      @ IF %name0%==FISH  (
           %t0% & copy %fold0%\%name0%.EXE \DISC%fold0%\%name0%.exe
           %t0% & start  \DISC\HLP\VBS\%name0%.VBS 
                           ) 
      @ IF %name0%==OTCH  (
           cd C:\kk22
           %t0% & copy  %fold0%\%name0%.EXE \DISC%fold0%\%name0%.exe
           %t0% & start  \DISC\HLP\VBS\saveA.VBS 
                            ) 
           pause

GOTO END


 :END
 echo E X I T
 @ del aaa.txt & del C:\HLP\ASCI\_WORK_PRG
 @ del %fold0%\*.OBJ & @ del \HLP\ASCI\OPE*.PRG
 @ %t0% & TASKKILL /F /IM plugin_host.exe 
 @ %t0% & TASKKILL /F /IM RuntimeBroker.exe
 @ %t0% & TASKKILL /F /IM ntvdm.exe
 @ %t0% & TASKKILL /F /IM zvprtsrv.exe