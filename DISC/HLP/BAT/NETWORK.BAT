 REM NEW01
 @ECHO OFF
 mode con cols=50 lines=20
 
      for /F "tokens=*" %%A in (C:\DISC\HLP\JOB\PAKE.TXT) do (
               set var=%%A) 
      set pake=%var:~0,4%
 @ IF  %pake%==HOME  (set WAIT=C:\DISC\HLP\EXE\PING 127.0.0.1 -n) ELSE  (set WAIT=C:\DISC\HLP\EXE\timeout)

  color 2F

 @ ECHO              CREATE  NET USE AND RAHIV
 @ ECHO.
 @ ECHO                    0.EXIT
 @ ECHO                    1.FLASH E F 
 @ ECHO                    2.ACCO  K L
 @ ECHO                    3.KOSI  M N I J 
 @ ECHO                    4.STEF  O P Q R 
 @ ECHO                    5.CHEF  S T Q
 @ ECHO                    6.KOSY  S T Q
 @ ECHO                    7.LENOVO U
 @ ECHO                    8.ME301T V
 @ ECHO                    9.CLOSE ALL NET USE
 @ ECHO                   10.PASSON
 @ ECHO                   11.PASSOFF

set choic0=
set /p choic0=Enter your choice: 
if '%choic0%'=='0'  goto END
if '%choic0%'=='1'  goto FLASH
if '%choic0%'=='2'  goto ACCO
if '%choic0%'=='3'  goto KOSI
if '%choic0%'=='4'  goto STEF
if '%choic0%'=='5'  goto CHEF 
if '%choic0%'=='6'  goto KOSY
if '%choic0%'=='7'  goto LENOVO 
if '%choic0%'=='8'  goto ME103T 
if '%choic0%'=='9'  goto CLOSE
if '%choic0%'=='10' goto PASSON
if '%choic0%'=='11' goto PASSOFF


 :FLASH
 @ ECHO FLASH
 @ set ustr0=FLASH-E/F 
 @ if exist E:\_FLASH (set us=E
 GOTO IZBOR) else (@ echo NOT READY E:\_FLASH  )
 @ if exist F:\_FLASH (set us=F
 GOTO IZBOR) else (@ echo NOT READY F:\_FLASH  )
 %WAIT% 5 
 GOTO END


 :ACCO
 @ ECHO ACCO
 @ REM  set var0=\\192.168.0.209
 @ REM  net view \\192.168.0.209
 @      C:\Windows\explorer.exe \\ACCO  &&^
 @      C:\Windows\explorer.exe \\192.168.0.209
 @ rem  If errorlevel 1 goto NOBUI
 @ REM  %SystemRoot%\system32\net use K: \\192.168.0.209\C /YES
 @ REM  %SystemRoot%\system32\net use \\192.168.0.209\xerox /YES 
 GOTO END

 :KOSI
 @ ECHO KOSI
 @ REM  set var0=\\192.168.0.202
 @ REM  net view \\192.168.0.202
 @ REM  if errorlevel 1 goto NOBUI   
 @         C:\Windows\explorer.exe \\KOSI  &&^
 @         C:\Windows\explorer.exe \\192.168.0.202
 @ REM  set ustr0=KOSI-C
 @ REM if exist M:\__KOSI-C  (set us=M
 @ REM GOTO IZBOR) else (@ echo NOT READY M:\__KOSI-C )
  GOTO END

 :STEF
 @ ECHO STEF
 @ REM  set var0=\\192.168.0.203
 @ REM  net view \\192.168.0.203
 @ REM  if errorlevel 1  goto NOBUI
 @         C:\Windows\explorer.exe \\STEF  &&^
 @         C:\Windows\explorer.exe \\192.168.0.203
 @ REM  %SystemRoot%\system32\net use O: \\192.168.0.203\C /YES
 @ REM set ustr0=STEF-C
 @ REM if exist O:\__STEF-C  (set us=O
 @ REM GOTO IZBOR) else (@ echo NOT READY O:\__STEF-C )
 GOTO END

 :CHEF
 @ ECHO CHEF
 @ REM set ustr0=STEF-C
 @ REM set var0=\\192.168.0.208
 @ REM net view \\192.168.0.208
 @ REM if errorlevel 1  goto NOBUI
 @       C:\Windows\explorer.exe \\CHEF
 @       C:\Windows\explorer.exe \\192.168.0.208
 GOTO END

 :KOSY
 @ ECHO KOSY
 @ REM  set var0=\\192.168.0.206
 @ REM  net view \\192.168.0.206
 @ REM  if errorlevel 1 goto NOBUI   
 @ REM  ping -n 1 \\192.168.0.206 > nul 
 @       C:\Windows\explorer.exe \\KOSY & @  C:\Windows\explorer.exe \\192.168.0.206
 @ REM  %SystemRoot%\system32\net use \\192.168.0.206\koral /delete
 @     C:\Windows\explorer.exe \\192.168.0.206
 GOTO END
 
 :LENOVO
 @ ECHO LENOVO
 @  REM   set var0=\\LENOVO 
 @  REM   net view \\LENOVO
 @  REM   if errorlevel 1 goto NOBUI   
 @        %SystemRoot%\system32\net use U: http://192.168.0.204:2221/ /YES
 GOTO END

 :ME103T
 @ ECHO ME103T
 @  REM   set var0=\\LENOVO 
 @  REM   net view \\LENOVO
 @  REM   if errorlevel 1 goto NOBUI   
 @        %SystemRoot%\system32\net use V: http://192.168.0.205:2221/ /YES
 GOTO END

 :CLOSE
 @ cls 
 @  %SystemRoot%\system32\net use * /delete
 @  %SystemRoot%\system32\net use LPT1:  /delete
 @ rem  %SystemRoot%\system32\net use T: /delete
 @  %wait% 6 > NIL
 GOTO End

 :NOBUI
 @ cls 
 @ echo.            
 @ echo.   
 @ echo.            
 @ echo.  
 @ echo.            
 @ echo.                        
 @ echo       NOT BUILD %var0% 
 @ %wait% 6 > NIL
 GOTO END
 
:ARHIV
  %WAIT% 5  
 cls
 @ echo READY FOR ARHIV C:\HLP AND C:\DISC\HLP TO - %ustr0%
set choic1=
set /p choic1=IF YOU WONT ARHIV  y/Y: 
 
REM if '%choic1%'=='y' goto ARHIV
REM IF '%choic1%'=='Y' goto ARHIV
GOTO END
 
  :ARHIV
cls
@ Xcopy C:\HLP\ASCI   %us%:\HLP\ASCI    /S /y
@ Xcopy C:\HLP\BAT    %us%:\HLP\BAT     /S /y
@ Xcopy C:\HLP\BATEXE %us%:\HLP\BATEXE  /S /y
@ Xcopy C:\HLP\CAL    %us%:\HLP\CAL     /S /y
@ Xcopy C:\HLP\CAL1   %us%:\HLP\CAL1    /S /y
@ Xcopy C:\HLP\FISH   %us%:\HLP\FISH    /S /y
@ Xcopy C:\HLP\IMAGE  %us%:\HLP\IMAGE   /S /y
@ Xcopy C:\HLP\JOB    %us%:\HLP\JOB     /S /y
@ Xcopy C:\HLP\LNK    %us%:\HLP\LNK     /S /y
@ Xcopy C:\HLP\LST    %us%:\LST         /S /y
@ Xcopy C:\HLP\MUSIC  %us%:\MUSIC       /S /y
@ Xcopy C:\HLP\MYJOB  %us%:\MYJOB       /S /y
@ Xcopy C:\HLP\OTCH   %us%:\HLP\OTCH    /S /y
@ Xcopy C:\HLP\OTHER  %us%:\HLP\OTHER   /S /y
@ Xcopy C:\HLP\PODRED %us%:\HLP\PODRED  /S /y
@ Xcopy C:\HLP\PREH   %us%:\HLP\PREH    /S /y
@ Xcopy C:\HLP\README %us%:\HLP\README  /S /y
@ Xcopy C:\HLP\REG    %us%:\HLP\REG     /S /y
@ Xcopy C:\HLP\SAVE   %us%:\HLP\SAVE    /S /y
@ Xcopy C:\HLP\TASK   %us%:\HLP\TASK    /S /y
@ Xcopy C:\HLP\URL    %us%:\HLP\URL     /S /y
@ Xcopy C:\HLP\VBS    %us%:\HLP\VBS     /S /y
rem  rem  echo HLP & pause
@ Xcopy C:\DISC\GOD22       %us%:\DISC\GOD22       /S /y
@ Xcopy C:\DISC\COMP\Z_PECH %us%:\DISC\COMP\Z_PECH /S /y
@ Xcopy C:\DISC\HLP\BAT     %us%:\DISC\HLP\BAT     /S /y
@ Xcopy C:\DISC\HLP\BATEXE  %us%:\DISC\HLP\BATEXE  /S /y
@ Xcopy C:\DISC\HLP\CAL     %us%:\DISC\HLP\CAL     /S /y
@ Xcopy C:\DISC\HLP\CAL1    %us%:\DISC\HLP\CAL1    /S /y
@ Xcopy C:\DISC\HLP\CYR     %us%:\DISC\HLP\CYR     /S /y
@ Xcopy C:\DISC\HLP\EXE     %us%:\DISC\HLP\EXE     /S /y
@ Xcopy C:\DISC\HLP\FISH    %us%:\DISC\HLP\FISH    /S /y
@ Xcopy C:\DISC\HLP\JOB     %us%:\DISC\HLP\JOB     /S /y
@ Xcopy C:\DISC\HLP\LNK     %us%:\DISC\HLP\LNK     /S /y
@ Xcopy C:\DISC\HLP\LST     %us%:\DISC\HLP\LST     /S /y
@ Xcopy C:\DISC\HLP\MYJOB   %us%:\DISC\HLP\MYJOB   /S /y
@ Xcopy C:\DISC\HLP\OTCH    %us%:\DISC\HLP\OTCH    /S /y
@ Xcopy C:\DISC\HLP\PODRED  %us%:\DISC\HLP\PODRED  /S /y
@ Xcopy C:\DISC\HLP\PREH    %us%:\DISC\HLP\PREH    /S /y
@ Xcopy C:\DISC\HLP\REG     %us%:\DISC\HLP\REG     /S /y
@ Xcopy C:\DISC\HLP\SAVE    %us%:\DISC\HLP\SAVE    /S /y
@ Xcopy C:\DISC\HLP\TASK    %us%:\DISC\HLP\TASK    /S /y
@ Xcopy C:\DISC\HLP\URL     %us%:\DISC\HLP\URL     /S /y
@ Xcopy C:\DISC\HLP\URL     %us%:\DISC\HLP\URL     /S /y
@ Xcopy C:\DISC\HLP\VBS     %us%:\DISC\HLP\VBS     /S /y
@ C:\HLP\VBS\COPY_PRG.VBS
GOTO END
 
 :PASSON
 set pass0=ON
 @ C:\HLP\LNK\PASSWORD.lnk %pass0%
 GOTO END

 :PASSOFF
set pass0=OFF
@ C:\HLP\LNK\PASSWORD.lnk %pass0%
GOTO END



  :END
      mode con cols=80 lines=20
  @   cls
  @   %SystemRoot%\system32\net use
  @   timeout /T  5
  @ REM  %wait% 6 > NIL



