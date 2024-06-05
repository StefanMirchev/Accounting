 @ echo off

 @   SCHTASKS /Delete            /TN GoogleUpdateTaskMachineCore  /F 
 @   SCHTASKS /Delete            /TN GoogleUpdateTaskMachineUA  /F 
 @   SCHTASKS /Delete            /TN User_Feed_Synchronization-{D3006CA5-4B90-444C-9702-335D1169C7E4}  /F 
 @   timeout 2
 @   SCHTASKS /Delete            /TN GoogleUpdateTaskMachineCore  /F 
 @   SCHTASKS /Delete            /TN GoogleUpdateTaskMachineUA  /F 
 @   SCHTASKS /Delete            /TN User_Feed_Synchronization-{D3006CA5-4B90-444C-9702-335D1169C7E4}  /F 
 @  

 @ TASKKILL /F /IM GoogleUpdate.exe
 @ TASKKILL /F /IM GoogleCrashHandler.exe
 @ timeout 2
 @ TASKKILL /F /IM GoogleUpdate.exe
 @ TASKKILL /F /IM GoogleCrashHandler.exe

 @ IF EXIST "C:\Program Files\Google\Update" (rmdir "C:\Program Files\Google\Update" /s /q ) 

 rem  C:\Windows\system32\takeown /f "C:\Program Files\Google\Update"
 rem     C:\Windows\system32\icacls "C:\Program Files\Google\Update" /Grant Administrators:f

 rem echo bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
 rem pause
 rem exit



