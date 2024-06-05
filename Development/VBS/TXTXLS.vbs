'---------------- begin vbscript "csv2xls.VBS"
Set xl = WScript.CreateObject("Excel.application")

xl.Visible = TRUE
xl.displayalerts=False
'paths must be FULLY QUALIFIED, esp. for INPUT files.

set book=xl.workbooks
source=wscript.arguments(0)
'wscript.echo "trying to convert: ["+POKUPKI.TXT+"]"
dest=wscript.arguments(1)
'wscript.echo "output going to: "+dest+".xls"
set f=book.open (source)
f.saveas dest+".xls",35
xl.quit
'====== end vbscript

