      @ ECHO OFF
      @ SPRI mode con cols=15 lines=5 KOGATO SE STARTIRA PREZ ???
      @ mode con cols=80 lines=24 
      @ START "C:\HLP\LNK\Image Eye.LNK" C:\HLP\IMAGE\ARHI.jpg
      @ set Zip=C:\HLP\LNK\WinZip.lnk
     

     @ CLS
     @ echo.  
     @ echo. 
     @ echo    DIR SYNC 
     @ del D:\Sync\proc\c1l.zip
     @ start %Zip% -min -a D:\Sync\PROC\CAL1.ZIP @C:\hlp\cal1\C1A.lst
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     FLASH
     @ if exist E:\_FLASH (echo E:\_FLASH  
        @ start %Zip% -min -a E:\IDISK\PROC\CAL1.ZIP @C:\HLP\CAL1\C1A.lst)
     @ if exist F:\_FLASH (echo F:\_FLASH  
        @ start  %Zip% -min -a F:\IDISK\PROC\CAL1.ZIP @C:\HLP\CAL1\C1A.lst)
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     CHEF
     @ copy c:\hlp\cal1\cal1.??? K:\hlp\CAL1
  
         @ CLS 
     @ echo.  
     @ echo. 
     @ echo     KOSI-
     @ copy c:\hlp\cal1\cal1.??? M:\hlp\cal1
  
         @ CLS 
     @ echo.  
     @ echo. 
     @ echo     KOSI_
     @ copy c:\hlp\cal1\cal1.??? O:\hlp\cal1
 
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