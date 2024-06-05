     @ECHO off


     @ set Zip=C:\DISC\HLP\LNK\WinZip.lnk
     @ set dest=D:\SYNC
     @ set dt=24
     @ set kray=NE
     for /F "tokens=*" %%A in (C:\DISC\HLP\JOB\PAKE.TXT) do (
               set var=%%A) 
      set pake=%var:~0,4%
   
     @ REM 1. Shedule Task 
     @ REM     - WINDOWS 10 RUN  C:\HLP\TASK\KOSI\_TASK.CMD  -> C:\HLP\TASK\KOSI\_TASK.CMD  "SCHTASKS /Create /SC DAILY /MO 2....."
     @ REM TOVA NE E VQRNO    - WINDOWS XP HOME Task-> ARHI-SYS.BAT  NE -> ARHI-SY.BAT

     @ REM 2. C:\DISC\HLP\LNK\WinZip.lnk  
     @ REM 3."C:\Program Files\WinZip\WINZIP32.EXE"
 
     @ REM 4. C:\DISC\HLP\BAT\ARHI-SY.BAT
     @ REM 5. C:\DISC\HLP\BAT\ARHI-SYS.BAT  
 
     @ REM 4. C:\DISC\HLP\BAT\ARHI-S.BAT  
     @ REM 5. C:\DISC\HLP\BAT\ARHI-F.BAT  
 
     @ REM 6. C:\DISC\HLP\EXE\hstart.exe 

     @ REM 7. "C:\DISC\HLP\EXE\Image Eye.exe" 
     @ REM 8. "C:\DISC\HLP\LNK\Image Eye.lnk"
     @ REM 9. C:\DISC\HLP\IMAGE\ARHIS.jpg   
     @ REM 10. C:\DISC\HLP\IMAGE\ARHI.jpg  
     @ REM 11. C:\DISC\HLP\IMAGE\ARHIK.jpg

     @ REM 12. C:\disc\HLP\EXE\SnapTimer\SnapTimer.ini 

     @ rem !!! MNOGO VAGNO ZADALGITELNI DIREKTORII  %dest%    %dest%\ARHI %dest%\ARHI\HOME  %dest%\GOD
     @ rem !!! MNOGO VAGNO FAYLA RABOTI NORMALNO. AKO IMA PROBLEM UVELICHI PARVO VREMETRAENETO NA timeout  
     @ rem mode con cols=20 lines=35
     @ copy C:\disc\HLP\EXE\SnapTimer\06.ini  C:\disc\HLP\EXE\SnapTimer\SnapTimer.ini
     @ start C:\DISC\HLP\LNK\ImageEye.lnk C:\DISC\HLP\IMAGE\ARHIS.jpg

     @ IF  %pake%==HOME  (ping 127.0.0.1 -n 30 > nul ) ELSE  (timeout 30 > NUL)

     @ TASKKILL /F /IM "Image Eye.EXE"

     @ IF  %pake%==HOME  (ping 127.0.0.1 -n 1 > nul ) ELSE  (timeout 1 > NUL)

     @  start C:\DISC\HLP\LNK\ImageEye.lnk C:\DISC\HLP\IMAGE\ARHI.jpg
 

     @ IF NOT EXIST %dest%\ARHI\ (cd C:\ 
                                   MKDIR %dest%\ARHI) 
     @ IF NOT EXIST %dest%\ARHI\%pake%\ (cd C:\ 
                                        MKDIR %dest%\ARHI\%pake%) 
     @ IF NOT EXIST %dest%\GOD\ (cd C:\ 
                                        MKDIR %dest%\GOD) 
     @ IF NOT EXIST %dest%\GOD\%pake%\  (cd C:\ 
                                        MKDIR %dest%\GOD\%pake%) 
 
     @  REM *********************   NACHALO  FIRMI   D:\Sync\ARHI\KOSI\KOSI_19.zip  **********************************

      set fir=AP AR HO KA KK M1 XX
      set x=0
      :loop
      call  set go=%%fir:~%x%,2%%%dt%
 
     @ IF EXIST C:\%go%\arhi.dbf ( 
          ECHO ARHIV %go%
        rem  del %dest%\ARHI /Q 
      @ START c:\DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\DISC\HLP\BAT\ARHI-S.BAT
      @ rem    START c:\DISC\HLP\EXE\hstart.exe C:\DISC\HLP\BAT\ARHI-S.BAT
      @ IF  %pake%==HOME  (ping 127.0.0.1 -n 2 > nul ) ELSE  (timeout 2 > NUL)
  
       %Zip% -min -a %dest%\ARHI\%pake%\%go% %dest%\ARHI

      @ IF  %pake%==HOME  (ping 127.0.0.1 -n 2 > nul ) ELSE  (timeout 2 > NUL)

           del %dest%\ARHI /Q  
         ) else ( echo   NO %go% 
         ) 
 
      @  REM *********************   NACHALO ZAPLATI  D:\Sync\ARHI\KOSI\KOSI_19.zip  *******************************
      @ IF EXIST C:\%go%\mese.dbf ( 
          del %dest%\ARHI /Q 
         @     START c:\DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\DISC\HLP\BAT\ARHI-F.BAT
         @ rem  START c:\DISC\HLP\EXE\hstart.exe C:\DISC\HLP\BAT\ARHI-F.BAT
         @ IF  %pake%==HOME  (ping 127.0.0.1 -n 2 > nul ) ELSE  (timeout 2 > NUL)


         %Zip% -min -a %dest%\ARHI\%pake%\F%go% %dest%\ARHI
         @ IF  %pake%==HOME  (ping 127.0.0.1 -n 2 > nul ) ELSE  (timeout 2 > NUL)
  
         del %dest%\ARHI /Q  
       ) else ( echo   NO F%go% 
       ) 
     @  REM *********************   KRAY ZAPLATI F??19.zip  *******************************
        
         set /a x=%x%+3
        if %go% NEQ XX%dt%  (goto loop) 

    @  REM *********************   KRAY  FIRMI   ??19.zip  **********************************

     @ REM  ***************************    NACHALO  KOSI_19.ZIP     *******************************
      
     @      DEL %dest%\ARHI\%pake%\%pake%_%dt%.zip 

     @ IF  %pake%==HOME  (ping 127.0.0.1 -n 2 > nul ) ELSE  (timeout 2 > NUL)

      
     @ REM *!!!!!!!AKO NYAMA FAYL ZA ZAPLATI IZTRIY TRETIQ RED f??%dt%.zip ...... !!!!!!!!!!*    
     @ REM  ZAPLATITE NE SE SLAGAT NA 3-TI RED A NA VTORI !!!!!!

   @ IF EXIST %dest%\ARHI\%pake%\F??%dt%.zip ( 
     @ %Zip% -min -a %dest%\ARHI\%pake%\%pake%_%dt%.zip %dest%\ARHI\%pake%\??%dt%.zip c:\disc\hlp\JOB\INFO.dbf C:\DISC\HLP\JOB\REGL.dbf ^
        C:\disc\hlp\save\hlp.dbf C:\disc\hlp\fish\nome.dbf c:\disc\hlp\job\bala.dbf %dest%\ARHI\%pake%\F??%dt%.zip
         ) else (
   @ %Zip% -min -a %dest%\ARHI\%pake%\%pake%_%dt%.zip %dest%\ARHI\%pake%\??%dt%.zip C:\DISC\HLP\JOB\INFO.dbf C:\DISC\HLP\JOB\REGL.dbf C:\DISC\HLP\SAVE\HLP.dbf  
                ) 
     @ IF  %pake%==HOME  (ping 127.0.0.1 -n 2 > nul ) ELSE  (timeout 2 > NUL)

     @      DEL %dest%\ARHI\%pake%\??%dt%.zip 
     @      DEL %dest%\ARHI\%pake%\F??%dt%.zip 
     @ IF  %pake%==HOME  (ping 127.0.0.1 -n 2 > nul ) ELSE  (timeout 2 > NUL)

     @ REM  ***************************   KRAY  KOSI_19.ZIP     *******************************

     @ REM ***************************  NACHALO  GOD19.ZIP     *******************************
  

     @      DEL %dest%\GOD\%pake%_GOD%dt%.zip
     @ IF EXIST C:\DISC\GOD%dt%\ (ECHO ARHIV GOD%dt%.zip
     @ %Zip% -min -a -p -r %dest%\GOD\%pake%\%pake%_GOD%dt%.zip C:\DISC\GOD%dt%\*.*
       )  else  (echo NO EXIST C:\DISC\GOD%dt%\
       ) 
     @ IF  %pake%==HOME  (ping 127.0.0.1 -n 2 > nul ) ELSE  (timeout 2 > NUL)

     @ REM ***************************  KRAY  GOD19.ZIP     *******************************

     rem  GOTO STRATSYNC

      rem  :STRATSYNC
      @ CLS 
      @ echo.  
      @ echo.


     rem *********************************** BEGIN CHECK FILE HOME_%dt%.zip **********************************
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
rem *********************************** END CHECK FILE HOME_%dt%.zip **********************************

      @ start C:\DISC\HLP\LNK\MEGAsync.lnk /silent
      @ IF  %pake%==HOME  (ping 127.0.0.1 -n 30 > nul ) ELSE  (timeout 30 > NUL)

      @ TASKKILL /F /IM "Image Eye.EXE"
      @ start C:\DISC\HLP\LNK\ImageEye.lnk C:\DISC\HLP\IMAGE\ARHIK.jpg
          )
      @ IF  %pake%==HOME  (ping 127.0.0.1 -n 3 > nul ) ELSE  (timeout 3 > NUL)
      @ TASKKILL /F /IM SnapTimer.exe
      @ TASKKILL /F /IM "Image Eye.EXE"
      @ CLS 
      @ GOTO KRAY
      @ echo.  
      @ echo.
      @ echo     SYNC OFF    
    
    

      :KRAY
    rem   @ TASKKILL /F /IM conhost.exe
    rem  @ TASKKILL /F /IM ntvdm.exe

       EXIT


