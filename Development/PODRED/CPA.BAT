     @ ECHO off    
     @ mode con cols=50 lines=10
     @ color 9F
     @ start "C:\DISC\HLP\LNK\Image Eye.LNK" C:\DISC\HLP\IMAGE\ARHI.jpg
     @ set Zip=C:\HLP\LNK\WinZip.lnk
     @ CLS
     @ echo.  
     @ echo. 
     @ echo      SYNC 
     @ del D:\Sync\proc\podred.zip
     @ start %Zip% -min -a D:\Sync\PROC\PODRED.ZIP @C:\hlp\podred\cpa.lst
     
     @ rem echo     FLASHKA 
     @ rem if exist E:\_FLASH (echo E:\_FLASH 
     @ rem  mstart %Zip% -min -a E:\IDISK\PROC\PODRED.ZIP @C:\hlp\podred\cpa.lst )
     @ rem if exist F:\_FLASH (echo F:\_FLASH  
     @ rem start %Zip% -min -a F:\IDISK\PROC\PODRED.ZIP @C:\hlp\podred\cpa.lst) 
  
   
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo    START  MEGAsync
     @ start C:\HLP\LNK\MEGAsync.lnk 
     @ timeout /T 60 

     @ echo.  
     @ echo. 
     @ echo     END SYNC 
     @ TASKKILL /F /IM MEGAsync.exe /IM MEGAsync.exe 
     @ TASKKILL /F /IM "Image Eye.EXE" 

     

