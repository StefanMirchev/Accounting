     @ ECHO off    
     @ mode con cols=50 lines=10
     @ color B0
     @ start "C:\DISC\HLP\LNK\Image Eye.LNK" C:\DISC\HLP\IMAGE\ARHI.jpg
     @ set Zip=C:\HLP\LNK\WinZip.lnk

     
     @ CLS
     @ echo.  
     @ echo. 
     @ echo      SYNC 
     @ del D:\Sync\proc\otch.zip
     @ %Zip% -min -a D:\Sync\PROC\OTCH.ZIP @C:\hlp\otch\coa.lst
 
     @ CLS 
     @ echo.  
     @ echo. 
     @ rem echo     FLASHKA  
     @ rem if exist E:\_FLASH (echo E:\_FLASH  
     @ rem start %Zip% -min -a E:\IDISK\PROC\OTCH.ZIP @C:\hlp\otch\coa.lst) 
     @ rem if exist F:\_FLASH (echo F:\_FLASH  
     @ rem start %Zip% -min -a F:\IDISK\PROC\OTCH.ZIP @C:\hlp\otch\coa.lst) 
     
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo    START MEGAsync
     @ start C:\HLP\LNK\MEGAsync.lnk 
     @ timeout /T 60 
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     END SYNC 
     @ TASKKILL /F /IM MEGAsync.exe /IM MEGAsync.exe 
     @ TASKKILL /F /IM "Image Eye.EXE" 

     

