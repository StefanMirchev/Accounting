  dim commandLine, WshShell
  commandLine = "C:\DISC\HLP\CAL\cal.exe"
  Set WshShell = CreateObject("WScript.Shell")
  Call WshShell.Run (commandLine,8,false)
  Set WshShell=Nothing
