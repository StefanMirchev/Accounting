     @ ECHO off    
     @ REM SPRI mode con cols=15 lines=5 KOGATO SE STARTIRA PREZ ???S.BAT
     @ REM mode con cols=15 lines=5
     @ start "C:\DISC\HLP\LNK\Image Eye.LNK" C:\HLP\IMAGE\ARHI.jpg
     @ set Zip=C:\DISC\HLP\LNK\WinZip.lnk

     @ CLS
     @ echo.  
     @ echo. 
     @ echo      SYNC 
     @ START %Zip% -min -a D:\Sync\PROC\PODR.ZIP @C:\hlp\podred\cpa.lst

 
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     FLASHKA 
     @ start %Zip% -min -a F:\IDISK\PROC\PODR.ZIP @C:\hlp\podred\cpa.lst
     
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     CHEF
     @ copy c:\hlp\podred\pod?.??? K:\hlp\podr
     
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     KOSI-100
     @ copy c:\hlp\podred\pod*.??? M:\hlp\podr
   
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     KOSI_80
     @ copy c:\hlp\podred\pod*.??? 0:\hlp\podr
     
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     PETQ
     @ copy c:\hlp\podred\pod?.??? Q:\hlp\podr
     
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo    START SYNC 
     @ start C:\DISC\HLP\LNK\SYNC.lnk 

     @ timeout 60 > NUL
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     END SYNC 
     @ TASKKILL /F /IM sync-taskbar.exe /IM sync-taskbar.exe 
     @ TASKKILL /F /IM sync-worker.exe /IM sync-worker.exe 
     @ TASKKILL /F /IM "Image Eye.EXE" 

     

