 @   ECHO OFF

   REM    rundll32 printui.dll,PrintUIEntry   /f "C:\HLP\BAT\_BBB.TXT"  /Xg /n "Zan Image Printer (BW)"
    rem      rundll32 printui.dll,PrintUIEntry    /f "C:\HLP\BAT\_BBB.TXT" /Xs /n "Zan Image Printer (BW)" 
Rundll32.exe shell32.dll,Control_RunDLL Mmsys.cpl,,0
  _BBB.TXT
pause