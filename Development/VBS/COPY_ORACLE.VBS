
'' Set sapi=Createobject("sapi.spvoice")
Set Zira = CreateObject("SAPI.spVoice")
Set Zira.Voice = Zira.GetVoices.Item(1)
Zira.Rate = 0
Zira.Volume = 100
Zira.Speak "Oracle, V, M, Virtual, Box, IS FINISHED."


MsgBox "Oracle VM VirtualBox, IS FINISHED.",64,"Greetings From JK"
