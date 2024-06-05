    
    rundll32.exe C:\WINDOWS\system32\shimgvw.dll C:\HLP\IMAGE\SYNC.jpg
    START rundll32.exe C:\WINDOWS\system32\shimgvw.dll,ImageView_Fullscreen C:\HLP\IMAGE\insurance employee_05.jpg
PAUSE
    TASKKILL /F /IM Excel.exe /IM Excel.exe
    
     del D:\SYNC\HLP\*.zip
     del E:\hlp\*.zip   

     \HLP\PK\pkzip -pr D:\SYNC\HLP\HLP C:\HLP\*.*
     copy D:\SYNC\HLP\HLP.zip  E:\HLP\HLP.ZIP

    del D:\SYNC\prin.zip
    \HLP\PK\pkzip -pr  D:\SYNC\prin C:\DISC\PRIN\*.*
    copy D:\SYNC\PRIN.zip  E:\DISC\PRIN.ZIP

    
    del D:\SYNC\HANDBOOK.zip
    \HLP\PK\pkzip -pr  D:\SYNC\HANDBOOK C:\HANDBOOK\*.*
    copy D:\SYNC\HANDBOOK.zip  E:\HANDBOOK\HANDBOOK.ZIP
    


 exit

