'' Set sapi=Createobject("sapi.spvoice")
Set Zira = CreateObject("SAPI.spVoice")
Set Zira.Voice = Zira.GetVoices.Item(1)
Zira.Rate = 0
Zira.Volume = 100
Zira.Speak "COPY, HELP, AND, DISC. IS FINISHED."


