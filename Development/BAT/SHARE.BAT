

@ ECHO OFF
@ REM !!!!!   CREATE EXE WITH -> C:\HLP\BAT\BAT-EXE.BAT

@ echo aaa > C:\HLP\ASCI\_WORK_PRG
@ mode con cols=66 lines=30
@ color 2F
@ del \HLP\ASCI\OPE*.PRG
@ set var=%1   
@ set open1=%var:~3,14%  
@ set fold0=%open1:~0,9%
@ set name0=%open1:~5,4%
@ set open0=%open1:~10,4%
echo %var%
pause
 rem https://transfer.sh/$(basename %1)) 