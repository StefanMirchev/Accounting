 REM !!!!!   CREATE EXE WITH -> C:\HLP\BAT\BAT-EXE.BAT


   @echo off
    pushd %~dp0
rem cscript C:\DISC\HLP\VBS\ShiftCtrl.VBS
    wscript C:\DISC\HLP\VBS\ENG.VBS
    set var1=%1 
    C:\DISC\HLP\LNK\WORD.LNK %var1% 
