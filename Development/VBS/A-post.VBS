Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
Dim MyShortcut, MyDesktop, DesktopPath
' Read desktop path using WshSpecialFolders object
DesktopPath = WSHShell.SpecialFolders("Desktop")
' Create a shortcut object on the desktop
Set MyShortcut = WSHShell.CreateShortcut(DesktopPath & "\A-post.lnk")
MyShortcut.TargetPath = WSHShell.ExpandEnvironmentStrings("%UserProfile%\Box Sync\__ANDROID\DISC\PRIN\KK\POST.BAT")
   MyShortcut.WorkingDirectory = WSHShell.ExpandEnvironmentStrings("%UserProfile%\Box Sync\__ANDROID\DISC\PRIN\KK")
' MyShortcut.WindowStyle = 4
MyShortcut.WindowStyle = 1
MyShortcut.Hotkey =  "Ctrl+Alt+A"
' MyShortcut.Attributes  = 2
' MyShortcut.Attributes = MyShortcut.Attributes +2
MyShortcut.IconLocation = WSHShell.ExpandEnvironmentStrings("%UserProfile%\Box Sync\__ANDROID\DISC\PRIN\KK")
 MyShortcut.Save
          