 dim commandLine, WshShell, fso
  Set fso = CreateObject("Scripting.FileSystemObject")
 fso.CopyFile "C:\DISC\HLP\VBS\StartUp.LNK", "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\"



   WScript.Sleep 2000


   Set WshShell = CreateObject("WScript.Shell")
   '' set objShell = CreateObject("Shell.Application")
  
      commandLine = "C:\Windows\explorer.exe  C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp" 
      Call WshShell.Run (commandLine,8,false)

     
   WScript.Sleep 2000
 

 
 