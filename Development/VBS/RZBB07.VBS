Set objShell = WScript.CreateObject("WScript.Shell")
 
'All users Desktop
allUsersDesktop = objShell.SpecialFolders("AllUsersDesktop")
 
'The current users Desktop
usersDesktop = objShell.SpecialFolders("Desktop")
 
'Where to create the new shorcut
Set objShortCut = objShell.CreateShortcut(usersDesktop & "\Notepad.lnk")
 
'What does the shortcut point to
objShortCut.TargetPath = "%SystemRoot%\system32\notepad.exe"
 
'Add a description
objShortCut.Description = "Run the Notepad."
 
'Create the shortcut
objShortCut.Save

