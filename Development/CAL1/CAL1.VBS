  dim commandLine, WshShell
  commandLine = "C:\DISC\HLP\CAL1\cal1.exe"
  Set WshShell = CreateObject("WScript.Shell")
  Call WshShell.Run (commandLine,8,false)
  Set WshShell=Nothing
