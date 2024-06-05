    ECHO OFF
     \disc\hlp\CYR\tbds.com
    :pak
    cd ..
    cd \hlp\otch
    edi otch.prg

rem @ \hlp\clip53\rmake \hlp\otch.rmk  /Q
    @ \hlp\clip53\rmake \hlp\otch\otch.rmk

    if errorlevel 1 pause
    if errorlevel 1 goto pak
rem  \hlp\clip52\clipper otch
rem  \hlp\clip52\rtlink fi otch lib \hlp\clip52\clipper,\hlp\clip52\extend,\hlp\clip52\overlay,\hlp\clip52\dbfntx,\hlp\clip52\terminal


    del *.obj
    copy c:\hlp\otch\otch.exe c:\disc\hlp\otch\otch.exe
rem      c:\hlp\otch.exe d:\hlp\otch\save.exe
rem copy c:\hlp\otch.exe g:\hlp\otch\save.exe
     del c:\hlp\otch\otch.exe


     cd C:\ho23
 *  \disc\hlp\save\saveA.exe
    \disc\hlp\otch\otch.exe
