Set IE = CreateObject("InternetExplorer.Application")
IE.Navigate "www.website.com"
IE.Visible = True
Wscript.Sleep 8000
'The line below is the one in question that does not work and where the script error out at. 
IE.Document.All.Item("in").Click
IE.Document.All.Item("Action").Click