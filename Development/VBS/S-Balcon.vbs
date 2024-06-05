Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
Dim MyShortcut, MyDesktop, DesktopPath
' Read desktop path using WshSpecialFolders object
DesktopPath = WSHShell.SpecialFolders("Desktop")
' Create a shortcut object on the desktop
Set MyShortcut = WSHShell.CreateShortcut(DesktopPath & "\S-Balcon.lnk")
MyShortcut.TargetPath = "C:\HLP\BAT\balcon.BAT"
 MyShortcut.WorkingDirectory = "C:\Program Files\Balcon"
   ' MyShortcut.WindowStyle = 4
MyShortcut.WindowStyle = 1
MyShortcut.Hotkey =  "Ctrl+Alt+S"
' MyShortcut.Attributes  = 2
' MyShortcut.Attributes = MyShortcut.Attributes +2
MyShortcut.IconLocation = "C:\Program Files\Balcon"
MyShortcut.Save

''WScript.Echo "Shortcut has been placed on desktop"
'        WScript.Echo user & " " 
  
          
