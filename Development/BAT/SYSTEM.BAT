@echo off
wmic desktopmonitor get screenheight, screenwidth

REM set h='wmic desktopmonitor, get screenheight'
PAUSE
    set w=%wmic desktopmonitor, get screenwidth%

echo %w%

ECHO  AAAAAAAAAAAAAAAAA

PAUSE 


@ echo off
@ CLS  
@ ECHO .     PLEASE WAIT SEVERAL SECONDS EWEREST E MNOGO PO DOBRO !!!!!
@  del _AAA.txt /q /f >nul 2>nul
   REM  start "" /w dxdiag /t ~
@  start "" /w dxdiag /t _AAA
setlocal enableDelayedExpansion
set currmon=1 
for /f "tokens=2 delims=:" %%a in ('find "Current Mode:" _AAA.txt') do (
    echo Monitor !currmon! : %%a
    set /a currmon=currmon+1

)
endlocal

NOTEPAD _AAA.txt



@echo off

for /f "delims=" %%# in  ('"wmic path Win32_VideoController  get CurrentHorizontalResolution,CurrentVerticalResolution /format:value"') do (
  set "%%#">nul
)

echo %CurrentHorizontalResolution%
echo %CurrentVerticalResolution%
ECHO CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
PAUSE

@echo off

for /f "delims=" %%# in  ('"wmic path Win32_VideoController  get H,W /format:value"') do (
  set "%%#">nul
)

echo %H%
echo %W%



echo DDDDDDDDDDDDDDDDDDDDDD
PAUSE
