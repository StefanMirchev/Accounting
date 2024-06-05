Set WShshell = CreateObject("WScript.Shell")
  WShshell.run "c:\WINDOWS\system32\notepad.exe",1
  WshShell.AppActivate "notepad"
  WshShell.SendKeys "3727"
  WShshell.SendKeys "^V" 