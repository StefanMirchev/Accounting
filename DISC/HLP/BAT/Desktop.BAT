  rem  C:\DISC\HLP\EXE\TXT\win32pad.exe C:\DISC\HLP\BAT\Desktop.BAT
  rem Don't_show_hidden_files_folders_and_drives
  rem Show_hidden_files_folders_and_drives
  rem REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V Hidden /T REG_DWORD /D 1 /F
  rem Hide_protected_operating_system_files
  rem REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V ShowSuperHidden /T REG_DWORD /D 0 /F
  rem Show_protected_operating_system_files
  rem REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V Hidden /T REG_DWORD /D 1 /F
  rem REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V ShowSuperHidden /T REG_DWORD /D 1 /F


   REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V Hidden /T REG_DWORD /D 0 /F
   rem  TOZI!!!!        taskkill /f /im explorer.exe
         taskkill /f /im explorer.exe
         start explorer.exe
  
    

         wscript.exe C:\DISC\HLP\VBS\SaveA.vbs"

         attrib %UserProfile%\Desktop\SaveA.lnk          +H

          taskkill /f /im wscript.exe
