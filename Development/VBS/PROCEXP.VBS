Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "C:\HLP\LNK\PROCEXP.LNK"
WScript.Sleep 5000
WshShell.SendKeys "+{F10}" 
WScript.Sleep 5000
WshShell.SendKeys "%{F4}"
WScript.Sleep 5000
WshShell.HotKey = "Ctrl+Alt+d"

