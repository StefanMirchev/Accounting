Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
Dim MyShortcut, MyDesktop, DesktopPath
' Read desktop path using WshSpecialFolders object
DesktopPath = WSHShell.SpecialFolders("Desktop")
' Create a shortcut object on the desktop
Set MyShortcut = WSHShell.CreateShortcut(DesktopPath & "\F11-AAA.lnk")
MyShortcut.TargetPath = "C:\HLP\BAT\AAA.BAT"

 MyShortcut.WorkingDirectory = "C:\HLP\BAT"
   ' MyShortcut.WindowStyle = 4
MyShortcut.WindowStyle = 1
MyShortcut.Hotkey =  "F11"
' MyShortcut.Attributes  = 2
' MyShortcut.Attributes = MyShortcut.Attributes +2
  MyShortcut.IconLocation = "C:\HLP\BAT"
  ''  novo  MyShortcut.IconLocation = "Iexplore.lnk, 0"
   '' novo  MyShortcut.Description = "Shortcut Script"
MyShortcut.Save

''WScript.Echo "Shortcut has been placed on desktop"
'        WScript.Echo user & " " 
  
          
