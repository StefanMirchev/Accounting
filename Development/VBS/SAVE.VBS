  dim commandLine, WshShell
  commandLine = "C:\HO18\Save.exe"
 
    Set WshShell = CreateObject("WScript.Shell")
    Call WshShell.Run (commandLine,8,false)
    set WshShell=Nothing
