     @ECHO off


     @ rem !!! MNOGO VAGNO ZADALGITELNI DIREKTORII  C:\DISC\ARHI    D:\Sync\ARHI D:\Sync\ARHI\HOME  D:\Sync\GOD
     @ rem !!! MNOGO VAGNO FAYLA RABOTI NORMALNO. AKO IMA PROBLEM UVELICHI PARVO VREMETRAENETO NA timeout  
     @ rem mode con cols=20 lines=35
     @ copy C:\disc\HLP\EXE\SnapTimer\06.ini  C:\disc\HLP\EXE\SnapTimer\SnapTimer.ini
     @ TASKKILL /F /IM "UPDA_K.EXE"
     @ copy c:\hlp\bat\UPDA_S.BAT c:\hlp\bat\000-UPDA_S.BAT
     @  IF EXIST C:\disc\HLP\EXE\SnapTimer\SnapTimer.exe  start C:\disc\HLP\EXE\SnapTimer\SnapTimer.exe

     @  start "C:\DISC\HLP\LNK\Image Eye.LNK" C:\DISC\HLP\IMAGE\ARHIS.jpg
     
      ping 127.0.0.1 -n 30 > nul 

      @ set Zip=C:\DISC\HLP\LNK\WinZip.lnk
      @ set dest=C:\DISC\ARHI\ARH
      @ set dt=19
      @ set grup=HOME
      @ set kray=NE

     @  TASKKILL /F /IM "Image Eye.EXE"
     @  start "C:\DISC\HLP\LNK\Image Eye.LNK" C:\DISC\HLP\IMAGE\ARHI.jpg
         ping 127.0.0.1 -n 6 > nul        

     @ IF NOT EXIST C:\DISC\ARHI\ (cd C:\ 
                                        MKDIR C:\DISC\ARHI) 
     @ IF NOT EXIST C:\DISC\ARHI\ARH\ (cd C:\ 
                                        MKDIR C:\DISC\ARHI\ARH) 
     @ IF NOT EXIST C:\DISC\ARHI\ARHI\ (cd C:\ 
                                        MKDIR C:\DISC\ARHI\ARHI) 
     @ IF NOT EXIST D:\Sync\ARHI\ (cd C:\ 
                                        MKDIR D:\Sync\ARHI) 
     @ IF NOT EXIST D:\Sync\ARHI\%grup%\ (cd C:\ 
                                        MKDIR D:\Sync\ARHI\%grup%) 
     @ IF NOT EXIST D:\Sync\GOD\ (cd C:\ 
                                        MKDIR D:\Sync\GOD) 
     @ IF NOT EXIST D:\Sync\GOD\\%grup%\  (cd C:\ 
                                        MKDIR D:\Sync\GOD\%grup%) 
 
      @ REM *************  NACHALO NA FIRMI *********************************************************

     @ set ne=M1
     @ GOTO %ne%

     :M1
     CLS   
     @ set go=M1%dt%
     @ set ne=OBSHTO
     @ GOTO ARHIVE 


     @  REM *************  KRAY NA FIRMI *********************************************************

   :ARHIVE
        @ IF EXIST C:\%go%\arhi.dbf ( 
          ECHO ARHIV %GO%
          del %dest% /Q 
         @ START \DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\DISC\HLP\BAT\ARHI-S.BAT
         ping 127.0.0.1 -n 3 > nul 
         @ REM    timeout 3 > NUL
         %Zip% -min -a C:\DISC\ARHI\%go% %dest%
         ping 127.0.0.1 -n 3 > nul 
         del %dest% /Q  
       ) else ( echo   NO %go% 
       ) 

      @ IF EXIST C:\%go%\mese.dbf ( 
          ECHO ARHIV F%GO%
          del %dest% /Q 
         @ START \DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\DISC\HLP\BAT\ARHI-F.BAT
         @ REM    timeout 5 > NUL
         %Zip% -min -a C:\DISC\ARHI\F%go% %dest%
         del %dest% /Q  
       ) else ( echo   NO F%go% 
       ) 
    
       GOTO %ne%
     @ REM  *************************  KRAY NA ARHIV SCHET I ZAPLATI ***************************


     @ REAM ***************************  OBOBSHTEN ARHIV GOD19     *******************************
    :OBSHTO
 

     @ IF EXIST C:\DISC\GOD%dt%\ (ECHO ARHIV GOD%dt%.zip
     @ %Zip% -min -a -p -r C:\DISC\ARHI\%grup%-GOD%dt%.zip C:\DISC\GOD%dt%\*.*
     )  else  (echo NO EXIST C:\DISC\GOD%dt%\
     ) 

     @ REM  ***************************  OBOBSHTE ARHIV HOME_19     *******************************
     @ REM *!!!!!!!AKO NYAMA FAYL ZA ZAPLATI IZTRIY TRETIQ RED f??%dt%.zip ...... !!!!!!!!!!*
     @ ECHO ARHIV %grup%_%dt%.zip
     @ DEL C:\DISC\ARHI\%grup%_%dt%.zip
       ping 127.0.0.1 -n 3 > nul
   
     @ REM  ZAPLATITE NE SE SLAGAT NA 3-TI RED A NA VTORI !!!!!!
     @ %Zip% -min -a C:\DISC\ARHI\%grup%_%dt%.zip C:\DISC\ARHI\??%dt%.zip C:\DISC\HLP\JOB\INFO.dbf C:\DISC\HLP\JOB\REGL.dbf ^
                   C:\DISC\HLP\SAVE\HLP.dbf C:\DISC\ARHI\%grup%-GOD%dt%.zip  
     @ REM         C:\DISC\ARHI\f??%dt%.zip C:\DISC\HLP\FISH\NOME.dbf C:\DISC\HLP\FISH\FHLP.dbf 
     @ ping 127.0.0.1 -n 3 > nul
     @ REM  timeout 15 > NUL
     ECHO DEL D:\SYNC\ARHI\%grup%\%grup%_%dt%.zip
     @ DEL  D:\SYNC\ARHI\%grup%\%grup%_%dt%.zip 

     ECHO COPY C:\DISC\ARHI\%grup%_%dt%.ZIP D, F, K, L, M, N, O, P 
     @ COPY C:\DISC\ARHI\%grup%_%dt%.ZIP D:\SYNC\ARHI\%grup%\%grup%_%dt%.ZIP
     @ REM COPY C:\DISC\ARHI\%grup%_%dt%.ZIP F:\DISC\ARHI\%grup%_%dt%.ZIP
     @ REM COPY C:\DISC\ARHI\%grup%_%dt%.ZIP K:\DISC\ARHI\%grup%_%dt%.ZIP
     @ REM COPY C:\DISC\ARHI\%grup%_%dt%.ZIP M:\DISC\ARHI\%grup%_%dt%.ZIP
     @ REM COPY C:\DISC\ARHI\%grup%_%dt%.ZIP O:\DISC\ARHI\%grup%_%dt%.ZIP

     @ REM ***************************  IZTRIVA SCHET I ZAPLATI ZIP FYLOVE ******************************
      ECHO   DEL C:\DISC\ARHI\??%dt%*.ZIP,   F??%dt%*.ZIP
      @ DEL  C:\DISC\ARHI\??%dt%*.ZIP
      @ DEL  C:\DISC\ARHI\F??%dt%*.ZIP
   
     @ REM ***************************  IZTRIVA D:\SYNC\ARHI\HOME\HOME_19.zip ******************************
     @ ECHO DEL D:\SYNC\ARHI\%grup%\%grup%_%dt%.zip
     @ DEL  D:\SYNC\GOD\%grup%\%grup%-GOD%dt%*.ZIP
     
     @ REM *************************** SAZDAVA NA D:\SYNC\ARHI\HOME \HOME_19.zip ****************************** 
      REM   %Zip% -min -a C:\DISC\ARHI\%go%               %dest%
     @ %Zip% -min -a -r D:\SYNC\GOD\%grup%\%grup%-GOD%dt%  C:\DISC\GOD%dt%
    
      GOTO STRATSYNC

      :STRATSYNC
      @ CLS 
      @ echo.  
      @ echo.
      @ start C:\DISC\HLP\LNK\SYNC.lnk /silent
      @ ping 127.0.0.1 -n 30 > nul 
      @ REM timeout /T 30 
      @ start /B  TASKKILL /F /IM sync-taskbar.exe /IM sync-taskbar.exe
      @ start /B  TASKKILL /F /IM sync-worker.exe /IM sync-worker.exe
      @ del c:\DISC\HLP\BAT\000-UPDA_S.BAT
      @ TASKKILL /F /IM "Image Eye.EXE"
      @ start "C:\DISC\HLP\LNK\Image Eye.LNK" C:\DISC\HLP\IMAGE\ARHIK.jpg
         ping 127.0.0.1 -n 6 > nul 
      @ REM timeout /T 10
      @ TASKKILL /F /IM SnapTimer.exe
      @ TASKKILL /F /IM "Image Eye.EXE" 
      @ CLS 
      @ GOTO KRAY
      @ echo.  
      @ echo.
      @ echo     SYNC OFF    
    
    

      :KRAY


       EXIT


