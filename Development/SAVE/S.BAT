        ECHO OFF
        \disc\hlp\CYR\tbds.com
        del save.exe
        del aaa.txt 
        :pak
        cd ..
        cd c:\hlp\save
        *      edi pro0.prg
             edi sav8.prg
        del *.obj
 rem    @ \hlp\clip53\rmake save.rmk > aaa.txt
        @ \hlp\clip53\rmake save.rmk
        @ if errorlevel 1 pause
        @ if errorlevel 1 goto pak

      del *.obj
      del \disc\hlp\save\SaveA.exe
      copy save.exe \disc\hlp\save\SaveA.exe
      copy save.exe L:\DISC\HLP\SAVE\SaveA.exe
      copy save.exe D:\DISC\HLP\SAVE\SaveA.exe
      c:\disc\hlp\save\SaveA.exe
    rem \DISC\HLP\VBS\SaveA.VBS
