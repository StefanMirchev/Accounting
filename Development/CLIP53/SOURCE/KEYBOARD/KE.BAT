    ECHO OFF
    :pak

    SET LIB=C:\CLIP53
    @ c:\clip53\rmake KE.rmk

    if errorlevel 1 pause
    if errorlevel 1 goto pak
