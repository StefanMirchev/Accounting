        ECHO OFF
        \disc\hlp\CYR\tbds.com
         del save.exe
        :pak
        cd ..
        cd c:\hlp\save
       *  edi pro6.prg
       *   edi save.prg
        del *.obj
        @ \hlp\clip53\rmake save.rmk
    rem @ \hlp\clip53\rmake podred.rmk

        if errorlevel 1 pause
        if errorlevel 1 goto pak

    rem \hlp\clip53\clipper save
    rem \hlp\clip53\exospace fi save

    rem \hlp\clip52\clipper podred
    rem \hlp\clip52\rtlink fi podred lib \hlp\clip52\clipper,\hlp\clip52\extend,\hlp\clip52\overlay,\hlp\clip52\dbfntx,\hlp\clip52\terminal

      del *.obj
    rem set s0=SavA
     del \disc\hlp\save\SaveT.exe
      copy save.exe \disc\hlp\save\SaveT.exe
    rem copy pro?.prg F:\HLP\SAVE\*.*
    rem copy sav?.prg f:\HLP\SAVE\*.*
    rem \hlp\csa.bat
   
 
    c:\disc\hlp\save\SaveT.exe
    rem \DISC\HLP\VBS\SaveT.VBS
   REM \disc\hlp\CYR\tbds.com /u
