rem Run as administrator
dism /online /add-package /packagepath:"C:\__CHEF_C\inetVAT5Frm.cab"
rem Dism /Image:C:\__CHEF_C /Cleanup-Image /RevertPendingActions
pause

syntaxCopy
Dism /Image:C:\__CHEF_C /Cleanup-Image /SPSuperseded /HideSP

pause
syntaxCopy
rem Dism /Online /Cleanup-Image /ScanHealth
pause

syntaxCopy
rem Dism /Online /Cleanup-Image /RestoreHealth /Source:c:\test\mount\windows /LimitAccess

pause