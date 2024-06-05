
del *.zip
CD > rootdir.txt
for /F "tokens=*" %%a in (rootdir.txt) do (
set b=%%a)


DIR /AD /B >dirlist.txt
 for /f "tokens=*" %%c in (dirlist.txt) do (
   CD "%%c"
"C:\Program Files\WinZip\wzzip" "%b%\%%c.zip" 
 CD..
 )
del *.txt
