'' Sub UpdateXY()
 'get a reference to the form
 Dim pForm
 Set pForm = ThisEvent.Object

 'get the new point feature's X and Y
 Dim X
 Dim Y
 X = pForm.Fields.Shape.X
 Y = pForm.Fields.Shape.Y
 pForm.Pages("page1").Controls("X_Coord").Value = X
 pForm.Pages("page1").Controls("Y_Coord").Value = Y
'' End Sub