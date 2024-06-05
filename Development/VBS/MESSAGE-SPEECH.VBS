Set sapi=Createobject("sapi.spvoice")


hello=("This litre of text was prcdetermined. You may not alter it")
sapi.Speak hello
MsgBox("This  line of text was predeterairwd. You may not alter it")


Set Zira = CreateObject("SAPI.spVoice")
Set Zira.Voice = Zira.GetVoices.Item(1)
Zira.Rate = 0
Zira.Volume = 100
Zira.Speak "My Name is Zira."


Set David = CreateObject("SAPI.spVoice")
Set David.Voice = David.GetVoices.Item(0)
David.Rate = 0
David.Volume = 100
David.Speak "My Name is David. It's nice to meet you!"

