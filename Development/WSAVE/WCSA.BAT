     @ ECHO OFF
      @ SPRI mode con cols=15 lines=5 KOGATO SE STARTIRA PREZ ???
      @ mode con cols=80 lines=24 
      @ START "C:\HLP\LNK\Image Eye.LNK" C:\HLP\IMAGE\ARHI.jpg
      @ set Zip=C:\HLP\LNK\WinZip.lnk

       DEL c:\hlp\wsave\*.BAK
       DEL c:\hlp\wsave\*.MEM
       DEL c:\hlp\wsave\*.FXP
       DEL c:\hlp\wsave\*.ERR
     @ CLS
     @ echo.  
     @ echo. 
     @ echo    DIR SYNC 
     @ del D:\Sync\proc\WSAVE.zip
     @ start %Zip% -min -a D:\Sync\PROC\WSAVE.ZIP @C:\hlp\WSAVE\wcsa.lst
     @ CLS
     @ echo.  
     @ echo. 
     @ echo    FLASH
     @ if exist E:\_FLASH (echo E:\_FLASH  
        @ start %Zip% -min -a E:\IDISK\PROC\WSAVE.ZIP @C:\hlp\wsave\wcsa.lst)
     @ if exist F:\_FLASH (echo F:\_FLASH  
        @ start %Zip% -min -a F:\IDISK\PROC\WSAVE.ZIP @C:\hlp\wsave\wcsa.lst)
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo    CHEF
     @ copy c:\hlp\wsave\wsav?.??? K:\hlp\wsave  
     
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     KOSI-
     @ copy c:\hlp\wsave\wsav?.??? M:\hlp\wsave  
     @ copy c:\hlp\wsave\wsav?.??? O:\hlp\wsave  
    
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     STEF
     @ copy c:\hlp\sWave\Wsav?.??? Q:\hlp\Wsave  


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
     @ TASKKILL /F /IM MEGAsync.exe /IM MEGAsync.exe 
     @ TASKKILL /F /IM "Image Eye.EXE" 
