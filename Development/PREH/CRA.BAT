     @ ECHO off    
     @ REM SPRI mode con cols=15 lines=5 KOGATO SE STARTIRA PREZ ???S.BAT
     @ REM mode con cols=15 lines=5
     @ start "C:\DISC\HLP\LNK\Image Eye.LNK" C:\HLP\IMAGE\ARHI.jpg
     @ set Zip=C:\DISC\HLP\LNK\WinZip.lnk

     @ CLS
     @ echo.  
     @ echo. 
     @ echo      SYNC 
     @ del D:\Sync\proc\preh.zip
     @ START %Zip% -min -a D:\Sync\PROC\PREH.ZIP @C:\hlp\preh\cra.lst

 
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     FLASHKA 
     @ if exist E:\_FLASH (echo E:\_FLASH  
        @ start  %Zip% -min -a E:\IDISK\PROC\PREH.ZIP @C:\hlp\preh\cra.lst)
     @ if exist F:\_FLASH (echo F:\_FLASH  
        @ start %Zip% -min -a F:\IDISK\PROC\PREH.ZIP @C:\hlp\preh\cra.lst)
     
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     CHEF
     @ copy c:\hlp\preh\pod?.??? K:\hlp\preh
     
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     KOSI-100
     @ copy c:\hlp\preh\pod*.??? M:\hlp\preh
   
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     KOSI_80
     @ copy c:\hlp\preh\pod*.??? 0:\hlp\preh
     
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     PETQ
     @ copy c:\hlp\preh\pod?.??? Q:\hlp\preh
     
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo    START MEGAsync
     @ start C:\HLP\LNK\MEGAsync.lnk 
     @ timeout /T 60 
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     END MEGAsync
     @ TASKKILL /F /IM MEGAsync.exe /IM MEGAsyncr.exe 
     @ TASKKILL /F /IM "Image Eye.EXE" 

     

