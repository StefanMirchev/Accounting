  dim commandLine, WshShell
  commandLine = "netsh interface set interface 'Ethernet' admin=DISABLED
                 C:\HLP\EXE\netsh interface set interface 'Wi-Fi' DISABLED"
  '' commandLine = "C:\DISC\HLP\FISH\Fish.exe"
  Set WshShell = CreateObject("WScript.Shell")
  Call WshShell.Run (commandLine,8,false)
  Set WshShell=Nothing
