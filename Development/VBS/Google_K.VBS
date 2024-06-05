
 ''   Set objShell = CreateObject("Shell.Application")
 ''   Set objShell = CreateObject("Shell.Application")
 ''    objShell.ShellExecute "cmd.exe /c start SCHTASKS /Delete /TN GoogleUpdateTaskMachineCore /F", "SCHTASKS /Delete /TN GoogleUpdateTaskMachineCore /F",, "runas", 1

  ''   objShell.ShellExecute "cmd.exe", "SCHTASKS /Delete /TN GoogleUpdateTaskMachineCore /F -1", "runas", 1

        set WshShell = WScript.CreateObject("WScript.Shell")
   ''       WshShell.run "CMD.EXE /c rmdir C:\$WINDOWS.~BT /s /q", 0, True
 WshShell.run "CMD.EXE /c SCHTASKS /Delete /TN GoogleUpdateTaskMachineCore /F", 0 , True
 WshShell.run "CMD.EXE /c SCHTASKS /Delete /TN GoogleUpdateTaskMachineUA /F", 0 , True
 WshShell.run "CMD.EXE /c SCHTASKS /Delete /TN User_Feed_Synchronization-{D3006CA5-4B90-444C-9702-335D1169C7E4} /F", 0 , True