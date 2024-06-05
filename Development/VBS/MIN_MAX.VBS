      


  ''  Dim oShell : Set oShell = CreateObject("WScript.Shell")
  ''  Set oShell = CreateObject("WScript.Shell")
    
  '' WScript.Sleep 2000
  '' oShell.SendKeys("% {DOWN}{DOWN}{DOWN}{DOWN}{ENTER}")   'Maximize'...
 
  '' oShell.SendKeys("% {ENTER}")   'Restore'...
 
  '' oShell.SendKeys("% {DOWN}{DOWN}{DOWN}{ENTER}") 'Minimize'...  
 
  '' oShell.SendKeys "% x" 'Maximize'...   
 
  '' oShell.SendKeys "% n" 'Minimize'...
 
  '' oShell.SendKeys "% D" 'Minimize'...
 
  '' oShell.SendKeys "% r"   'Restore'...
 
   '' WScript.Sleep 2000

     set objShell = CreateObject("Shell.Application")
     objShell.MinimizeAll  'Minimize  ALL'... 
     WScript.Sleep 1000
     objShell.MinimizeAll  'Minimize  ALL'... 
     WScript.Sleep 1000
     Set shell = WScript.CreateObject("WScript.Shell")
     shell.Run "rundll32.exe user32.dll,LockWorkStation",1,false
