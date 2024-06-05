
Set oWordBasic = CreateObject("Word.Basic")
       oWordBasic.SendKeys "{prtsc}" 
           oWordBasic.AppClose "Microsoft Word"
           Set oWordBasic = Nothing
           WScript.Sleep 2000
         set WshShell = CreateObject("WScript.Shell")
       WshShell.Run "mspaint"
           WScript.Sleep 2000
       set WshShell = CreateObject("WScript.Shell")
       WshShell.Run "C:\Windows\System32\cmd.exe"
       WScript.Sleep 2000
       WshShell.SendKeys "ping 192.168.168.168"
       WScript.Sleep 2000
       WshShell.SendKeys "{ENTER}"
       WScript.Sleep 2000
           set shl=createobject("shell.application")
       shl.MinimizeAll  
           WScript.Sleep 2000
           shl.UndoMinimizeAll
           Set shl=Nothing
           WScript.Sleep 2000
           WshShell.AppActivate "untitled - Paint"
           WScript.Sleep 1000
           WshShell.SendKeys "^v"
           WScript.Sleep 500
           WshShell.SendKeys "^s"
           WScript.Sleep 500
           WshShell.SendKeys "C:\__STEF-C\" & "screenshot" & ".png"
           WScript.Sleep 500
           WshShell.SendKeys "{ENTER}"
           WScript.Sleep 500
           WshShell.SendKeys "%{F4}"
           Set WshShell=Nothing 


