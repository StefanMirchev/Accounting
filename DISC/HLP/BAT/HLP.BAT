   @ ECHO off
   @ REM SPRI mode con cols=15 lines=5 KOGATO SE STARTIRA PREZ ???S.BAT
   @ copy C:\DISC\HLP\EXE\SnapTimer\15.ini  C:\DISC\HLP\EXE\SnapTimer\SnapTimer.ini
   @ TASKKILL /F /IM "UPDA_K.EXE"
   @ copy C:\DISC\HLP\bat\UPDA_S.BAT C:\DISC\HLP\bat\000-UPDA_S.BAT

   @  IF EXIST C:\DISC\HLP\EXE\SnapTimer\SnapTimer.exe  start C:\DISC\HLP\EXE\SnapTimer\SnapTimer.exe

   @ START "C:\DISC\HLP\LNK\Image Eye.LNK" C:\HLP\IMAGE\HLPS.jpg
   @ timeout /T 35
   @ TASKKILL /F /IM "Image Eye.EXE" 
   @ START "C:\DISC\HLP\LNK\Image Eye.LNK" C:\HLP\IMAGE\HLP.jpg
     GOTO DHLP
        

    :DHLP 
   @ CLS
   @ echo.  
   @ echo. 
   @ echo      \DISC\HLP
   @ REM timeout /T 3
   @ DEL D:\SYNC\DISC\HLP.ZIP
   @ C:\DISC\HLP\LNK\WinZip.lnk -min -a -r D:\SYNC\DISC\HLP.ZIP C:\DISC\HLP\*.*
   GOTO  COMP  

    :COMP
   @ CLS
   @ echo.  
   @ echo. 
   @ echo      \DISC\COMP
   @ REM timeout /T 3
   @ DEL D:\SYNC\DISC\COMP.ZIP
   @ C:\DISC\HLP\LNK\WinZip.lnk -min -a -r D:\SYNC\DISC\COPM.ZIP C:\DISC\COMP\*.*
   GOTO  HLP
  
     :HLP   
   @ CLS
   @ echo.  
   @ echo. 
   @ echo       C:\HLP 
   @ DEL D:\SYNC\HLP\HLP*.ZIP
   @ REM  timeout /T 3 
   @ C:\DISC\HLP\LNK\WinZip.lnk -min -a -r D:\SYNC\HLP\HLP.ZIP C:\HLP\*.*
   GOTO KORT


     :KORT   
   @ CLS
   @ echo.  
   @ echo. 
   @ echo       C:\KORT
   @ DEL D:\SYNC\HLP\KORT*.ZIP
   @ timeout /T 3 
   @ C:\DISC\HLP\LNK\WinZip.lnk -min  -a -s"485754433689E4A4" D:\SYNC\HLP\KORT.ZIP C:\KORT\*.*
   REM  GOTO SINC
        EXIT 
  

   :HAND    
   @ CLS
   @ echo.  
   @ echo. 
   @ echo       HAND 
   @   timeout /T 3
   @   DEL D:\SYNC\HAND\HAND01.ZIP
   @    C:\DISC\HLP\LNK\WinZip.lnk -min -a -r D:\SYNC\HAND\HAND01.ZIP C:\HAND\HAND01\*.*
   @   DEL D:\SYNC\HAND\HAND02.ZIP
   @     C:\DISC\HLP\LNK\WinZip.lnk -min -a -r D:\SYNC\HAND\HAND02.ZIP C:\HAND\HAND02\*.*
   @    DEL D:\SYNC\HAND\HAND04.ZIP
   @    C:\DISC\HLP\LNK\WinZip.lnk -min -a -r D:\SYNC\HAND\HAND04.ZIP C:\HAND\HAND03\*.*
     GOTO SINC

       :SINC  
   @ CLS
   @ echo.  
   @ echo. 
   @ echo  START Sync
   @     start C:\DISC\HLP\LNK\MEGAsync.lnk 
   @ timeout /T 900


   @ CLS
   @ echo.  
   @ echo. 
   @ echo  END SINC  
   @ TASKKILL /F /IM "Image Eye.EXE" 
   @ start "C:\DISC\HLP\LNK\Image Eye.LNK" C:\HLP\IMAGE\HLPK.jpg
   @ del C:\DISC\HLP\bat\000-UPDA_S.BAT

   @ timeout /T 5
   @ TASKKILL /F /IM "Image Eye.EXE" 
   @ TASKKILL /F /IM SnapTimer.exe
   @ timeout /T 5
   @ copy C:\DISC\HLP\EXE\SnapTimer\SnapTimer0.ini  C:\DISC\HLP\EXE\SnapTimer\SnapTimer.ini

   REM   EXIT 
