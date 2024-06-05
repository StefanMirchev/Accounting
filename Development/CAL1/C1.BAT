 ECHO OFF
 set open0=CAL1
 set fold0=\HLP\CAL1
 set t0=@ timeout 2
 del %open0%.EXE &  del %open0%.OBJ & cd %fold0%  &  md %fold0%\IZHO 
 rem  cls & @echo DEL CAL.EXE CAL.OBJ del CAL.exe ; md %fold0%\IZHO & rem %time0%
 copy %open0%.PRG %fold0%\IZHO\ & copy %open0%.PRG \HLP\ASCI\OPEN.PRG
 echo  cd \HLP\ASCI  start \HLP\ASCI\ANSI.EXE
 cd \HLP\ASCI & %t0% & start \HLP\ASCI\ANSI.EXE & %t0% & cd %fold0% 
:pak
 C:\DISC\HLP\BATEXE\SUBOPEN.exe \HLP\ASCI\OPEN1.PRG & echo aaaaaaaaaa  & pause
 start \HLP\ASCI\ASCI.EXE & %t0%
 echo copy \HLP\ASCI\OPEN2.PRG %fold0%\%open0%.PRG 
 copy \HLP\ASCI\OPEN2.PRG %fold0%\%open0%.PRG  & %t0%
 rem if errorlevel 1 pause      ------------------------------------
 if errorlevel 1 goto pak  
 %t0% & start \hlp\clip52\clipper %open0% & %t0%
 start \hlp\clip52\rtlink fi %open0% lib \hlp\clip52\clipper,\hlp\clip52\extend,\hlp\clip52\overlay,\hlp\clip52\dbfntx,\hlp\clip52\terminal
 %t0% &  start C:%fold0%\%open0%.VBS &  del %open0%.OBJ & del \HLP\ASCI\OPE*.PRG 
copy %fold0%\%open0%.EXE \DISC%fold0%