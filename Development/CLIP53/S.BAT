rem edi sav2.prg
rem edi pro0.prg

    SET LIB=\HLP\CLIP53
    @ \HLP\clip53\rmake pp.rmk

    if errorlevel 1 pause
    if errorlevel 1 goto pak
