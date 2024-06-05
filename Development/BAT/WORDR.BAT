Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "Path" -s "IP" -user admin -t "Path" -nc 1 -prt Printer -f "Path" 
WshShell.SendKeys "{ENTER}"

pause