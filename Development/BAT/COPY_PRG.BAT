 @ECHO OFF


@ rem 1.FLASH E F 
@ REM   %SystemRoot%\system32\net use E: \\FLASH\E /YES
@ REM   %SystemRoot%\system32\net use F: \\FLASH\F /YES
@ rem 2.ACCO  K L
@ REM   %SystemRoot%\system32\net use K: \\192.168.0.209\C /YES
@ REM   %SystemRoot%\system32\net use L: \\192.168.0.209\D /YES
@ rem 3.KOSI  M N I J
@ rem      %SystemRoot%\system32\net use M: \\192.168.0.202\C /YES
@ rem      %SystemRoot%\system32\net use N: \\192.168.0.202\D /YES
@ rem      %SystemRoot%\system32\net use I: \\192.168.0.202\G /YES
@ rem      %SystemRoot%\system32\net use J: \\192.168.0.202\H /YES
@ rem 4.STEF  O P
@        %SystemRoot%\system32\net use O: \\192.168.0.203\C /YES
@        %SystemRoot%\system32\net use P: \\192.168.0.203\D /YES
@ rem 5.CHEF  Q R
@        %SystemRoot%\system32\net use Q: \\192.168.0.208\C /YES
@        %SystemRoot%\system32\net use R: \\192.168.0.208\D /YES
@ rem 6.KOSY  S T
@        %SystemRoot%\system32\net use S: \\192.168.0.206\kosy_c /YES
@        %SystemRoot%\system32\net use T: \\192.168.0.206\kosy_d /YES
@ rem 7.LENOVO-ME301T U/204 V/205 
@        %SystemRoot%\system32\net use U: http://192.168.0.204:2221/ /YES
@        %SystemRoot%\system32\net use V: http://192.168.0.205:2221/ /YES
@        %SystemRoot%\system32\net use U: \\192.168.0.204:2221 /YES
@        %SystemRoot%\system32\net use V: \\192.168.0.205:2221 /YES
  @   cls
  @   %SystemRoot%\system32\net use
  @ pause
exit



   timeout 3 &  cls
 set v0=1F
 @ if exist E:\_FLASH ( set us=E
  GOTO ARHIV  ) else (@ cls & @ echo E:\_FLASH & pause  )
 :1F
 set v0=2K
 @ if exist F:\_FLASH   ( set us=F
 GOTO ARHIV  ) else (@ cls & @ echo F:\_FLASH & pause ) 

 :2K
 set v0=3M
 @ if exist K:\__ACCO-C ( set us=K
 GOTO ARHIV  ) else (@ cls & @ echo K:\__ACCO-C & pause ) 

 :3M
 set v0=3I
 @ if exist M:\__KOSI-C ( set us=M
 GOTO ARHIV  ) else (@ cls & @ echo M:\__KOSI-C & pause ) 
 :3I
 set v0=3J
 @ if exist I:\__KOSI-G ( set us=I
 GOTO ARHIV  ) else (@ cls & @ echo I:\__KOSI-G & pause ) 
 :3J
 set v0=4O
 @ if exist J:\__KOSI-H ( set us=J
 GOTO ARHIV  ) else (@ cls & @ echo NOT J:\__KOSI-H & pause ) 

 :4O
 set v0=5Q
 @ if exist J:\__STEF-C ( set us=O
 GOTO ARHIV  ) else (@ cls & @ echo NOT J:\__STEF-C & pause )

 :5Q
 set v0=5S
 @ if exist Q:\__CHEF-C ( set us=Q
 GOTO ARHIV  ) else (@ cls & @ echo Q:\__CHEF-C & pause )

 :6S
 set v0=4P
 @ if exist S:\A_KOSY-C ( set us=S
 GOTO ARHIV  ) else (@ cls & @ echo S:\A_KOSY-C & pause )

exit 
 @   C:\HLP\VBS\COPY_PRG.VBS
 @   ECHO DISC & Pause


:ARHIV
@ cls
@ echo COPY TO %us%
@ pause & exit
@ timeout 3


rem @ Xcopy C:\HLP\ASCI   %us%:\HLP\ASCI    /S /y
rem @ Xcopy C:\HLP\BAT    %us%:\HLP\BAT     /S /y
rem @ Xcopy C:\HLP\BATEXE %us%:\HLP\BATEXE  /S /y
rem @ Xcopy C:\HLP\CAL    %us%:\HLP\CAL     /S /y
rem @ Xcopy C:\HLP\CAL1   %us%:\HLP\CAL1    /S /y
rem @ Xcopy C:\HLP\FISH   %us%:\HLP\FISH    /S /y
rem @ Xcopy C:\HLP\OTCH   %us%:\HLP\OTCH    /S /y
rem @ Xcopy C:\HLP\PODRED %us%:\HLP\PODRED  /S /y
rem @ Xcopy C:\HLP\ASCI   %us%:\HLP\        /S /y
rem @ Xcopy C:\HLP\BAT    %us%:\HLP\BAT     /S /y
rem @ Xcopy C:\HLP\BATEXE %us%:\HLP\BATEXE  /S /y
rem @ Xcopy C:\HLP\CAL    %us%:\HLP\CAL     /S /y
rem @ Xcopy C:\HLP\CAL1   %us%:\HLP\CAL1    /S /y
rem @ Xcopy C:\HLP\FISH   %us%:\HLP\FISH    /S /y
rem @ Xcopy C:\HLP\OTCH   %us%:\HLP\OTCH    /S /y
rem @ Xcopy C:\HLP\PODRED %us%:\HLP\PODRED  /S /y
rem @ Xcopy C:\HLP\SAVE   %us%:\HLP\SAVE    /S /y
rem @ Xcopy C:\HLP\VBS    %us%:\HLP\VBS     /S /y
rem rem  rem  echo HLP & pause
rem @ Xcopy C:\DISC\GOD22        %us%:\DISC\GOD22        /S /y
rem @ Xcopy C:\DISC\COMP\Z_PECH  %us%:\DISC\COMP\Z_PECH  /S /y
rem @ Xcopy C:\DISC\HLP\ASCI     %us%:\DISC\HLP\ASCI     /S /y
rem @ Xcopy C:\DISC\HLP\BAT      %us%:\DISC\HLP\BAT      /S /y
rem @ Xcopy C:\DISC\HLP\BATEXE   %us%:\DISC\HLP\BATEXE   /S /y
rem @ Xcopy C:\DISC\HLP\CAL      %us%:\DISC\HLP\CAL      /S /y
rem @ Xcopy C:\DISC\HLP\CAL1     %us%:\DISC\HLP\CAL1     /S /y
rem @ Xcopy C:\DISC\HLP\FISH     %us%:\DISC\HLP\FISH     /S /y
rem @ Xcopy C:\DISC\HLP\OTCH     %us%:\DISC\HLP\OTCH     /S /y
rem @ Xcopy C:\DISC\HLP\PODRED   %us%:\DISC\HLP\PODRED   /S /y
rem @ Xcopy C:\DISC\HLP\SAVE     %us%:\DISC\HLP\SAVE     /S /y
rem @ Xcopy C:\DISC\HLP\VBS      %us%:\DISC\HLP\VBS      /S /y
echo %v0%
pause
GOTO %v0%