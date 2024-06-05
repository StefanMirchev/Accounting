     mode con cols=15 lines=5 



REM rundll32.exe powrprof.dll,SetSuspendState 0,1,0
REM Rundll32.exe User32.dll,LockWorkStation
REM Shutdown.exe -r -t 00

REM Sleep Computer (read more at https://superuser.com/a/463652/249349 )
REM    rundll32.exe powrprof.dll,SetSuspendState 0,1,0

REM Lock Workstation
REM Rundll32.exe User32.dll,LockWorkStation

REM Hibernate Computer
REM rundll32.exe PowrProf.dll,SetSuspendState

REM Restart Computer
REM Shutdown.exe -r -t 00

REM Shutdown Computer

 @ timeout /T 1800
      Shutdown.exe -s 
 
 rem    Shutdown.exe /s
REM powercfg -hibernate off
rem    powercfg /? > aaa.txt

