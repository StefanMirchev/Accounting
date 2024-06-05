    @ ECHO OFF
    @  CLS

    @ \hlp\pkunzip -t %1

    @ if     errorlevel 1 goto greshka
    @ if not errorlevel 1 goto verno

    :greshka
        cls
        echo                                          …Š…Š’… €•ˆ‚
        PAUSE
    goto kray

    :verno
        cls
        echo                                          €•ˆ‚š’ … Š…Š’…
        PAUSE
    goto kray

    :kray
        echo    Š€‰
