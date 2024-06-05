      @ ECHO OFF
      @ mode con cols=50 lines=10
      @ color E0
 
      @ START "C:\HLP\LNK\Image Eye.LNK" C:\HLP\IMAGE\ARHI.jpg
      @ set Zip=C:\HLP\LNK\WinZip.lnk

     @ CLS
     @ echo.  
     @ echo. 
     @ echo    DIR SYNC 
     @ %Zip% -min -a D:\Sync\PROC\SAVE.ZIP @C:\hlp\save\csa.lst
 

     @ rem echo     FLASHKA 
     @ rem %Zip% -min -a F:\IDISK\PROC\SAVE.ZIP @C:\hlp\save\csa.lst
     @ rem if exist E:\_FLASH (echo E:\_FLASH  
     @ rem start  %Zip% -min -a E:\IDISK\PROC\SAVE.ZIP @C:\hlp\save\csa.lst) 
     @ rem if exist F:\_FLASH (echo F:\_FLASH  
     @ rem start %Zip% -min -a F:\IDISK\PROC\SAVE.ZIP @C:\hlp\save\csa.lst) 

     @ echo. 
     @ echo    START MEGAsync
     @ start C:\HLP\LNK\MEGAsync.lnk  
     @ timeout /T 60 
     @ echo     END MEGAsync
     @ TASKKILL /F /IM MEGAsync.exe /IM MEGAsync.exe 

     @ TASKKILL /F /IM "Image Eye.EXE" 
     @ timeout 3

  
