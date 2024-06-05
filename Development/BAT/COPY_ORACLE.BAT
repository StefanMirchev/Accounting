
@    %SystemRoot%\system32\net use Z: \\192.168.0.206\Documents /YES
@ timeout 3 &  cls
@ REM       if exist F:\_FLASH set us=F
@ REM       if exist E:\_FLASH set us=E
@ rem       if exist M:\__KOSI-C set us=M
@ rem    if exist P:\__KOSI-G set us=P
@ rem       if exist Q:\__KOSI-H set us=Q
@ rem       if exist R:\__STEF-C set us=R
@        if exist Z:\  set us=Z


@ echo COPY TO %us%
@ rem pause & exit
@ timeout 3

@ echo F | xcopy "%us%:\WIN 10 32.ova"  "H:\VIBOX_SAVE\WIN 10 32.ova" /S /y
@ rem  echo HLP & pause 

 @ ECHO Oracal VM VirtualBox & Pause
  