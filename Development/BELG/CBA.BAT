
      copy \hlp\belg.??? h:\hlp
      pause

      \hlp\pkzip      d:\SYNC\disk\proc\belg -3 @\hlp\cba.lst
      \hlp\pkunzip -t d:\SYNC\disk\proc\belg.zip

      \hlp\pkzip      d:\disk\proc\belg @\hlp\cba.lst
      \hlp\pkunzip -t d:\disk\proc\belg.zip

      \hlp\pkzip      e:\disk\proc\belg @\hlp\cba.lst
      \hlp\pkunzip -t e:\disk\proc\belg.zip

      \hlp\pkzip   -3 %1:\disk\proc\belg @\hlp\cba.lst
      \hlp\pkunzip -t %1:\disk\proc\belg.zip

    @ ECHO Off
    @ if not errorlevel 1 goto verno
    @ if     errorlevel 1 goto greshno
    @ if exist greshka  goto kray


    :verno


    @ CLS
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.                   ÄêïàÇ çÄ %1:\disk\proc\belg.zip E äéêÖíÉÖç
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @ echo.
    @                          pause
    goto kray

    :greshno
    cls
        @ echo.
        @ echo.
        @ echo.
        @ echo.
        @ echo.
        @ echo.
        @ echo.
        @ echo.
        @ echo.
        @ echo                  ÄêïàÇ çÄ %1:\disk\proc\belg.zip E çÖäéêÖäíÖç !!!
        pause
    goto kray

    :kray
        del greshka
        echo    KRAY















