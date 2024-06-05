    ECHO OFF
   \disc\hlp\CYR\tbds.com
    :pak
    cd ..
    cd  \hlp\fish
       edi fis7.prg
    del *.obj
rem @  \hlp\clip53\rmake fish.rmk > aaa.txt
    @  \hlp\clip53\rmake fish.rmk
    if errorlevel 1 pause
    if errorlevel 1 goto pak

    del *.obj
    copy fish.exe d:\disc\hlp\fish\fish.exe
    copy fish.exe \disc\hlp\fish\fish.exe
    c:\disc\hlp\fish\fish.exe > aaa.txt
 if errorlevel 1 pause
 if errorlevel 1 goto pak
