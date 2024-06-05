    ECHO OFF
    :pak
    cd ..
    cd c:\hlp
    edi pro2.prg
    edi sav2.prg

    SET LIB=C:\CLIP5
    del sav2*.obj
    @ c:\clip5\rmake c:\hlp\save.rmk

    if errorlevel 1 pause
    if errorlevel 1 goto pak
rem c:\clip5\clipper c:\hlp\save
rem c:\clip5\exospace fi c:\hlp\save
    cd c:\m000
    c:\hlp\save.exe
