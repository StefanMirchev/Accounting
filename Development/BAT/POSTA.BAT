
 @ECHO OFF
 mode con cols=80 lines=15

 @ ECHO                    1.si.michev@gmail.com
 @ ECHO                    2.PETQ
 @ ECHO                    3.KOSI
 @ ECHO                    4.MINK 
 @ ECHO                    5.BQL
 @ ECHO                    6.RADOST
 @ ECHO                    7.JULY
 @ ECHO                    8.GOOGE 


 C:\Windows\System32\choice.exe /C 123456789 /N /M "Enter your choice:"

 :: Note - list ERRORLEVELS in decreasing order

 IF ERRORLEVEL 8 GOTO CLOSE
 IF ERRORLEVEL 7 GOTO JULY 
 IF ERRORLEVEL 6 GOTO RADOST
 IF ERRORLEVEL 5 GOTO BQL
 IF ERRORLEVEL 4 GOTO MINK
 IF ERRORLEVEL 3 GOTO KOSI
 IF ERRORLEVEL 2 GOTO PETQ
 IF ERRORLEVEL 1 GOTO GMAIL



 :GMAIL

 echo si.michev@gmail.com | c:\hlp\exe\clip.exe

PAUSE
PAUSE
 
 GOTO End
 :PETQ
 @       set var0=\\PETQ
 @       net view \\PETQ
 @       if errorlevel 1  goto NOBUI
 @  REM  %SystemRoot%\system32\net use a: \\PETQ\d /YES
 @       %SystemRoot%\system32\net use Q: \\PETQ\c /YES
 @       %SystemRoot%\system32\net use R: \\PETQ\d /YES
 GOTO End


 :KOSI
 @       set var0=\\KOSI
 @       net view \\KOSI
 @       if errorlevel 1 goto NOBUI   
 @ rem  %SystemRoot%\system32\net use a: \\KOSI\d /YES
 @      %SystemRoot%\system32\net use M: \\KOSI\c /YES
 @      %SystemRoot%\system32\net use N: \\KOSI\d /YES
 @      %SystemRoot%\system32\net use O: \\KOSI\e /YES
 @      %SystemRoot%\system32\net use P: \\KOSI\f /YES
 GOTO End

 :MINK
 @      set var0=\\MINK
 @      net view \\7.131.118.61
 @      if errorlevel 1 goto NOBUI   
 @      ping -n 1 7.131.118.61 > nul 
 @      %SystemRoot%\system32\net use Y: \\7.131.118.61\c /YES
 GOTO End

 :BQL
 @       set var0=\\BQL
 @       net view \\7.61.174.14
 @       if errorlevel 1 goto NOBUI   
 @      ping -n 1 7.61.174.14 > nul  
 @      %SystemRoot%\system32\net use Y: \\7.61.174.14\c /YES  
 @      %SystemRoot%\system32\net use Z: \\7.61.174.14\D /YES  
 GOTO End

 :RADOST
 @      set var0=\\RADOST
 @      net view \\7.175.184.126
 @      if errorlevel 1 goto NOBUI   
 @      ping -n 1 7.175.184.126l  
 @      %SystemRoot%\system32\net use Y: \\7.175.184.126\c /YES  
 @      %SystemRoot%\system32\net use Z: \\7.175.184.126\d /YES 
 @      %SystemRoot%\system32\net use G: \\RADOS\C /yes   
 @      %SystemRoot%\system32\net use H: \\RADOS\D /yes 
 GOTO End

 :JULY
 @      set var0=\\JULY
 @      net view \\JULY
 @      if errorlevel 1 goto NOBUI   
 @      ping -n 1 ??? 
 @      %SystemRoot%\system32\net use Y: \\???\c /YES  
 @      %SystemRoot%\system32\net use Z: \\???\d /YES 
 @      %SystemRoot%\system32\net use K: \\JULY\C /yes 
 @      %SystemRoot%\system32\net use L: \\JULY\D /yes
 GOTO End

 :CLOSE
 @ cls 
         net use * /delete
 @       net use LPT1:  /delete
 @ ping 127.0.0.1 -n 6 > nul
 GOTO End

 :NOBUI
 @ cls 
 @ echo.            
 @ echo.   
 @ echo.            
 @ echo.  
 @ echo.            
 @ echo.                        
 @ echo                                  NOT BUILD %var0% 
 @ ping 127.0.0.1 -n 6 > nul
 GOTO End
 
  :End
  @       cls
  @       net use
  @ ping 127.0.0.1 -n 6 > nul



