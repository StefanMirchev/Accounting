      @ ECHO OFF
      @ SPRI mode con cols=15 lines=5 KOGATO SE STARTIRA PREZ ???
      @ mode con cols=80 lines=24 
      @ START "C:\HLP\LNK\Image Eye.LNK" C:\HLP\IMAGE\ARHI.jpg
      @ set Zip=C:\HLP\LNK\WinZip.lnk
       
      @ CLS
      @ echo.  
      @ echo. 
      @ echo    DIR SYNC 
      @ del D:\Sync\proc\hote.zip
      @ start %Zip% -min -a D:\Sync\PROC\HOTE.ZIP @C:\hlp\hote\cha.lst
 
      @ CLS 
      @ echo.   
      @ echo. 
      @ echo     FLASHKA 
rem      @ if exist E:\_FLASH (echo E:\_FLASH  
rem          @ start %Zip% -min -a E:\IDISK\PROC\HOTE.ZIP @C:\hlp\hote\cha.lst)
rem      @ if exist F:\_FLASH (echo F:\_FLASH  
rem         @ start @ %Zip% -min -a F:\IDISK\PROC\HOTE.ZIP @ C:\hlp\hote\cha.lst)


        @ if exist E:\_FLASH (echo E:\_FLASH  
        @ start %Zip% -min -a E:\IDISK\PROC\HOTE.ZIP @C:\hlp\hote\cha.lst)
        @ if exist F:\_FLASH (echo F:\_FLASH  
        @ start %Zip% -min -a F:\IDISK\PROC\HOTE.ZIP.ZIP @C:\hlp\hote\cha.lst)




       
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo    CHEF
     @ copy c:\hlp\hote\hote?.??? K:\hlp\HOTE  
       
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     KOSI-
     @ copy c:\hlp\HOTE\hote?.??? M:\hlp\HOTE  
    
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     KOSI_
     @ copy c:\hlp\HOTE\hote?.??? O:\hlp\HOTE  
          
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     PRTQ
     @ copy c:\hlp\HOTE\hote?.??? Q:\hlp\HOTE  
       
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo    START MEGAsync
     @ start C:\HLP\LNK\MEGAsync.lnk 
             
      timeout /T 60 
     @ CLS 
     @ echo.  
     @ echo. 
     @ echo     END MEGAsync
     @ TASKKILL /F /IM MEGAsync.exe /IM MEGAsync.exe 
     @ TASKKILL /F /IM "Image Eye.EXE" 

  
