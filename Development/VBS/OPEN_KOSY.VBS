Dim continue 
MsgBox "CLICK ON ADDRESS BAR IN FILE EXPLORER",64,"Greetings From JK"
Set WShshell = CreateObject("WScript.Shell")
Set oExec = WshShell.Exec("clip")
Set oIn = oExec.stdIn
oIn.WriteLine "\\192.168.0.206"
oIn.Close
  WShshell.run "c:\WINDOWS\explorer.exe",1
WScript.Sleep 4000
  WShshell.SendKeys "^V" 


