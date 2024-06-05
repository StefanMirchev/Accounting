 MsgBox "Hello there",64,"Greetings From JK"
 MsgBox "Hello world!", vbExclamation
 MsgBox "Incorrect 01",37,"Greetings From JK"
 MsgBox "Incorrect 02",4+16,"Greetings From JK"
 MsgBox "Incorrect 03",2+64,"Greetings From JK"
 MsgBox "Incorrect 04",1+64,"Greetings From JK"
'' MoveNotepadWindow "C:\HLP\VBS\test.TXT", 10, 10, 640, 480

 Set WshNetwork = WScript.CreateObject("WScript.Network")
 WScript.Echo "Domain = " & WshNetwork.UserDomain
  WScript.Echo "Computer Name = " & WshNetwork.ComputerName
  WScript.Echo "User Name = " & WshNetwork.UserName

