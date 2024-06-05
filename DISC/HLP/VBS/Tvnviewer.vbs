   Dim WSHShell
   Set WSHShell = WScript.CreateObject("WScript.Shell")
   Dim MyShortcut, MyDesktop, DesktopPath
   DesktopPath = WSHShell.SpecialFolders("Desktop")

    Set MyShortcut = WSHShell.CreateShortcut(DesktopPath & "\Tvnviewer.lnk")
    MyShortcut.TargetPath = "D:\Program Files\TightVNC\tvnviewer.exe"
    MyShortcut.WorkingDirectory = "D:\Program Files\TightVNC"
    MyShortcut.Save


  
          
