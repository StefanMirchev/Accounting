Set objExplorer = CreateObject("InternetExplorer.Application")
With objExplorer
    .Navigate "about:blank"
    .Visible = 1
    .Document.Title = "Show Image"
    .Toolbar=False
    .Statusbar=False
    .Top=250
    .Left=400
    .Height=200
    .Width=200
    .Document.Body.InnerHTML = "<img src='C:\HLP\IMAGE\WIN.ico'>"
End With