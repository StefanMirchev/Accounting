    rem C:\Windows\System32\Tasks
    пел HOME 14:31 

    @echo off

    @   SCHTASKS /Delete           /TN ARHI-19 /F 
    @ rem   SCHTASKS /Create /SC DAILY /TN ARHI-19 /TR "C:\DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\DISC\HLP\BAT\ARHI-19.BAT" /ST 12:29 
    
    @   SCHTASKS /Delete           /TN ARHI-20 /F 
    @   SCHTASKS /Create /SC DAILY /TN ARHI-20 /TR "C:\DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\DISC\HLP\BAT\ARHI-20.BAT" /ST 13:29 
        
    @   SCHTASKS /Delete            /TN HLP  /F 
    @   REM SCHTASKS /Create /SC DAILY  /TN HLP  /TR "C:\DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\DISC\HLP\BAT\HLP.BAT" /ST 15:15 
            SCHTASKS /Create /SC DAILY /MO 2 /TN HLP  /TR "C:\DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\DISC\HLP\BAT\HLP.BAT" /ST 15:15 
 
    @   SCHTASKS /Delete           /TN MESSAGE-1 /F 
    @   SCHTASKS /Create /SC DAILY /TN MESSAGE-1 /TR "C:\DISC\HLP\VBS\MESSAGE.VBS" /ST 10:00 
    @   SCHTASKS /Delete           /TN MESSAGE-2 /F 
    @   SCHTASKS /Create /SC DAILY /TN MESSAGE-2 /TR "C:\DISC\HLP\VBS\MESSAGE.VBS" /ST 15:00    
    @  REM  SCHTASKS /Create /TN MESSAGE /TR "C:\DISC\HLP\EXE\hstart.exe /NOCONSOLE  C:\DISC\HLP\BAT\MESSAGE.BAT" /sc DAILY /st 07:00 /f /RI 180 /du 24:00   
 
    @   SCHTASKS /Delete           /TN RAZARH_2 /F  
    @   SCHTASKS /Create /SC DAILY /TN RAZARH_2 /TR "C:\DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\DISC\HLP\BAT\RAZARH.BAT" /ST 14:55     
   
    @   SCHTASKS /Delete           /TN SYNC_1 /F 
    @   SCHTASKS /Create /SC DAILY /TN SYNC_1 /TR "C:\DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\DISC\HLP\BAT\SYNC_S.BAT" /ST 12:45 
    @   SCHTASKS /Delete           /TN SYNC_2 /F 
    @   SCHTASKS /Create /SC DAILY /TN SYNC_2 /TR "C:\DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\DISC\HLP\BAT\SYNC_S.BAT" /ST 14:45 
 
    @   SCHTASKS /Delete           /TN UPDA_S /F 
    @   SCHTASKS /Create /SC MINUTE /mo 2 /TN UPDA_S /TR "C:\DISC\HLP\EXE\wscript.exe C:\DISC\HLP\VBS\UPDA_S.VBS" /st 00:00
   
    @   SCHTASKS /Delete            /TN WEATHER /F 
    @   SCHTASKS /Create /SC DAILY  /TN WEATHER     /TR "C:\DISC\HLP\lnk\Iexplore.LNK  C:\DISC\HLP\URL\WEATHER.url" /ST 09:50 

    @   SCHTASKS /Delete           /TN WEB /F 
    @   SCHTASKS /Create /SC DAILY /TN WEB /TR "C:\DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\DISC\HLP\BAT\WEB.BAT" /ST 10:15 
 
   
    @ REM COPY  C:\DISC\HLP\BAT\StratUp.bat  C:\DISC\HLP\BAT\StratUp.bat
    @ REM COPY  C:\DISC\HLP\LNK\StratUp.lnk  "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\StratUp.lnk"
    @ rem C:\DISC\HLP\VBS\StartUp-Cop.VBS

  PAUSE

 
