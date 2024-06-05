    ECHO OFF
    :pak

    SET LIB=\HLP\CLIP53
    @ \hlp\clip53\rmake dbu.rmk

    if errorlevel 1 pause
    if errorlevel 1 goto pak
