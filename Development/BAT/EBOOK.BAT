     @ECHO OFF
     mode con cols=80 lines=25

     COLOR 5F

   :MENU
     @ CLS             
     @ echo.                         MOLYA VKLUCHETE MREGATA !!!
     @ echo.                      
     @ ECHO                                   1. ADRESI.XLS
     @ ECHO                                   2. do-it-yourself.xls
     @ ECHO                                   3. RECEPTY.DOC
     @ ECHO                                   4. MY STORY.DOC
     @ ECHO                                   5. BIKE.DOC 
     @ ECHO                                   6. Routes.doc
     @ ECHO                                   7. SYNC
     @ ECHO                                   8. WORK   ->_ME301t
     @ ECHO                                   9. Contact->_ME301t
     @ ECHO                                  10. Stratford.DOC
     @ ECHO                                  11. EBOOK.BAT 
     @ ECHO                                   0. EXIT


  set choice=
  set /p choice=.             Enter your choice: 

if '%choice%'=='1' goto ADRESI
if '%choice%'=='2' goto do-it-yourself
if '%choice%'=='3' goto RECEPTY
if '%choice%'=='4' goto MY STORY
if '%choice%'=='5' goto BIKE 
if '%choice%'=='6' goto Routes
if '%choice%'=='7' goto SYNC
if '%choice%'=='8' goto WORK 
if '%choice%'=='9' goto Contact  
if '%choice%'=='10' goto Stratford
if '%choice%'=='11' goto EBOOK 
if '%choice%'=='0' goto EXIT





  @ echo.        
  @ echo.        
  @ ECHO                   Letter  "%choice%"  is not valid, try again !
  @  timeout /T 5 > NIL
  GOTO IDCODE
 
     

     :ADRESI
     @ echo.  
     @ echo. 
     @ echo                           ADRESI.DOC 
     @ echo.
     @ set a1=D:\work\ebook\ADRESI.XLS 
     @ set a2=D:\work\ebook
     @ set fir=D f K M Q X Y 0
     @ set x=0
     @ D:\work\ebook\ADRESI.XLS 
     @ rem goto loop 
    
     GOTO MENU


  
      :do-it-yourself
   @ echo.  
   @ echo. 
   @ echo                         do-it-yourself.xls
   @ echo.
   @ timeout /T 3
   @ COPY "C:\HLP\EBOOK\do-it-yourself.xls"  F:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\do-it-yourself.xls"  K:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\do-it-yourself.xls"  M:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\do-it-yourself.xls"  O:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\do-it-yourself.xls"  Q:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\do-it-yourself.xls"  D:\Sync\EBOOK
   @ COPY "C:\HLP\EBOOK\do-it-yourself.xls"  X:\EBOOK
   @ COPY "C:\HLP\EBOOK\do-it-yourself.xls"  Y:\EBOOK
   @ timeout /T 3
     GOTO END

     :RECEPTY
   @ echo.  
   @ echo. 
   @ echo                             RECEPTY.DOC 
   @ echo.
   @ timeout /T 3
   @ COPY "C:\HLP\EBOOK\RECEPTY.doc"  F:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\RECEPTY.doc"  K:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\RECEPTY.doc"  M:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\RECEPTY.doc"  O:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\RECEPTY.doc"  Q:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\RECEPTY.doc"  D:\Sync\EBOOK
   @ COPY "C:\HLP\EBOOK\RECEPTY.doc"  X:\EBOOK
   @ COPY "C:\HLP\EBOOK\RECEPTY.doc"  Y:\EBOOK
   @ timeout /T 30
     GOTO MENU

      :MYSTORY
   @ echo.  
   @ echo. 
   @ echo                           MY STORY.DOC  
   @ echo.
   @ timeout /T 3
   @ COPY "C:\HLP\EBOOK\MY STORY.doc"   F:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\MY STORY.doc"   K:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\MY STORY.doc"   M:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\MY STORY.doc"   O:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\MY STORY.doc"   Q:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\MY STORY.doc"   D:\Sync\EBOOK
   @ COPY "C:\HLP\EBOOK\MY STORY.doc"   X:\EBOOK
   @ COPY "C:\HLP\EBOOK\MY STORY.doc"   Y:\EBOOK
   @ timeout /T 3
     GOTO MENU

      :BIKE
   @ echo.  
   @ echo. 
   @ echo                               BIKE.DOC
   @ echo.
   @ timeout /T 3
   @ COPY "C:\HLP\EBOOK\BIKE.doc"  F:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\BIKE.doc"  K:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\BIKE.doc"  M:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\BIKE.doc"  O:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\BIKE.doc"  Q:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\BIKE.doc"  D:\Sync\EBOOK
   @ COPY "C:\HLP\EBOOK\BIKE.doc"  X:\EBOOK
   @ COPY "C:\HLP\EBOOK\BIKE.doc"  Y:\EBOOK
   @ timeout /T 3
     GOTO MENU

   :Routes
   @ echo.  
   @ echo. 
   @ echo                              Routes.doc
   @ echo.
   @ timeout /T 3
   @ COPY "C:\HLP\EBOOK\Routes.doc"  F:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\Routes.doc"  K:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\Routes.doc"  M:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\Routes.doc"  O:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\Routes.doc"  Q:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\Routes.doc"  D:\Sync\EBOOK
   @ COPY "C:\HLP\EBOOK\Routes.doc"  X:\EBOOK
   @ COPY "C:\HLP\EBOOK\Routes.doc"  Y:\EBOOK
   @ timeout /T 3
   GOTO MENU


    :WORK
   @ echo.  
   @ echo. 
   @ echo                    WORK.DIR  ->  _me301t
   @ echo.

   @ timeout /T 3
   @                         rd   Y:\WORK\CV\        /S /Q
   @ xcopy  "D:\WORK\CV\*.*"      Y:\WORK\CV\        /S /Y
   @ timeout /T 3
   @                          rd  "Y:\WORK\EXAMPLE\" /S /Q
   @ xcopy  "D:\WORK\EXAMPLE\*.*" "Y:\WORK\EXAMPLE\" /S /Y
   @ timeout /T 3
   @                           rd "Y\WORK\MENUAL\"   /S /Q
   @ xcopy  "D:\WORK\MENUAL\*.*"  "Y:\WORK\MENUAL\"  /S /Y
   @ timeout /T 3   
   @  xcopy  "D:\WORK\TEST\*.*"   "Y:\WORK\TEST\"    /S /Y
   @ timeout /T 3
   GOTO MENU

       :Contact
   @ echo.  
   @ echo. 
   @ echo                            Contact.DIR ->  _ME301t
   @ echo.
   @ timeout /T 3
   @ xcopy  "C:\HLP\OTHER\Contact\*.*"    "F:\HLP\OTHER\Contact\"   /S /Y
   @ timeout /T 3
   @ xcopy  "C:\HLP\OTHER\Contact\*.*"    "K:\HLP\OTHER\Contact\"   /S /Y
   @ timeout /T 3
   @  xcopy  "C:\HLP\OTHER\Contact\*.*"   "M:\HLP\OTHER\Contact\"   /S /Y
   @ timeout /T 3                           
   @ xcopy  "C:\HLP\OTHER\Contact\*.*"    "O:\HLP\OTHER\Contact\"   /S /Y
   @ timeout /T 3
   @  xcopy  "C:\HLP\OTHER\Contact\*.*"   "Q:\HLP\OTHER\Contact\"   /S /Y
   @ timeout /T 3                           
   @ xcopy  "C:\HLP\OTHER\Contact\*.*"    Y:\HLP\OTHER\Contact\     /S /Y
   @ timeout /T 3
   @ xcopy  "C:\HLP\OTHER\Contact\*.*"    Y:\HLP\OTHER\Contact\     /S /Y
   @ timeout /T 3
   GOTO MENU



   :SYNC
   @ echo.  
   @ echo. 
   @ echo                                  SINC ARHIV 

   "D:\Program Files\Sync\sync-taskbar.exe"
   @ timeout /T 60
   @ start /B  TASKKILL /F /IM sync-taskbar.exe /silent
   @ TASKKILL /F /IM sync-taskbar.exe 
   @ TASKKILL /F /IM sync-worker.exe 
   @ TASKKILL /F /IM BoxSync.exe  
   @ TASKKILL /F /IM BoxSyncMonitor.exe 
   @ TASKKILL /F /IM SystemSettingsBroker.exe
   @ TASKKILL /F /IM LockAppHost.exe
   @ TASKKILL /F /IM spoolsv.exe
   @ TASKKILL /F /IM SearchIndexer.exe
   @ timeout /T 3
     GOTO MENU




   :Stratford
   @ echo.  
   @ echo. 
   @ echo                              Stratford.doc
   @ echo.
   @ timeout /T 3
   @ COPY "C:\HLP\EBOOK\Stratford.doc"  F:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\Stratford.doc"  K:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\Stratford.doc"  M:\HLP\EBOOK
   @ COPY "C:\HLP\EBOOK\Stratfords.doc" O:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\Stratford.doc"  Q:\HLP\EBOOK 
   @ COPY "C:\HLP\EBOOK\Stratford.doc"  D:\Sync\EBOOK
   @ COPY "C:\HLP\EBOOK\Stratford.doc"  X:\EBOOK
   @ COPY "C:\HLP\EBOOK\Stratford.doc"  Y:\EBOOK
   @ timeout /T 3
   GOTO MENU

   :EBOOK
   @  cls 
   @ echo.  
   @ echo. 
   @ echo                              EBOOK.BAT
   @ echo.

     @ set a1=C:\HLP\BAT\EBOOK.BAT 
     @ set a2=HLP\BAT
     @ set fir=f K M Q 0
     @ set x=0
     @ goto loop 
 
     GOTO MENU


    :loop
     @  call  set a0=%%fir:~%x%,1%%%dt%
        if %a0% EQU 0 (pause
                       goto MENU) 
     @ if %a0% EQU D (echo  COPY TO %a0%:\Sync\EBOOK\
                           @ COPY %a1% %a0%:\Sync\EBOOK\
                        )                 
     @ if exist %a0%:%a2%\ (echo  COPY TO %a0%:\%a2%\
                          @  COPY %a1%   %a0%:\%a2%\
                           ) ELSE (echo %a0%:  DOES NOT EXIST)
        set /a x=%x%+2
        if %a0% NEQ 0 (goto loop) 
  ***********************  KRAY LOOP ****************************

   :EXIT
     EXIT