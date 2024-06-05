    ECHO OFF


    SET LIB=\HLP\CLIP53
    @ \hlp\clip53\rmake num.rmk

    if errorlevel 1 pause
    if errorlevel 1 goto pak
     num.exe
