
  

*   ! del.bat
	  * !!!!!!!!!!!!!!!111   ZADALGITELNO SMQNA NA CODPAGE NA DBF INA1E NE RABOTI PROGRAMATA !!!!!!!!!!!!!!!!!!!!!!!!!!!  
  * !!!!!!!!!!  CPDBF() CPCURRENT() GETCP() - NE POKAZWATA FAJLA DALI E OBANTA - NE WARSHAT RABOTA !!!!!!!!!! 
  * !!!!!!!!!!   VIG C:\HLP\WSAVE\PRG - code-page.prg I CP-ZERO.prg  !!!!!!!!!! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  * !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!   ZA CONVERT SCII - > ANSI  START -> wsav0.prg ->   prehansi !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!11 
  * !!!!!!!!!!!!!!!!!!   do \hlp\Wsave\Wsav0.prg -> VARVI IDEALNO !!!!!!!!!!!!!!!!!!!!!

   
  **   PRI OBAWE NA NOWA PROCEDURA 
  **   1. FORMATA TRQBWA DA E open_kpap(loc0=0 ILI 1) NIKAK : ILI SA loc bez 0
  **   2. Clos all da se zameni s close data
  **   3. D:\Program files\vfp\samples\solition\db\order.sch i dataedit.sct
  ***************************************************************************************  
  **   1. TOWA E SHABLONA ZA PROWERKA NA PROMENLIWA   ? '&psav00'   
  ****************************************************************************************
  ** Form Designer Form Object Properties, Methods, and Events !!!!
  ** Grid e nai weroqtniqt zamestitel na dbedit. ZAPOCHNI S PROGRAM2 W DIR TABLE I DOBAWI SINTAKSISA NA 
  ** calc.sct     
  ** EditBox Control Properties, Methods, and Events  
  ** za OTWORI wig otvori.prg
  ***************************************************************************************
  **  samples 
  **  http://www.cs.trinity.edu/~thicks/Tutorials/FoxPro-G-CreateApplication/FoxPro-G-CreateApplication.html 
 **************************************************************************
  **  EXE SE PRAWI MNOGO LESNO EZ FAILA proj1.PJX NI ISKA INSTALACIQ A TOWA STAW 
  ** POSREDSTWOM "Creating the Setup Program Using InstallShield Express "  
  ** MNOGO INTERESEN HELP http://www.firststeps.ru/foxpro/fx/fx1.html
  
  ** Проверка за отворен файл и област otvo 
  ** UPRAWLENIE NA FAILOWE WSAV0
  ** CVETOWE W HELPA -  BackColor, ForeColor Properties   
  ** READ EVENTS     && ZAGUBWA DIFINIRANITE W GLAWNO MEU PROMNELIVI !!!!
  ** KOGATO IMA MNOGO PROCEDURE KATO SEGA SAV0,SAV1, SAV2........ TRQBWA DA SE STARTIARA FUNC STARTVAR WAW WSQKA PROC
  ** da se za meni ll1 s tx1 
  ** AKO ZABIE NAI WEROIATNO PREDI CHET() NIAMA NIAKOI OPEN_????.DBF
  ** Y = "Nothing at all"
  ** Y = INPUTBOX("TypeHere","Input ",Y,5000)
  **      && Displays dialog box for 5 seconds, 
  ** PASSWORD This.Value = ALLTRIM(This.Value) + "*"
        *   !!! MNOGO WAGNO NE GO IZTRIVA
        *   PROCEDURE Moved    && !!! КОГАТО НАТИСНЕШ MAX НА ЕКРАНА
        *   PROCEDURE Destroy  && !!! КГАТО НАТИСНЕ ЗАТВАРЯНЕ НА ЕКРАНА "Х "
        *   proc AfterDock
        *   PROCEDURE ACTIVATE
        *   ?? CHR(nKeyCode)
        *   text01.InputMask = '999,999.99'
        *   THIS.parent.txtTryIt.inputMask = ""
        *   THIS.parent.txtTryIt.inputMask = "999999999999999999999999999999999"
        *   THIS.parent.txtTryIt.inputMask = "(999) 999-9999"
        *   text01.ShowWindow        = 1
        *   text01.Autocenter        =.T.
        *   Format Input and Validate Data in a Text Box Sample   
        *   Format Expressions for Field Controls 
        *   InputMask Property 
        *   this.Enabled=(NOT EMPTY(this.parent.SCH.Value))   
        *   ? ALLTRIM(this.parent.SCH.Value)
        *   STORE  this.parent.SCH.Value TO sch1  
        *   PROCEDURE Click
        *   ThisForm.txtInput.Value = ""       _objects.scx
        *   ThisForm.txtInput.FontBold = .F.
        *   ThisForm.txtInput.FontItalic = .F.
        *   ThisForm.chkItalic.Value = .F.
        *   ThisForm.chkBold.Value = .F.
        *   Value = .T.
        *   This.Parent.txtInput.FontBold = This.Value 
        *   lcValue=ALLTRIM(this.SCH)
        *   CREATE CURSOR myCursor (col1 n(5,2))
        *   MESSAGE  -> WAIT DATE() WINDOW AT 20,20 TIMEOUT 10
        *   FONTMETRIC(1) FONT SIZE COLOR STYLE
        *   COLOR RGB (0,0,0,255,255,255) PYRWITE TRI CIFRI SA ZA TEKSTA A WTORUTE ZA FONA
 

** firma func_F2-9.CLICK ekprE.CLICK ekprP.CLICK  edit1.INIT 
** Init  Init  labl01.CLICK menu1   Load Load   Resize 
  
  ** p0 OK aktual broj buls ddok ddok2 dire disk izrab izrav line mesnsinfF mes mod11 nsinf nulb3 nulb4 
  ** p0 offkey line oper otvo pauza preh podred PODRED ramka raboti razr prekp prekpp rock spisk spri 
  ** p0 startpech stok1 zvanzenisme 
    
  ** s0 OK  asci aktdis budj call1  datsme ddspro direk0 dlme direk0 direk1 direk1 dnev FILE_LOCK fmrega inde_lock help gast 
  ** s0 otvo papka podp prehansi provdisk rec_lock startvar ustro
  ** s0 arhi  ar bala bank   dds dpar   dobo dobot  dparjo dpart  dparp  expo  info lihva hlp  kpar kobo kobot
  ** s0 kobp kpart  kpapt kpap kpap  kobp kparp kparjo obap obapi obve  prot regl tehno  zame zeni

  ** s3 OK asme bank chast ddok3 glkn lihva nepr niva nivo1 nivo novpart obsin razrjd   
  ** S3 sav31 sbor spisk1 txt1 txt2 zavar
  
    *? ' SAVE Version 5.05  Book-keeping by Double Entry'
    *? ' Copyright (C) 1989-2006 by Stefan Mirchev. All Rights Reserved.' 
   
   
         sc9='н'    
        sc11='н'    

       disc_0='\disc'
       disc_1='\disc\hlp'

       do case
          case file('c:\Windows\notepad.exe')
            path_0='c:\windows\system32'
            zan_0='"c:\users\Public\Documents\zvprt50\Zan Image Printer (BW)"'
          case file('d:\Windows\notepad.exe')
            path_0='d:\Windows\system32'
            zan_0='"d:\users\Public\Documents\zvprt50\Zan Image Printer (BW)"'
          case file('e:\Windows\notepad.exe')
            path_0='e:\Windows\system32'
            zan_0='"e:\users\Public\Documents\zvprt50\Zan Image Printer (BW)"'
          case file('f:\Windows\notepad.exe')
             path_0='f:\Windows\system32'
            zan_0='"f:\users\Public\Documents\zvprt50\Zan Image Printer (BW)"'
        endcase
  * memowrit('prov.bat','&disc_1\vbs\CapsLockC.vbs'+chr(13)+chr(10) ;
  * +'echo'+chr(13)+chr(10)+'echo')
  * !&disc_1\exe\hstart.exe /noconsole prov.bat
  * eras prov.bat
     * ! &path_0\mode con cols=80 lines=36

  *  gast()

     @  0, 0 clea to 24,80
   *      do case
   *         case   sc9='д'
   *  ? 'Copyright (C) "SaveT ver.01" all Rights Reserved.'
   *               sc11='н'
   *         case  sc11='д'
   *  ? 'Copyright (C) "SaveD ver.02" all Rights Reserved.'
   *               sc9='н'
   *         other
   *  ? 'Copyright (C) "SaveA ver.01" all Rights Reserved.'
   *                  sc9='н'
   *                 sc11='н'
   *      endcase

     *   memowrit('prov.bat','echo %~dp0z > aaa.txt')
     *   !&disc_1\exe\hstart.exe /noconsole prov.bat
     *     inkey(1)

          
   
   
   
*!*	    	   *                     Г Л О Б А Л H И    
   PUBLIC fsize0,X0,V0,V1,in_0,circ03,labl03,pech0,pech1,siz0,date0,j0,j1,j2,j3,j4,j5,j6,j7
   PUBLIC j00,j10,j20,j30,j40,j50,zv1,psav00,save_1,s0001,us_0
   ram1=chr(201)+chr(205)+chr(203)+chr(204)+chr(202)+chr(205)+chr(200)+chr(204)
      if file ("&disc_1\job\razrjd.mem")
          restore from &disc_1\job\razrjd additive
          store j7 to ml0
      else
          j0=14    &&  Разрядност в стойност общо
          j1=2     &&  Разрядност в стойност в дробната част
          j2=12    &&  Разрядност в количество общо
          j3=3     &&  Разрядност в количество в дробната част
	      j4=2     &&  Разрядност в дробната част на цена
       	  j5=1     &&  Валутен курс
	      j6=1     &&  Увеличение дължина в количесто и намаление в цена
          j7=0     &&  mode con cols=80 lines=24/36
            store j7 to ml0
        	save all like j? to &disc_1\job\razrjd
      ENDIF
      
         
      
      
       * motik()
     


     
       picze_0=repl('9',11-j4)+'.'+repl('9',j4)
       dok0='          .'+space(29)
	   de0='r'
       s0000='н'
       gran0=''
       *us00=sys(5)
       us00='C:'      
       store space(1) to gran0,sd2,vi2,ll0,ll2,ll3,ll4,ll5,ll6,ll7,ll8,ll9,ll10,ll11,ll12,ll13,ll14,ll15
       store space(1) to reg,klon0,fir,no,adr,grad,datk,egn,tel,dlaz,buls,tdd,podr,nam,repu,dat1,dat2,lize,ekpr0,vd0,vek0
       store space(1) to dr2,vid0,barc0,barc1,dngo0,nv_0,more0,qp0,qd0,l4, reas0,reas10,asci0,asci1,nv0
       store space(3) to y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,y_63,y_64,y_65
       store space(8) to us_1,disk0,b3_0,b4_0,name01,cden0,tars0,tars1,sel_0,ddsper_0,in_0,a1,a2,asci1
       store space(10) to y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,sch00,sch01,part01
       store space(31) to Y_0,Y_1,Y_2,Y_3,Y_4,dn30,iban0,bf00,prn0,prn1,prn2,oForm
       store '   ' to z_1,z_2,z_3,z_4,z_5,z_6,z_7,z_8,z_9,z_10,z_11,z_12,z_13,z_14,z_15,z_16,z_17,z_18,z_19,als0
       store space(10) to dn1,bg,sc1,sc2,sc3,sc4,sc5,sc6,sc7,sc8,sc9,sc10,sc11,sc12,sc13,sc14,sc15,dati0
       store 0 to s110,s120,s130,s140,s150,s160,s170,b00,b0,b1,b3,b4,p11,p12,sec0,sec1,row11,col11,loc0
       store 0 to p110,p120,p130,p140,p150,p160,p170,p180,p190,p200,p210,p220,p230,p240,p250,p260
       store 0 to op01,op02,op03,op04,op05,op06,op07,op08,op09,op10,op11,op12,oop0,q0,pechT0,pechL0,pechH0,pechW0
       store 0 to r207,r304,r452,r469,r601,r602,r603,r604,r605,r609,r611,r621,r623,r624,r661
       store 0 to r6_1,r6_3,r623,r624,r661,r669,rI,rII,rIII,rIV,pI,pII,pIII,r_o,p_o,_LOC3
       store 0 to p6_3,p701,p702,p703,p705,p706,p709,p721,p722,p723,p724,p761,p769,b2
       store 0 to nazad0,kl40,kl50,kl60,kl71,kl72,kl80,dsbor0,ksbor0,podr_0,v22,nSeconds,re_0

   ******************************************************************************************    
   
       	   *          МОЖЕ ДА СЕ ПОЛЗУВАТ
    
       store spac(1) to l0,l1,l2,l3,l4,l5,l6,l7,l8,l9,l11,kk0
       store space(10) to dn2,dn3,dnev0,izr0,date1,in_0,me0,me1,bud0,bin0
       store spac(4) to part0,part1,part2,part01,part4,part5,dr1,data0,data3,otgo0,admi00,pake
       store spac(3) to sch0,sch1,sch2,dok4,data1,data2,dtno0,ds0,ds1,vek1
       store spac(2) to mk0,mk_0,mk1,mese1,mese2,ff0,d1,d2,m1,m2,i,go0,vid1,vid2,vid4,vid5
       store spac(1) to t0,t1,t2,a0,a1,d0,dk0,dk1,dr0,tx0,tx1,ss1,vni0,save1,save_0
       store 0 to nom0,nom1,nom2,nom3,nom4,nom5,nom6,nom7,dsto0,ksto0,dsto1,dsto2,ksto1,dast0,dast1,kast1,ksal1 ,mate0
       store 0 to sald0,sald1,sald2,sald_0,obor_0,fn0,ra0,ra1,ra2,re0,re3,v1,i0,sald0,obor0,stok0,sch3,sch4
       store 0 to kol0,kol1,kol2,kol3,kol4,papk0,zena0,zena1,zena2,zena3,nvo0,m0,a49,kkol0,kkol1,ksal0
       store space(9) to dn00,dn01
       store spac(35) to name0
       tt0='00'
   
       SET TALK OFF
       SET BELL OFF
       SET SAFETY OFF
       SET CENTURY ON
       SET DATE BRITISH
       SET COLOR ON
       SET CENTURY OFF
     
       
  ************************************  ZADAWANE NA GLOBALNI PROMENLIWI ************************   

     *	? SYS(5)+SYS(2003)  && - ? GETDIR() !!! nikoga ne go iztrivai 

             DO &us00\hlp\Wsave\Wpro0.PRG   
             DO &us00\hlp\Wsave\Wpro1.PRG
           * DO &us00\hlp\Wsave\Wpro2.PRG  
             DO &us00\hlp\Wsave\Wsav0.PRG  
             DO &us00\hlp\Wsave\Wsav8.PRG  

    
              store date() to date0
            if file("&disc_1\save\us_0.mem")
                restore from &disc_1\save\us_0 additive
                @  0, 0 clea to 24,80
                go0=lower(subs(us_0,4,2))
                us0=subs(us_0,1,1)
                us1=us0+':\arhi\'+pake+'_'+subs(us_0,6,2)
                dr0=subs(us_0,1,7)
                dt0=subs(us_0,6,2)
                CD &dr0
                *l1=dirchange("&dr0")
                in_0=subs(us_0,1,2)+'&disc_1\job'       
                         open_info(loc0=0)
                         set filter to  0 < val(no)
                         go top

                locate for go=go0
                  if found()
                     us1=us0+':\arhi\'+pake+'_'+subs(us_0,6,2)
                  endif

            else
               dt0=subs(dtoc(date()),7,2)
               us0=SYS(3)
            endif   
    
            DO startvar 

     
        _SCREEN.FontSize = 10  
        _SCREEN.FontName = 'Courier New'
      
           
           
        ekran0 = CREATEOBJECT("ekran") 
        ekran0.Show  

   
        DEFINE MENU  Izbor 
        DEFINE PAD Y OF Izbor PROMPT "\<ДА"   COLOR SCHEME 3 AT 7,10 
        DEFINE PAD N OF Izbor PROMPT "\<НЕ"   COLOR SCHEME 3 AT 7,16
       
       
       if .not. file("arhi.dbf")
            l4='y'
            DO dire
       endif
  
       if file("arhi.dbf")
          l4='y'
          DO firma
       endif       
           
 
                      store date() to date0
                  
                  
          
                        
 *********************************** F - KEY WSAVE  *******************************  
            tt0='00' 
            toolb0 = CREATEOBJECT("myToolBar") 
            WITH toolb0 
            .TOP=ekran0.Height*0.75   &&  80 75
            .func_F7.Caption  = "F7 - ПАКЕТ" +SPACE(50)
            .func_F7.Visible  = .T.
            .func_F8.Caption  = "F8 - Въвеждане дата на програматa"+SPACE(13)
            .func_F8.Visible  = .T.
            .func_F9.Caption  = "F9 - Дата за фирмата"+SPACE(34)
            .func_F9.Visible  = .T.
            .func_F12A.Caption  = "ALT+F12 - Промяна от ASCII в ANSI код "+SPACE(6)
            .func_F12A.Visible  = .T.
            ENDWITH
         
                     
           toolb0.Show  
 
 
       KEYBOARD "{RIGHTARROW}" 
       KEYBOARD "{LEFTARROW}"   
    
     *  on key label F7 toolb0.func_F7.CLICK
     *  on key label F8 toolb0.func_F8.CLICK
     *  on key label F9 toolb0.func_F9.CLICK  
     *  on key label Alt+F12 toolb0.func_F12A.CLICK  
       
       on key label F1 do help
       on key label F2 do vidprn
       on key label f4 do razrjd  
       on key label f7 do ustro
       on key label F8 do datsme            && gotowo
       on key label F9 do firm              && gotowo
       on key label Ctrl+F1 do ascii  
       on key label Ctrl+F3 do belezka
       on key label Ctrl+U do papka  
     
       
       on key label Alt+F2 do budj
       on key label Alt+F3 do ddok 
       on key label Alt+F12 do prehansi && wsav0
       on key label Alt+e do dlme && Alt+e /кир/
       on key LABEl Alt+i do ddspro
       on key label Alt+x do calll
       on key label Alt+q do call1
       on key label Alt+M do podp 
       on key label Alt+o do ddok
 
       
           
          ramka0 = CREATEOBJECT('ramka0') 
        *  ramka0.show   
           READ EVENTS     && !!! Puska / Spira cherven buton MENU NE GO IZTRUVAI !!! 
  
                 
   **************************  NACHALO GLAWNO MENU   ******************************
  
           v1=''
     
        DO WHILE .t.
               
        DEFINE POPUP pop0 from 0.2,0.4 to 8.8,35 FONT 'Courier New', 11 STYLE 'BOLD'
        DEFINE BAR 1 OF pop0 PROMPT '\<1. Въвеждане на начални салда' 
        DEFINE BAR 2 OF pop0 PROMPT '\<2. Счетоводни операции'
        DEFINE BAR 3 OF pop0 PROMPT '\<3. Главна книга'
        DEFINE BAR 4 OF pop0 PROMPT '\<4. Оборотна ведомост и Дневници'       
        DEFINE BAR 5 OF pop0 PROMPT '\<5. Справки'
        DEFINE BAR 6 OF pop0 PROMPT '\<6. Корекции'
        DEFINE BAR 7 OF pop0 PROMPT '\<7. Изтриване'
        DEFINE BAR 8 OF pop0 PROMPT '\<8. Архивиране и възстанов ване'       
        DEFINE BAR 9 OF pop0 PROMPT '\<9. Изход от програмата'            
       
       
        ON BAR 1 OF pop0 ACTIVATE POPUP sav1
        ON BAR 2 OF pop0 ACTIVATE POPUP sav2
        ON BAR 3 OF pop0 ACTIVATE POPUP sav3
        ON BAR 4 OF pop0 ACTIVATE POPUP sav4
        ON BAR 5 OF pop0 ACTIVATE POPUP sav5
        ON BAR 6 OF pop0 ACTIVATE POPUP sav6
        ON BAR 7 OF pop0 ACTIVATE POPUP sav7
        ON BAR 8 OF pop0 ACTIVATE POPUP sav8
        ON BAR 9 OF pop0 ACTIVATE POPUP sav9
         
         
     
         DEFINE POPUP sav1  FONT 'Courier New', 11 STYLE 'BOLD'
         DEFINE BAR 1 OF sav1 PROMPT '\<1. Въвеждане на счетоводните сметки'
         DEFINE BAR 2 OF sav1 PROMPT '\<2. Въвеждане на начални салда'
         DEFINE BAR 3 OF sav1 PROMPT '\<3. Въвеждане наименование на нивата'
         DEFINE BAR 4 OF sav1 PROMPT '\<4. Определ не групите на документаци та'
         DEFINE BAR 5 OF sav1 PROMPT '\<5. Актуализаци  на анал. партиди'
         DEFINE BAR 6 OF sav1 PROMPT '\<6. Откриване на партиди от сметка в сметка'
         DEFINE BAR 7 OF sav1 PROMPT '\<7. Строителна фирма за данъчна проверка'
         DEFINE BAR 8 OF sav1 PROMPT '\<8. Годишни счетоводни справки'
   
         DEFINE POPUP sav2  FONT 'Courier New', 11 STYLE 'BOLD'
         DEFINE BAR 1 OF sav2 PROMPT  '\<2. Счетовдни операции'
   
         DEFINE POPUP sav3 FONT 'Courier New', 11 STYLE 'BOLD'
         DEFINE BAR 1 OF sav3 PROMPT  '\<3. Главна книга'

    
         DEFINE POPUP sav4 FONT 'Courier New', 11 STYLE 'BOLD'
         DEFINE BAR 1 OF sav4 PROMPT '\<1. Съкратени операции                                             '
         DEFINE BAR 2 OF sav4 PROMPT '\<2. Изработване на журнал по анал. партиди       '                      
         DEFINE BAR 3 OF sav4 PROMPT '\<3. Излистване на оборотна ведомост на синт. с-ки'                                  
         DEFINE BAR 4 OF sav4 PROMPT '\<4. Излистване на оборотна ведомост на анал. п-ди'                         
         DEFINE BAR 5 OF sav4 PROMPT '\<5. Изработване на журанал по синтетичните сметки'                             
         DEFINE BAR 6 OF sav4 PROMPT '\<6. Информация за Д Д С                          '
         DEFINE BAR 7 OF sav4 PROMPT '\<7. Замяна на партиди                            '
         DEFINE BAR 8 OF sav4 PROMPT '\<8. Търговска рентабилност                       '


         DEFINE POPUP sav5     FONT 'Courier New', 11 STYLE 'BOLD'
         DEFINE BAR 1 OF sav5 PROMPT  '\<1. Засечки'
         DEFINE BAR 2 OF sav5 PROMPT  '\<2. Печат на мемориални ордери'
         DEFINE BAR 3 OF sav5 PROMPT  '\<3. Печат платежни'
         DEFINE BAR 4 OF sav5 PROMPT  '\<4. Списък на контирани партиди'
         DEFINE BAR 5 OF sav5 PROMPT  '\<5. Списък на осчетоводените документи'
         DEFINE BAR 6 OF sav5 PROMPT  '\<6. Смяна на работната директорията'
         DEFINE BAR 7 OF sav5 PROMPT  '\<7. Процедури за стокови сметки'
         DEFINE BAR 8 OF sav5 PROMPT  '\<8. Разходи по направления'
         DEFINE BAR 9 OF sav5 PROMPT  '\<9. Tаблици СУПТО'

         DEFINE POPUP sav6     FONT 'Courier New', 11 STYLE 'BOLD'
         DEFINE BAR 1 OF sav6 PROMPT '\<1. Реиндексация                          '
         DEFINE BAR 2 OF sav6 PROMPT '\<2. Счетоводна операция                   '                      
         DEFINE BAR 3 OF sav6 PROMPT '\<3. Добавяне на оборотите по месеци       '                                  
         DEFINE BAR 4 OF sav6 PROMPT '\<4. Отпечатване на страница               '                         
         DEFINE BAR 5 OF sav6 PROMPT '\<5. Откриване на нова година и нов месец  '                             
         DEFINE BAR 6 OF sav6 PROMPT '\<6. Корекция на ик. елемнти               '
         DEFINE BAR 7 OF sav6 PROMPT '\<7. Прехвъляне на салда от предходен месец'
         DEFINE BAR 8 OF sav6 PROMPT '\<8. Амортизационен план                   '

 
         DEFINE POPUP sav7  FONT 'Courier New', 11 STYLE 'BOLD'
         DEFINE BAR 1 OF sav7 PROMPT  '\<1. Счетоводна операция'
         DEFINE BAR 2 OF sav7 PROMPT  '\<2. Други изтриванияя'
         DEFINE BAR 3 OF sav7 PROMPT  '\<3. Счетоводна сметка'
         DEFINE BAR 4 OF sav7 PROMPT  '\<4. Натрупани обороти'
         DEFINE BAR 5 OF sav7 PROMPT  '\<5. Група от операции'
         DEFINE BAR 6 OF sav7 PROMPT  '\<6. Натрупващ файл'



         DEFINE POPUP sav8 FONT 'Courier New', 11 STYLE 'BOLD'
         DEFINE BAR 1 OF sav8 PROMPT  '\<1.Архивиране с ZIP'
         DEFINE BAR 2 OF sav8 PROMPT  '\<2. Възстанов. с ZIP'
         DEFINE BAR 3 OF sav8 PROMPT  '\<3. Архивиране с COPY'
         DEFINE BAR 4 OF sav8 PROMPT  '\<4. Възстанов. с COPY'
         DEFINE BAR 5 OF sav8 PROMPT  '\<5. Актуализация'
         DEFINE BAR 6 OF sav8 PROMPT  '\<6. Дати на архиви'
         DEFINE BAR 1 OF sav8 PROMPT  '\<7. Общ архив'
         DEFINE BAR 1 OF sav8 PROMPT  '\<8. Възс.от Общ архив'
         
        
         DEFINE POPUP sav9 FONT 'Courier New', 11  STYLE 'BOLD'
         DEFINE BAR 1 OF sav9 PROMPT  '\<0. Изход'
  
          
         ON SELECTION POPUP  ALL  DO menu1
        
         ACTIVATE POPUP POP0
             
   ******************** NACHALO MNOGO VAGN MQSTO ZA PROVERKI *************************
             
            
             
      if (v1='sav1'.or.v1='sav2'.or.v1='sav3'.or.v1='sav4'.or.v1='sav5';  
        .or.v1='sav6'.or.v1='sav7'.or.v1='sav8')
        
      
        
            open_arhi(loc0=0)
     
        IF (.not. file("arhi.dbf")) .or. (127 < asc(SUBSTR(dok,3,1)) .and. asc(SUBSTR(dok,3,1)) < 192)  

            ramka0.Caption = SPACE(16)+"ПРОБЛЕМ ЗА ПРОГРАМАТА"  
            ramka0.Top     = ekran0.Height *0.35   && 0.05
            ramka0.Left    = ekran0.Width  *0.32   && 0.30
            ramka0.Height  = 180
            ramka0.Width   = 260  && 370   160    
            ramka0.Visible =.T.   
            ramka0.Show  
             SET CURSOR OFF         
            
            IF .not. file("arhi.dbf")
              @ 1, 10 say 'ВНИМАНИЕ !' COLOR  RGB(255,0,0,0,0,0)
              @ 3, 1 say 'ЛИПСВАТ РАБОТНИТЕ ФЙЛОВЕ' COLOR w+/
              @ 5, 6 say 'ЗА ДИРЕКТОРИЯТА !' COLOR w+/
              @ 7,14 say 'МОЛЯ' COLOR w+/
              @ 9, 5 say 'ИЗПЪЛНЕТЕ МЕНЮ 8/8 !' COLOR w+/
                       inkey(5)
            endif 
            
            if 127 < asc(SUBSTR(dok,1,1)) .and. asc(SUBSTR(dok,1,1)) < 192 && 
              @ 1, 10 say 'ВНИМАНИЕ !' COLOR  RGB(255,0,0,0,0,0)
              @ 3, 3 say 'Базта с данни е в ASCII код' COLOR w+/
              @ 5, 1 say 'желаете ли промяна в ANSI код ?' COLOR w+/
              ON SELECTION PAD Y OF Izbor  DO prehansi &&  wsav0
              ON SELECTION PAD N OF Izbor  DEACTIVATE MENU Izbor
              ACTIVATE MENU Izbor 
            endif           
             SET CURSOR ON
             ramka0.Visible =.F.
             ekran0.Show          
             loop        
        endif
      ENDIF 
       
                
	   ******************** KRAY MNOGO VAGN MQSTO ZA PROVERKI **************************     
         DO CASE
            CASE v1='sav1'
      MESSAGEBOX("ПРОЦЕДУРАТА ВРЕМЕННО Е СПРЯНА !" ,64,SPACE(30)+"МОЛЯ ЗА ИЗВИНЕНИЕ  !",6000)
            LOOP 
                 do Wsav1.prg
            CASE v1='sav2'
       MESSAGEBOX("ПРОЦЕДУРАТА ВРЕМЕННО Е СПРЯНА !" ,64,SPACE(30)+"МОЛЯ ЗА ИЗВИНЕНИЕ  !",6000)
            LOOP 
                 do Wsav2.prg
            CASE v1='sav3'
                do \hlp\Wsave\Wsav3.prg
               * do sav3
            CASE v1='sav4'
       MESSAGEBOX("ПРОЦЕДУРАТА ВРЕМЕННО Е СПРЯНА !" ,64,SPACE(30)+"МОЛЯ ЗА ИЗВИНЕНИЕ  !",6000)
            LOOP 
                 do \hlp\Wsave\sav4
            CASE v1='sav5'
                 do \hlp\Wsave\Wsav5.prg
            CASE v1='sav6'
                 do \hlp\Wsave\Wsav6.prg
            CASE v1='sav7'
        MESSAGEBOX("ПРОЦЕДУРАТА ВРЕМЕННО Е СПРЯНА !" ,64,SPACE(30)+"МОЛЯ ЗА ИЗВИНЕНИЕ  !",6000)
            LOOP 
                 if sc9='д'.and.dn1='147164000 '
                 else
                    sav7
                 endif
            CASE v1='sav8' 
         MESSAGEBOX("ПРОЦЕДУРАТА ВРЕМЕННО Е СПРЯНА !" ,64,SPACE(30)+"МОЛЯ ЗА ИЗВИНЕНИЕ  !",6000)
            LOOP     
                 do sarhiv()  &&  Wsav0
            CASE v1='sav9'         
              copy file us_0.mem to '&us00&disc_1\save\us_0.mem'
              rock()
            *  close all
            
                        
            
              clea all
             set color to
             set talk on
             set bell on 
             CLEAR EVENTS  && Stop event processing, close Form
             CLEAR MEMORY
             
             SET SYSMENU TO DEFAULT   
             CANCE     
         ENDCASE
     ENDDO

       PROCEDURE menu1
         DO CASE
            CASE lower(POPUP())='sav1'
                 v0=val(substr(prom(),1,1)) 
                 v1=lower(POPUP())
            CASE lower(POPUP())='sav2'
                 v0=val(substr(prom(),1,1)) 
                 v1=lower(POPUP())
            CASE lower(POPUP())='sav3'
                 v0=val(substr(prom(),1,1)) 
                 v1=lower(POPUP())
            CASE lower(POPUP())='sav4'
                 v0=val(substr(prom(),1,1)) 
                 v1=lower(POPUP())
            CASE lower(POPUP())='sav5'
                 v0=val(substr(prom(),1,1))  
                 v1=lower(POPUP())
                 
         *        @ 10 ,20 say v0
         *        @ 20 ,30 say v1
         *                 INKEY(0)
                 
                 
            CASE lower(POPUP())='sav6'
                 v0=val(substr(prom(),1,1)) 
                 v1=lower(POPUP())
            CASE lower(POPUP())='sav7'
                 v0=val(substr(prom(),1,1)) 
                 v1=lower(POPUP())
            CASE lower(POPUP())='sav8'
                 v0=val(substr(prom(),1,1)) 
                 v1=lower(POPUP())           
            CASE lower(POPUP())='sav9'
                 v0=val(substr(prom(),1,1)) 
                v1=lower(POPUP())
         ENDCASE   
            DEACTIVATE POPUP
       RETURN

    **************************************  KRAY GLAWNO MENU   ****************************** 
           
		                          PROCEDURE firma	
		                          	                          		                                                    
            SET DEFAULT TO SYS(5)
                CD &dr0
               * us_0=dr0
           if .not. file("dannom.mem")
		          firm()
	       endif
              ***********   NACHALO MEM PROWERKI ******

         
           if file ("us_0.mem").and.(sc9='д'.or.sc10='д')
                 restore from us_0 additive
        
            else
                 us_0=SYS(5)+curdir()
                 store 'c' to mb_0
                 eras us_0.mem
                 save all like us_0 to us_0
           endif
            store subs(us_0,1,1) to us0,us1
               
      
      if file ("ddse.mem")
	     store 0 to d_s10,d_s11,d_s12
	     restore from ddse additive
             d_s12=d_s10+d_s11
	  else
	     store 0 to d_s0,d_s10,d_s11,d_s12
	  endif
                    
   
           if file ("&disc_1\job\pake.mem")
                restore from &disc_1\job\pake additive
           else
                pake='XXXX'
           endif
   
             if pake='CHEF'
         *   if file ("&disc_1\belg\belg.dbf")
         *      restore from &disc_1\belg\belg additive
         *            do case
         *               case val(subs(time(),1,2))<8 .and.val(subs(time(),1,2)
         *              *     ! &disc_1\belg\belg.exe
         *               case val(subs(time(),1,2))<16 .and.val(subs(time(),1,2
         *              *     ! &disc_1\belg\belg.exe
         *           endcase
         *   endif
          endif
        if file ("zvetia.mem")
            restore from zvetia additive
         else
            zv0=2
         endif

      if file ("harsmet.mem")
           restore from harsmet additive
           save all like z_* to harsmet
       endif

       if file ("harsmet.mem")
	    *     restore from harsmet additive
       else
            save all like z_* to harsmet
       endif 
                         
              if file ("&disc_1\job\cyr.mem")
                 restore from &disc_1\job\cyr additive
              else
                 cyr0=1
                 save all like cyr0 to &disc_1\job\cyr
              endif   
                    if file ("&disc_1\job\vidprn.mem")
                      restore from &disc_1\job\vidprn additive
                    else
                        vprn0=1
                      save all like  vprn0 to &disc_1\job\vidprn
                    endif

                    if sc9='д'
                       store date() to date0
                       ramka()
                       if .not. file("&disc_1\job\admini.mem")
                         do admini
                       endif
       *                 do operat  && pro6
                    endif
   
         if file ("date.mem")
             if sc9='д' .or. sc11='д'
                store date() to date0
                save all like date0 to date
            *    @ 0,72 say dtoc(date0)
             else
                restore from date additive
             *   @ 0,70 say substr(dtoc(date0),4,5)
             endif
          else
                store date() to date0
                save all like date0 to date
           *     @ 0,72 say dtoc(date0)
               store date() to date0
          ENDIF
          
         
                data0=substr(dtoc(date0),4,5) && sledvashtite 4-ri reda
                dt0=substr(dtoc(date0),7,2)   && da ne se vkarwat w proverkata
                vek0=substr(str(year(date0),6),3,4)  && if file ("date.mem")
                store date0 to dati1,dati2   
   
   
            if file ("&disc_1\job\ddsper.mem")
                restore from &disc_1\job\ddsper additive
           else
                set cent on
                store subs(dtoc(date0),4,7) to ddsper_0
                eras &disc_1\job\ddsper.mem
                save all like ddsper_0 to &disc_1\job\ddsper.mem
                set cent off
           endif
   **********************   KRAY MEM PROWERKI ************************
                       if file("sc1")
 			 sc1='?'
 		      else
			 sc1='?'
		      endif
		      if file("sc2")
			 sc2='?'
		      else
			 sc2='?'
		      endif
		      if file("sc3")
			 sc3='?'
		      else
			 sc3='?'
		      endif
		      if file("sc4")
			 sc4='?'
		      else
			 sc4='?'
		      endif
		      if file("sc5")
			 sc5='?'
		      else
			 sc5='?'
		      endif
		      if file("sc6")
			 sc6='1'
		      else
			 sc6='2'
		      endif
		      if file("sc10")
			sc10='?'
		      else
			sc10='?'
		      endif
		      if file("sc12")
			sc12='?'
		      else
			sc12='?'
		      endif
		      if file("sc13")
			sc13='?'
		      else
			sc13='?'
		      endif
		      if file("sc14")
			sc14='?'
		      else
			sc14='?'
		      endif
		      if file("sc15")
			sc15='?'
		      else
			sc15='?'
		      endif
		      if file("sc16")
			sc16='?'
		      else
			sc16='?'
		      endif
		     restore from dannom additive
                     set exclu on
                     open_info(loc0=0)
		     locate for dn+go=dngo0
                        if .not. found()
                           store  lower(subs(curdir(),1,2)) to go0
                           locate for go=go0
                        endif
                     sch00=subs(reg,1,3)
 		     fir=fir
                     dn1=dn
                     no=no
                     klon0=klon
                     reg=reg
		     adr=adr
                     grad=grad
		     tel=tel
                     egn=egn
		     datk=datk
		     nam=name
                     obst=obst
                     repu=repu
		     dlaz=dlaz
		     buls=buls
		     tdd=tdd
		     idfu00=podr
		     ll6=p
		     go0=go
                     bf00=bf
		     dat1=dat1
		     dat2=dat2
		     lize=lize
                     unlock
                      rec_unlock()

                if d_s0 = 0 .and. p='?'
              @  9,19,13,61 box ram1
              @ 10,20 clea to 12+ml0,60
              @ 10,36 say '????????!' color 'R+/B'
              @ 11,20 say '??? ???????? ? ????? ?? 0, ???? ?????????'
              @ 12,20 say ' Alt+?/? ?? ?? ???????? ???????? ?? ???. '
                  inkey(0)
               endif


       if file("&us_0\obap.dbf").and.file("&us_0\obapr.dbf")
         eras obapr.dbf
       endif
       if file ("&us_0\obapr.dbf")
           rename '&us_0'+'obapr.dbf' to '&us_0'+'obap.dbf'
       endif
       if file ("&us_0\obver.dbf")
           rename '&us_0'+'obver.dbf' to '&us_0'+'obve.dbf'
       endif
     
   
   
      * SET CENTURY ON
      * vek0=substr(str(year(date0),6),3,4)
       dte1=ctod('01'+substr(dtoc(date0),3,8))
       SET CENTURY OFF
      * data0=substr(dtoc(date0),4,5)
      * dt0=substr(dtoc(date0),7,2)
       ekran0.Caption = subs(us_0,1,len(us_0))+SPACE(ekran0.WIDTH*0.296)+SUBSTR(dtoc(date0),4,5)   
    do case
	    case subs(dtoc(date0),4,2)='01'.or.subs(dtoc(date0),4,2)='03'.or.;
		 subs(dtoc(date0),4,2)='05'.or.subs(dtoc(date0),4,2)='07'.or.;
		 subs(dtoc(date0),4,2)='08'.or.subs(dtoc(date0),4,2)='10'.or.;
		 subs(dtoc(date0),4,2)='12'
		     store ctod('31'+substr(dtoc(date0),3,8)) to dte2
	    case subs(dtoc(date0),4,2)='02'
		     store ctod('28'+substr(dtoc(date0),3,8)) to dte2
	    case subs(dtoc(date0),4,2)='04'.or.subs(dtoc(date0),4,2)='06'.or.;
		 subs(dtoc(date0),4,2)='09'.or.subs(dtoc(date0),4,2)='11'
		     store ctod('30'+substr(dtoc(date0),3,8)) to dte2
	 endcase
    if subs(dtoc(date0),4,2)='12'
	  store ctod('14'+'/01'+subs(dtoc(date0),6,5)) to dte3
    else
	  store ctod('14'+str(val(subs(dtoc(date0),4,2))+1,3)+subs(dtoc(date0),6,5)) to dte3
    endif
       
       
        DO startpech
      
       if (.not.file ("&us_0"+"nari.idx")).or.(.not.file("&us_0"+"vidi.idx")).or.(.not.file ("&in_0"+"\dni.idx"))
                 podr_0=1
                 save all like podr_0 to podred
                 set cons on
              *   ? 'Go to 1'
              *   inkey(1)
               DO podred
           endif
     

        

          open_info(loc0=0) && moge da trqbwa ne go iztriwai  !!!!
          dn1=dn
          dngo0=dn+go

       if file("&us_0\obap.dbf").and.file("&us_0\obapr.dbf")
	        eras obapr.dbf
       endif
      
       if file ("&us_0\obapr.dbf")
	      rename '&us_0'+'obapr.dbf' to '&us_0'+'obap.dbf'
       endif
      
       if file ("&us_0\obver.dbf")
	      rename '&us_0'+'obver.dbf' to '&us_0'+'obve.dbf'
       endif 
       
       vid3=date0
       dtep0=ctod('  /  /  ')
       mese3=' \&go0'+substr(data0,4,2)
     

          
       de0='r'
       s0000='н'
     	                		  RETURN && firma
     	                		  
     	                		  
     	                		  
     	                		  
     	                		  
     	                		  
     	   ************** Процедура за наименование на фирмата *************  
     	                  PROCEDURE firm
                  
    MESSAGEBOX("PROC FIRM ВРЕМЕННО Е СПРЯНА !" ,64,SPACE(30)+"МОЛЯ ЗА ИЗВИНЕНИЕ  !",6000)
          return 
              

	   set key -8 to
	   save screen
	   @  3,17,21+ml0,63 box ram1
	   @  4,18 clea to 20+ml0,62
	   @  5,18 say repli('?', 45)
	   @ 18+ml0,18 say repli('?', 45)
	   set century on
           open_info(loc0:=13)
	   ii1='   '
	   locate for dn+go=dngo0
	   declare fiel[29]
	   fiel[1]='fir'
           fiel[2]='no'
	   fiel[3]='obst'
	   fiel[4]='dn'
	   fiel[5]='buls'
	   fiel[6]='adr'
	   fiel[7]='grad'
	   fiel[8]='tel'
	   fiel[9]='name'
	   fiel[10]='dlaz '
	   fiel[11]='p'
	   fiel[12]='go'
	   fiel[13]='lkar'
	   fiel[14]='datk'
	   fiel[15]='egn'
           fiel[16]='klon'
           fiel[17]='tdd '
	   fiel[18]='podr'
	   fiel[19]='repu'
	   fiel[20]='vvid'
	   fiel[21]='gr'
	   fiel[22]='bf'
	   fiel[23]='ba'+' '
	   fiel[24]='gb'
	   fiel[25]='dat1'
	   fiel[26]='dat2'
	   fiel[27]='lize'
	   fiel[28]='sas'
           fiel[29]='reg'
	   declare imem[29]
	   imem[1]='         Hаименование на фирмата'
	   imem[2]='Nо  '
	   imem[3]='HKИД    '
	   imem[4]=' Идет. No    '
	   imem[5]='  Булстат  '
	   imem[6]='                  Адрес   '
	   imem[7]='    Град      '
	   imem[8]=' Телефон   '
	   imem[9]='      Име на президента'
	   imem[10]='        Длъжност      '
	   imem[11]='П-од '
	   imem[12]='Ф.код  '
	   imem[13]='Лична карта  '
	   imem[14]='Дата на изд. '
	   imem[15]='   E Г H    '
	   imem[16]='   Kлон    '
           imem[17]='       Т Д Д  '
	   imem[18]=' ID на ФУ '
	   imem[19]='П.код. '
	   imem[20]='Hаименование на фирм. във фактурата   '
	   imem[21]='      Адрес на регистрация'
	   imem[22]='Банкова сметка           '
	   imem[23]='Банка'
	   imem[24]='Клон на банката'
	   imem[25]='Регистрация    '
	   imem[26]='e-mail'
	   imem[27]='    Лице за контакт'
	   imem[28]='   Лице издало фактурата    '
	   imem[29]='Сметка на маг.'
		 dbedit( 6,18,17+ml0,62,fiel,"pfunk2",'',imem,'?','')
		set key -8 to firm
		dn1=dn
                dngo0=dn+go
		save  all like dngo0 to dannom
		set century off
		do firma
		restore screen
	                     RETURN && firm
      ************ Потребителска функция **********
		function pfunk2
		parameters mode0,fld0
		private fld0
		cur0=fiel[fld0]
		 do case
		   case mode0 < 4

                if .not.(p=' '.or.p='е')
       @ 19,18 say 'Kолона "П-од" трябва де е или " " или кир "е"'
                inkey(3)
                endif
       @  4,18 say fir
       @  4,59 say str(recno(),3)
       @ 19+ml0,18 say '  Избор на поле '+'-'+chr(26)+' '+chr(25)+' '+chr(24)+' '+chr(27)+'-'+'"Enter" - редакция'
       @ 20+ml0,18 say 'F10-добавя нова фирма  F3-издирва фирма'
			return 1
		   case lastkey()=-2
                        set curs on
                        dn2=dn
                        save screen
	                @ 19,18 clea to 20,61
                        @ 19,25 say 'Възедете ИN или буквите на фирмата'
                        @ 20,35  get dn2
                        read
                        set curs off
                        dn2=trim(dn2)
                        locate for go=dn2 .or. dn=dn2
                        restore screen
		   case lastkey()=-9
			appe blank
		   case lastkey()=27
			return 0
		   case lastkey()=13
			 set cursor on
		         rec_lock()
        	      @ row(),col() get &cur0
	   @ 19+ml0,20 say '        Въведете желаните промени         '
	   @ 20+ml0,18 say '                                            '
			 read   && chet()
		         rec_unlock()
        *			 keyboard chr(4)
			 set cursor off
			 return 1
		   otherwise
			 return 1
		 endcase
		return 1  &&  pfunk2
    
                  
                       	  
     	  
     	 
		                          PROCEDURE dire
		     
           ramka0 = CREATEOBJECT('ramka0')
           ramka0.Caption = SPACE(30)+"РАБОТНА ДИРEКОТРИЯ"
           ramka0.Top     = ekran0.Height *0.05   && 0.05
           ramka0.Left    = ekran0.Width  *0.32   && 0.30
           ramka0.Height  = 310
           ramka0.Width   = 300  && 370   160
                          
          
           ramka0.show
           ramka0.Visible =.T.
           ramka0.etik01.Visible = .F.
           ramka0.text01.Visible = .F.

       DO WHILE .t.
          
          * go0='ko'
          * dt0='08'  
    
           @ 1 ,10 say 'Kод ' get go0  valid 64<asc(go0).and.asc(go0)<123 .or. go0='  '  COLOR, RGB(0,0,0,255,255,255) && DEFAULT ll4
	       @ 1 ,18 say 'Година ' get dt0  COLOR, RGB(0,0,0,255,255,255)  DEFAULT ll4
            CHET()
             IF lastkey()=27 .or. go0='  '
                  ramka0.Visible =.f.
                    return 
                  
              ENDIF

         dr0=go0+dt0

      *   DEFINE POPUP choi0  from 2.9,18 to 18.5,26  FONT 'Courier New', 11 STYLE 'BOLD' COLOR SCHEME 4
         DEFINE POPUP choi0  from 3,15  to 19,23  FONT 'Courier New', 11 STYLE 'BOLD' COLOR SCHEME 4
            
         DEFINE BAR  1 OF choi0 PROMPT ' '+dr0 
         DEFINE BAR  2 OF choi0 PROMPT ' \<JANU'
         DEFINE BAR  3 OF choi0 PROMPT ' \<FEBR'
         DEFINE BAR  4 OF choi0 PROMPT ' \<MARC'
         DEFINE BAR  5 OF choi0 PROMPT ' \<APRI'
         DEFINE BAR  6 OF choi0 PROMPT ' MA\<Y '
         DEFINE BAR  7 OF choi0 PROMPT ' JUN\<E'
         DEFINE BAR  8 OF choi0 PROMPT ' JU\<LY'
         DEFINE BAR  9 OF choi0 PROMPT ' A\<UGU'
         DEFINE BAR 10 OF choi0 PROMPT ' \<SEPT'
         DEFINE BAR 11 OF choi0 PROMPT ' \<OCTO'
         DEFINE BAR 12 OF choi0 PROMPT ' \<NOVE'
         DEFINE BAR 13 OF choi0 PROMPT ' \<DECE'

         ON SELECTION POPUP ALL DO menu1  &&   choice
         ACTIVATE POPUP choi0
                  *   ? LTRIM(PROMPT()) && 0STAEIGO ZA PRIMER
         IF LTRIM(PROMPT())=dr0
              SET CURSOR off
             if .not. file("arhi.dbf")
                 @  5,1 clea to 10,50
                 @  7,13 say 'ВНИМАНИЕ !' COLOR  RGB(255,0,0,0,0,0)
                 @  9, 4 say 'ЛИПСВАТ РАБОТНИТЕ ФЙЛОВЕ' COLOR w+/
                 @ 11, 9 say 'ЗА ДИРЕКТОРИЯТА!' COLOR w+/
                 @ 13, 15 say 'МОЛЯ' COLOR w+/
                 @ 15, 6 say ' ИЗПЪЛНЕТЕ МЕНЮ 8 /  8  !' COLOR w+/
                 inkey(5)
                 SET CURSOR on
                  return
              endif 
               dr0='\'+dr0+'\'
                 SET CURSOR on
                 EXIT
         ELSE
                 @  9,12 say 'ВНИМАНИЕ ! ' COLOR  RGB(255,0,0,0,0,0)
                 @ 11, 6 say 'ИЗБРАНАТА  ДИРЕКТОРИЯ' COLOR w+/
                 @ 13, 1 say 'НЕ СЪЩЕСТВУВА НА УСТРОЙСТВОТО ! ' COLOR w+/
                 inkey(5)
                 SET CURSOR on
                 loop
         ENDIF

                THISFORM.Release()
             * DEACTIVATE POPUP
       ENDDO
  
     	                		  RETURN    && dire




 ***************************** ДИФИНИРАНЕ НА КЛАСОВЕ*******************************


 ********************************  ГЛАВЕН ЕКРАН ***********************************
      * =AFONT(gaFontArray) && ПРОВЕРКА ЗА FONTS МГО ВАЖНО ДА НЕ СЕ ИЗТРИВА
      * ALEN(gaFontArray)  && НОМЕРА НА ФОНТА  
      *  DEFINE WINDOW ram  FROM 0, 0 TO 35.6,133.1 IN DESKTOP font gaFontArray(34),12;
      * DOUBLE FLOAT MDI TITLE 'SAVE' ZOOM CLOSE MINIMIZE GROW ;
      *   COLOR RGB(255,255,0,100,100,200) 
      * ACTIVATE WINDOW ram  
  
  
  * qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq
   DEFINE CLASS ekran AS form  
     AlwaysOnTop      = .F.
     Top              = 60
     Left             = 250
     Height           = 600  &&  580
 	 Width            = 800  && 1270
     BackColor        = RGB(100,100,200)        &&  2
     BackStyle        = 1                       &&  3
     Borderwidth      = 9                       &&  7  
   * BorderStyle      = 0                       &&   slaga ramka na kletkata ??? АКО СЕ ПУСНЕ ЩЕ СПРЕ ЗУМА 
     BorderColor      = RGB(0,255,255)
   * BufferMode       = 0 
     Caption          = subs(us_0,1,len(us_0))+SPACE(THISFORM.WIDTH*0.287)+dtoc(date0) 
     Closable         =.T.
     ColorScheme      = 1      &&  stoinosti 0-5
     ControlBox       =.F.     &&  spira i puska lisi4e
     Desktop          =.T.     &&  zadarga ekrana w rmakite na otworeniq vig ramka0
     Drawmode         = 13 
     DrawStyle        = 0
     DrawWidth        = 1
     Dragmode         = 1      &&  0,1
  *  FillStyle        = 1
 	 FontName         = 'Courier New NEW'
     FontSize         = 12
     ForeColor        = RGB(250,255,0)	
  *  FillColor        = RGB(0,255,255) 
     Float            =.T.
     MaxButton        =.T.
     MinButton        =.T.
  *  LockScreen       =.F. 
     ShowWindow       = 2
  *	 TITLEBAR         = 1
  *  TabStyle         = 1
  *  PageCount        = 2  
     Visible          =.F.
     ZoomBox          =.T.
   
   * circ01.Top  = (THISFORM.HEIGHT/30)+(1-(THISFORM.HEIGHT/30))+5
  
   

  
  
  
    ADD OBJECT circ01 AS SHAPE                
       circ01.Top  = 6
       circ01.Left = 6 
       circ01.Width = 48
       circ01.Height = 25
       circ01.Curvature = 0 &&  99 circle or ellipse
       circ01.BackColor = RGB(250,50,50)
       circ01.Visible =.T.  
         PROCEDURE  circ01.CLICK
                CLEAR EVENTS
         ENDPROC      
     ADD OBJECT labl01 AS LABEL
       labl01.TOP    = 11
       labl01.LEFT   = 11 
       labl01.HEIGHT = 17 
       labl01.WIDTH  = 37
       labl01.Caption =  '\<МЕНЮ'+DTOC(date0)
       labl01.BackColor = RGB(250,50,50)  && Red
       labl01.Visible =.T.
          PROCEDURE labl01.CLICK
                     CLEAR EVENTS
          ENDPROC
          PROCEDURE Resize
             ekran0.circ01.Top    =  6
             ekran0.circ01.Left   =  6
             ekran0.labl01.TOP    = 11
            ekran0.labl01.LEFT   = 11
        ENDPROC   
 
 
*********************** NACHALO BUTTON EKRAN/PECHAT  **************************
          ADD OBJECT circ04 AS SHAPE 
          circ04.Top       = (THISFORM.HEIGHT-57.9)
          circ04.Left      = (THISFORM.WIDTH-89) 
          circ04.Height    = 55
          circ04.Width     = 82
          circ04.Curvature = 0
          circ04.BackColor = RGB(192, 192, 192) 
          circ04.Visible   =.F. 
             
             
         ADD OBJECT ekprE AS COMMANDBUTTON
          ekprE.Top       = (THISFORM.HEIGHT-55)  
          ekprE.Left      = (THISFORM.WIDTH-85)
          ekprE.Height    = 25
          ekprE.Width     = 75
          ekprE.Caption   ='\<ЕКРАН' 
          ekprE.Visible   =.F.    
             PROCEDURE ekprE.CLICK
                
                 ekran0.circ04.Visible =.F.
                 ekran0.ekprE.Visible =.F.
                 ekran0.ekprP.Visible =.F.
                 ekpr0=1
              IF !EMPTY('&psav00')  
                  CLEAR EVENT
                 DO &psav00
              endif      
             ENDPROC
       ADD OBJECT ekprP AS COMMANDBUTTON
       ekprP.Top = (THISFORM.HEIGHT-30)
       ekprP.Left = (THISFORM.WIDTH-85)
       ekprP.HEIGHT   = 25
       ekprP.WIDTH    = 75
       ekprP.Caption  ="\<ПЕЧАТ"
       ekprP.Visible  =.F.         
         PROCEDURE ekprP.CLICK
                ekran0.circ04.Visible =.F.
                ekran0.ekprE.Visible =.F.
                ekran0.ekprP.Visible =.F.
                 ekpr0=2
              IF !EMPTY('&psav00')   
                   CLEAR EVENT
                  DO &psav00  
              endif  
         ENDPROC

*********************** KRAJ BUTTON EKRAN/PECHAT  ************************
   ENDDEFINE 
********************************  KRAI GLAWEN EKRAN ***********************************


    ***********************  NACHALO RAMKA  **************************
    DEFINE class ramka0 as form 
    AlwaysOnTop       = .F.
    Top               = ekran0.Height *0.01
    Left              = ekran0.Width  *0.10
    Height            = 120
    Width             = 625
    FontName          = 'Courier New New'
    FontSize          = 11
    BackColor         = RGB(0,0,255)         &&  2
    BorderColor       = RGB(0,255,255)
    ForeColor         = RGB(250,255,0)	
    FillColor         = RGB(0,255,255) 
    Fontbold          =.T.  
    BorderStyle       = 0   
    Caption           = SPACE(25)+"ВЪВЕЖДАНЕ HА СМЕТKОПЛАНА"
  * Autocenter        =.T.
    Controlbox        =.F.
  * Closable          =.T.00
    Desktop           =.F.
    Float             =.T.   
    ShowWindow        = 1
    Nowait            =.T.
  * windowstate       = 0
  * TITLEBAR          = 0
   
   ADD OBJECT etik01 AS LABEL  WITH TOP=10,LEFT=175,HEIGHT=20,WIDTH=300,FontName='Courier New New',FontSize=11,Fontbold=.T.,ForeColor=RGB(250,255,0),BackColor=RGB(0,0,255),Visible=.F.,;
              Caption='Въведете шифъра на партидата'         
   ADD OBJECT text01 AS TEXTBOX
              text01.TOP    = 10
              text01.LEFT   = 420
              text01.HEIGHT = 18 
              text01.WIDTH  = 40
              text01.FontName  = 'Courier New New'
              text01.FontSize  = 11
              text01.Fontbold  =.T. 
              text01.BorderStyle       = 0  
              text01.InputMask = '9999'
              text01.Visible = .F.
                 PROCEDURE cmdENTER   
                 CLEAR EVENT
           *      ON KEY
           *   * KEYBOARD "{DNARROW}"
           *   * ON KEY LABEL ENTER oForm.cmdENTER  
            ENDPROC    

   * !!! MNOGO WAGEN  PRIMER ZA ZADAWANE NA OGRANECHITELI STOINOSTI NA PROMENLIWA
   *     PROCEDURE text1.KeyPress
   *   PARAMETERS nKeyCode, nShiftAltCtrl
   *   NODEFAULT
   *   IF BETWEEN(nKeyCode, 65, 122) && Between 'A' and 'z'
   *      This.Value = ALLTRIM(This.Value) + "*"
  *       ACTIVATE SCREEN      && Send output to main Visual FoxPro window.
  *       ?? CHR(nKeyCode)
  *    ENDIF
    *   ENDPROC
              
  ENDDEFINE 
  
  *********************** KRAY  RAMKA  **************************
 
 *--------------------------- ИНСТРУМЕНТИ   --------------------------
  
  
 DEFINE CLASS myToolBar AS Toolbar
   AlwaysOnTop = .T.
   TOP         = ekran0.Height*0.60
   LEFT        = ekran0.Width *0.20
   HEIGHT      = 0 && IZLISHEN PRI TZI LKAS 
   WIDTH       = 0 && IZLISHEN PRI TZI LKAS  
   BackColor   = RGB(192, 192, 192)         
   FOREColor   = RGB(192,192,192)  
   BorderStyle = 0   
   CAPTION     = SPACE(60)+'ИНСТРУМЕНТИ' 
 * Autocenter  = .T.
   Controlbox  = .F.
 * Closable    = .T.
   Desktop     = .T.
   FontName    = 'Courier New New'
   FontSize    = 10
   Fontbold    = .T.  
   Float       = .T.   
   ShowWindow  = 1   
 * windowstate = 0
 * TITLEBAR    = 0
  
    
      
      ADD OBJECT func_F2 AS COMMANDBUTTON
      ADD OBJECT func_F3 AS COMMANDBUTTON
      ADD OBJECT func_F4 AS COMMANDBUTTON
      ADD OBJECT func_F5 AS COMMANDBUTTON
      ADD OBJECT func_F6 AS COMMANDBUTTON
      ADD OBJECT func_F7 AS COMMANDBUTTON
      ADD OBJECT func_F8 AS COMMANDBUTTON 
      ADD OBJECT func_F9 AS COMMANDBUTTON 
      ADD OBJECT func_F12A AS COMMANDBUTTON 
      
     
   
      
      
      func_F2.WIDTH       = 445
      func_F2.Caption     = "\<F2 - Патртиди"+SPACE(44)
      func_F2.FontName    = 'Courier New New'
      func_F2.FontSize    = 9
      func_F2.Fontbold    =.T.
      func_F2.Visible     =.F.
      func_F3.WIDTH       = 445
      func_F3.Caption     = "\<F3 - Описание по счетоводна операция"+SPACE(6)
      func_F3.FontName    = 'Courier New New'
      func_F3.FontSize    = 9
      func_F3.Fontbold    =.T.
      func_F3.Visible     =.F.
      func_F4.WIDTH       = 445
      func_F4.Caption     = "\<F4 - Излиства част от сметка или партида "
      func_F4.FontName    = 'Courier New New'
      func_F4.FontSize    = 9
      func_F4.Fontbold    =.T.
      func_F4.Visible     =.F.
      func_F5.WIDTH       = 445
      func_F5.Caption     = "\<F5 - Отпечатва главна книга на синтл. с-ки"
      func_F5.FontName    = 'Courier New New'
      func_F5.FontSize    = 9
      func_F5.Fontbold    =.T.
      func_F5.Visible     =.F.
  *   func_F5.HEIGHT      = 20 && NE IZTRIWAJ SAS ZWEZADA TOWA E DOBAR PRIMER 
  *   func_F5.FontName    = "Courier New New"  
  *   func_F5.FontSize    = 11
  *   func_F5.BackColor   = RGB(192, 192, 192)   && siw  Gray
  *   func_F5.BorderColor = RGB(0,255,255)
  *   func_F5.ColorScheme = 1  
  *   func_F5.ForeColor   = RGB(0, 0, 0)  &&  bukwi
  *   func_F5.FillColor   = RGB(0,255,255)   
      func_F6.WIDTH       = 445
      func_F6.Caption     = "\<F6 - Описание по регистър"+SPACE(24)
      func_F6.FontName    = 'Courier New New'
      func_F6.FontSize    = 9
      func_F6.Fontbold    =.T.
      func_F6.Visible     =.F.
      func_F7.WIDTH       = 445
      func_F7.Caption     = "\<F7 - Отпечатва част от сметка или партида"
      func_F7.FontName    = 'Courier New New'
      func_F7.FontSize    = 9
      func_F7.Fontbold    =.T.
      func_F7.Visible     =.F.
      func_F8.WIDTH       = 445
      func_F8.Caption     = ''
      func_F8.FontName    = 'Courier New New'
      func_F8.FontSize    = 9
      func_F8.Fontbold    =.T.
      func_F8.Visible     =.F.
      func_F9.WIDTH       = 445
      func_F9.Caption     = ""
      func_F9.FontName    = 'Courier New New'
      func_F9.FontSize    = 9
      func_F9.Fontbold    =.T.
      func_F9.Visible     =.F.
      func_F12A.WIDTH      = 445
      func_F12A.Caption    = ""
      func_F12A.FontName   = 'Courier New New'
      func_F12A.FontSize   = 9
      func_F12A.Fontbold   =.T.
      func_F12A.Visible    =.F.
      
        
         
      PROCEDURE func_F2.CLICK
        DO CASE  
            CASE substr(tt0,1,2)='30'
                tt0='300'
                a0=1
                @  6,26 say  'Аналитични патртиди' 
             CASE substr(tt0,1,2)='31'
               *   tt0='300'
                  a0=1
                  @  3,21 say 'Издирва желаната аналитична партида'
                  DO spisk1
        ENDCASE
   ENDPROC   
  
   PROCEDURE func_F3.CLICK
      
        DO CASE  
          CASE substr(tt0,1,2)='30'
                  tt0='301'
                  tx0=1
                  @  6,21 say 'Описание по счетоводна операция' 
         
          CASE substr(tt0,1,2)='31'
                  tt0='301'
                  tx0=1
                  @  6,21 say 'Описание по счетоводна операция'       
        ENDCASE
   ENDPROC
 
   PROCEDURE func_F4.CLICK
        DO CASE  
          CASE substr(tt0,1,2)='30'
               tt0='302'
               DO ddok3	
        ENDCASE
   ENDPROC   
 
   PROCEDURE func_F5.CLICK
      DO CASE  
          CASE substr(tt0,1,2)='30'
             DO glkn
        ENDCASE
   ENDPROC
   
   PROCEDURE func_F6.CLICK
       DO CASE  
          CASE substr(tt0,1,2)='30'.or.substr(tt0,1,2)='31'
            tt0='303'
            tx0=1
            tx1=1
         @  6,26 say 'Описание по регистър' 
          CASE substr(tt0,1,2)='301'
              tt0='303'
              tx0=1
              tx1=1
         @  6,26say 'Описание по регистър'    
        ENDCASE
   ENDPROC
   
   PROCEDURE func_F7.CLICK
         DO CASE  
          CASE substr(tt0,1,2)='30'
               tt0='304'
               DO ddok3
        ENDCASE
   ENDPROC

    PROCEDURE func_F8.CLICK
       DO CASE  
          CASE substr(tt0,1,2)='00'  
               DO datsme
          CASE substr(tt0,1,2)='30'
               tt0='305'
               DO ddok1
        ENDCASE
     ENDPROC
     
     PROCEDURE func_F9.CLICK
             DO firm
     ENDPROC
   
   
     PROCEDURE func_F12A.CLICK
             DO prehansi
     ENDPROC
 
     
ENDDEFINE
  
***************************************** NACHALO DBEDIT **************************************  
   
  
      ON KEY LABEL ENTER oForm.cmdENTER  
      ON KEY LABEL RIGHTMOUSE oForm.cmdRIGHTMOUSE
      ON KEY LABEL DNARROW oForm.cmdDNARROW 
      ON KEY LABEL UPARROW oForm.cmdUPARROW 
      ON KEY LABEL F9 ON KEY
    
                DEFINE CLASS DBedit AS FORM
                     AlwaysOnTop       = .F.
                     Top               =155
                     Left              = 50
                     Height            = 240
                     Width             = 680
                     BorderStyle       = 0   
                     Caption           = SPACE(80)+"ИЗДИРВА ЖЕЛАНАТА ПАРТИДА" 
                     BackColor         = RGB(192,192,192)         &&  2
                     Controlbox        = .F.
                    * Closable          =.T.
                     Desktop           =.F.
                  *  BorderColor       = RGB(0,255,255)
                  *  FOREColor         = RGB(192,192,192)  
                     BorderStyle       = 0   
                     Float             =.T.   
                     ShowWindow        = 1
      
        * Toawa e bez  Grid_0. no ne e udache zashtot ne moga da izkluchvam red
        *  ADD OBJECT Grid_0 AS Grid WITH ;
        *  RecordSource ="obap", ;
        *  ColumnCount  =5, ; 
        *  Top          =  50, ;
        *  Left         =  10, ;       
        
        * Towa e waria s  Grid_0. !!! NE go iztriwaj
        ADD OBJECT Grid_0 AS Grid WITH RecordSource="obap",ColumnCount=5,Top=40,Left=35,Height=145,width=615,ToolTipText="Hi, I'm a Grid.",PANEL=1,DELETEMARK=.F.,SPLITBAR=.F.,TABINDEX=3,GridLines = 3
        ADD OBJECT cmdclose  AS CommandButton WITH Top=215,Left=615,Height=24,Width=60,BackColor=RGB(192,192,192),ToolTipText = "CLOSE",;
                 Caption="ЗАТВОРИ"
                 * cmdclose.Picture = 'C:\HLP\BMP\wztop.bmp'
                   
        ADD OBJECT text0 AS Label WITH Top=190,Left=170,Width=320,BackColor=RGB(250,250,00),FontName='Courier NEW',FontSize=12,ForeColor=RGB(0,0,0),Visible=.F.
                   Caption ='Записът е маркиран за изтриване!' 
        ADD OBJECT cmdTop  AS CommandButton 
                   cmdTop.Top       = 215
                   cmdTop.Left      = 10
                   cmdTop.Height    = 24
                   cmdTop.Width     = 48
                   cmdTop.Caption   = ""
                   cmdTop.BackColor =  RGB(192,192,192)
                   cmdTop.Picture = 'C:\HLP\BMP\wztop.bmp'
                   cmdTop.ToolTipText = "Top record"
        ADD OBJECT cmdPrev  AS CommandButton 
                   cmdPrev.Top       = 215
                   cmdPrev.Left      = 60
                   cmdPrev.Height    = 24
                   cmdPrev.Width     = 48
                   cmdPrev.Caption   = ""
                   cmdPrev.BackColor =  RGB(192,192,192)
                   cmdPrev.Picture   = 'C:\HLP\BMP\wzback.bmp'
                   cmdPrev.ToolTipText = "Previous record"
        ADD OBJECT cmdNext  AS CommandButton 
                   cmdNext.Top       = 215
                   cmdNext.Left      = 110
                   cmdNext.Height    = 24
                   cmdNext.Width     = 48
                   cmdNext.Caption   = ""
                   cmdNext.BackColor =  RGB(192,192,192)
                   cmdNext.Picture   = 'C:\HLP\BMP\wznext.bmp'
                   cmdNext.ToolTipText = "Next record"
        ADD OBJECT cmdEnd  AS CommandButton 
                   cmdEnd.Top       = 215
                   cmdEnd.Left      = 160
                   cmdEnd.Height    = 24
                   cmdEnd.Width     = 48
                   cmdEnd.Caption   = ""
                   cmdEnd.BackColor =  RGB(192,192,192)
                   cmdEnd.Picture   = 'C:\HLP\BMP\wzend.bmp'
                   cmdEnd.ToolTipText = "Bottom record"
        ADD OBJECT cmdFind  AS CommandButton 
                   cmdFind.Top       = 215
                   cmdFind.Left      = 210
                   cmdFind.Height    = 24
                   cmdFind.Width     = 48
                   cmdFind.Caption   = ""
                   cmdFind.BackColor =  RGB(192,192,192)
                   cmdFind.Picture   = 'C:\HLP\BMP\wzlocate.bmp'
                   cmdFind.ToolTipText = "Find records"
        ADD OBJECT cmdPrint AS CommandButton 
                   cmdPrint.Top       = 215
                   cmdPrint.Left      = 260
                   cmdPrint.Height    = 24
                   cmdPrint.Width     = 48
                   cmdPrint.Caption   = ""
                   cmdPrint.BackColor =  RGB(192,192,192)
                   cmdPrint.Picture   = 'C:\HLP\BMP\wzprint.bmp'
                   cmdPrint.ToolTipText = "Print report"
                   cmdPrint.Name = "cmdPrint"
        ADD OBJECT cmdAdd AS CommandButton 
                   cmdAdd.Top       = 215
                   cmdAdd.Left      = 310
                   cmdAdd.Height    = 24
                   cmdAdd.Width     = 48
                   cmdAdd.Caption   = ""
                   cmdAdd.BackColor =  RGB(192,192,192)
                   cmdAdd.Picture   = 'C:\HLP\BMP\wznew.bmp'
                   cmdAdd.ToolTipText = "Add / Save record"
        ADD OBJECT cmdEdit AS CommandButton 
                   cmdEdit.Top       = 215
                   cmdEdit.Left      = 360
                   cmdEdit.Height    = 24
                   cmdEdit.Width     = 48
                   cmdEdit.Caption   = ""
                   cmdEdit.BackColor =  RGB(192,192,192)
                   cmdEdit.Picture   = 'C:\HLP\BMP\wzedit.bmp'
                   cmdEdit.ToolTipText = "Edit"
        ADD OBJECT cmdDelete AS CommandButton 
                   cmdDelete.Top       = 215
                   cmdDelete.Left      = 410
                   cmdDelete.Height    = 24
                   cmdDelete.Width     = 48
                   cmdDelete.Caption   = ""
                   cmdDelete.BackColor =  RGB(192,192,192)
                   cmdDelete.Picture   = 'C:\HLP\BMP\wzdelete.bmp'
                   cmdDelete.ToolTipText = "Delete record"
        ADD OBJECT cmdRevert AS CommandButton 
                   cmdRevert.Top       = 215
                   cmdRevert.Left      = 460
                   cmdRevert.Height    = 24
                   cmdRevert.Width     = 48
                   cmdRevert.Caption   = ""
                   cmdRevert.BackColor =  RGB(192,192,192)
                   cmdRevert.Picture   = 'C:\HLP\BMP\wzundo.bmp'
                   cmdRevert.ToolTipText = "Revert record"
       ADD OBJECT cmdSave AS CommandButton 
                   cmdSave.Top       = 215
                   cmdSave.Left      = 510
                   cmdSave.Height    = 24
                   cmdSave.Width     = 48
                   cmdSave.Caption   = ""
                   cmdSave.BackColor =  RGB(192,192,192)
                   cmdSave.Picture   = 'C:\HLP\BMP\wzsave.bmp'
                   cmdSave.ToolTipText = "Save record"    
        ADD OBJECT cmdExit AS CommandButton 
                   cmdExit.Top       = 215
                   cmdExit.Left      = 560
                   cmdExit.Height    = 24
                   cmdExit.Width     = 48
                   cmdExit.Caption   = ""
                   cmdExit.BackColor =  RGB(192,192,192)
                   cmdExit.Picture   = 'C:\HLP\BMP\wzclose.bmp'
                   cmdExit.ToolTipText = "Exit form"
     PROCEDURE Load
      *  SELECT 1
      *  USE obap IN 0
      *  go top
     ENDPROC
       
     PROCEDURE Init
            
       * THISFORM. Grid_0.SetAll("DynamicBackColor", "IIF(MOD(RECNO( ),2)=0, RGB(255,255,255), RGB(210, 210, 210))", "Column")  && Alternate white and green records   
       * THISFORM.Grid_0.SetAll("BackColor", RGB(255, 0, 0), "Column")
       * THISFORM.Grid_0.SetAll("ForeColor", RGB(0, 255, 0), "Header")
       
        THISFORM.Grid_0.Column1.Width = 30
        THISFORM.Grid_0.Column1.FontSize=10
        THISFORM.Grid_0.Column1.Header1.Caption='П-ДА'
        THISFORM.Grid_0.Column1.ControlSource = "subs(obap.part,4,4)"
        THISFORM.Grid_0.Column1.FontSize         = 10
        THISFORM.Grid_0.Column1.Fontbold         = .T.
      
        THISFORM.Grid_0.Column2.Width            = 250
        THISFORM.Grid_0.Column2.Header1.Caption  ='        НАИМЕНОВАНИЕ'
        THISFORM.Grid_0.Column2.ControlSource    = "obap.name"
        THISFORM.Grid_0.Column2.FontSize         = 10
        THISFORM.Grid_0.Column2.Fontbold         = .T.
       
       * THISFORM.Grid_0.Column2.BORDERSTYLE = 0
       * THISFORM.Grid_0.Column2.BorderColor =RGB(255,0,0)
       * THISFORM.Grid_0.Column2.MARGIN = 0
       * THISFORM.Grid.Column2.DynamicAlignment = 1
         
        THISFORM.Grid_0.Column3.Width            = 100
        THISFORM.Grid_0.Column3.Header1.Caption  =' КОЛИЧЕСТВО'
        THISFORM.Grid_0.Column3.ControlSource    = "obap.kol"
        THISFORM.Grid_0.Column3.DynamicInputMask = "@R$ ###,###.##"  && NE RABOTI 
      *  THISFORM.Grid_0.Column3.FontName         = 'Courier NEW'
        THISFORM.Grid_0.Column3.FontSize         = 10
        THISFORM.Grid_0.Column3.Fontbold         = .T.
    
        THISFORM.Grid_0.Column4.Width            = 100
        THISFORM.Grid_0.Column4.Header1.Caption  ='    ЕД. ЦЕНА'
        THISFORM.Grid_0.Column4.ControlSource    = "obap.zena"
        THISFORM.Grid_0.Column4.DynamicInputMask = "@R$ ###,###.##"  && NE RABOTI 
        THISFORM.Grid_0.Column4.Alignment        =1
        THISFORM.Grid_0.Column4.FontSize         = 10
        THISFORM.Grid_0.Column4.Fontbold         = .T.
        
        THISFORM.Grid_0.Column5.Width           = 100
        THISFORM.Grid_0.Column5.Header1.Caption ='    САЛДО'
        THISFORM.Grid_0.Column5.ControlSource   = "obap.kkol"
        THISFORM.Grid_0.Column5.DynamicInputMask = "@R$ ###,###.##"  && NE RABOTI 
        THISFORM.Grid_0.Column5.ControlSource   = "ROUND(KOL*zenA,2)" 
        THISFORM.Grid_0.Column5.FontSize        = 10
        THISFORM.Grid_0.Column5.Fontbold        = .T.
     
      ENDPROC

            PROCEDURE cmdTop.Click 
              GO top
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
            ENDPROC
        
           PROCEDURE cmdPrev.Click 
                 IF .not. BOF()
                     SKIP -1 
                 endif
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
            ENDPROC
       
            PROCEDURE cmdNext.Click         
               IF .not. EOF()
                     SKIP 1 
               endif
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
            ENDPROC
            
            PROCEDURE cmdEnd.Click         
              GO bott
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
            ENDPROC
          
            PROCEDURE cmdFind.Click         
            ENDPROC
            PROCEDURE cmdPrint.Click         
            ENDPROC
           
            PROCEDURE cmdAdd.Click         
             APPEND BLANK
              GO bott
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"
              KEYBOARD "{LEFTARROW }"   
            ENDPROC
            PROCEDURE cmdEdit.Click         
            ENDPROC
          
            PROCEDURE cmdRevert.Click         
                  RECALL
                   oForm.text0 .Visible = .F.
                   KEYBOARD "{RIGHTARROW}"    
                   KEYBOARD "{RIGHTARROW}"    
                   KEYBOARD "{RIGHTARROW}"    
            ENDPROC
          
            PROCEDURE cmdDelete.Click          
                DELETE 
                oForm.text0 .Visible = .T.
                KEYBOARD "{RIGHTARROW}"    
                KEYBOARD "{RIGHTARROW}"    
                KEYBOARD "{RIGHTARROW}"  
                KEYBOARD "{RIGHTARROW}" 
            ENDPROC
          
            PROCEDURE cmdExit.Click 
                    	UNLOCK ALL
			     		CLOSE DATABASES
			     		RETURN
			ENDPROC
            
            PROCEDURE cmdRIGHTMOUSE
                   KEYBOARD "{LEFTARROW}"    
                   KEYBOARD "{RIGHTARROW}"        
            ENDPROC
            
          PROCEDURE cmdDNARROW 
              ON KEY LABEL DNARROW 
              SKIP 
              IF DELETED()=.T.
                 oForm.text0 .Visible = .T.
              ELSE
                 oForm.text0 .Visible = .F.
               ENDIF
             ON KEY LABEL DNARROW oForm.cmdDNARROW 
             ENDPROC
             
          PROCEDURE cmdUPARROW  
              ON KEY LABEL UPARROW 
              SKIP -1
              IF DELETED()=.T.
                 oForm.text0 .Visible = .T.
              ELSE
                 oForm.text0 .Visible = .F.
               ENDIF
             ON KEY LABEL UPARROW oForm.cmdUPARROW 
           ENDPROC
             
            PROCEDURE cmdClose.Click 
                  part0=val(substr(part,4,4))
                   mk1=mk
                   zena1=zena
                         ON KEY
                     *   UNLOCK ALL
			     	 *   CLOSE DATABASES
			             CLEAR EVENTS
			     	  	 THISFORM.Release()
			     	 * 	 RETURN
			        
                      *   THISFORMSET.Release()
                     *   set talk on
                     *   set bell on 
                     *   CLEAR EVENTS  && Stop event processing, close Form
                     *   CLEAR MEMORY
                     *   SET SYSMENU TO DEFAULT
                     *   CANCE      
                       
            ENDPROC

   PROCEDURE Click
  *   #DEFINE COLUMN_LOC "Grid Column:"
  *   #DEFINE CONTROLSOURCE_LOC "ControlSource:"

   *   cMsg = (COLUMN_LOC + CHR(9) + THIS.Caption + ;
   *  CHR(13) + CONTROLSOURCE_LOC + CHR(9))
   *   MESSAGEBOX(cMsg)
  
   ENDPROC
    
  
            PROCEDURE cmdENTER   
               ON KEY
               KEYBOARD "{DNARROW}"
               ON KEY LABEL ENTER oForm.cmdENTER  
            ENDPROC    

ENDDEFINE
 
***************************************** KRAY DBEDIT **************************************  

 
  *---------------------------ДЕФИНИРАНЕ НА ПЕЧАТ ---------------------------

     
                             *   PROC PECH
    
  
 
    DEFINE class pechat as form
    Top    = pechT0
    Left   = pechL0
    Height = pechH0
    Width  = pechW0
    BorderColor      = RGB(0,255,255)
    AlwaysOnTop      = .T.
    Caption          = SPACE(100)+'ОТВОРЕН ФАЙЛ  ->  '+prn1
    ControlBox       =.T.
    DrawWidth        = 1
   	FontName         = 'Courier New'
	Desktop          =.T.
	TITLEBAR         = 1
 	MaxButton        =.T.
	MinButton        =.T.
    MacDesktop       = 2
    FontItalic       =.F. 
    HelpContextID    = 54
   * creport          ='s0001.prn'
   * Name             = "pech"
    ShowWindow       = 1
          
         
     
       PROCEDURE Resize   && MNOGO WAGNO  !!!
           
          *  if 130 < THISFORM.HEIGHT
               pech0.edit1.Height=THISFORM.HEIGHT-24
               pech0.edit1.Width=THISFORM.Width-1
               pech0.razm1.top=THISFORM.HEIGHT-24+2
               pech0.open1.top=THISFORM.HEIGHT-24+2
               pech0.save1.top=THISFORM.HEIGHT-24+2
               pech0.prin1.top=THISFORM.HEIGHT-24+2
               pech0.exit1.top=THISFORM.HEIGHT-24+2
               pech0.opti1.top=THISFORM.HEIGHT-24-99
          *   endif
       ENDPROC  
  ADD OBJECT edit1 AS editBOX WITH Top=pechT0*0.01215, Left=pechL0 *0.01615, Height=pechH0 *0.9524,Width= pechW0 *1.0060,FontName="Courier New",FontSize=fsize0,PageCount=2,TabStyle=1,Fontbold=.T.,TITLEBAR=1,MaxButton=.T.,MinButton=.T.,ControlBox=.T.,Float=.T.,Visible=.T.
  *  ADD OBJECT edit1 AS editBOX 
  *                  edit1.Top=pechT0*0.01215
  *                  edit1.Left=pechL0*0.01615 
  *                  edit1.Height=pechH0*0.9524
  *                  edit1.Width= pechW0*1.0060
  *                  edit1.FontName="Courier New"
  *                  edit1.FontSize=fsize0
  *                  edit1.PageCount=2
  *                  edit1.TabStyle=1
  *                  edit1.Fontbold=.T.
  *                  edit1.TITLEBAR=1
  *                  edit1.MaxButton=.T.
  *                  edit1.MinButton=.T.
  *                  edit1.ControlBox=.T.
 *                   edit1.Float=.T.
  *                  edit1.Visible=.T.
           
           
           PROCEDURE edit1.INIT
           
                CREATE CURSOR PRN (prn0 c(60),mem m)
                APPEND BLANK
                REPLACE PRN.prn0 WITH '&prn1'
                APPEND MEMO mem FROM (PRN.prn0) OVERWRITE
                THIS.Parent.edit1.ControlSource = "PRN.mem"
                THIS.Parent.Refresh
            ENDPROC   
    
  *   ADD OBJECT razm1 AS commandbutton WITH Top=pechT0*5.8,Left=6,Height=23,Width=72,FontName="Courier New",FontSize=8,PageCount=2,Visible=.T.,
      ADD OBJECT razm1 AS commandbutton WITH Top=(pechH0*0.96),Left=6,Height=23,Width=72,FontName="Courier New",FontSize=8,PageCount=2,Visible=.T.,;
                Caption="\<РАЗМЕР"
            
            PROCEDURE razm1.CLICK
               pech0.opti1.Visible =.T.  
            ENDPROC
            
        ADD OBJECT opti1 AS OptionGroup WITH ButtonCount=4,TOP=401,LEFT=8,Height=87,Width=70,Visible=.F.  
            
        PROCEDURE opti1.INIT
              THISFORM.opti1.Buttons(1).Caption = "    \<1  7"
              THISFORM.opti1.Buttons(1).left =6
              THISFORM.opti1.Buttons(2).Caption = "    \<2  8"
              THISFORM.opti1.Buttons(2).left =6
              THISFORM.opti1.Buttons(3).Caption = "    \<3  9"
              THISFORM.opti1.Buttons(3).left =6
              THISFORM.opti1.Buttons(4).Caption = "    \<3 10"
              THISFORM.opti1.Buttons(4).left =6
              THISFORM.opti1.SetAll("Width", 100) && Set Option group width
              THISFORM.opti1 .Visible = .F.  && Option Group visible
           ENDPROC
          
                PROCEDURE opti1.Click   
                      DO CASE
                         CASE ThisForm.opti1.Value = 1
          
                             FSIZE0 =  7         
                             pech0.edit1.fontsize = fsize0
                         CASE ThisForm.opti1.Value = 2
                             FSIZE0 =  8         
                             pech0.edit1.fontsize = fsize0
                         CASE ThisForm.opti1.Value = 3 
             
                             FSIZE0 =  9     
                             pech0.edit1.fontsize = fsize0
                         CASE ThisForm.opti1.Value = 4             
    
                             FSIZE0 = 10 
                             pech0.edit1.fontsize = fsize0
                        ENDCASE
                              pech0.opti1.Visible =.F.  
              ENDPROC

       ADD OBJECT open1 AS commandbutton WITH Top=(pechH0*0.96),Left=83,Height=23,Width=72,FontName="Courier New",FontSize=fsize0,PageCount=3,;
               Caption="\<ОТВОРИ"              
                    PROCEDURE open1.CLICK
                          prn1 = GETFILE("PRN")
                          CREATE CURSOR PRN (prn0 c(60),mem m)
                          APPEND BLANK
                          IF EMPTY(PRN1)
                                STORE 's0001.prn' TO prn1
                          ENDIF
                          REPLACE PRN.prn0 WITH '&prn1'
                          APPEND MEMO mem FROM (PRN.prn0) OVERWRITE
                          THIS.Parent.edit1.ControlSource = "PRN.mem"
                          THIS.Parent.Refresh
                   ENDPROC
  
       ADD OBJECT save1 AS commandbutton WITH Top=(pechH0*0.96),Left=163,Height=23,Width=72,FontName="Courier New",FontSize=8,;
                 Caption="\<СЪХРАНИ"
              PROCEDURE save1.Click
                   COPY MEMO PRN.mem TO '&prn1'
              ENDPROC     
    
       ADD OBJECT prin1 AS commandbutton WITH Top=(pechH0*0.96),Left=243,Height=23,Width=72,FontName="Courier New",FontSize=8,Picture="wzprint.bmp",PageCount=2,;   
              Caption="\<ПЕЧАТ"
     
             PROCEDURE prin1.Click
                  SET DEVICE TO SCREEN
                  Local gnFileHandle,nSize,cString0
      
                  STORE FOPEN('prn1') TO gnFileHandle    && Open the file    
                  nSize =  FSEEK(gnFileHandle, 0, 2)
                 *  IF nSize <= 0
                 *    WINDOW "This file is empty!" 
                 *  ELSE
                 *    = FSEEK(gnFileHandle, 0, 0)      && Move pointer to BOF
                 *    cString0 = FREAD(gnFileHandle, nSize)
                 *  ENDIF
                 * THISFORM.Release
                 = FCLOSE(gnFileHandle) 
                 SET MEMOWIDTH TO 254
                 STORE MEMLINES(mem) TO prn2
                 SET CONSOLE off
                 SET PRINTER on
                 FOR gnCount = 1 TO prn2    
                    ? MLINE(mem, gnCount)      
                 NEXT
                SET PRINTER off  && 
                SET PRINTER TO LPT1  
                ? chr(27)+chr(26)
                SET CONSOLE ON
               * REPORT FORM (THISFORM.cReport) TO  PRINT   && PREVIEW NOEJECT NOCONSOLE 
                SET DEVICE TO screen
                SET PRINT OFF
                SET CONSOLE OFF
        ENDPROC  
     
       ADD OBJECT exit1 AS commandbutton WITH Top=(pechH0*0.96),Left=323,Height=23,Width=72,FontName="Courier New",FontSize=8,PageCount=2,;
                  Caption="\<ЗАТВОРИ"              

             PROCEDURE exit1.Click 
                CLEAR EVENTS
                THISFORM.Release()   
             ENDPROC   
 ENDDEFINE 
                             *    RETURN  &&  PECH
 *-------------------------КРАЙ ДЕФИНИРАНЕ НА ПЕЧАТ ---------------------------

 
**************************** КРАЙ НА ДИФИНИРАНЕ НА КЛАСОВЕ ************************
  