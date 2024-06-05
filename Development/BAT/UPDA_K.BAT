   @  ECHO OFF
 
   @ rmdir C:\Windows\SoftwareDistribution\ /s /q
   @  REM TASKKILL /F /IM ApplicationFrameHost.exe DA NE SE PUSKA  
   @  TASKKILL /F /IM AEADISRV.EXE 
   @  TASKKILL /F /IM Ati2evxx.exe  
   @  TASKKILL /F /IM backgroundTaskHost.exe 
   @  TASKKILL /F /IM BackgroundTransferHost.exe 
   @  TASKKILL /F /IM csrss.exe 
   @  TASKKILL /F /IM dllhost.exe
   @  TASKKILL /F /IM fontdrvhost.exe  
   @  TASKKILL /F /IM InstallAgent.exe 
   @  TASKKILL /F /IM Microsoft.LockApp_cw5n1h2txyewy
   @  TASKKILL /F /IM RuntimeBroker.exe
   @  TASKKILL /F /IM SearchIndexer.exe
   @  TASKKILL /F /IM SetupHost.exe
   @  TASKKILL /F /IM conhost.exe    NIKOGA !!!
   @  REM   TASKKILL /F /IM svchost.exe  NIKOGA !!!
   @  TASKKILL /F /IM sdbinst.exe
   @  TASKKILL /F /IM SystemSettings.exe
   @  TASKKILL /F /IM SystemSettings.exe
   @  TASKKILL /F /IM smss.exe 
   @  TASKKILL /F /IM taskhostw.exe
   @  TASKKILL /F /IM TiWorker.exe
   @  TASKKILL /F /IM TrustedInstaller.exe
   @  TASKKILL /F /IM WerFault.exe
   @  TASKKILL /F /IM Windows10UpgraderApp.exe
   @  TASKKILL /F /IM WindowsUpdateBox.exe
   @  TASKKILL /F /IM winlogon.exe
   @  TASKKILL /F /IM wininit.exe
   @  TASKKILL /F /IM WUDFHost.exe  
       @  GOTO DELEDIR 

         :DELEDIR
   
  @ rem rmdir C:\$GetCurrent /s /q
  @ rmdir C:\Windows10Upgrade /s /q
  @ rmdir C:\Windows\UpdateAssistant  /s /q
  @ rmdir C:\Windows\SoftwareDistribution\DataStore\logs /s /q   
  @ rmdir C:\Windows\SoftwareDistribution\DataStore /s /q   
  @ rmdir C:\Windows\SoftwareDistribution\ /s /q
  @ rmdir C:\$WINDOWS.~BT\Sources\SafeOS\SafeOS.Mount\Windows\System32        
  @ rmdir C:\$WINDOWS.~BT\Sources\SafeOS\SafeOS.Mount\Windows\WinSxS
  @ rmdir C:\$WINDOWS.~BT\Sources\SafeOS\SafeOS.Mount\Windows\Vss\Writers\System
  @ rmdir C:\$WINDOWS.~BT\Sources\SafeOS\SafeOS.Mount\Windows\Vss
  @ rmdir C:\$WINDOWS.~BT /s /q
  @ rmdir "C:\Program Files\Google\Update\Install" /s /q

  pause
  @ rem del "C:\Users\%username%\Desktop\Windows 10 Update Assistant.lnk"

  


  






