    REM VAZSTANOVYAVANE NA NASTROYKI NA PROGRAMA V SLEDVASHT STAPKI
    REM PREPORACITELEN E TOZI VARIANT A NE -> REG ADD HKEY_CURRENT_USER\Software\Wano\Dosprn /f /v Spool /d C:\DISC\S*.PRN
    REM C:\Windows\System32\Robocopy "c:\hlp\zan\VKL" "C:\Users\Public\Documents\zvprt50\Zan Image Printer (BW)" *.ini dest>zan.log
    REM C:\Windows\System32\Robocopy "c:\hlp\ZAN" "C:\Users\Public\Documents\zvprt50\Zan Image Printer (BW)" *.ini dest>zan.log
    
        REM TASKKILL /F /IM DOSprn.exe  /IM DOSprn.exe
        REM REG EXPORT HKEY_CURRENT_USER\Software\Wano\Dosprn C:\HLP\REG\DOSPRN.reg /Y
        REG IMPORT C:\HLP\REG\DOSPRN.reg



        REM TASKKILL /F /IM DOSprn.exe  /IM DOSprn.exe
     rem  start  /d "D:\Program files\DOSPRN\" DOSprn.exe /printer:"Zan Image Printer (BW)"
       start  /d "D:\Program files\DOSPRN\" DOSprn.exe 
       exit

