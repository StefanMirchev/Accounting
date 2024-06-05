     set WshShell = WScript.CreateObject("WScript.Shell")

      Dim dd0,mm0,yy0,dt0
      ''  yy0 = DateAdd("d",1,Date())
      ''  eye0="C:\DISC\HLP\LNK\ImageEye.LNK  C:\HLP\IMAGE\" 
      ''  ima0="Water.gif"
      ''  WScript.Echo eye0 & ima0 
      ''  WshShell.Run eye0 & ima0 , 0, Falsh

        yy0 = Date()
    ''  WScript.Echo " Day " & Right("0" & Day(yy0),2) & " Month" & Right("0" & Month(yy0),2) & " Year" & Year(yy0)
     
     '' 1  --------------------- MESSAGE.txt -------------------------     
        call WshShell.Run("C:\DISC\HLP\LNK\1by1.LNK  C:\DISC\HLP\SOUND\Curve.mp3", 0, Falsh)
        WScript.Sleep 10000
        WshShell.Run "TASKKILL /F /IM  1by1.exe", 0, Falsh
        WScript.Sleep 3000
        WshShell.Run "C:\DISC\HLP\JOB\MESSAGE.txt", 1, Falsh 
    

     ''    --------------------- BROSHURA ------------------------
        If DatePart("w", Date())=5 OR DatePart("w", Date())=6 Then
            call WshShell.Run("C:\DISC\HLP\LNK\Iexplore.lnk https://www.lidl.bg/polezno-info/broshura", 0, false)  
            WScript.Sleep 2000  
         End If

     '' 2 --------------------- Doctor_01.JPG -------------------  12.00.0000

    ''   3  --------------------- Payment -------------------------  12.00.0000
          dt0 = "12.00.0000"  
       If Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3  Then
          WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK  C:\HLP\IMAGE\Payment_01.JPG", 0, Falsh
          WScript.Sleep 2000
          WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK  C:\HLP\IMAGE\Water.gif", 0, Falsh
          WScript.Sleep 2000
      End If
 
     '' 4 --------------------- insurance -------------------------  12.00.0000  
           dt0 = "12.00.0000"
         If Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\Insurance_01.jpg", 0, Falsh
           WScript.Sleep 2000
        End If       

    '' 5 --------------------- insurance -------------------------  25.00.0000 
        dt0 = "25.00.0000"
        If (Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3)  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\Insurance_01.jpg", 0, Falsh
           WScript.Sleep 2000
        End If       

     '' 6  --------------------- EL_CHEF ------------------------- 16.01.2021 
          dt0 = "16.01.2021"
         If Right("0" & Month(yy0),2) = Mid(dt0,4,2) AND (Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3)  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\EL_CHEF.jpg", 0, Falsh
           WScript.Sleep 2000
        End If       

     '' 7  --------------------- EL_KOSTA ------------------------- 16.05.2020
          dt0 = "16.05.2020"
         If Right("0" & Month(yy0),2) = Mid(dt0,4,2) AND (Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3)  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\EL_KOSTA.jpg", 0, Falsh
           WScript.Sleep 2000
        End If

     '' 8  --------------------- EL_MITAK -------------------------  22.08.2022
          dt0 = "22.08.2022"
         If Right("0" & Month(yy0),2) = Mid(dt0,4,2) AND (Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3)  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\EL_MITAK.jpg", 0, Falsh
           WScript.Sleep 2000
        End If

     '' 9  --------------------- PASSPORT -------------------------  09.06.2024
           dt0 =  "09.06.2024"
         If Right("0" & Month(yy0),2) = Mid(dt0,4,2) AND (Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3)  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\PASSPORT.jpg", 0, Falsh
           WScript.Sleep 2000
        End If
    '' 10  ------------------------L-KART -------------------------  28.06.2021 
          dt0 = "28.06.2021"
         If Right("0" & Month(yy0),2) = Mid(dt0,4,2) AND (Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3)  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\L-KARD.jpg", 0, Falsh
           WScript.Sleep 2000
        End If

    '' 11 ------------------------SH-KNIGKA -------------------------  08.07.2021 
          dt0 = "08.07.2021"
         If Right("0" & Month(yy0),2) = Mid(dt0,4,2) AND (Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3)  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\SH-KNIGKA.jpg", 0, Falsh
           WScript.Sleep 2000
        End If

    '' 12 ------------------------TELEPHON -------------------------  17.07.2020 
          dt0 = "17.07.2020"
         If Right("0" & Month(yy0),2) = Mid(dt0,4,2) AND (Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3)  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\A1.jpg", 0, Falsh
           WScript.Sleep 2000
        End If
    ''  13  ------------------------BLUE ZONE -------------------------  03.02.2021 Pay 10.02.2021 
          dt0 = "03.02.2021" 
         If Right("0" & Month(yy0),2) = Mid(dt0,4,2) AND (Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3)  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\BLUESZONE.jpg", 0, Falsh
           WScript.Sleep 2000
        End If

    '' 14 ------------------------VINETKA -------------------------  26.02.2021 
          dt0 = "26.02.2021"
         If Right("0" & Month(yy0),2) = Mid(dt0,4,2) AND (Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3)  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\VINETKA.jpg", 0, Falsh
           WScript.Sleep 2000
        End If

    '' 15 ------------------------AVTOCASKO.jpg-------------------------  12.05.2020
         dt0 = "12.05.2020"
         If Right("0" & Month(yy0),2) = Mid(dt0,4,2) AND (Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3)  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\AVTOCASKO.jpg", 0, Falsh
           WScript.Sleep 2000
        End If
     
    '' 16  --------------------- TEHN PREGLED-------------------------  19.12.2021
         dt0 = "19.12.2021"
         If Right("0" & Month(yy0),2) = Mid(dt0,4,2) AND (Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3)  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\Tehn.jpg", 0, Falsh
           WScript.Sleep 2000
        End If
     
     '' 17  --------------------- Raiffeisen -------------------------   25.01.2023
         dt0 = "25.01.2023"
         If Right("0" & Month(yy0),2) = Mid(dt0,4,2) AND (Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3)  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\Raiffeizen.jpg", 0, Falsh
           WScript.Sleep 2000
        End If

     '' 18  --------------------- HSBC -------------------------   05.09.2022
         dt0 = "05.09.2022"
         If Right("0" & Month(yy0),2) = Mid(dt0,4,2) AND (Mid(dt0,1,2)-4 <= Day(yy0) AND Day(yy0) <= Mid(dt0,1,2)+3)  Then
           WshShell.Run "C:\DISC\HLP\LNK\ImageEye.LNK C:\HLP\IMAGE\Hsbc.jpg", 0, Falsh
           WScript.Sleep 2000
        End If

    ''  WScript.Echo "    "   &   Mid(dt0,1,2)-4 & "  <  "  &  Day(yy0) & " < " &  Mid(dt0,1,2)+3

   


 