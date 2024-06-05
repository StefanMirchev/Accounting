  set WshShell = WScript.CreateObject("WScript.Shell")
    WshShell.Run "TASKKILL /F /IM jp2launcher.exe", 0, Falsh
    WScript.Sleep 3000
    call WshShell.Run("C:\DISC\HLP\EXE\javaws.exe -localfile -J-Djnlp.application.href=https://inetdec.nra.bg/ls/stampitls-vat.jnlp  C:\Users\%username%\AppData\LocalLow\Sun\Java\Deployment\cache\6.0\23\26668957-63f589ae" , 0, Falsh)
    WScript.Sleep 3000
    call WshShell.Run("C:\DISC\HLP\LNK\Chrome.LNK https://inetdec.nra.bg/eservices.html" , 0, Falsh)
  ''  WScript.Sleep 3000
  ''  call WshShell.Run("C:\DISC\HLP\LNK/BISS.lnk" , 0, Falsh)
    Wscript.Quit 
