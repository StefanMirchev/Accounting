 @ECHO off

 call PDFgfo.VBS  !!!!!!!!!!!!!!!!!!!!!!!!!!!!
rem pdftk C:\DISC\GOD22\GFO\HO_GFO.PDF cat 1-3 7-end output C:\DISC\GOD22\GFO\HO_GFO_P.PDF
@ set g0=23
@ set prin0=C:\DISC\HLP\EXE\PDF\PDFtoPrinter.exe
@ set zan_0=c:\users\Public\Documents\zvprt50\Zan Image Printer (BW)
@ set disc_1=C:\DISC\HLP
@ timeout 2
cd %zan_0% & xcopy /y %disc_1%\zan\izkl\*.ini %&zan_0%

@ set g0=23
@ set f0=HO
@ timeout 2

cd C:\DISC\GOD%g0%\GFO
@ timeout 2



@ cls & @ echo %f0%%g0%
@ del C:\DISC\zan.PDF & @ del C:\DISC\sentinel.txt
@ timeout 3
@ del C:\DISC\GOD%g0%\GFO\%f0%\_*.PDF
@ timeout 3
 rem         %prin0% C:\DISC\GOD%g0%\GFO\_%f0%_GFO.PDF pages=1-6 
 @    %prin0% C:\DISC\GOD%g0%\GFO\_%f0%_GFO.PDF pages=1-6 
 @ timeout 3
 @ copy C:\DISC\zan.pdf  C:\DISC\GOD%g0%\GFO\%f0%\_%f0%_GFO.PDF

 @ %prin0% C:\DISC\GOD%g0%\GFO\_%f0%_GFO.PDF pages=7
 @ timeout 3
 @ copy C:\DISC\zan.pdf  C:\DISC\GOD%g0%\GFO\%f0%\_DECLAR_13.PDF
 
 @ %prin0% C:\DISC\GOD%g0%\GFO\_%f0%_GFO.PDF pages=8
 @ timeout 3
 @ copy C:\DISC\zan.pdf  C:\DISC\GOD%g0%\GFO\%f0%\_DECLAR_62a.PDF

 @ REM %prin0% C:\DISC\GOD%g0%\GFO\_%f0%_GFO.PDF pages=9
 @ REM timeout 3
 @ REM copy C:\DISC\zan.pdf  C:\DISC\GOD%g0%\GFO\%f0%\_PROTOKOL.PDF


@ timeout 2
cd %zan_0% & xcopy /y %disc_1%\zan\vkl\*.ini %&zan_0%
@ timeout 2
dir 
pause
