   @  echo off
   @  rem      notepad SAYME.txt
   @  rem  https://www.englisch-hilfen.de/en/words/uhr.htm
   @ echo -s -10 to 10 -> speed / -p pitch of speech -10 to 10 / -v volume from 0 to 100 
   @ echo -e 1000 pause between sentences / -sm 10 set max speed of speech for subtitles
  
   @ del  _SAYME.wav
   @ set balcon0="C:\Program Files\balcon\balcon.exe"  

 

       @ rem %balcon0% -f "SAYME.txt" -w "_SAYME.wav" -n balcon -n "Microsoft Hazel" -s 0 -p +10 -v +100 -e 1000  -sm 10  
       @ %balcon0% -f "SAYME.txt" -w "_SAYME.wav" -n balcon -n "Microsoft Hazel" -s 0 -p +10 -v 200 -e 1000 -fr 48 -bt 8 -ch 2
   
     @ REM   if exist "Y:\HLP\SAYME" (del "Y:\HLP\SAYME\_SAYME.wav"
   
     @  if exist "Y:\AUDIO" (@ del "Y:\AUDIO\_SAYME.wav"
                             @   rem ECHO 111111111111111111111111111111111111111111111111
                             @ C:\DISC\HLP\EXE\timeout 1                                                     
                             @ COPY _SAYME.wav "Y:\AUDIO\_SAYME.wav")^
                                             ELSE (CLS 
                             @ ECHO  VKLYUCHETE V MREVATA LENOVO I POVTORETE PROCEDURATA !!! 
                             @ ECHO   !!!    PROVERETE BUKWATA NA USTROISTVOTO      !!! 
                             @ C:\DISC\HLP\EXE\timeout 1 > NUL)
 
        @   C:\DISC\HLP\EXE\timeout 1 
        @   start "D:\Program Files\The KMPlayer\KMPlayer.exe" _SAYME.wav
 
                        @ C:\DISC\HLP\EXE\timeout 1

 
          TASKKILL /F /IM _SAYME.wav 
  