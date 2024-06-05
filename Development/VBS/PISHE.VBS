Set WshShell = WScript.CreateObject("WScript.Shell")

' Start / Run NOTEPAD.EXE
WshShell.Run "%windir%\notepad.exe"

' Select, or bring Focus to a window named `NOTEPAD`
WshShell.AppActivate "Notepad"

' Wait for 1 seconds
WScript.Sleep 1000

WshShell.SendKeys "Hello World!"
 WScript.Sleep 3000
WshShell.SendKeys "{ENTER}"
 WScript.Sleep 3000
WshShell.SendKeys "abc"
 WScript.Sleep 3000
WshShell.SendKeys "def"
 WScript.Sleep 3000
