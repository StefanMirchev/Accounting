Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
Dim MyShortcut, MyDesktop, DesktopPath
' Read desktop path using WshSpecialFolders object
DesktopPath = WSHShell.SpecialFolders("Desktop")
' Create a shortcut object on the desktop
Set MyShortcut = WSHShell.CreateShortcut(DesktopPath & "\8min.lnk")
MyShortcut.TargetPath = WSHShell.ExpandEnvironmentStrings("C:\HLP\BAT\8min.BAT")
   MyShortcut.WorkingDirectory = WSHShell.ExpandEnvironmentStrings("C:\HLP\BAT")
' MyShortcut.WindowStyle = 4
  MyShortcut.WindowStyle = 1
 MyShortcut.Hotkey =  "Shift+Alt+4"
' MyShortcut.Attributes  = 2
' MyShortcut.Attributes = MyShortcut.Attributes +2
MyShortcut.IconLocation = WSHShell.ExpandEnvironmentStrings("C:\HLP\IMAGE\8min.ico")
 MyShortcut.Save
          