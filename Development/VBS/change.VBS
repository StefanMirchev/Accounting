  set WshShell = WScript.CreateObject("WScript.Shell")
     WshShell.Run "TASKKILL /F /IM jp2launcher.exe", 0, Falsh
    WScript.Sleep 3000
    call WshShell.Run("C:\DISC\HLP\LNK\Chrome.LNK D:\work\hand\HAND04\change\change.html" , 0, Falsh)
    WScript.Sleep 3000
   Wscript.Quit 
