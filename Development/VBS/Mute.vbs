    Hidden = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden"
  ' SSHidden = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden"
   Set Command1 = WScript.CreateObject("WScript.Shell")
   Set command2 = CreateObject("Wscript.Shell")
   Check = Command1.RegRead(Hidden)
  '"REG_DWORD"

    If Check = 2 Then
       Command1.RegWrite Hidden, 1
       command2.Run "C:\HLP\EXE\nircmd.exe mutesysvolume 0", 1, False
    Else
       Command1.RegWrite Hidden, 2
       command2.Run "C:\HLP\EXE\nircmd.exe mutesysvolume 1", 2, False
    End If
   command2.Run "%windir%\System32\SndVol.exe -f 49825268", 0, False
   Command1.SendKeys "{F5}"
   command2.Run "wmplayer.exe C:\Windows\Media\Notify.wav", 0, False
   WScript.sleep 1000
   command2.Run "taskkill /f /im wmplayer.exe", 0





