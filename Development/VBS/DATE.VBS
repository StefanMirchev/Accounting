    WScript.Echo   CDate(Date)    
    WScript.Echo DateAdd("d",1,Date())
   ''  Below Example, The value 25 is assigned to the variable.
     Value1 = 25

     ' A String Value ‘VBScript’ is assigned to the variable StrValue.
     StrValue = "VBScript"

     ' The date 01/01/2020 is assigned to the variable DToday.
     Date1 = #01/01/2020#
     WScript.Echo Date1
   ' A Specific Time Stamp is assigned to a variable in the below example.
     Time1 = #12:30:44 PM#
     WScript.Echo Time1

WScript.Sleep 11500


     Dim z,y
     set WshShell = WScript.CreateObject("WScript.Shell")
     y = DateAdd("d",1,Date())
     WScript.Echo "" & y & ""
     z = Year(y) & Right("0" & Month(y), 2) & Right("0" & Day(y), 2)
     WScript.Echo "" & z & ""

