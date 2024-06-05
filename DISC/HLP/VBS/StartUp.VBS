   dim commandLine, WshShell
   Set WshShell = CreateObject("WScript.Shell")
   set objShell = CreateObject("Shell.Application")

  commandLine = "C:\DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\DISC\HLP\BAT\KILSMALL.BAT"
     Call WshShell.Run (commandLine,8,false)
   commandLine = "C:\DISC\HLP\LNK\WIN_10_32.lnk"
   ''   Call WshShell.Run (commandLine,8,false)
   commandLine = "C:\DISC\HLP\LNK\AnyDesk.lnk"
   ''    Call WshShell.Run (commandLine,8,false)



   
   WScript.Sleep 2000
 
    objShell.MinimizeAll 
  


  '' WScript.Sleep 2000

  commandLine = "C:\DISC\HLP\VBS\MIN_MAX.VBS"
  Set WshShell = CreateObject("WScript.Shell")
  Call WshShell.Run (commandLine,8,false)
  '' WScript.Sleep 2000




 '' Set WshShell=Nothing
 
 