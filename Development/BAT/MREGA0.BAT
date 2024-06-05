




 @ECHO OFF

mode con cols=80 lines=20

      for /F "tokens=*" %%A in (C:\DISC\HLP\JOB\PAKE.TXT) do (
               set var=%%A) 
      set pake=%var:~0,4%

 @ IF  %pake%==HOME  (set WAIT=C:\DISC\HLP\EXE\PING 127.0.0.1 -n) ELSE  (set WAIT=C:\DISC\HLP\EXE\timeout)

  color 2F

 @ ECHO. 
 @ ECHO. 
 @ ECHO                    1.CHEF  K L   
 @ ECHO                    2.STEF  Q R  
 @ ECHO                    3.KOSI  M N  
 @ ECHO                    4.ALEN  O P 
 @ ECHO                    5.LENOVO-ME301T X/100-Y/101 
 @ ECHO                    6.Ipscan25     
 @ ECHO                    9.CLOSE NET
 @ ECHO                    0.EXIT
 @ ECHO. 
 @ ECHO. 

  set choice=
  set /p choice=.             Enter your choice: 
 
 

if '%choice%'=='1' goto CHEF
if '%choice%'=='2' goto STEF
if '%choice%'=='3' goto KOSI
if '%choice%'=='4' goto ALEN
if '%choice%'=='5' goto LENOVO 
if '%choice%'=='6' goto Ipscan25
if '%choice%'=='9' goto CLOSE
if '%choice%'=='0' goto END







 :CHEF
 @       set var0=\\CHEF
 @       net view \\CHEF
 @       if errorlevel 1 goto NOBUI
 @       %SystemRoot%\system32\net use a:%var0%\d /YES /persistent:no  
 @       %SystemRoot%\system32\net use K: %var0%\c /YES /persistent:no   
 @       %SystemRoot%\system32\net use L: %var0%\d /YES /persistent:no   
 @       %SystemRoot%\system32\net use Z: \\192.168.0.102\d /YES /persistent:no  
 @  rem  %SystemRoot%\system32\net use \\CHEF\xerox /YES /persistent:no   

 GOTO End

 :STEF
 @       set var0=\\STEF
 @       net view \\STEF
 @       if errorlevel 1  goto NOBUI
 @       %SystemRoot%\system32\net use a: \\Stef\d /YES /persistent:no  
 @       %SystemRoot%\system32\net use Q: \\STEF\c /YES /persistent:no  
 @       %SystemRoot%\system32\net use R: \\STEF\d /YES /persistent:no  
 GOTO End


 :KOSI
 @       set var0=\\KOSI
 @       net view \\KOSI
 @       if errorlevel 1 goto NOBUI   
 @      %SystemRoot%\system32\net use A: \\KOSI\d /YES /persistent:no  
 @      %SystemRoot%\system32\net use M: \\KOSI\c /YES /persistent:no  
 @      %SystemRoot%\system32\net use N: \\KOSI\d /YES /persistent:no  
        %SystemRoot%\system32\net use X:  \\178.211.43.74\C /YES  
 @ REM    %SystemRoot%\system32\net use X: \\192.168.0.103\C /persistent:no 
 @ REM  %SystemRoot%\system32\net use Z: \\7.52.184.238\C /YES /persistent:no  
 GOTO End

 :ALEN
 @       set var0=\\ALEN
 @       net view \\ALEN
 @       if errorlevel 1 goto NOBUI   
 @ rem  %SystemRoot%\system32\net use a: \\ALEN\d /YES /persistent:no  
 @      %SystemRoot%\system32\net use O: \\ALEN\c /YES /persistent:no  
 @      %SystemRoot%\system32\net use P: \\ALEN\d /YES /persistent:no  
 GOTO End

 :LENOVO
 @  REM   set var0=\\LENOVO 
 @  REM   net view \\LENOVO
 @  REM   if errorlevel 1 goto NOBUI   

 pause
 @        %SystemRoot%\system32\net use X: http://192.168.0.101:8080 /YES  /persistent:no
 pause
 @        %SystemRoot%\system32\net use Y: http://192.168.0.100:8080 /YES  /persistent:no 
puse
GOTO End

 :Ipscan25
      START D:\IDISK\IPScaner\Ipscan25.exe
 GOTO End

 


 :CLOSE
 @ cls 
 @  %SystemRoot%\system32\NET USE * /DELETE /YES
 @  %SystemRoot%\system32\net use LPT1:  /delete
 @  %wait% 6 > NIL
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
 @ %wait% 6 > NIL
 GOTO End
 
  :End
  @   cls
  @   %SystemRoot%\system32\net use
  @ pause
 @ ECHO.
 @ ECHO                    MAC address
 @ ECHO  TP-LINK        A0:F3:C1:68:45:A6
 @ ECHO  CHEF  K L      00:40:D0:8C:F5:1A
 @ ECHO  STEF  Q R    
 @ ECHO  KOSI  M N      00:13:D4:F0:09:68
 @ ECHO  LENOVO         54:27:58:9C:9F:DC   
 @ ECHO  ME301T         5C:FF:35:7E:AA:6F   
 @ ECHO  A1-IP          92.247.238.108  20/47/1.5
 @ ECHO.
 @ pause
 @ REM  %wait% 6 > NIL



