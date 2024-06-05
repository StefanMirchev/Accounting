        @ echo oFF     
         GOTO GO61
      :GO1
      DOSPRN SIZE F11 CPI/horizontal/ P10  LPI/vertikal/ L06
      DOSPRN SIZE A00 ¢¥°²¨ª « PO-MALKA CIFRA PO-SBIT WERIKAL
      rundll32 printui.dll,PrintUIEntry /y /q /n "Zan Image Printer(bw)" set as defoult
      2 normalen    1 - malko sbit         3 mnogo sbit
      Markrker za kray na file e CTRL+Z (¨«¨ chr(26) ¨«¨ 1€).
      Vseki zapis zavarshva s CR ¨ LF (chr(13)+chr(10)).
      ? 'aaaaa'+chr(27)+'S'+chr(1)+'bbbbbT'  &&  podcherta
      ? 'aaaaa'+chr(27)+'S'+chr(2)+'bbbbbT'  &&  nadcherta
      ? chr(27)+'-'+chr(1)+'aaaaaaa'+chr(27)+'-'+chr(0)+'bbbbbbbT' && podchertavane
      ? chr(27)+'4'+'AAAAA'+chr(27)+'5'+'bbbbbbbbT'  &&  italik
      ? 'aaaaa'+'S'+'bbbbbT'  &&  podcherta
      ? 'aaaaa'+'S'+'bbbbbT'  &&  nadcherta
      ? 'E'+'aaaa'+'F'+'bbbbbT'  &&  udebelen
      ? 'G'+'aaaa'+'H'+'bbbbbT'  &&  dvoino udebelen
      ? '-'+'aaaaa'+'-'+chr(0)+'bbbbbbbT' && podchertavane
      ? '4'+'AAAAA'+'5'+'bbbbbbbbT'  &&  italik

   ECHO 111111111111111111111111111111111
   PAUSE
   EXIT
   
   :GO2
  rem  "list device and printers via batch file"
  wmic printer list brief > _AAA.txt
  _AAA.txt
  wmic printer get name > _AAA.txt
  _AAA.txt  
  driverquery /FO list /v > _AAA.txt
  _AAA.txt
  
   ECHO 222222222222222222222222222222222222
   PAUSE
   EXIT


    :GO3
    start rundll32 printui.dll,PrintUIEntry /dn /n "\\EXEL\KONICA MINOLTA PagePro 1380 MF" 
    start rundll32 printui.dll,PrintUIEntry /dn  "Xerox"  
    start rundll32 printui.dll,PrintUIEntry /dn /n "\\4ER\Canon MF4100 Series UFRII LT" 
    start rundll32 printui.dll,PrintUIEntry /dn /n "\\dida\HP Deskjet 3050 J610 series" 
    start rundll32 printui.dll,PrintUIEntry /dl /n "Fax"
    start rundll32 printui.dll,PrintUIEntry /dl /n "doPDF v7" 
    start rundll32 printui.dll,PrintUIEntry /dl /n "ImagePrinter" 
    start rundll32 printui.dll,PrintUIEntry /ga /n "\\dida\HP Deskjet 3050 J610 series" 
    start rundll32 printui.dll,PrintUIEntry /? > C:\_AAAA\TASK.TXT   
    START   rundll32.exe mshtml.dll,PrintHTML "<document>" "<driver>" "<device>" "<port>"
   ECHO 333333333333333333333333333333333333333
   PAUSE
   EXIT


    :GO4
    RUNDLL32.EXE MSHTML.DLL,PrintHTML "C:\_AAAA\TASK.TXT" "D:\"
    rundll32.exe mshtml.dll,PrintHTML “http://blogs.msdn.com/fyuan”‘Default printer: ‘Microsoft XPS Document Writer’
       REM   ALL PRINTERS 
    rundll32.exe mshtml.dll,PrintHTML "C:\_AAAA\ZAN.DOC" "FAX" "PORTPROMPT:"
        REM ONLY INSTALL PRINTERS 
    rundll32.exe mshtml.dll,PrintHTML "C:\_AAAA\ZAN.PDF" "Zan Image Printer (BW)" "\\PETQ\ZanBW" "zvprint1"
    start  rundll32.exe mshtml.dll,PrintHTML "C:\_AAAA\ZAN.PDF"  "Zan Image Printer (BW)" "zvprt1"
    rundll32.exe mshtml.dll,PrintHTML "C:\_AAAA\S0003.txt"  "Zan Image Printer (BW)" "zvprt1"
    rundll32.exe mshtml.dll,PrintHTML "C:\_AAAA\S3.TXT"  "Zan Image Printer (BW)" "zvprt1"
    copy /b report*.pdf "Main Report.pdf"
   ECHO 44444444444444444444444444444444444444444444
   PAUSE
   EXIT

                                             PRINT_CHEK

    :GO5
       REM  "list device and printers via batch file"
     C:\Windows\System32\WindowsPowerShell\v1.0\Powershell Get-PrinterPort zvprint1 > C:\HLP\BAT\_AAA.txt
     C:\Windows\System32\WindowsPowerShell\v1.0\Powershell Get-Printer  > C:\HLP\BAT\_AAA.txt
     C:\Program Files\Reference Assemblies\Microsoft\WindowsPowerShell\v1.0\Powershell Get-PrinterPort > C:\HLP\BAT\_AAA.txt
     C:\HLP\BAT\_AAA.txt
  ECHO 5555555555555555555555555555555555555555
   PAUSE
   EXIT


    :GO6
        rem  comdisable /list  ZA   XP
        REM "list device and printers via batch file"
        wmic printer list brief > _AAA.txt
       _AAA.txt
        wmic printer get name > _AAA.txt
       _AAA.txt  
       driverquery /FO list /v > _AAA.txt
       dir/s/b/a-d C:\HLP\BAT\New | find /v /c "*.*"  >  _AAA.TXT
       _AAA.TXT
       type COM1 > _AAA.TXT
       _AAA.TXT
        copy COM1 _AAA.TXT
       _AAA.TXT
       echo hello > COM3
       copy COM3 _AAA.TXT
       _AAA.TXT
       set /P "var=" < COM3
       set /p x="hello" <nul >\\.\COM3
       

      :GO61
       MODE COM3  > _AAA.txt 
       _AAA.txt 
       if %ERRORLEVEL% equ 0 (@echo "port taken")
       ELSE (@echo "port available")
  
 
   ECHO 666666666666666666666666666666666
   PAUSE
   EXIT

       :GO7
       rem **nachalo*****************  rem  
    @echo off
    mode COM3 BAUD=9600 PARITY=n DATA=8
    :main
    set /p x=5 <nul >\\.\COM3
    ping localhost -n 2 >nul  r
    type com3 
    goto main
     REM **kray*****************
 
   ECHO 7777777777777777777777777777777777777777
   PAUSE
   EXIT


   :GO8
       rundll32 printui.dll,PrintUIEntry   /f "C:\HLP\BAT\_AAA.TXT"  /Xg /n "Zan Image Printer (BW)"
       rundll32 printui.dll,PrintUIEntry    /f "C:\HLP\BAT\_AAA.TXT" /Xs /n "Zan Image Printer (BW)" 
       rundll32 printui.dll,PrintUIEntry   /f "C:\HLP\BAT\_AAA.TXT"  /Xg 
       rundll32 printui.dll,PrintUIEntry    /f "C:\HLP\BAT\_AAA.TXT" /Xs  
   ECHO 8888888888888888888888888888888888888888888
   PAUSE
   EXIT

   :GO9
   rem   @   %SystemRoot%\system32\net use 
   rem   @   %SystemRoot%\system32\net SHARE  
   rem   @   %SystemRoot%\system32\net view \\BQL  
   rem   @   %SystemRoot%\system32\net use zvprint1 \\stef\zanBW 
   rem   @   %SystemRoot%\system32\IPCONFIG  
   ECHO 99999999999999999999999999999999999999999
   PAUSE
   EXIT