Set objShell = CreateObject("WScript.Shell")
Set objWord = CreateObject( "Word.Application" )

''if objWord.CapsLock <> 0 then
   ' turn capslock off
   objShell.SendKeys "{capslock}" 
''end if
objWord.Quit