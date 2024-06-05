     Dim commandLine, WshShell
     Set WshShell = CreateObject("WScript.Shell")
  
         http0 = "C:\DISC\HLP\LNK\Iexplore.LNK"
     ''  http0 = "C:\DISC\HLP\LNK\Chrome.LNK"
     ''  http0 = "C:\HLP\LNK\Edge.lnk"
     ''  http0 = "C:\HLP\LNK\firefox.lnk"
    
    
     strTitle = "Answer Box"
    
    
   
     strMsg = strMsg & "  1. ARHI-19   "  & vbCR          
     strMsg = strMsg & "  2. ARHI-20   "  & vbCR           
     strMsg = strMsg & "  3. HLP       "  & vbCR           
     strMsg = strMsg & "  4. MESSAGE-1 "  & vbCR            
     strMsg = strMsg & "  5. MESSAGE-2 "  & vbCR          
     strMsg = strMsg & "  6. OpenVPN   "  & vbCR          
     strMsg = strMsg & "  7. RAZARH_2  "  & vbCR           
     strMsg = strMsg & "  8. SYNC_1    "  & vbCR           
     strMsg = strMsg & "  9. SYNC_2    "  & vbCR          
     strMsg = strMsg & "10. UPDA_S     "  & vbCR           
     strMsg = strMsg & "11. WEATHER    "  & vbCR          
     strMsg = strMsg & "12. WEB        "  & vbCR 
     strMsg = strMsg & "24. AAAAA       "  & vbCR 


     strMsg = strMsg & "EXIT - EÌPTY "     & vbCR

     strFlag = False

          Do While strFlag = False
          inp01 = InputBox(strMsg,"Make your selection",,9000,1000)
           Select Case inp01         
                 
               Case "1"
                   commandLine = "SCHTASKS /Run /TN ARHI-19"
               Case "2"
                   commandLine = "SCHTASKS /Run /TN ARHI-20"
               Case "3"
                   commandLine = "SCHTASKS /Run /TN HLP"
               Case "4"
                   commandLine = "SCHTASKS /Run /TN MESSAGE-1"
               Case "5"
                   commandLine = "SCHTASKS /Run /TN MESSAGE-2"
               Case "6"
                   commandLine = "SCHTASKS /Run /TN OpenVPN"
               Case "7"
                   commandLine = "SCHTASKS /Run /TN RAZARH_2 "
               Case "8"
                   commandLine = "SCHTASKS /Run /TN SYNC_1"
               Case "9"
                   commandLine = "SCHTASKS /Run /TN SYNC_2"
               Case "10"
                   commandLine = "SCHTASKS /Run /TN UPDA_S"
               Case "11"
                   commandLine = "SCHTASKS /Run /TN WEATHER"
               Case "12"
                   commandLine = "SCHTASKS /Run /TN WEB"
               Case "24"
                   
                    call WshShell.Run( "cmd.exe /c SCHTASKS > C:\_AAAA\AAA.TXT", 0, True) 
                     commandLine = "NOTEPAD.EXE C:\_AAAA\AAA.TXT" 
                Case "0"
                          http1 = ""
                  Case ""
                        strFlag = True
                        Wscript.Quit 
                  Case Else
                        MsgBox "You made an incorrect selection!",64,strTitle
           End Select

                        Call WshShell.Run (commandLine,8,false)


             '         WScript.Sleep 3000
             ''          call WshShell.Run("cmd.exe /c echo "& user0 &"|c:\disc\hlp\exe\clip.exe", 0, True)
              ''              MsgBox "USER NAME",64,""& user0 &""   
              ''         call WshShell.Run( "cmd.exe /c echo "& pass0 &"|c:\disc\hlp\exe\clip.exe", 0, True)  
              ''              MsgBox "PASSWORD",64,""& user0 &"" 
              ''         call WshShell.Run("cmd.exe /c echo "& user0 &"|c:\disc\hlp\exe\clip.exe", 0, True)
         ''  End Select
   Loop
          Wscript.Quit 
