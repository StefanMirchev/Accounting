    

  REM Local           ->   1 GB
  REM LocalLow        ->  10 MB
  REM Roaming         -> 500 MB
  REM Program Files   ->  2.1 GB
  REM ProgramDiles    -> 605 MB
  REM Windows         ->  8.3 GB

 pause


     dir "C:\Users\%username%\AppData\Local"   /a /s /b   > Local.txt"
     dir "C:\Users\%username%\AppData\LocalLow" /a /s /b  > LocalLow.txt"
     dir "C:\Users\%username%\AppData\Roaming" /a /s /b   > Roaming.txt"
     dir "C:\Program Files" /a /s /b   > ProgramFiles.txt"
     dir "C:\ProgramData" /a /s /b   > ProgramData.txt"
     dir "C:\Windows"    /a /s /b   > Windows.txt"

 