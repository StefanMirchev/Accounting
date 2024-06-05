''    Set objShell = CreateObject("WScript.Shell") 
   Set objWord = CreateObject( "Word.Application" ) 
   if objWord.CapsLock <> 0 then 
     Set objFSO=CreateObject("Scripting.FileSystemObject")
     outFile="_bbb.txt"
     Set objFile = objFSO.CreateTextFile(outFile,True)
  ' MsgBox "Caps Lock is ON",64,""
   end if   
   objWord.Quit 

