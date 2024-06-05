
@ECHO OFF
mode con cols=33 lines=7
  color 2F
CLS
 @ ECHO                    1.ACCOUNT   
 @ ECHO                    2.DISPACHER
 @ ECHO                    3.TRADE

 C:\Windows\System32\choice.exe /C 123 /N /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 3 GOTO TRADE
IF ERRORLEVEL 2 GOTO DISPACHER
IF ERRORLEVEL 1 GOTO ACCOUNT

:ACCOUNT
ECHO                     ACCOUNT
 C:\Windows\System32\WindowsPowerShell\v1.0\Powershell -Command "(gc save.prg) -replace '01T09', '01A09' -replace '01D09', '01A09'| Out-File -encoding Default save.prg"
 C:\Windows\System32\WindowsPowerShell\v1.0\Powershell -Command "(gc s.bat)    -replace 'SaveT', 'SaveA' -replace 'SaveD', 'SaveA'         | Out-File -encoding Default s.bat"

GOTO End

:DISPACHER
ECHO                     DISPACHER
  C:\Windows\System32\WindowsPowerShell\v1.0\Powershell -Command "(gc save.prg) -replace '01T09', '01D09' -replace '01A09', '01D09'| Out-File -encoding Default save.prg"
  C:\Windows\System32\WindowsPowerShell\v1.0\Powershell -Command "(gc s.bat) -replace 'SaveT', 'SaveD'  -replace 'SaveA', 'SaveD'   | Out-File -encoding Default s.bat"

GOTO End

:TRADE
ECHO                     TRADE 
 C:\Windows\System32\WindowsPowerShell\v1.0\Powershell -Command "(gc save.prg) -replace '01A09', '01T09' -replace '01D09', '01T09' | Out-File -encoding Default save.prg"
 C:\Windows\System32\WindowsPowerShell\v1.0\Powershell -Command "(gc s.bat)    -replace 'SaveA', 'SaveT' -replace 'SaveD', 'SaveT'   | Out-File -encoding Default s.bat"

GOTO End

:End



