    @ mode con cols=80 lines=1
    @ C:\HLP\EXE\nircmd.exe changesysvolume -80000
    @ timeout /T 1
    @ C:\HLP\EXE\nircmd.exe mutesysvolume 1 
    @  timeout /T 1
    @ C:\HLP\EXE\nircmd.exe mutesysvolume 0 
    @ timeout /T 1
    @ C:\HLP\EXE\nircmd.exe changesysvolume 80000
    @  timeout /T 1
    @ rem start C:\DISC\HLP\LNK\iexplore.lnk  https://www.youtube.com/watch?v=sWjTnBmCHTY


   @ start C:\HLP\LNK\Smplayer.lnk  "C:\HAND\HAND01\8Min\8 Minute Abs (Divx, DVDRip, 640x480).avi"

    @ REM C:\Users\CHEF\Box Sync\Box Sync\8Min\8 Minute Abs (Divx, DVDRip, 640x480).avi"  TOVA RABOTI
    @ rem timeout /T 35   
    @ rem C:\HLP\EXE\nircmd.exe mutesysvolume 0   
    @ rem C:\HLP\EXE\nircmd.exe changesysvolume  15000
    @ rem timeout /T 10  
    @ rem C:\HLP\EXE\nircmd.exe changesysvolume  15000
    @ rem timeout /T 10  
    @ rem C:\HLP\EXE\nircmd.exe changesysvolume  10000
    @ rem timeout /T 500
    @      TASKKILL /F /IM ffplay.exe /IM ffplay.exe
    @      TASKKILL /F /IM mplayer.exe /IM mplayer.exe
           TASKKILL /F /IM cmd.exe /IM cmd.exe
