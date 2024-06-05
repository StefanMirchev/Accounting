set WshShell = WScript.CreateObject("WScript.Shell")

  WshShell.run "CMD.EXE /c rd /s /q %UserProfile%\AppData\Roaming\ViberPC\data\stickers", 0, True
  WshShell.run "CMD.EXE /c Xcopy /E /I D:\IDISK\Viber\stickers %UserProfile%\AppData\Roaming\ViberPC\data\stickers", 0, True