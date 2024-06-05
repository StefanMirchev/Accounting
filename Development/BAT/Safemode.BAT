 ECHO Safe Boot
 REM bcdedit /set safeboot minimal
 REM echo msconfig
 REM echo Shift + F8 -> Safe Mode 

  ECHO NORMALI 
  bcdedit /deletevalue {default} safeboot
pause
