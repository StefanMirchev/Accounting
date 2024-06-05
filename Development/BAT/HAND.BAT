   @ ECHO off
   @ REM SPRI mode con cols=15 lines=5 KOGATO SE STARTIRA PREZ ???S.BAT
   @ copy C:\disc\HLP\EXE\SnapTimer\05.ini  C:\disc\HLP\EXE\SnapTimer\SnapTimer.ini

   @ TASKKILL /F /IM "UPDA_K.EXE"
   @ copy c:\hlp\bat\UPDA_S.BAT c:\hlp\bat\000-UPDA_S.BAT



   @  IF EXIST C:\disc\HLP\EXE\SnapTimer\SnapTimer.exe  start C:\disc\HLP\EXE\SnapTimer\SnapTimer.exe
 
   @ START "C:\DISC\HLP\LNK\Image Eye.LNK" C:\HLP\IMAGE\HLPS.jpg
   @ timeout /T 5
   @ TASKKILL /F /IM "Image Eye.EXE" 
   @ START "C:\DISC\HLP\LNK\Image Eye.LNK" C:\HLP\IMAGE\HLP.jpg

   @ CLS
   @ echo.  
   @ echo. 
   @ echo      PRIN 
   @ REM timeout /T 1

   @ DEL D:\SYNC\DISC\HLP.ZIP
   @ C:\DISC\HLP\LNK\WinZip.lnk -min -a -r D:\SYNC\DISC\HLP.ZIP C:\DISC\HLP\*.*
     :NEXT   
  
   @ CLS
   @ echo.  
   @ echo. 
   @ echo       HLP 
   @ DEL D:\SYNC\HLP\HLP*.ZIP
   @ REM  timeout /T 10 
   @ C:\DISC\HLP\LNK\WinZip.lnk -min -a -r D:\SYNC\HLP\HLP.ZIP C:\HLP\*.*


      :NEXT   

   @ CLS
   @ echo.  
   @ echo. 

 @ CLS
   @ echo.  
   @ echo. 
   @ echo       HAND 

   @ REM  timeout /T 10 
   @ DEL D:\SYNC\HAND\HAND01.ZIP
  @ C:\DISC\HLP\LNK\WinZip.lnk -min -a -r D:\SYNC\HAND\HAND01.ZIP C:\HAND\HAND01\*.*
   @ DEL D:\SYNC\HAND\HAND02.ZIP
   @ C:\DISC\HLP\LNK\WinZip.lnk -min -a -r D:\SYNC\HAND\HAND02.ZIP C:\HAND\HAND02\*.*
   @ DEL D:\SYNC\HAND\HAND03.ZIP
   @ C:\DISC\HLP\LNK\WinZip.lnk -min -a -r D:\SYNC\HAND\HAND03.ZIP C:\HAND\HAND03\*.*
      :NEXT   

   @ CLS
   @ echo.  
   @ echo. 

   @ echo   MUST BE 4 COPIES

   @ REM timeout /T 10 

   @ DEL D:\Sync\WORK\WORK.ZIP
  @ C:\DISC\HLP\LNK\WinZip.lnk -min -a -r D:\Sync\WORK\WORK.ZIP D:\WORK\*.*   
D:\WORK

   :NEXT   
   
   @ CLS
   @ echo.  
   @ echo. 
   @ echo  START SINC  

   @ rem  start C:\DISC\HLP\LNK\BoxSync /silent
   @ start C:\DISC\HLP\LNK\SYNC.lnk /silent
   @ timeout /T 147
   @ rem start /B  TASKKILL /F /IM BoxSync.exe 
   @ start /B  TASKKILL /F /IM sync-taskbar.exe  
   @ start /B  TASKKILL /F /IM sync-worker.exe 

   @ CLS
   @ echo.  
   @ echo. 
   @ echo  END SINC  
   @ TASKKILL /F /IM "Image Eye.EXE" 
   @ start "C:\DISC\HLP\LNK\Image Eye.LNK" C:\HLP\IMAGE\HLPK.jpg
   @ del c:\hlp\bat\000-UPDA_S.BAT

   @ timeout /T 5
   @ TASKKILL /F /IM "Image Eye.EXE" 
   @ TASKKILL /F /IM SnapTimer.exe
   @ timeout /T 5
   @ copy C:\disc\HLP\EXE\SnapTimer\SnapTimer0.ini  C:\disc\HLP\EXE\SnapTimer\SnapTimer.ini
   
   REM   :KRAY
   REM   EXIT 
