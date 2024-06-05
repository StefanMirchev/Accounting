       @ECHO OFF
       mode con cols=20 lines=15
       @echo off

       :BEGIN
        @ Timeout
       cls
       echo.
       echo  1. CAPS LOCK OFF
       echo  2. CAPS LOCK ON
       echo  3. NUM LOCK  OFF
       echo  4. NUM LOCK  ON
       echo  5. TBDS CYR
       echo  6. EXIT
       echo.
       rem set ch0=
       rem set /p ch0=Type the number to print text.

       choice /c:123456 /N Choose an option:    _

       if errorlevel 6 goto END
       if errorlevel 5 goto TBDSCYR
       if errorlevel 4 goto NUMON
       if errorlevel 3 goto NUMOFF
       if errorlevel 2 goto CAPSON
       if errorlevel 1 goto CAPSOFF

       :CAPSOFF
        ECHO   CAPS OFF
        @ capslock.exe off
        @ pause
        goto BEGIN
       :CAPSON
        ECHO  CAPS ON
        capslock.exe on
        @ pause
        goto BEGIN

       :NUMOFF
        ECHO  NUM OFF
        @ numlock.exe off
        @ pause
        goto BEGIN

       :NUMON
         ECHO  NUM ON
        @ numlock.exe on
        @ pause
        goto BEGIN

       :TBDSCYR
         ECHO  TBDS CYR
        \hlp\cyr\TBDS /u
        \hlp\cyr\TBDS /m
rem     NaN.VBS

        goto END

       :END




