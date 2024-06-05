''    Runtime.getRuntime().exec("taskkill conhost.exe*32")
''  oShell.Run "taskkill /fi "conhost.exe"", , True
Dim oShell
   Set oShell = WScript.CreateObject ("WScript.Shell")

  oShell.Run "taskkill /F /IM  cmd.exe", , True
 