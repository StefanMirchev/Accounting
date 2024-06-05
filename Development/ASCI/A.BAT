 
    ECHO OFF
    cd \HLP\ASCI
    set t0=@ timeout 1
    :pak
    set  open0=ANSI
    del %open0%.EXE 
    C:\DISC\HLP\BATEXE\SUBOPEN.exe %open0%.prg
    pause
    @  \hlp\clip53\rmake %open0%.rmk 
    if errorlevel 1 pause
    if errorlevel 1 goto pak
    del %open0%.OBJ

    :pak2
    set  open0=ASCI
    cd \HLP\ASCI
    del %open0%.EXE 
     C:\DISC\HLP\BATEXE\SUBOPEN.exe %open0%.prg
     pause
    @  \hlp\clip53\rmake %open0%.rmk 
    if errorlevel 1 pause
    if errorlevel 1 goto pak2
    del %open0%.OBJ

 %t0% & TASKKILL /F /IM plugin_host.exe 
 %t0% & TASKKILL /F /IM RuntimeBroker.exe
 %t0% & TASKKILL /F /IM ntvdm.exe
 %t0% & TASKKILL /F /IM zvprtsrv.exe

    EXIT