Set WshShell = CreateObject("WScript.Shell")
Set oExec = WshShell.Exec("clip")
Set oIn = oExec.stdIn
oIn.WriteLine "Something One"
oIn.WriteLine "Something Two"
oIn.WriteLine "Something Three"
oIn.Close

Set oShell = WScript.CreateObject ("WScript.Shell")
oShell.run   "notepad.exe"
Set oShell = Nothing

WScript.Sleep 3000
  WShshell.SendKeys "^V" 
 WScript.Sleep 3000
 oIn.Close