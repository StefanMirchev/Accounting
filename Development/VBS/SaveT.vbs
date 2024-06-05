Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
Dim MyShortcut, MyDesktop, DesktopPath
' Read desktop path using WshSpecialFolders object
DesktopPath = WSHShell.SpecialFolders("Desktop")
' Create a shortcut object on the desktop
Set MyShortcut = WSHShell.CreateShortcut(DesktopPath & "\SaveT.lnk")
MyShortcut.TargetPath = "C:\DISC\HLP\SAVE\SaveT.exe"

 MyShortcut.WorkingDirectory = "C:\DISC\HLP\SAVE"
   ' MyShortcut.WindowStyle = 4
MyShortcut.WindowStyle = 1
MyShortcut.Hotkey =  "Alt+F2"
' MyShortcut.Attributes  = 2
' MyShortcut.Attributes = MyShortcut.Attributes +2
MyShortcut.IconLocation = "C:\DISC\HLP\SAVE"
MyShortcut.Save

''WScript.Echo "Shortcut has been placed on desktop"
'        WScript.Echo user & " " 
  
          
