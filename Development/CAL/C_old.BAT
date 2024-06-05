

    ECHO OFF
    :pak
    cd ..
    cd \hlp\cal

    edi cal.prg

rem if errorlevel 1 pause
    if errorlevel 1 goto pak
    \clip52\clipper cal
    \clip52\rtlink fi cal lib \clip52\clipper,\clip52\extend,\clip52\overlay,\clip52\dbfntx,\clip52\terminal
rem copy \hlp\podred.exe h:\hlp

    C:\HLP\CAL\CAL.EXE
*   cd \ah06
*   \hlp\arhi.exe


