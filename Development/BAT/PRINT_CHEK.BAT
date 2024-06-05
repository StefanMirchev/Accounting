
echo on
rem  "list device and printers via batch file"
REM    C:\Windows\System32\WindowsPowerShell\v1.0\Powershell Get-PrinterPort zvprint1 > C:\HLP\BAT\_AAA.txt
REM    C:\Windows\System32\WindowsPowerShell\v1.0\Powershell Get-Printer  > C:\HLP\BAT\_AAA.txt
REM    C:\Program Files\Reference Assemblies\Microsoft\WindowsPowerShell\v1.0\Powershell Get-PrinterPort > C:\HLP\BAT\_AAA.txt
C:\HLP\BAT\_AAA.txt
  echo on
  rem  "list device and printers via batch file"
  rem   wmic printer list brief > _AAA.txt
  rem  _AAA.txt
  rem  wmic printer get name > _AAA.txt
  rem  _AAA.txt  
  rem   driverquery /FO list /v > _AAA.txt
       dir/s/b/a-d C:\HLP\BAT\New | find /v /c "*.*"  >  _AAA.TXT
  REM type COM1 > sample.txt
  REM copy COM1 sample.txt
  REM echo hello > COM3
  rem     set /P "var=" < COM3



  REM set /p x="hello" <nul >\\.\COM3
       MODE COM2  > _AAA.txt 
      C:\HLP\BAT\_AAA.txt
   pause

  rem if %ERRORLEVEL% equ 0 (@echo "port taken")
  rem   ELSE (@echo "port available")
   _AAA.TXT



  rem **nachalo*****************  rem  
  rem @echo off
  rem mode COM3 BAUD=9600 PARITY=n DATA=8
  rem :main
  rem set /p x=5 <nul >\\.\COM3
  rem ping localhost -n 2 >nul  r
  rem type com3
  rem goto main
**kray*****************

   rem    rundll32 printui.dll,PrintUIEntry   /f "C:\HLP\BAT\_AAA.TXT"  /Xg /n "Zan Image Printer (BW)"
   REM   rundll32 printui.dll,PrintUIEntry    /f "C:\HLP\BAT\_AAA.TXT" /Xs /n "Zan Image Printer (BW)" 
   rem   rundll32 printui.dll,PrintUIEntry   /f "C:\HLP\BAT\_AAA.TXT"  /Xg 
   rem   rundll32 printui.dll,PrintUIEntry    /f "C:\HLP\BAT\_AAA.TXT" /Xs  
   rem   @   %SystemRoot%\system32\net use 
   rem   @   %SystemRoot%\system32\net SHARE  
   rem   @   %SystemRoot%\system32\net view \\BQL  
   rem   @   %SystemRoot%\system32\net use zvprint1 \\stef\zanBW 
   rem   @   %SystemRoot%\system32\IPCONFIG  

pause





Status for device COM3:
-----------------------
    Baud:            9600
    Parity:          None
    Data Bits:       8
    Stop Bits:       1
    Timeout:         OFF
    XON/XOFF:        OFF
    CTS handshaking: OFF
    DSR handshaking: OFF
    DSR sensitivity: OFF
    DTR circuit:     OFF
    RTS circuit:     ON