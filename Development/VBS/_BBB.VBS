SetTimer, WinMoveMsgBox, 50
MsgBox, 4132, Decrease Latency, More? 
ExitApp
Return

WinMoveMsgBox:
SetTimer, WinMoveMsgBox, OFF
ID:=WinExist("Decrease Latency")
WinMove, ahk_id %ID%, , 50, 50 
Return