  REM !!!!!   CREATE EXE WITH -> C:\HLP\BAT\BAT-EXE.BAT


   @ echo off
   @ netsh interface set interface "Ethernet" admin=DISABLED
   @ C:\HLP\EXE\netsh interface set interface "Wi-Fi" DISABLED
   rem  @del "C:\Users\%username%\AppData\Roaming\Sublime Text 3\Local\Session.sublime_session"
   rem  @timeout 1
   @ cmd /c start C:\HLP\SUBLIME\sublime_text.exe -n %1
   @ timeout 1
   @ netsh interface set interface "Ethernet" admin=ENABLE
   @ C:\HLP\EXE\netsh interface set interface "Wi-Fi" ENABLE
