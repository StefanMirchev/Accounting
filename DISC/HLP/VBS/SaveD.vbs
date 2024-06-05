  dim commandLine, WshShell
  commandLine = "\DISC\HLP\SAVE\SaveD.exe"
  Set WshShell = CreateObject("WScript.Shell")
  Call WshShell.Run (commandLine,8,false)
  Set WshShell=Nothing
