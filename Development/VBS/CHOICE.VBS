Dim msgValue 
msgValue = MsgBox("Hello, Are you a graduate? Choos:" _
& vbCr & "Yes: if you are a graduate" _
& vbCr & "Yes: if you are Not a graduate" _
& vbCr & "Yes: if you are Not Intrested" _
, vbYesNoCancel + vbQuestion)
If msgValue = vbYes Then
MsgBox "You are eligible for applying for this Job"
ElseIf msgValue = vbNo Then
MsgBox "You are NOT eligible for applying for this Job"
ElseIf msgValue = vbCancel Then
MsgBox "No Problems, We will find suitable job for you"
End If
