  set WshShell = WScript.CreateObject("WScript.Shell")
 '' MsgBox "Hello there",64,"Greetings From JK"
 WshShell.run "CMD.EXE /c TASKKILL /F /IM GoogleUpdate.exe", 0 , True
 WshShell.run "CMD.EXE /c TASKKILL /F /IM GoogleCrashHandler.exe", 0 , True
 WScript.Sleep 1000
 WshShell.run "CMD.EXE /c TASKKILL /F /IM GoogleUpdate.exe", 0 , True
 WshShell.run "CMD.EXE /c TASKKILL /F /IM GoogleCrashHandler.exe", 0 , True

 WshShell.run "CMD.EXE /c SCHTASKS /Delete /TN GoogleUpdateTaskMachineCore /F", 0 , True
 WshShell.run "CMD.EXE /c SCHTASKS /Delete /TN GoogleUpdateTaskMachineUA /F", 0 , True
 WshShell.run "CMD.EXE /c SCHTASKS /Delete /TN User_Feed_Synchronization-{D3006CA5-4B90-444C-9702-335D1169C7E4} /F", 0 , True
 WScript.Sleep 1000
 WshShell.run "CMD.EXE /c SCHTASKS /Delete /TN GoogleUpdateTaskMachineCore /F", 0 , True
 WshShell.run "CMD.EXE /c SCHTASKS /Delete /TN GoogleUpdateTaskMachineUA /F", 0 , True
 WshShell.run "CMD.EXE /c SCHTASKS /Delete /TN User_Feed_Synchronization-{D3006CA5-4B90-444C-9702-335D1169C7E4} /F", 0 , True

 WshShell.run "CMD.EXE /c IF EXIST 'C:\Program Files\Google\Update' (rmdir 'C:\Program Files\Google\Update' /s /q ) ", 0 , True
 WshShell.run "CMD.EXE /c rmdir C:\Program Files\Google\Update /s /q", 0 , True


folderpath = "C:\Program Files\Google\Update"
Set FSO = CreateObject("Scripting.FileSystemObject")
If FSO.FolderExists(folderpath) = True Then
    FSO.deleteFolder (folderpath)
End If
