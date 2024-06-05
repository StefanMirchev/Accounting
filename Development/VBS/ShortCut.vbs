Set oWS = WScript.CreateObject("WScript.Shell")
sLinkFile = "C:\HLP\BATEXE\aaabb.LNK"
Set oLink = oWS.CreateShortcut(sLinkFile)
    oLink.TargetPath = "C:\HLP\BATEXE\UPDA_K.EXE"
 '  oLink.Arguments = ""
 '  oLink.Description = "MyProgram"   
 '  oLink.HotKey = "ALT+CTRL+F"
 '  oLink.IconLocation = "C:\HLP\BATEXE\UPDA_K.EXE, 2"
 '  oLink.WindowStyle = "1"   
 '  oLink.WorkingDirectory = C:\HLP\BATEXE"
oLink.Save
