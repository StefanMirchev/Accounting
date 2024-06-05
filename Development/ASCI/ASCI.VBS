  dim commandLine, WshShell
  commandLine = "C:\HLP\ASCI\ASCI.exe"
  Set WshShell = CreateObject("WScript.Shell")
  Call WshShell.Run (commandLine,8,false)
  Set WshShell=Nothing
