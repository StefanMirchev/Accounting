  dim commandLine, WshShell
  commandLine = "C:\DISC\HLP\PODRED\PODRED.exe"
  Set WshShell = CreateObject("WScript.Shell")
  Call WshShell.Run (commandLine,8,false)
  Set WshShell=Nothing
