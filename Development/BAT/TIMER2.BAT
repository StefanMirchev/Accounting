
MODE CON:COLS=16 LINES=2
 set counter=100
 set TST=100
:1
@echo off
set /a counter=counter+1
set /a TST=TST+%duration%
color 5f
 :hour
set hour=0                           
:min
set min=1
:second
set second=0
:countit

cls                                                          

 rem echo            Main Event
 rem echo            %date%

echo   %min%    Minutes  
echo Remain %sec%  sec.
rem echo        Hours #    %counter%
rem echo        Total Time: %TSTH%:%TSTM%:%TSTS%

set /a sec="%sec%-1"

if %sec%==-1 set /a min="%min%-1"
if %sec%==-1 set /a sec="5"
if %min%==-1 set /a hour="%hour%-1"
if %min%==-1 set /a min="59"
if %hour%==-1 goto 2

ping -n 2 127.0.0.1 >NUL

goto countit

:2

