     @ECHO off
     FOR /F "TOKENS=1,2 eol=/ DELIMS=/ " %%A IN ('DATE/T') DO SET mm=%%B
 
 
     
       @  start "C:\DISC\HLP\LNK\Image Eye.LNK" C:\DISC\HLP\IMAGE\ARHIS.jpg
       ping 127.0.0.1 -n 30 > nul 
       @  TASKKILL /F /IM "Image Eye.EXE"


      @  start "C:\DISC\HLP\LNK\Image Eye.LNK" C:\DISC\HLP\IMAGE\ARHI.jpg
     ping 127.0.0.1 -n 6 > nul        
      @ REM   TASKKILL /F /IM "Image Eye.EXE"

     @ IF NOT EXIST C:\DISC\ARHI\ARH\ (cd C:\ 
                                        MKDIR C:\DISC\ARHI\ARH) 

      @ set Zip=C:\DISC\HLP\LNK\WinZip.lnk
      @ set dest=C:\DISC\ARHI\ARH
      @ set dt=19
      @ set go=M2%dt%

      %Zip% -min -a C:\DISC\ARHI\%go% C:\%go%\sc*. C:\%go%\arhi.dbf  C:\%go%\bank.dbf C:\%go%\cal1.dbf C:\%go%\dds.dbf ^
      C:\%go%\dobo.dbf C:\%go%\dpar.dbf C:\%go%\kobo.dbf C:\%go%\kobp.dbf C:\%go%\kpap.dbf C:\%go%\kpar.dbf   ^
      C:\%go%\obap.dbf C:\%go%\obve.dbf C:\%go%\prot.dbf C:\%go%\tehno.dbf C:\%go%\zame.dbf C:\%go%\unpr.dbf  ^
      C:\%go%\dannom.mem C:\%go%\date.mem C:\%go%\ddse.mem C:\%go%\harsmet.mem 
     ping 127.0.0.1 -n 6 > nul 

      %Zip% -min -a  C:\DISC\ARHI\HOME_%dt%.zip C:\DISC\ARHI\??%dt%.zip C:\DISC\HLP\JOB\info.dbf C:\DISC\HLP\JOB\regl.dbf
     ping 127.0.0.1 -n 6 > nul 
  
      DEL D:\SYNC\ARHI\HOME\HOME_%dt%*.zip /Q
     ping 127.0.0.1 -n 6 > nul 
 
      COPY C:\DISC\ARHI\HOME_%dt%.ZIP D:\SYNC\ARHI\HOME\HOME_%dt%.ZIP
     ping 127.0.0.1 -n 6 > nul 
 
      ECHO   DEL C:\DISC\ARHI\??%dt%*.ZIP,   F??%dt%*.ZIP
      @ DEL  C:\DISC\ARHI\??%dt%*.ZIP    /Q
      @ DEL  C:\DISC\ARHI\F??%dt%*.ZIP   /Q
      @ DEL  C:\DISC\ARHI\HOME_%dt%*.zip /Q

     REM  START rundll32.exe C:\WINDOWS\system32\shimgvw.dll,ImageView_Fullscreen C:\DISC\HLP\IMAGE\ARHIK.jpg

      @  TASKKILL /F /IM "Image Eye.EXE"
         ping 127.0.0.1 -n 3 > nul 
   
     @  start "C:\DISC\HLP\LNK\Image Eye.LNK" C:\DISC\HLP\IMAGE\ARHIK.jpg 
       ping 127.0.0.1 -n 6 > nul 

      @  TASKKILL /F /IM "Image Eye.EXE"
     ping 127.0.0.1 -n 6 > nul 
      EXIT
  