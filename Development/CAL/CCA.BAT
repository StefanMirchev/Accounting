      @ ECHO OFF
      @ SPRI mode con cols=15 lines=5 KOGATO SE STARTIRA PREZ ???
      @ mode con cols=80 lines=24 
      @ START "C:\HLP\LNK\Image Eye.LNK" C:\HLP\IMAGE\ARHI.jpg
      @ set Zip=C:\HLP\LNK\WinZip.lnk
     

     @ CLS
     @ echo.  
     @ echo. 
     @ echo    DIR SYNC 
     @ del D:\Sync\proc\cal.zip
     @ start %Zip% -min -a D:\Sync\PROC\CAL.ZIP @C:\hlp\cal\CCA.lst
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     FLASHKA 
     @ if exist E:\_FLASH (echo E:\_FLASH  
        @ start %Zip% -min -a E:\IDISK\PROC\CAL.ZIP @C:\hlp\cal\cca.lst)
     @ if exist F:\_FLASH (echo F:\_FLASH  
        @ start %Zip% -min -a F:\IDISK\PROC\CAL.ZIP @C:\hlp\cal\cca.lst)
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     CHEF
     @ copy c:\hlp\cal\cal.??? K:\hlp\cal
  
         @ CLS 
     @ echo.  
     @ echo. 
     @ echo     KOSI-
     @ copy c:\hlp\cal\cal.??? M:\hlp\cal
  
         @ CLS 
     @ echo.  
     @ echo. 
     @ echo     KOSI_
     @ copy c:\hlp\cal\cal.??? O:\hlp\cal
 
         @ CLS 
     @ echo.  
     @ echo. 
     @ echo     STEF
     @ copy c:\hlp\cal\cal.??? Q:\hlp\cal

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

     

