      @ ECHO OFF

      @ mode con cols=50 lines=10
      @ color  CF

      @ START "C:\HLP\LNK\Image Eye.LNK" C:\HLP\IMAGE\ARHI.jpg
      @ set Zip=C:\HLP\LNK\WinZip.lnk
     
     @ CLS
     @ echo.  
     @ echo. 
     @ echo    DIR SYNC 
     @ del D:\Sync\proc\fish.zip
     @ %Zip% -min -a D:\Sync\PROC\FISH.ZIP @C:\hlp\fish\cfa.lst
     @ CLS 
     @ echo.  
     @ echo. 
     @ rem echo     FLASHKA 
     @ rem if exist E:\_FLASH (echo E:\_FLASH  
     @ rem start %Zip% -min -a E:\IDISK\PROC\FISH.ZIP @C:\hlp\fish\cfa.lst)
     @ rem if exist F:\_FLASH (echo F:\_FLASH  
     @ rem start %Zip% -min -a F:\IDISK\PROC\FISH.ZIP @C:\hlp\fish\cfa.lst)
  
 
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo    START MEGAsync
     @ start C:\DISC\HLP\LNK\MEGAsync.lnk 
     @ timeout /T 60 
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     END MEGAsync
     @ TASKKILL /F /IM MEGAsync.exe /IM MEGAsync.exe 
     @ TASKKILL /F /IM "Image Eye.EXE" 

     

