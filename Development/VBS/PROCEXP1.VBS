Set oWS = WScript.CreateObject("WScript.Shell")
sLinkFile = "C:\HLP\lnk\PROCEXP.LNK"
Set oLink = oWS.CreateShortcut(sLinkFile)
oLink.TargetPath = "C:\HLP\EXE\PROCEXP.EXE"
oLink.HotKey = "Ctrl+Alt+d"
oLink.Save
