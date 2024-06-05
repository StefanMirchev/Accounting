    Dim strMsg,inp01,strTitle,strFlag,http0
    set WshShell = WScript.CreateObject("WScript.Shell")
    set ie = CreateObject("InternetExplorer.Application")
    
 ''  http0 = "C:\DISC\HLP\LNK\Iexplore.LNK"
     ''  http0 = "C:\DISC\HLP\LNK\Chrome.LNK"
     ''  /s /q
         http0 = "cmd.exe /c %SystemRoot%\system32\net use"
     ''  http0 = "C:\HLP\LNK\firefox.lnk"
    
    
     strTitle = "Answer Box"

     strMsg = strMsg & "    1. CHEF  K L   "   & vbCR 
     strMsg = strMsg & "    2. KOSI  M N   "   & vbCR  
     strMsg = strMsg & "    3. STEF  Q R   "   & vbCR
     strMsg = strMsg & "    4. ALEN  O P   "   & vbCR 
     strMsg = strMsg & "    5. KOSY  S T   "   & vbCR
     strMsg = strMsg & "    6. ACCO  U V   "   & vbCR 
     strMsg = strMsg & "    7. LENOVO-ME301T X/Y" & vbCR  
     strMsg = strMsg & "    8. IPSCAN     "  & vbCR  
     strMsg = strMsg & "    9. Z \\BQL\C     "  & vbCR     
     strMsg = strMsg & "   10. Z \\Chefo\idisk "  & vbCR     

     strMsg = strMsg & "  24.  CLOSE NET"     & vbCR 
  
   
     strMsg = strMsg & "EXIT - EÌPTY "     & vbCR

     strFlag = False

          Do While strFlag = False
          inp01 = InputBox(strMsg,"Make your selection",,9000,1000)
           Select Case inp01         
  
               Case "1"
                   http1 = " A: \\CHEF\d" : http2 = " K: \\CHEF\c" : http3 = " L: \\CHEF\d" 
                ''   http4 = " Z: \\192.168.0.102\d" : http5 = " " '' " \\CHEF\xerox"            
              Case "2"
                   http1 = " A: \\KOSI\d" : http2 = " M: \\KOSI\c" : http3 = " N: \\KOSI\d"
              Case "3"
                   http1 = " A: \\STEF\d" : http2 = " Q: \\STEF\c" : http3 = " R: \\STEF\d"
              Case "4"
                  http1 = " A: \\KOSI\d" : http2 = " O: \\KOSI\c" : http3 = " P: \\KOSI\d"   
              Case "5"
                   http1 = " A: \\KOSY\d" : http2 = " S: \\KOSY\c" : http3 = " T: \\KOSY\d"               
              Case "6"
                   http1 = " A: \\ACCO\d" : http2 = " U: \\ACCO\c" : http3 = " V: \\ACCO\d"
              Case "7"
                ''  http1 = " X: http://192.168.0.203:8080" : http2 = " Y: http://192.168.0.204:8080" 
                    http1 = " X: http:\\192.168.100.8:8080" : http2 = " Y: http://192.168.100.6:8080" 
               Case "8"
        ie.Visible = 0 
        call WshShell.Run("cmd.exe /c  arp.exe -a  > C:\_AAAA\AAA.TXT", 0, True)
        ie.Navigate "about:blank" : ie.ToolBar = 0 : ie.StatusBar = 2 : ie.Left = 0 : ie.Top = 2 
        : ie.Width = 200 : ie.Height = 250 : ie.Visible = 1 : ie.Navigate "C:\_AAAA\AAA.TXT"
        WScript.Sleep 9000
             Case "9"
                  http2 = " Z: \\BQL\c"
            Case "10"
                  http2 = " Z: \\Chefo\idisk"
                   
            Case "0"
                          http1 = ""
            Case ""
                        strFlag = True
                        Wscript.Quit 
            Case Else
                        MsgBox "You made an incorrect selection!",64,strTitle
           End Select
 
    ie.Navigate "about:blank" : ie.StatusBar = 0 : ie.ToolBar = 0 : ie.Left = 60 : ie.Top = 5  : ie.Width = 100 
    ie.Height = 5  : ie.Document.Body.InnerHTML = "Pleasw wait 10 sec."  : ie.Visible = 1


     IF http1 <> " " Then  call WshShell.Run("" & http0 & "" & "" & http1 & "", 0, True) : end if 
     IF http2 <> " " Then  call WshShell.Run("" & http0 & "" & "" & http2 & "", 0, True) : end if 
     IF http3 <> " " Then  call WshShell.Run("" & http0 & "" & "" & http3 & "", 0, True) : end if 
     IF http4 <> " " Then  call WshShell.Run("" & http0 & "" & "" & http4 & "", 0, True) : end if 
     IF http5 <> " " Then  call WshShell.Run("" & http0 & "" & "" & http5 & "", 0, True) : end if 
 
     WScript.Sleep 9000
       
          call WshShell.Run("cmd.exe /c  %SystemRoot%\system32\net use > C:\_AAAA\AAA.TXT", 0, True) 
          ie.Visible = 0
          WshShell.Run "C:\_AAAA\AAA.TXT"
         ''  End Select
   Loop
          Wscript.Quit 
