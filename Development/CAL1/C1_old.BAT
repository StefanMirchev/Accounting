

    ECHO OFF
    :pak
    cd ..
    cd \hlp

    edi cal1.prg

rem if errorlevel 1 pause
    if errorlevel 1 goto pak
    \clip52\clipper cal1
    \clip52\rtlink fi cal1 lib \clip52\clipper,\clip52\extend,\clip52\overlay,\clip52\dbfntx,\clip52\terminal
rem copy \hlp\podred.exe h:\hlp


*   cd \ah06
*   \hlp\arhi.exe
    \hlp\cal1.exe


