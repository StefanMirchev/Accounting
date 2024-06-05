
    ECHO OFF
    :pak
    cd ..
    cd \hlp\hote
    edi hotel.prg

    SET LIB=\HLP\CLIP53
    del *.obj
    @ \hlp\clip53\rmake \hlp\hote\hotel.rmk

    if errorlevel 1 pause
    if errorlevel 1 goto pak

    del *.obj
    cd  \kk03
    \hlp\hotel.exe


