     @ECHO off
 rem dir c:\ > d:\RRR.txt 
  
rmdir  /S /Q  D:\AP20
rmdir  /S /Q  D:\AP21
rmdir  /S /Q  D:\AR19
rmdir  /S /Q  D:\AR19 - Copy
rmdir  /S /Q  D:\AR20
rmdir  /S /Q  D:\AP22
rmdir  /S /Q  D:\AR20
rmdir  /S /Q  D:\EO20
rmdir  /S /Q  D:\EO21
rmdir  /S /Q  D:\EO22
rmdir  /S /Q  C:\HO20
rmdir  /S /Q  D:\KA20
rmdir  /S /Q  D:\KA21
rmdir  /S /Q  D:\ko19
rmdir  /S /Q  D:\ko20
rmdir  /S /Q  D:\KO21
rmdir  /S /Q  D:\KO22
rmdir  /S /Q  D:\TN20
rmdir  /S /Q  D:\TN21
rmdir  /S /Q  D:\TO20
rmdir  /S /Q  D:\TO21

rmdir  /S /Q  C:\AP20
rmdir  /S /Q  C:\AP21
rmdir  /S /Q  C:\AR19
rmdir  /S /Q  "C:\AR19 - Copy"
rmdir  /S /Q  C:\AR20
rmdir  /S /Q  C:\AP22
rmdir  /S /Q  C:\AR20
rmdir  /S /Q  C:\EO20
rmdir  /S /Q  C:\EO21
rmdir  /S /Q  C:\EO22
rmdir  /S /Q  C:\KA20
rmdir  /S /Q  C:\KA21
rmdir  /S /Q  C:\ko19
rmdir  /S /Q  C:\ko20
rmdir  /S /Q  C:\KO21
rmdir  /S /Q  C:\KO22
rmdir  /S /Q  C:\TN20
rmdir  /S /Q  C:\TN21
rmdir  /S /Q  C:\TO20
rmdir  /S /Q  C:\TO21


rem rmdir  /S /Q  C:\HLP
rem rmdir  /S /Q  C:\DISC

    mkdir C:\DISC\HLP
    mkdir C:\HLP

 "C:\Program Files\WinRAR\WinRAR.exe" x "D:\Sync\GOD\KOSI\KOSI_GOD22.zip" *.* "C:\"
 "C:\Program Files\WinRAR\WinRAR.exe" x "D:\Sync\DISC\hlp.zip" *.* "C:\DISC\HLP"
 "C:\Program Files\WinRAR\WinRAR.exe" x "D:\Sync\HLP\hlp.zip" *.* "C:\HLP"
