
@ECHO OFF
mode con cols=33 lines=5
CLS
 @ ECHO                    1.DISABLE    
 @ ECHO                    2.ENABLE

 C:\Windows\System32\choice.exe /C 12 /N /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 2 GOTO ENAB
IF ERRORLEVEL 1 GOTO DISA

:DISA
ECHO                     DISABLE
 netsh interface set interface "Ethernet" admin=DISABLED
 C:\HLP\EXE\netsh interface set interface "Wi-Fi" DISABLED

PAUSE

GOTO End

:ENAB
ECHO                     ENABLE 
 @ netsh interface set interface "Ethernet" admin=ENABLE
 C:\HLP\EXE\netsh interface set interface "Wi-Fi" ENABLE
GOTO End

:End



