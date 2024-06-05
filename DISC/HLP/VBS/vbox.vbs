    set WshShell = WScript.CreateObject("WScript.Shell")
    WshShell.Run "TASKKILL /F /IM jp2launcher.exe", 0, Falsh
    WScript.Sleep 3000
    call WshShell.Run("C:\Windows\System32\VBoxService.exe" , 0, Falsh)
    WScript.Sleep 3000
    call WshShell.Run("C:\Windows\System32\VBoxControl.exe" , 0, Falsh)
    WScript.Sleep 3000
    call WshShell.Run("C:\Windows\System32\VBoxTray.exe" , 0, Falsh)
    Wscript.Quit 

