    cls
    ECHO OFF
    :pak
    cd ..
    cd \hlp\podred
   edi podred.prg

rem   if errorlevel 1 pause
rem   if errorlevel 1 goto pak

   cmd /c C:\HLP\PODRED\PODRED.bat
   timeout 5 > NUL

   if errorlevel 1 pause
   if errorlevel 1 goto pak

    copy  podred.exe \disc\hlp\podred
    
   del podred.exe

    cd \kk23
   \disc\hlp\podred\podred.exe


