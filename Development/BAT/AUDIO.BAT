
@ ECHO OFF
@ REM  TASKKILL /F /IM PDFXCview.exe /IM PDFXCview.exe
@     TASKKILL /F /IM PDFXCview.exe 
PAUSE 
EXIT
rem start rundll32.exe audiodgi.dll /n

    TASKKILL /F /PID 1896
    TASKKILL /F /IM audiodg.exe /IM audiodg.exe
  rem C:\Windows\System32\audiodg.exe
  REM C:\Windows\System32\auditpol.exe /list   
  dism.exe /online /cleanup-image /scanhealth 
  dism.exe /online /cleanup-image /restorehealth

IF /?
  PAUSE