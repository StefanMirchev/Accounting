     @ECHO OFF
     COLOR 9F

    :MENU
    mode con cols=80 lines=25
     @ CLS             
     @ echo.                          MOLYA VKLUCHETE MREGATA !!!
     @ ECHO.                      
     @ ECHO.                                   
     @ ECHO                                  1. AnyDesk 
     @ ECHO                                  2. Me301T
     @ ECHO                                  3. Lenovo
     @ ECHO                                  4. Windscribe
     @ ECHO                                  0. EXIT
     @ ECHO.
     @ ECHO.
  set choice=
  set /p choice=.             Enter your choice: 
 


if '%choice%'=='1' goto AnyDesk
if '%choice%'=='2' goto Me301T
if '%choice%'=='3' goto Lenovo
if '%choice%'=='4' goto Windscribe



if '%choice%'=='0' goto END

  @ echo.        
  @ echo.        
  @ ECHO                   Letter  "%choice%"  is not valid, try again !
  @  timeout /T 5 > NIL
  GOTO IDCODE
 
  

      :AnyDesk
   @ echo. 
   @ echo.                                AnyDesk
   @ echo.
   @ timeout /T 3  > NIL
   @ start /min C:\DISC\HLP\LNK\AnyDesk.lnk
     GOTO IDCODE


  :Me301T
   @ echo. 
   @ echo.   
   @ echo.                                  Me301T
   @ timeout /T 2 > NIL
   @ start /min C:\DISC\HLP\LNK\Me301T.LNK
     GOTO IDCODE

  :Lenovo
   @ echo. 
   @ echo.   
   @ echo.                                 Lenovo
   @ timeout /T 2 > NIL
   @ C:\DISC\HLP\LNK\Lenovo.LNK
     GOTO IDCODE

   :Windscribe
   @ echo. 
   @ echo.
   @ echo.                              Windscribe
   @ timeout /T 2 > NIL
   @ start /min C:\DISC\HLP\LNK\Windscribe.LNK 
     GOTO IDCODE
 

     :IDCODE 
    @ CLS
    mode con cols=100 lines=25

    @ CLS
    mode con cols=100 lines=25
    @ ECHO                    AnyDesk       TeamViewer       
    @ ECHO                    aa11bb22      si.mirchev@abv.bg di0 
    @ ECHO  BQL              305 608 515
    @ ECHO  MILENA           763 188 724
    @ ECHO  GINA                        
    @ ECHO  TECHA            925 708 237
    @ ECHO  ANADACOM       1 928 659 148
    @ ECHO  ANADA          1 409 853 260
    @ ECHO  MATIO 64         997 112 441
    @ ECHO  MATIO 32         267 453 773
    
    @ ECHO  KATE IRACOM      877 846 279
    @ ECHO  IRACOM         1 762 400 886
    @ ECHO  IRA              996 513 982

    @ ECHO  PANASONIC TV     385 845 978

    @ ECHO  KOSY             859 933 891
    @ ECHO  INTER            918 924 911
    @ ECHO  STEF             350 578 432
    @ ECHO  ME301T           651 392 608
    @ echo.
    @ echo. Change  Anydesk addres
    @ echo. C:\Users\ACCO\AppData\Roaming\AnyDesk\service.conf
    @ echo. Change  Anydesk addres
    @ echo. C:\Users\ACCO\AppData\Roaming\AnyDesk\service.conf
    @ PAUSE           
           GOTO END
   :END
     EXIT