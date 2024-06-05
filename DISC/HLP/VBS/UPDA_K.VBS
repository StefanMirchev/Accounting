    Set fso = CreateObject("Scripting.FileSystemObject")
    set WshShell = WScript.CreateObject("WScript.Shell")
    path="C:\$WINDOWS.~BT\" 'path to folder    
    exists = fso.FolderExists(path)
    if (exists) then 
      ''  MsgBox("111111111111111111111111111")
      ''  set WshShell = WScript.CreateObject("WScript.Shell")
          WshShell.run "CMD.EXE /c rmdir C:\$WINDOWS.~BT /s /q", 0, True
     ''   WshShell.run "CMD.EXE", "/c rmdir C:\$WINDOWS.~BT /s /q", "", "runas", 1
    else 
     ''  MsgBox("BBBBBBBBBBBBBBBBBBBBB")
    end if
         
     path="C:\$GetCurrent\" 'path to folder    
     exists = fso.FolderExists(path)
     if (exists) then 
     ''   MsgBox("22222222222222222222222222")
     ''   set WshShell = WScript.CreateObject("WScript.Shell")
          WshShell.run "CMD.EXE /c rmdir C:\$GetCurrent /s /q", 0, True
     else 
     end if

     path="C:\Windows10Upgrade\" 'path to folder    
     exists = fso.FolderExists(path)
     if (exists) then 
     ''   MsgBox("3333333333333333333333333333")
     ''   set WshShell = WScript.CreateObject("WScript.Shell")
          WshShell.run "CMD.EXE /c rmdir C:\Windows10Upgrade /s /q", 0, True
     else 
     end if

     path="C:\Windows\UpdateAssistant\" 'path to folder    
     exists = fso.FolderExists(path)
     if (exists) then 
       '' MsgBox("4444444444444444444444444444")
       '' set WshShell = WScript.CreateObject("WScript.Shell")
          WshShell.run "CMD.EXE /c rmdir C:\Windows\UpdateAssistant /s /q", 0, True
     else 
     end if
         path="C:\Windows\SoftwareDistribution\" 'path to folder
         exists = fso.FolderExists(path)
     if (exists) then 
     ''   MsgBox("5555555555555555555555555555555")
     ''   set WshShell = WScript.CreateObject("WScript.Shell")
          WshShell.run "CMD.EXE /c rmdir C:\Windows\SoftwareDistribution /s /q", 0, True
     else 
     end if

        path="C:\Windows\SoftwareDistribution\DataStore\" 'path to folder    
        exists = fso.FolderExists(path)
     if (exists) then 
       '' MsgBox("6666666666666666666666666666666")
       '' set WshShell = WScript.CreateObject("WScript.Shell")
          WshShell.run "CMD.EXE /c rmdir C:\Windows\SoftwareDistribution\DataStore /s /q", 0, True
     else 
     end if

