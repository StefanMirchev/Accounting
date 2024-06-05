Set ie = CreateObject("InternetExplorer.Application")
With ie
    .Navigate "about:blank" : .ToolBar = 0 : .StatusBar = 0 : .Left = 100 : .Top = 100 : .Width = 820 : .Height = 10
    .Document.Body.InnerHTML = "<img src='C:\DISC\HLP\IMAGE\ARHIK.jpg' height=40 width=750>"
    ie.Visible = 1 : ie.Document.Title = "Important image!" 
 '' ie.Document.Body.InnerHTML = "Service information retrieved."
 '' ie.Navigate "http://www.wordspy.com/"
 '' strURL = "https://www.google.com/"

        


End With





 
