' I VARIANT
 set Shell = CreateObject("Shell.Application")
 set Folder = Shell.namespace("c:\AP20")
 folder.CopyHere("D:\ap20")

 msgbox "Copy Complete!"



'  II VARIANT
Set wshFSO=Createobject("Scripting.FileSystemObject")
Set objShell = CreateObject("Shell.Application")
 
Const FOF_CREATEPROGRESSDLG = &H0&
strPictureTargetDIR = "D:\AP20" 
Set objFolder = objShell.NameSpace(strPictureTargetDIR) 
 
'Copy Pictures
objFolder.CopyHere "C:\AP20\*.*", FOF_CREATEPROGRESSDLG
 
 
msgbox "Copy Complete!"
