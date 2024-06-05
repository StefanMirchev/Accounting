  REM !!!!!   CREATE EXE WITH -> C:\HLP\BAT\BAT-EXE.BAT
     @ echo ON

     @ rmdir C:\_AAAA\ZIP_EX /s /q
     @ mkdir C:\_AAAA\ZIP_EX 
     @ rem del C:\_AAAA\ZIP_EX /q  

     @ rem 01
     @ rem set Zip=C:\HLP\LNK\WZUNZIP.lnk 
     @ rem  supper e -> set Zip=C:\HLP\LNK\WinZip.lnk
     @ rem  supper e -> %Zip% -o %1 C:\_AAAA\ZIP_EX\


     @  set Zip="C:\Program Files\7-Zip\7z.exe"   

     @ rem 02
     @ rem RAZARHIVURA NA C:\_AAAA\ZIP_EX
     @ rem VIMANIE -oC:\_AAAA\ZIP_EX TRQBWA DA SA ZADYLVITELNO OPRENI !!!!!!
     @      %Zip% x %1 -oC:\_AAAA\ZIP_EX 

     @ rem 03     
     @ REM ARHIVIRA VOLUME 200MB NA C:\_AAAA\ZIP_EX
     @ rem %Zip% a C:\_AAAA\IGO-2014\IGO-2014.ZIP  D:\IDISK\ANDROID\IGO\iGO_2014\*.* -r -v240m 
     @ REM  %Zip% a C:\_AAAA\andro\andro.ZIP  D:\IDISK\ANDROID\1. EXPLORER D:\IDISK\ANDROID\2. SOCIAL D:\IDISK\ANDROID\3. BROWSER -r -v240m 

     @ rem  %Zip% a C:\_AAAA\ZIP_EX\IGO.ZIP         D:\IDISK\ANDROID\IGO\iGO_2014\*.* -r -v240m 
     @ rem RAZARHIVURA VOLUME 200MB
     @ REM %Zip% x C:\_AAAA\IGO-ZIP -oC:\_AAAA\IGO

     @ C:\Windows\explorer.exe C:\_AAAA\ZIP_EX 


  
  

   

   
  