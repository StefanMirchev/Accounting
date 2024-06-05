Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
Dim MyShortcut, MyDesktop, DesktopPath
' Read desktop path using WshSpecialFolders object
DesktopPath = WSHShell.SpecialFolders("Desktop")
' Create a shortcut object on the desktop
Set MyShortcut = WSHShell.CreateShortcut(DesktopPath & "\Z-Post.lnk")
MyShortcut.TargetPath = WSHShell.ExpandEnvironmentStrings("C:\DISC\PRIN\KK\POST.BAT")
   MyShortcut.WorkingDirectory = WSHShell.ExpandEnvironmentStrings("C:\DISC")
' MyShortcut.WindowStyle = 4
MyShortcut.WindowStyle = 1
MyShortcut.Hotkey =  "Ctrl+Alt+Z"
'  MyShortcut.Attributes  = 2
'  MyShortcut.Attributes = MyShortcut.Attributes +2
MyShortcut.IconLocation = WSHShell.ExpandEnvironmentStrings("C:\DISC")
 MyShortcut.Save
          