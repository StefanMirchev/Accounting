
@ rem   %SystemRoot%\system32\net use Z: \\192.168.0.206\Desktop /YES
@ timeout 3 &  cls
@ REM       if exist F:\_FLASH set us=F
@ REM       if exist E:\_FLASH set us=E
@ rem       if exist M:\__KOSI-C set us=M
@ rem    if exist P:\__KOSI-G set us=P
@ rem       if exist Q:\__KOSI-H set us=Q
@ rem       if exist R:\__STEF-C set us=R
@ rem       if exist Z:\  set us=Z



@ echo COPY TO S:\Desktop
@ rem pause & exit
@ timeout 3

@    echo F | xcopy "%1"  "\\192.168.0.206\kosy-c\Desktop" /S /y
@ rem  echo F | xcopy "%1"  "S:\Desktop" /S /y
@     echo F | xcopy "%1"  "\\25.18.113.181\Desktop" /S /y
@ timeout 5
@ rem  echo HLP & pause 

 @ rem  ECHO Oracal VM VirtualBox & Pause
  