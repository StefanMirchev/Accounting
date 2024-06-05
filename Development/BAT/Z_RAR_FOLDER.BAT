   @ copy C:\DISC\HLP\EXE\SnapTimer\SnapTimer0.ini C:\DISC\HLP\EXE\SnapTimer\SnapTimer.ini
   @ rem IF EXIST C:\DISC\HLP\EXE\SnapTimer\SnapTimer.exe  start C:\DISC\HLP\EXE\SnapTimer\SnapTimer.exe
  del   *.rar
  @ set Zip="D:\Program Files\WINRAR\WinRAR.exe"
  CD > rootdir.txt
  for /F "tokens=*" %%a in (rootdir.txt) do (
  set b=%%a)
  DIR /AD /B >dirlist.txt
  for /f "tokens=*" %%c in (dirlist.txt) do (
    REM echo   "%%c" 
    REM pause
  CD "%%c"
      "D:\Program files\Winrar\RAR.exe" a -r -v48000k  "%b%\%%c.RAR" "%b%\%%c\*.*" 
   CD..
  )
  del   *.txt
  REM    "D:\Program Files\WINRAR\UnRAR.exe" x *.RAR  f:\

 @  start C:\DISC\HLP\EXE\FRAME\Frameless.exe "C:\HLP\IMAGE\ARROW.png" mon=2 x=22  y=1  aot=NO  taskbar=NO  trans=alpha
 rem C:\DISC\HLP\EXE\1by1.exe  "C:\DISC\HLP\SOUND\Super Loud SMS.mp3"
 @ START c:\DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\HLP\BAT\SOUND.BAT

