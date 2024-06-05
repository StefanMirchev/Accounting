

    ECHO OFF
    :pak
    cd ..
    cd \hlp\preh

    edi preh.prg

rem if errorlevel 1 pause
    if errorlevel 1 goto pak
    \hlp\clip52\clipper preh
    \hlp\clip52\rtlink fi preh lib \hlp\clip52\clipper,\hlp\clip52\extend,\hlp\clip52\overlay,\hlp\clip52\dbfntx,\hlp\clip52\terminal
    copy  preh.exe \disc\hlp\preh
    copy  preh.exe f:\disc\hlp\preh
  
 *   del preh.exe

    cd \to19
rem    \disc\hlp\preh\preh.exe


