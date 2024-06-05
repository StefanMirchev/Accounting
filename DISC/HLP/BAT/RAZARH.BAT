
  @ ECHO OFF


      @ IF NOT EXIST C:\DISC\HLP\LNK\WZUNZIP.lnk  ( @ start C:\DISC\HLP\EXE\FRAME\Frameless.exe "C:\DISC\HLP\IMAGE\01.JPG" mon=2 x=22  y=1  aot=NO  taskbar=NO  trans=alpha  
                                          EXIT )

      @ IF NOT EXIST "C:\Program Files\WinZip\WZUNZIP.EXE"  ( @  start C:\DISC\HLP\EXE\FRAME\Frameless.exe "C:\DISC\HLP\IMAGE\02.JPG" mon=2 x=22  y=1  aot=NO  taskbar=NO  trans=alpha '
                                           EXIT )   
     @ rem  start C:\DISC\HLP\EXE\FRAME\Frameless.exe "C:\DISC\HLP\IMAGE\RAZARH.png" mon=2 x=22  y=1  aot=NO  taskbar=NO  trans=alpha  
 
      for /F "tokens=*" %%A in (C:\DISC\HLP\JOB\PAKE.TXT) do (
               set var=%%A) 
      set pake=%var:~0,4%

     @ IF  %pake%==HOME  (set WAIT=C:\DISC\HLP\EXE\PING 127.0.0.1 -n) ELSE  (set WAIT=C:\DISC\HLP\EXE\timeout)
 
     @ set Zip=C:\DISC\HLP\LNK\WZUNZIP.lnk 
     @ set dest=D:\SYNC\ARHI
     @ set dt=24


     rem *********************************** CHECK FILE HOME_%dt%.zip **********************************
@ del C:\DISC\*.zip
@ del C:\DISC\SC9
@ timeout 1 > NUL
@ C:\DISC\HLP\PK\PKUNZIP.EXE -e  D:\Sync\ARHI\HOME\HOME_%dt%.zip HO%dt%.zip  C:\DISC\


@ timeout 3 > NUL
@ C:\DISC\HLP\PK\PKUNZIP.EXE -e  C:\DISC\HO%dt%.zip SC9 C:\DISC\
@ timeout 2 > NUL
@ IF EXIST C:\DISC\SC9 ( 
      @ C:\DISC\HLP\LNK\ImageEye.lnk C:\DISC\HLP\IMAGE\BADARHI.JPG
      goto KRAY
      )
rem *********************************** CHECK FILE HOME_%dt%.zip **********************************

 start C:\DISC\HLP\EXE\FRAME\Frameless.exe "C:\DISC\HLP\IMAGE\RAZARH.png" mon=2 x=22  y=1  aot=NO  taskbar=NO  trans=alpha 


    REM    goto KORA
           goto HOME
     :KORA
     @ set fir=AP EO KA KK KO TN TO XX
     @ set x=0
     @ set y=2
     @ set pake=KORA
     @ set ne=HOME
     @ goto loop

     :HOME
     @ set fir=M1 HO XX
     @ set x=0
     @ set y=2
     @ set pake=HOME
     @ set ne=KRAY
     @ goto loop 
     REM   ******************** NACHALO  RAZARHIVIRANE  ********************
    
    :loop

      call  set go=%%fir:~%x%,%y%%%%dt%
      @ rem PUSSNI ZA PROWERKA
      @ cls  
      @ rem  echo %x%
      @      echo.                                                     %go%
      @ rem  echo %y%
 
      @  %WAIT%  10 > NUL
          if %go%==XX%dt%  goto %ne% 
      @ IF NOT EXIST D:\%go% (MD D:\%go%) else (del d:\%go%\*.* /q )
      @ %WAIT%  3 > NUL
      @ ECHO %dest%\%pake%\%pake%_%dt%.zip %go%.zip d:\%go%
      @ %Zip% -o %dest%\%pake%\%pake%_%dt%.zip %go%.zip d:\%go%
      @ %Zip% -o d:\%go%\%go%.zip d:\%go%
      @ %WAIT%  3 > NUL  
      @ del d:\%go%\%go%.zip    
      @ %WAIT%  3 > NUL
      @ IF EXIST D:\%go%\arhi.dbf   copy C:\disc\hlp\podred\podred.mem d:\%go% 
      @ del d:\%go%\us_0.mem
      @ %WAIT%  3 > NUL
      @ d:
      @ cd d:\%go% 
      @  IF EXIST D:\%go%\arhi.dbf  start c:\DISC\HLP\EXE\hstart.exe /NOCONSOLE  c:\disc\hlp\podred\podred.exe 
      @ %WAIT%  3 > NUL
        set /a x=%x%+3
        goto  loop
REM   ******************** KRAY  RAZARHIVIRANE  ********************
     :KRAY
      @ del C:\DISC\*.zip
      @ del C:\DISC\SC9
      @ TASKKILL /F /IM Frameless.exe
      @ TASKKILL /F /IM "Image Eye.EXE"
      @ TASKKILL /F /IM ntvdm.exe
      EXIT




   
  