rem Searches the document windows.txt under D:/Documents/ folder for the string “Windows 10”
rem findstr /c:/documents/ “windows 10” windows.txt

rem Searches any file under d:\documents for the string “windows”.
rem findstr “windows” d:\documents\*.*

rem Search for the occurrence of all words ending with ‘xyz’ in every txt file under D:/Documents/ including all subdirectories.
rem findstr /R /S [a-z]*xyz d:\documents\*.txt

rem findstr /s /i gfo *.*



color 0f
findstr  /i pause  *.*  > aaa.txt

notepad aaa.txt