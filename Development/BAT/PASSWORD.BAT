if [%1]==[ON]   goto PASSON
if [%1]==[OFF] goto PASSOFF
goto END



:PASSON
 net user %username% 2

ECHO PASSON
 @ timeout /T 5
goto END

:PASSOFF
net user %username% ""
echo PASSOFF
 @ timeout /T 5
goto END

@ rem echo PLEASE TYPE YOUR USERNAME AND PASSWORD IN THE FIELDS BELOW.
@ rem echo.
@ rem echo.
@ rem echo.
@ rem echo.
@ rem set /p u=Username:
@ rem echo.
@ rem set /p p=Password:
@ rem start next.bat %u% %p%

:END