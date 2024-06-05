  dim commandLine, WshShell
  commandLine = "C:\DISC\HLP\FISH\Fish.exe"
  Set WshShell = CreateObject("WScript.Shell")
  Call WshShell.Run (commandLine,8,false)
  '' Call WshShell.Run (commandLine,8,true)
  Set WshShell=Nothing
  commandLine = "C:\DISC\HLP\EXE\hstart.exe /NOCONSOLE C:\DISC\HLP\BAT\KILSMALL.BAT"
  Set WshShell = CreateObject("WScript.Shell")
  Call WshShell.Run (commandLine,8,false)
  Set WshShell=Nothing

