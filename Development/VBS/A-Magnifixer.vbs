Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
Dim MyShortcut, MyDesktop, DesktopPath
' Read desktop path using WshSpecialFolders object
DesktopPath = WSHShell.SpecialFolders("Desktop")
' Create a shortcut object on the desktop
Set MyShortcut = WSHShell.CreateShortcut(DesktopPath & "\A-Magnifixer.lnk")
MyShortcut.TargetPath = "C:\HLP\MAGNIFY\Magnifixer.exe"
 MyShortcut.WorkingDirectory = "C:\HLP\MAGNIFY"
   ' MyShortcut.WindowStyle = 4
MyShortcut.WindowStyle = 1
MyShortcut.Hotkey =  "Ctrl+Alt+A"
' MyShortcut.Attributes  = 2
' MyShortcut.Attributes = MyShortcut.Attributes +2
MyShortcut.IconLocation = "C:\HLP\MAGNIFY"
MyShortcut.Save

''WScript.Echo "Shortcut has been placed on desktop"
'        WScript.Echo user & " " 
  
          
