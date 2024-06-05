echo off
   rem    Bat_To_Exe_Converter.exe C:\HLP\EXE\hstart.exe /NOCONSOLE  %var2%
   set var0="C:\HLP\EXE\Bat To Exe Converter\Bat_To_Exe_Converter.exe"


@   rem   set var1=DOCOPEN
@   rem   set var5=DOCOPEN

@  rem   set var1=XLSOPEN
@  rem   set var5=XLSOPEN

@  rem   set var1=UPDA_K
@  rem   set var5=winu1
@  rem set var2=-admin -invisible

@  rem  set var1=SUBOPEN
@  rem  set var5=SUBOPEN
@  rem  set var2=-admin -invisible
   
@  REM set var1=COMPILE
@  rem set var5=Vfp

@  rem set var1=ZIP_EX
@  rem set var5=ZIP

@  rem set var1=DBF
@  rem set var5=DBF

@ del C:\DISC\HLP\BATEXE\%var1%.exe
@ timeout 2
@  %var0% -bat C:\HLP\BAT\%var1%.bat -save C:\DISC\HLP\BATEXE\%var1%.exe -icon C:\HLP\IMAGE\%var5%.ico %var2%
@ pause     
@ C:\Windows\explorer.exe C:\DISC\HLP\BATEXE