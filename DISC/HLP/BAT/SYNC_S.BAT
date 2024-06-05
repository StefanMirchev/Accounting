      @ rem echo off
      @ REM start C:\DISC\HLP\LNK\BoxSync /silent  
      @ START C:\DISC\HLP\LNK\MEGAsync.lnk /silent
      @   timeout  120 > NUL
      @  TASKKILL /F /IM timeout.exe
      @  TASKKILL /F /IM MEGAsync.exe  
      @  TASKKILL /F /IM cmd.exe



  
  

   

   
  