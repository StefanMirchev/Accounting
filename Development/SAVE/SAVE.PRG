*SAVE.PRG  new
*\Windows\System32\rundll32.exe PRINTUI.DLL,PrintUIEntry /e /n "Zan Image Printer (BW)"
   ***********************************************************************
  *   @  0, 0 clea to 24,80
  *          ssss=memoread("S0001.prn")
  *  *   ssss='    '
  *  *   ssss=rtrim(ltrim(trim(memoread("S0001.prn"))))
  *  if empty(ssss)
  *     @  0,15  say 'dddd ' ; inkey(2) //kkk
  *  else
  *     @  0,15  say 'eeee '+ssss+'aa' ; inkey(2) //kkk
  *  endif


 **   @  0, 0 clea to 24,80
 **   @  0,15  say 'bbbb ' ; inkey(0) //kkk
 **   cance
  **  budj calll firma datsme ddspro direk0 dlme dnev explorer gast help mreza
  **  pamet podp pishi provdisk setcolors. smov smov1 smov2 vapros
  ** p0  aktual broj ddok ddok2 dire izrab nulb3 nulb4 izrav line. mes mod11 nsinf oper pech fdobav
  ** p0  preh podred prekpp prekp provvar ramka raboti razr rock spisk spri stok1 zvan zenisme
  ** p1  chet ddsizv dubl nulfakt-spryna lusi protokol pszame slovo spdok
  ** p2  fakt obob klient pfunk3 pfunk5 prodag proze proze1 zadalz startkey vazkey
  ** p3  aktdis direk1 disk dostav dospr file_lock fmrega inde_lock otvo prodaz vies
  ** p4  asci analobo avtteh. banko chpa consig dds1 ddok1 edno joana
  ** p4  neobkol oborot razdds1 rupper spdds zanvi pfunk4
  ** p5  grupprod mol krprev nammag osok osmich osok plat potok potkor troi viddok
  ** p5  prikzkpo pfunk6 funk6. tehkar. tehkar.  stok2 userpass
  ** p6  admini chdire copizho kaparat missfile operat pfunk8  suptot versia
  ** s1  chakai fprint korsmet promnam sapa umnoz operi papka pfunk pkorder spdos sppro setcons stokraz
  ** s2  adob dobor barcod. sav33. fkt fnom gkor gzik kdso kdao kkso kobob konpart
  ** s2  podpri prodraz starkeY vazkeY
  ** s3  asme bank. chast ddok3 glkn grani lihva. novpar nepr niva nvo nivo1
  ** s3  obsin razrjd sbor. spisk1 ssme sentinel tXt1 tXt2 timecount zavar
  ** s4  spravdds
  ** s5  pfunk1
  ** s6  aktdis  nnom nvo otvo inde_lock pfunk7 rec_loc rec_unlock vapros.
  ** s7  amort del dnspis dspis gr61 izpis iztri mark markir nadc no pr60 prik prikdds r7 reca
  ** s8  fzame firm izvl lipso mol2 mesexx nootst pfunk2 prov regt prehansi tehnol ustro zame
  **  GRESHKA j6,j7 IZTRIJ &disc_1\job\razrjd.mem"
  **  !!!  PROVERKI !!!  chakai chdire

       sc_109='01A09'

      if subs(sc_109,3,1)='A' ;  sc9='≠' ; sc11='≠' ; ver1='SaveA.exe' ; endif
      if subs(sc_109,3,1)='D' ; sc11='§'  ; sc9='≠' ; ver1='SaveD.exe' ; endif
      if subs(sc_109,3,1)='T' ;  sc9='§' ; sc11='≠' ; ver1='SaveT.exe' ; endif
      disc_0 ='\disc' ; disc_1 ='\disc\hlp' ; pdfxc_0='&disc_1\exe\pdf\PDFXC.exe'
      * cmd_0='\disc\hlp\exe\cmd /c'  NEVERE NEVER
      if file('&disc_1\exe\fand.com')  ; cance ; endif
        setcolor ('GR+/B')
     * EXTERNAL SAV1,SAV2,SAV3,SAV4,SAV5,SAV6,SAV7
        do pro0
        do as
       save screen to ekr1
   *   #include "Directry.ch"
   *   #include "print.ch"
   *   #include "Fileio.ch"
   *   #ifdef FT_TEST
       #include "achoice.ch"
       set key 272 to call1 ; set key 301 to calll
       set key -47 to prehansi                       &&  Alt+F12
       set date british ; set talk off ; set bell off

	   *                     É ã é Å Ä ã H à
               date0=date()
               dtep0=date()

        j5=1
*  ram1=chr(201)+chr(205)+chr(215)+chr(199)+chr(216)+chr(205)+chr(200)+chr(199)
  ram1=chr(201)+chr(205)+chr(203)+chr(204)+chr(202)+chr(205)+chr(200)+chr(204)

      if file ("&disc_1\job\razrjd.mem")
          restore from &disc_1\job\razrjd additive
          store j7 to ml0
      else
	j0=14    &&  ê†ß∞ø§≠Æ±≤ ¢ ±≤Æ©≠Æ±≤ Æ°πÆ
	j1=2     &&  ê†ß∞ø§≠Æ±≤ ¢ ±≤Æ©≠Æ±≤ ¢ §∞Æ°≠†≤† ∑†±≤
	j2=12    &&  ê†ß∞ø§≠Æ±≤ ¢ ™Æ´®∑•±≤¢Æ Æ°πÆ
	j3=3     &&  ê†ß∞ø§≠Æ±≤ ¢ ™Æ´®∑•±≤¢Æ ¢ §∞Æ°≠†≤† ∑†±≤
	j4=2     &&  ê†ß∞ø§≠Æ±≤ ¢ §∞Æ°≠†≤† ∑†±≤ ≠† ∂•≠†
	j5=1     &&  Ç†´≥≤•≠ ™≥∞±
	j6=1     &&  ì¢•´®∑•≠®• §∫´¶®≠† ¢ ™Æ´®∑•±≤Æ ® ≠†¨†´•≠®• ¢ ∂•≠†
	j7=0     &&  mode con cols=80 lines=j7=24/36


                store j7 to ml0
        	save all like j? to &disc_1\job\razrjd
      endif
       picze_0=repl('9',11-j4)+'.'+repl('9',j4)
       dok0=space(40) ; de0='r' ; gran0='' ; s0000='≠' ; vl00='|'
       store space(1) to i,as0,sd2,vi2,ll0,ll1,ll2,ll3,ll4,ll5,ll6,ll7,ll8,ll9,ll10,ll11,ll12,ll13,ll14,ll15
       store space(1) to reg,klon0,fir,no,adr,grad,datk,egn,tel,dlaz,buls,tdd,podr,nam,repu,dat1,dat2,lize,ekpr0,vd0,vek0
       store space(1) to dr2,vid0,barc0,barc1,dngo0,nv_0,more0,qp0,qd0,reas0,reas10,asci0,asci1,ko,us0
       store space(3) to y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,y_63,y_64,y_65
       store space(8) to us_1,b3_0,b4_0,name01,cden0,tars0,tars1,sel_0,ddsper_0,bank1,bank2,bank3,pnp00,pnp01,dn00,dn01
       store space(10) to y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,sch00,sch01,part01
       store space(31) to dn30,iban0,bf00,obr0,idfu00,idfu01,ime00,prn0,ddat0,ver0,blan0
       store '   ' to z_1,z_2,z_3,z_4,z_5,z_6,z_7,z_8,z_9,z_10,z_11,z_12,z_13,z_14,z_15,z_16,z_17,z_18,z_19,als0
       store space(10) to dn1,bg,sc1,sc2,sc3,sc4,sc5,sc6,sc7,sc8,sc10,sc12,sc13,sc14,sc15,sc16,sc17,dati0
       store 0 to s110,s120,s130,s140,s150,s160,s170,b00,b0,b1,b3,b4,p11,p12,sec0,sec1,sek0,sek1,sek2,sa_00,sa_01
       store 0 to p110,p120,p130,p140,p150,p160,p170,p180,p190,p200,p210,p220,p230,p240,p250,p260,as0,v3
       store 0 to op01,op02,op03,op04,op05,op06,op07,op08,op09,op10,op11,op12,oop0,q0,iz0,sekundi0
       store 0 to r207,r304,r452,r469,r601,r602,r603,r604,r605,r609,r611,r621,r623,r624,r661,i00,ch0
       store 0 to r6_1,r6_3,r623,r624,r661,r669,rI,rII,rIII,rIV,pI,pII,pIII,r_o,p_o,nom3,nom4,pr1,pr2
       store 0 to p6_3,p701,p702,p703,p705,p706,p709,p721,p722,p723,p724,p761,p769,b2,cyr0,vprn0,d_s0
       store 0 to nazad0,kl40,kl50,kl60,kl71,kl72,kl80,dsbor0,ksbor0,podr_0,v22,nSeconds,re_0, aabb00,lin0

	   *          moge da se polzuvat
       store space(1) to l0,l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,zan0,dok01,dok02,dok03
       store space(10) to dn2,dn3,dnev0,izr0,date1,date2,us_0,in_0,me0,me1,bud0,bin0,pl0
       store space(4) to part0,part1,part2,part01,part4,part5,dr1,data0,data3,otgo0,admi00,admi01,pake,pake0
       store space(3) to sch0,sch1,sch2,dok4,data1,data2,dtno0,ds0,ds1,vek1,obek00,myas00
       store space(2) to mk0,mk_0,mk1,mese1,mese2,ff0,d1,d2,m1,m2,go0,vid1,vid2,vid4,vid5,dt0
       store space(1) to t0,t1,t2,a0,a1,d0,dk0,dk1,dr0,tx0,ss1,vni0,save1,save_0
       store 0 to nom0,nom1,nom2,nom7,mdt0,dsto0,ksto0,dsto1,dsto2,ksto1,dast0,dast1,kast1,ksal1 ,mate0
       store 0 to sald0,sald1,sald2,sald_0,obor_0,fn0,ra0,ra1,ra2,re0,re3,v1,sald0,obor0,stok0,sch3,sch4
       store 0 to kol0,kol1,kol2,kol3,kol4,papk0,zena0,zena1,zena2,zena3,otst0,nvo0,m0,a49,kkol0,kkol1,ksal0
       store spac(35) to name0 ; in_0=subs(us_0,1,2)+'&disc_1\job'

            if file("&disc_1\save\us_0.mem")
                restore from &disc_1\save\us_0 additive

      * !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      * FUNC dirchange() SE POLZUVA S dr0 A NE S us_0 ZASHTO FUNC
      * NE NAMIRA DIR AKO ZAVARSHVA S NAKL. CHERT. KAKTO E US_0
      * SMQNA MEGDU C: D: SE PARWI SAMI S FUNC diskchange() I ZATOVA
      * VINAGI TRYABWA DA SE POLUVAT I DVETE FUNKCII
      * V dirchange("&dr0") SINTAKS. NE E KAKTO V PROC DIRE dirchange("\&dr0")
      * ZASHTOT SA S PROM. S RAZLICHNO SADRGANIE
      * POVEDENIETI I NA DWETE FUNKCII E ANAOGICHNO NA DOS COMM. I ZATOVA
      * NE E CELESAOBRAZNO POLZUVNETO NA DOS COMMAND
            else
                 cance
            endif
               set cent on
               date0=ctod(subs(dtoc(date()),1,8)+subs(us_0,6,2))
               set cent off

                in_0=subs(us_0,1,2)+'&disc_1\job'
                open_info(loc0:=9)
                set filter to  0 < val(no)
                go top
                go0=upper(subs(us_0,4,2)) ; us0=subs(us_0,1,1)
         *      us1=us0+':\arhi\'+pake+'_'+subs(us_0,6,2)
                dr0=subs(us_0,1,7) ; dt0=subs(us_0,6,2)
                diskchange("&us0")  //  0 exist 1
                dirchange("&dr0")


       tt0='00'
       ramka()

       @  0, 75 say substr(dtoc(date()),4,5)
       if .not. file("arhi.dbf") // begin exist arhi.dbf
            l4='y'
            dire()  //pro0
       else
          open_arhi(loc0:=70)

      do missfile  //p6

  *  if (127 < asc(SUBSTR(dok,3,1)) .and. asc(SUBSTR(dok,3,1)) < 192)
     if (191 < asc(SUBSTR(dok,3,1)) .and. asc(SUBSTR(dok,3,1)) < 256)
              @ 11,36 say 'ÇHàåÄHàÖ !' color 'R+/B'
              @ 13,11 say 'Å†ß≤† ± §†≠≠® • ¢ ANSI ™Æ§ ¶•´†•≤• ´® Ø∞Æ¨ø≠† ¢ ASCII ™Æ§ ?'
             l0=1
           @ 15+ml0,38 prompt 'HÖ'  ; @ 15+ml0,41 prompt 'ÑÄ' ; menu to l0
                 *  if lastkey()=27 ; set dele off ; return ; endif
               @ 11, 2 clea to 15,75
                if l0=2 ; DO prehansi ; endif
     endif

     if file("\DISC\HLP\BAT\KILLSAVE.BAT")
        ! \DISC\HLP\exe\hstart.exe /noconsole \DISC\HLP\BAT\KILLSAVE.BAT
     endif

       l4='y'
       firma()  // save
       @  0, 17 say fir
               if file("_bbb.txt") ; eras _bbb.txt ; endif
         if cyr0=1
            !  &disc_1\cyr\tbds.com /b > aaa.txt
         else
            !  &disc_1\cyr\tbds.com  > aaa.txt
         endif
       if file("aaa.txt") ; eras aaa.txt ; endif
                    if sc9='§'
   set cent on ; date0=ctod(subs(dtoc(date()),1,8)+subs(us_0,6,2)) ; set cent off


  *    endif  // endin exist arhi.dbf

                       ramka()

    *  if file("&disc_1\save\SaveA.exe").or. file("&disc_1\save\SaveD.exe")
    *        memowrit('&disc_1\exe\fand.com', 'aaaa')
    *     eras &disc_1\save\us_0.mem ;  eras &disc_1\save\SaveA.exe ; eras &disc_1\save\SaveD.exe ; eras &disc_1\save\SaveT.exe
    *     set curs off
    *    for v1=1 to 9
    *       @  8,17,17,66 box ram1 ; @  9,18 clea to 16,65
    *       @  9+ml0,38 say 'ÇHàåÄHàÖ !'  color 'R+/B'
    *       @ 11+ml0,20 say 'èÆ´ß≥¢†≤• ±Æ¥≤≥•∞, ™Æ©≤Æ • ≠•§ÆØ≥±≤®¨ ≠† ≤Æ¢†'
    *       @ 12+ml0,20 say ' ∞†°Æ≤≠Æ ¨ø±≤Æ ±∫£´†±≠Æ §Æ£Æ¢Æ∞≠®≤• ≥±´Æ¢®ø! '
    *       @ 13+ml0,20 say '      è∞Æ£∞†¨†≤† Ø∞•≥±≤†≠Æ¢ø¢† ∞†°Æ≤†!       '
    *       @ 14+ml0,20 say '    åÆ´ø ±¢∫∞¶•≤• ±• ± Ø∞Æ®ß¢Æ§®≤•´ø ≠†      '
    *       @ 15+ml0,20 say '         ≤•´. +359 88 999 8611               '
    *        inkey(1) ; @  9+ml0,30 say space(25) ; inkey(1)
    *    next
    *          cance
    *  endif

                       if .not. file("&disc_1\job\admini.mem")
                         do admini
                       endif


    *  endif  // endin exist arhi.dbf

                       * fprint()  // sav1
                       * dtch()
                     if file("_bbb.txt")
                       @ 10,25,12,57 box ram1 ; @ 11,26 clea to 11,56
                       @ 11+ml0,27 say 'ÇHàåÄHàÖ!'  color 'R+/B'
                       @ 11+ml0,38 say 'CapsLock e ¢™´æ∑•≠'
                       inkey(6) ; @ 10,25 clea to 12,57 ; eras _bbb.txt
                     endif
                         do operat  && pro6
                    endif
       set key 21 to papka    &&  Ctrl+™®∞ K
       set key -28 to pamet ; set key 306 to podp

          if (.not.file ("&us_0\nari.ntx")).or.(.not.file ("&us_0\parpi.ntx")).or.(.not.file("&us_0\vidi.ntx")).or.(.not.file ("&in_0\dni.ntx"))
                podr_0=1
                save all like podr_0 to podred
            *   set cons on
            *   ? 'Go to 1'
            *   inkey(1)
                podred()
          endif

   *   if file ("&us_0\arhi.dbf")
   *       open_arhi(loc0:=70)
   *       set order to 0
   *   if file(" \dos\fand.com").or.file("c:\windows\fand.com")
   *    else
   *        gast()
   *   endif
   *   if (papk='™  ')
   *   *    gast()
   *   endif
   *   endif


      endif  // endin exist arhi.dbf


            if file("&disc_0\s0000")
              save screen
              @ 11, 5,13,74 box ram1
              @ 12, 6 clea to 12,73
              @ 12, 6 say '  Ç™´. Ø†™•≤•≠ Ø•∑†≤ S0000 - ±†¨Æ ≠† "èÖóÄí" ± ÆØ∂®ø è∞•™∫±≠†≤ Ø•∑. '
              s0000='§' ; ekpr0=2  ; ll14='≠'
              inkey(5)
              restore screen
            endif
         dospr()   // pro3  //tuka programata se bawi nay-mnogo
       do while .t.   // N A C H A L O  N A   GLAVNO MENU  !!!!!!!!!
          tt0='00' ; b00=0 ; sek0=0 ; ekpr0=1  ; ver0=disc_1+'\save'
               norm0='OPF11P10L06'  ; sbit0='F11P17L06A65'
               store norm0 to prn0
         *   if file("&disc_1\zan\sent\general.ini")
         *      zanvi(zan0:='general')
         *   endif
         *   if file("&disc_1\zan\vkl\app.ini")
         *      zanvi(zan0:='vkl')
         *   endif

       set key 28 to help ; set key  9 to ddok1
       set key -5 to razrjd   && p4 / s3
       set key -4  to ustro ; set key -7 to datsme   && s8 /
       set key -8  to firm  ; set key -29  to mesexx && s8/s8
       set key -20 to ascii                          && Ctrl+F1
       set key -24 to prikzkpo                       && Ctrl+F5  pro5
       set key -31 to budj
       set key -33 to ddok                           && Alt+F4  s0000 vkl
       set key -34 to ddok                           && Alt+F5  s0000 izkl
       set key -35 to ddok                           && Alt+F6  prn0
       set key 274 to dlme ; set key 279 to ddspro   && Alt+e /cyr/- /- Alt+I /lat/
       set key 280 to ddok                           &&  Alt+) /lat/
       set key 303 to versia                         &&  Alt+v /lat/  pro6
  *    @  0, 0 clea to 24,80
       store subs(us_0,1,1) to us0,us1

      if dirchange("\disc\god&dt0\zkpo&go") !=0   
 ! cmd /c 'if not exist \disc\nul md \DISC'   > aaa.txt
 ! cmd /c 'if not exist \disc\god&dt0\nul md \DISC\GOD&dt0'      > aaa.txt
 ! cmd /c 'if not exist \disc\arhi\nul md \DISC\ARHI'         > aaa.txt
 ! cmd /c 'if not exist \disc\arhi\arh\nul md \DISC\ARHI\ARH'    > aaa.txt
 ! cmd /c 'if not exist \disc\arhi\arhi\nul md \DISC\ARHI\ARHI'    > aaa.txt
 ! cmd /c 'if not exist \disc\comp\nul md \DISC\COMP' > aaa.txt
 ! cmd /c 'if not exist \disc\god&dt0\gfo\nul md \DISC\GOD&dt0\GFO'  > aaa.txt
 ! cmd /c 'if not exist \disc\god&dt0\dds\nul md \DISC\GOD&dt0\DDS'  > aaa.txt
 ! cmd /c 'if not exist \disc\god&dt0\zkpo\nul md \DISC\GOD&dt0\ZKPO' > aaa.txt
 ! cmd /c 'if not exist \disc\god&dt0\zkpo\&go0\nul md \DISC\GOD&dt0\ZKPO\&go0'
 ! cmd /c 'if not exist \disc\sync\nul md \DISC\SYNC' > aaa.txt
 ! cmd /c 'if not exist \disc\sync\doc\nul md \DISC\SYNC\DOC' > aaa.txt
      inkey(0.5) ; set cursor on ; eras aaa.txt ; endif


    *   endif  && // endin exist arhi.dbf



      dr0=subs(us_0,1,7) ; dirchange("&dr0")
     if (.not. file("arhi.dbf")).and.file("a")
       @  23,15 say 'åÆ´ø ∞†ß†∞µ®¢®∞†©≤• ∞†°Æ≤≠®≤• ¥†©´Æ¢• ± ¨•≠æ 8/8 !'
                 inkey(5)
       @  23,15 say space(50)
     endif
       ramka()
       set wrap on ; readinsert(.F.) //    ; set cursor off

         @ 23,77  say '.'  //kkk

        @  2,24 say '  É ã Ä Ç H é           å Ö H û  '
             if sc9='§'
              set cent on
              date0=ctod(subs(dtoc(date()),1,8)+subs(us_0,6,2))
              set cent off ; set cons off   //  ; set cursor off
       @  4,26 prompt '1. Ç∫¢•¶§†≠• ≠† ≠†∑†´≠® ±†´§† '
       @  6,26 prompt '2. ë∑•≤Æ¢Æ§≠® ÆØ•∞†∂®®'
       @  8,26 prompt '3. É´†¢≠† ™≠®£†'
       @ 10,26 prompt '4. é°Æ∞Æ≤≠† ¢•§Æ¨Æ±≤ ® Ñ≠•¢≠®∂®'
       @ 12,26 prompt '5. ëØ∞†¢™®'
       @ 14,26 prompt '6. KÆ∞•™∂®® '
       @ 18,26 prompt '8. Ä∞µ®¢®∞†≠• ® ¢∫ß±≤†≠Æ¢ø¢†≠•'
             else
       @  4,26 prompt '1. Ç∫¢•¶§†≠• ≠† ≠†∑†´≠® ±†´§† '
       @  6,26 prompt '2. ë∑•≤Æ¢Æ§≠® ÆØ•∞†∂®®'
       @  8,26 prompt '3. É´†¢≠† ™≠®£†'
       @ 10,26 prompt '4. é°Æ∞Æ≤≠† ¢•§Æ¨Æ±≤ ® Ñ≠•¢≠®∂®'
       @ 12,26 prompt '5. ëØ∞†¢™®'
       @ 14,26 prompt '6. KÆ∞•™∂®® '
       @ 16,26 prompt '7. àß≤∞®¢†≠•'
       @ 18,26 prompt '8. Ä∞µ®¢®∞†≠• ® ¢∫ß±≤†≠Æ¢ø¢†≠•'
             endif

       @ 20,26 prompt '9. àßµÆ§ Æ≤ Ø∞Æ£∞†¨†≤†'
       @ 23+ml0,15 say 'àß°Æ∞ ≠† ¨•≠æ ±≤∞•´™† '+chr(25)+' '+chr(24)+' ®´® ≠•£Æ¢®ø ØÆ∞•§•≠ ≠Æ¨•∞'
                     if file("_bbb.txt")
                       save screen
                       @ 10,25,12,57 box ram1 ; @ 11,26 clea to 11,56
                       @ 11+ml0,27 say 'ÇHàåÄHàÖ!'  color 'R+/B'
                       @ 11+ml0,38 say 'CapsLock e ¢™´æ∑•≠'
                       inkey(4) ; @ 10,25 clea to 12,57 ; eras _bbb.txt
                       restore screen
                     endif

          if subs(pake,1,1)=' '.or.subs(pake,2,1)=' '.or. subs(pake,3,1)=' '.or. subs(pake,4,1)=' '
             save screen
             @ 10,15,14,63 box ram1 ; @ 11,16 clea to 13,62
             @ 11+ml0,37 say 'ÇHàåÄHàÖ!'  color 'R+/B'
             @ 12+ml0,16 say 'H•§ÆØ≥±≤®¨Æ • ∞†°Æ≤≠Æ≤ ¨ø±≤Æ §† ≠• • ÆØ∞•§•´•≠Æ'
             @ 13+ml0,16 say '      ¨Æ´ø ®ßØ∫´≠•≤• F7 ¢ £´†¢≠Æ ¨•≠æ!'
             inkey(9) ; @ 10,25 clea to 12,57
             restore screen
        endif
	 menu to v1
         @ 23,77  say ' '  //kkk
         set cursor on
         if sc9='§'
             do case ; case v1=7 ; v1=8 ; case v1=8 ; v1=9 ; endcase
         endif
       save screen to ekr0
    *  set key 28  to
       set key  9  to ; set key -3  to ; set key -4  to ; set key -5  to
       set key -6  to ; set key -7  to ; set key -8  to ; set key -29 to
       set key -20 to ; set key -20 to ; set key -31 to ; set key 182 to
       set key 274 to ; set key 280 to ; set key 279 to ; set key -47 to
      if  (v1=1.or.v1=2.or.v1=3.or.v1=4.or.v1=0.or.v1=6.or.v1=7)
        if .not. file('arhi.dbf')
          @  23,15 say  ' åÆ´ø ∞†ß†∞µ®¢®∞†©≤• ∞†°Æ≤≠®≤• ¥†©´Æ¢• ± ¨•≠æ 8/8 !'
              inkey(10)
          @  23,15 say space(50)
           loop
        else

          if (.not.file ("&us_0\nari.ntx")).or.(.not.file ("&us_0\parpi.ntx")).or.(.not.file("&us_0\vidi.ntx")).or.(.not.file ("&in_0\dni.ntx"))
                podr_0=1
                save all like podr_0 to podred
                podred()
          endif
        endif
     endif

	do case
	   case v1=9
              copy file us_0.mem to &disc_1\save\us_0.mem
	 restore screen from ekr1
        if sc9='§'
             open_unpr(loc0:=41) ; set cent on
             locate for nom='†§¨'.and.admi=admi00.and.dateb=date()
             if found()
                rec_lock() ; repl daten with date(), timen with time() ; inkey(2) ; rec_unlock()
                set cent off
             endif
        endif

       close all ; clea all ; exit
  	   case v1=1 ; sav1()
	   case v1=2
       ***** á Ä ô à í Ä ******
          *        set cent on
          *        if year(date())=2003.and.11<mont(date()).and.11<day(date())
          *          if file(" \dos\fand.com")
          *             eras \dos\fand.com
          *          endif
          *          if file(" \windows\fand.com")
          *             eras \windows\fand.com
          *          endif
          *           open_arhi(loc0:=71)
          *           set order to 0
          *           rec_lock()
          *           repl papk with '™'
          *           rec_unlock()
          *        endif
          *        set cent off

		sav2()
	   case v1=3 ; sav3()
	   case v1=4 ; sav4()
	   case v1=5 ; sav5()
	   case v1=6 ; sav6()
	   case v1=7
                 if sc9='§'.and.dn1='147164000 ' ; else ; sav7() ; endif
	   case v1=8

                   l4='n' ; store subs(us_0,1,1) to us0 ; tt0='80'
                   for i = 65 to 90
                        us0=lower(chr(i))
                     ! cmd /c if exist &us0:\_FLASH (echo EXISTFOLDER) ELSE (echo NOTFOLDER) > aaa.txt
                     ssss=subs(memoline(memoread("aaa.txt"),60,1),1,11)
                   
                        if ssss="EXISTFOLDER" ; exit ; else ; us0='c' ; endif
                   next
                   
		      go1='  '
                      save screen
                             if sc9='§'
		      @  8,25,18,57 box ram1 ; @  9,26 clea to 17,56
		      @  9,28 say 'ÄêïàÇàêÄHÖ ® ÇöáëíÄHéÇüÇÄHÖ'
                      @ 10,27 say '-----------------------------'
		      @ 12,32 prompt '1. Ä∞µ®¢®∞†≠• ± ZIP'
		      @ 14,32 prompt '2. Ç∫ß±≤†≠Æ¢. ± ZIP '
		      @ 16,32 prompt '3. Ä™≤≥†´®ß†∂®ø     '
                             else
		      @ 6,25,18,57 box ram1 ; @ 7,26 clea to 17,56
		      @  7,28 say 'ÄêïàÇàêÄHÖ ® ÇöáëíÄHéÇüÇÄHÖ'
		      @  9,30 prompt '1. Ä∞µ®¢®∞†≠• ± ZIP'
		      @ 10,30 prompt '2. Ç∫ß±≤†≠Æ¢. ± ZIP'
		      @ 11,30 prompt '3. Ä∞µ®¢®∞†≠• ± COPY'
		      @ 12,30 prompt '4. Ç∫ß±≤†≠Æ¢. ± COPY'
		      @ 13,30 prompt '5. Ä™≤≥†´®ß†∂®ø     '
		      @ 14,30 prompt '6. Ñ†≤® ≠† †∞µ®¢®   '
		      @ 15,30 prompt '7. é°π †∞µ®¢        '
		      @ 16,30 prompt '8. Ç∫ß±.Æ≤ é°π †∞µ®¢'
                             endif
			  menu to v2
              if sc9='§' .and. v2=3 ;  v2=5 ; endif
                      if v2=2.or.v2=4
                               l0='≠'
                               @ 23+ml0,15 clea to 23,65
                               @ 23+ml0,16 say 'ÇHàåÄHàÖ !'  color 'R+/B'
                               @ 23+ml0,28 say 'èÆ≤¢∫∞¶§†¢†≤• ´® ¢∫ß±≤†≠Æ¢. §/≠ ?' get l0  valid  l0='§'.or.l0='≠'.or.l0='d'.or.l0='n'
                               chet()
                               @ 23+ml0,16 say space(50)
                              if l0='≠' .or.l0='n' ; loop ; endif
                      endif
      if lastkey()=27 ; store subs(us_0,1,1) to us0 ;  loop ; endif
		      if lastkey()=27 ; loop ; endif
		         *  @ 7,26 clea to 17,56
                            @ 2, 3 clea to 21,75


               do case
                  case v2=1 ; @ 2,32 say '1. Ä∞µ®¢®∞†≠• ± ZIP'
                  case v2=2 ; @ 2,22 say '2. Ç∫ß±≤†≠Æ¢. ± ZIP'
                  case v2=3 ; @ 7,32 say '3. Ä∞µ®¢®∞†≠• ± COPY'
                  case v2=4 ; @ 7,32 say '4. Ç∫ß±≤†≠Æ¢. ± COPY'
                  case v2=5 .and. sc9='≠'; @ 2,32 say '5. Ä™≤≥†´®ß†∂®ø'
                  case v2=5 .and. sc9='§'; @ 2,32 say '3. Ä™≤≥†´®ß†∂®ø'
                  case v2=7 ; @ 7,32 say '7. é°π †∞µ®¢        '
                  case v2=8 ; @ 7,32 say '8. Ç∫ß±.Æ≤ é°π †∞µ®¢'
               endcase


********************************nachalo
				    if  v2=3  // ARHIV-01
                                       if v2=3 ; us0=' '  ; endif
                   @ 10,28 say 'é≤ ≥-±≤¢Æ:    ≠† ≥-±≤¢Æ:'
                   @ 10,39 get us1 valid (64 < ASC(us1).and.;
                   (ASC(us1) < 91)).or.(96 < ASC(us1).and.(ASC(us1) < 123))
                   @ 10,53  get us0 valid (64 < ASC(us0).and.;
                   (ASC(us0) < 91)).or.(96 < ASC(us0).and.(ASC(us0) < 123))
                   chet()
                                      save screen
                                    endif                // ARHIV-01

 				    if  v2=4   //  VAZST-01
                                       if v2=4  ; us0=' ' ; endif
      @ 10,33 say 'é≤ ≥±≤∞Æ©±≤¢Æ :' get us0 valid (64 < ASC(us0).and.(ASC(us0) < 91));
     .or.(96 < ASC(us0).and.(ASC(us0) < 123))
       chet()
                                    endif       //  VAZST-01
                             if  v2=7.or.v2=8     // PAKET-01
				if v2=8
                                   if v2=4 ; us0=' ' ; endif
                     store pake to pake0
                     restore screen
                     @ 6,20,18,59 box ram1 ; @ 7,21 clea to 17,58
                     @ 7,21 say 'Ç∫¢•§•≤ Ø†™•≤† ß† ¢∫ß±≤†≠Æ°ø¢†≠•:' get pake0 valid (64 < ASC(pake0).and.(ASC(pake0) < 91))
                     read
			      if lastkey()=27  ;  loop  ; endif
                     @  9,22 say upper('&us0:\disc\arhi\arhi ; ')+diskname()+upper(':&disc_0\arhi\arhi')
                     @ 10,22 say upper('d:\sync\arhi\&pake0; d:\sync\arhi_1')
                     @ 11,21 say repl(chr(205),38)
                     @ 16,21 say repl('Õ',38)
                     @ 17,21 say 'ë≤∞•´™† <- -> ØÆ™†ß¢† §†≤†≤† ≠† †∞µ®¢†'
                             p0=0
                              us_1=us0+':\disc\arhi\arhi\'+pake0+'_&dt0'+'.zip'
                              if file('&us_1') ; p0=p0+1 ; endif
                              us_1=diskname()+':&disc_0\arhi\arhi\'+pake0+'_&dt0'+'.zip'
                              if file('&us_1') ; p0=p0+1 ; else ; endif
                              us_1='d:\sync\arhi\&pake0\'+pake0+'_&dt0'+'.zip'
                              if file('&us_1')
                                p0=p0+1
                               endif
                              us_1='d:\sync\arhi_1\'+pake0+'_&dt0'+'.zip'
                              if file('&us_1')
                                p0=p0+1
                               endif
                   q0=0
                   declare izb[p0]
                            us_1=us0+':\disc\arhi\arhi\'+pake0+'_&dt0'+'.zip'
                      if file('&us_1')
                         q0=q0+1
                          izb[q0]=upper('&us_1')
                      endif
                            us_1=diskname()+':&disc_0\arhi\arhi\'+pake0+'_&dt0'+'.zip'
                      if file('&us_1')
                         q0=q0+1
                         izb[q0]=upper('&us_1')
                      endif
                            us_1='d:\sync\arhi\&pake0\'+pake0+'_&dt0'+'.zip'
                      if file('&us_1')
                         q0=q0+1
                         izb[q0]=upper('&us_1')
                      endif
                            us_1='d:\sync\arhi_1\'+pake0+'_&dt0'+'.zip'
                      if file('&us_1')
                         q0=q0+1
                         izb[q0]=upper('&us_1')
                      endif
           if q0=0
              @ 17,23 say 'Hø¨†≤• †∞µ®¢ ≠† ≤Æ¢† ∞†°Æ≤≠Æ ¨ø±≤Æ!'
              inkey(7)
              loop    &&   return
           endif

           do while .t.
              iz0 := ACHOICE( 12, 27, 15, 55, izb,,,iz0,)
                    do case
                       case row()=12
                           iz0=1
                       case row()=13
                           iz0=2
                       case row()=14
                           iz0=3
                       case row()=15
                           iz0=4
                    endcase
                  if  lastkey()=4 .or. lastkey()=19
                       if subs(izb[iz0],9,6)='ARHI_1'
                         ver0=subs(izb[iz0],1,15)
                         ver1=subs(izb[iz0],16,11)
                       else
                         ver0=subs(izb[iz0],1,18)
                         ver1=subs(izb[iz0],19,11)
                        endif
                        @ 17,21 say space(38)
                         versia()  // pro6
                       loop
                  endif
                    if lastkey()=27 .or. lastkey()=13 ; exit ; endif
           enddo
			      if  lastkey()=27
                                  us_1=space(8)
 				  loop  && return
 			      endif
                         us_1=izb[iz0]+'  '
                         @ 17,21 say 'àß°Æ∞' get us_1

           endif //  v2=8
			 	chet()
                             endif              // PAKET-01
			      if  lastkey()=27
                                  us_1=space(8)
 				  loop  && return
 			      endif

		       if (v2=1.or.v2=2) ; l5='x' ; dire()
                           if  lastkey()=27 ; loop ; endif
		           @ 12,26,14,55 box ram1 ; @ 13,27 clea to 13,54
		       endif
                                  clos all
		    do case
		       case v2=1

       restore screen from ekr0  ; @ 12,21,14,59 box ram1 ; @ 13,22 clea to 13,58

       @ 13,24 say 'Ä∞µ®¢ ≠† - '+upper('&us0'+':\DISC\ARHI\ARH\'+rtrim('&dr0'))
                           dr0=subs(trim(dr0),1,4)+'.zip'
                           dr1=diskname()+':\'+subs(dr0,1,4)+'\'
                           dr2=chr(13)+chr(10)
                           ssss= diskname()+':&disc_1\save\save.lst'
         dele file &ssss
           memowrit(diskname()+":&disc_1\save\save.lst",+dr1+'sc*.'+dr2+dr1+'arhi.dbf'+dr2;
        +dr1+'bank.dbf'+dr2+dr1+'cal1.dbf'+dr2+dr1+'dds.dbf'+dr2+dr1+'dobo.dbf'+dr2;
        +dr1+'dpar.dbf'+dr2+dr1+'kobo.dbf'+dr2+dr1+'kobp.dbf'+dr2+dr1+'kpap.dbf'+dr2;
        +dr1+'kpar.dbf'+dr2+dr1+'obap.dbf'+dr2+dr1+'obve.dbf'+dr2+dr1+'prot.dbf'+dr2;
        +dr1+'tehno.dbf'+dr2+dr1+'zame.dbf'+dr2+dr1+'unpr.dbf'+dr2+dr1+'bank.mem'+dr2+dr1+'date.mem'+dr2;
        +dr1+'ddse.mem'+dr2+dr1+'harsmet.mem'+dr2+dr1+'razrjd.mem'+dr2+dr1+'dannom.mem'+dr2)

    iif(file("&us0:\disc\arhi\arh\&dr0"),"! del &us0:\disc\arhi\arh\&dr0",'NO')
         inkey(2)
       ! &disc_1\pk\pkzip &us0:\disc\arhi\arh\&dr0 -3 @&disc_1\save\save.lst > aaa.txt
         inkey(2)
    iif(file("\disc\arhi\arh\&dr0"),"! del \disc\arhi\arh\&dr0",'NO')
         inkey(2)
       ! &disc_1\pk\pkzip \disc\arhi\arh\&dr0 -3 @&disc_1\save\save.lst  > aaa.txt
         inkey(2)
         eras aaa.txt

		       case v2=2
  *   provdisk()
  *   if file("greshka")
  *      loop
  *   endif
       restore screen from ekr0
       @ 12,21,14,59 box ram1
       @ 13,22 clea to 13,58
       @ 13,22 say 'Ç∫ß±≤†≠Æ¢. Æ≤ - '+upper('&us0'+':\DISC\ARHI\ARH\'+rtrim('&dr0'))
   ! &disc_1\pk\pkunzip -o  &us0:\disc\arhi\arh\&dr0   > aaa.txt
         inkey(2)
     eras aaa.txt
                              podr_0=1
                              save all like podr_0 to podred
			      podred()
		       case v2=3
                             if diskname()=upper(us0)
                                @ 23+ml0,15 say space(51)
                                @ 23+ml0,16 say 'ÇHàåÄHàÖ !' color 'R+/B'
                                @ 23+ml0,27 say '≠• ¨Æ¶•≤• §† †∞µ®¢®∞†≤• ¢ ±∫πÆ≤Æ ≥-¢Æ !'
                                inkey(2)
                                loop
                             endif
			  store go0 to go1
			  dr0=trim(dr0)
			  store dr0 to dr2
                              if len(dr0)=4
                                  @ 13,28 say 'èêéÉêÄåÄíÄ ÄêïàÇàêÄ - '+upper('&go1')+'&dt0'
                              else
                                  @ 13,28 say 'èêéÉêÄåÄíÄ ÄêïàÇàêÄ - '+substr(dr2,6,4)
                              endif
		       copy file \&dr0\dobo.dbf to &us0:\&dr2\dobo.dbf
		       copy file \&dr0\kobo.dbf to &us0:\&dr2\kobo.dbf
		       copy file \&dr0\dpar.dbf to &us0:\&dr2\dpar.dbf
		       copy file \&dr0\kpar.dbf to &us0:\&dr2\kpar.dbf
		       copy file \&dr0\obve.dbf to &us0:\&dr2\obve.dbf
		       copy file \&dr0\obap.dbf to &us0:\&dr2\obap.dbf
		       copy file \&dr0\arhi.dbf to &us0:\&dr2\arhi.dbf
		       copy file \&dr0\kobp.dbf to &us0:\&dr2\kobp.dbf
		       copy file \&dr0\kpap.dbf to &us0:\&dr2\kpap.dbf
		       copy file \&dr0\dds.dbf to &us0:\&dr2\dds.dbf
			 if file (" \&dr0\edanni.dbf")
		       copy file \&dr0\edanni.dbf to &us0:\&dr2\edanni.dbf
                         endif
			 if file (" \&dr0\bank.dbf")
		       copy file \&dr0\bank.dbf to &us0:\&dr2\bank.dbf
                         endif
		       copy file \&dr0\dannom.mem to &us0:\&dr2\dannom.mem
			 if file (" \&dr0\tehno.dbf")
		       copy file \&dr0\tehno.dbf to &us0:\&dr2\tehno.dbf
			 endif
			 if file (" \&dr0\zame.dbf")
		       copy file \&dr0\zame.dbf to &us0:\&dr2\zame.dbf
			 endif
			 if file (" \&dr0\unpr.dbf")
		       copy file \&dr0\unpr.dbf to &us0:\&dr2\unpr.dbf
			 endif

                         dr0=trim(dr0)
                         store upper('&us0:\&dr0\') to us_0
                         save all like us_0 to us_0
                         podr_0=1
                         save all like podr_0 to podred
                         do podred
                         us_0=diskname()+':\'+curdir()+'\'
                         save all like us_0 to us_0
		       case v2=4
                             if diskname()=upper(us0)
                                @ 23+ml0,15 say space(51)
                                @ 23+ml0,16 say 'ÇHàåÄHàÖ !' color 'R+/B'
                                @ 23+ml0,27 say '≠• ¨Æ¶•≤• §† ¢∫ß±≤Æ≠Æ¢. Æ≤ ±∫πÆ≤Æ ≥-¢Æ!'
                                inkey(2)
                                loop
                             endif
			  store go0 to go1
			  dr0=trim(dr0)
			  store dr0 to dr2
                               if len(dr0)=4
                                   @ 13,27 say 'èêéÉêÄåÄíÄ ÇöáëíÄHéÇüÇÄ-'+upper('&go1')+'&dt0'
                               else
                                   @ 13,27 say 'èêéÉêÄåÄíÄ ÇöáëíÄHéÇüÇÄ-'+substr(dr2,6,4)
                               endif
		       copy file &us0:\&dr2\dobo.dbf to \&dr0\dobo.dbf
		       copy file &us0:\&dr2\kobo.dbf to \&dr0\kobo.dbf
		       copy file &us0:\&dr2\dpar.dbf to \&dr0\dpar.dbf
		       copy file &us0:\&dr2\kpar.dbf to \&dr0\kpar.dbf
		       copy file &us0:\&dr2\obve.dbf to \&dr0\obve.dbf
		       copy file &us0:\&dr2\obap.dbf to \&dr0\obap.dbf
		       copy file &us0:\&dr2\arhi.dbf to \&dr0\arhi.dbf
		       copy file &us0:\&dr2\kobp.dbf to \&dr0\kobp.dbf
		       copy file &us0:\&dr2\kpap.dbf to \&dr0\kpap.dbf
		       copy file &us0:\&dr2\dds.dbf to \&dr0\dds.dbf
		       copy file &us0:\&dr2\dannom.mem to \&dr0\dannom.mem
			   if file ("&us0:\&dr0\belez.mem")
		       copy file &us0:\&dr2\belez.mem to \&dr0\belez.mem
			    endif
			   if file ("&us0:\&dr0\tehno.dbf")
		       copy file &us0:\&dr2\tehno.dbf to \&dr0\tehno.dbf
			    endif
			   if file ("&us0:\&dr0\zame.dbf")
		       copy file &us0:\&dr2\zame.dbf to \&dr0\zame.dbf
			    endif
			   if file ("&us0:\&dr0\unpr.dbf")
		       copy file &us0:\&dr2\unpr.dbf to \&dr0\unpr.dbf
			    endif
			   *  @  0, 0 clea to 24,80
                              podr_0=1
                              save all like podr_0 to podred
			      podred()
                       case v2=5
  *********************** ÄKíìÄãàáÄñàü éí ÑàëèÖóÖê **********************
    **  s000 s100 HÄ ÑàëèÖóÖêëKàü Kéåèûíöê
    **  s000  HÄ åÄÉÄáàHëKàü Kéåèûíöê

           sc6=1
           if go0='M0'  &&  ÆØ•∞†≤Æ∞
                  ll11='§'
                  br0=1
                  dr1=go0+dt0
         *      @11,21,13,59 box ram1
         *      @ 12,22 say '     èêéÉêÄåÄíÄ èêàïÇöêãü èêéÑÄÜÅà  '
         *     do while br0 < 30  &&  íÖÉãà èêéÑÄÜÅà
         *        store subs(go0,1,1)+ltrim(str(br0,2))+dt0 to dr0
         *        dr2='&dr0\&dr0'+'.zip'
         *        if file ("a:\&dr0\a")
         *           exit
         *        endif
         *        br0=br0+1
         *     enddo
         *
         *    if file ("a:\&dr2")
         *        save screen
         *     *  @  0, 0 clea to 24,80
         *        ! cd c:\s000
         *        ! &disc_1\pk\pkunzip -o  a:\&dr2
         *        restore screen
         *        us_0='c:\s000\'
         *        podr_0=1
         *        save all like podr_0 to podred
         *        podred()
         *        @11,21,13,59 box ram1
         *        @ 12,22 say '    èêéÉêÄåÄíÄ èêÖïÇöêãü èêéÑÄÜÅà  '
         *        dr0=go0+dt0
         *        ! cd c:\&dr1
         *        us_0='c:\&dr0\'
         *        us_1='c:\s000\'
         *        nom2=3001
         *        nom3=9901
         *        @ 23+ml0,15 say space(51)
         *        oper()
         *        clos all
         *    endif
                  @12,21,14,59 box ram1
                  @ 13,22 say '   èêéÉêÄåÄíÄ èêàïÇöêãü áÄÑöãÜÖHàÖ  '
                  ! cd c:\s000
                  dr2='s000\s000.zip'
             *    save screen
                  @  0, 0 clea to 24,80
                  ! &disc_1\pk\pkunzip -o c:\&dr2
                  restore screen
                  podr_0=1
                  save all like podr_0 to podred
                  podred()
                  @ 12,21,14,59 box ram1
                  @ 13,22 say '   èêéÉêÄåÄíÄ èêàïÇöêãü áÄÑöãÜÖHàÖ  '
                  ! cd c:\s000
                  us_0='c:\s000\'
                  us_1='c:\&dr1\'
                  nom2=1
                  nom3=3500
                  @ 23+ml0,15 say space(51)
                  oper()
                  clos all
                  sc9='≠'
                  aktual()
                  clos all
                  copy file &us_1\prot.dbf to &us_0\prot.dbf
                  @  0, 0 clea to 24,80
                  if .not.file("a:\s000\a")
                     !md a:\s000
                     k0=fcreate("a:\s000\a")
                     fclose(k0)
                  endif
                  if file("a:\s000\s000.zip")
                     eras a:\s000\s000.zip
                  endif
                ssss= memoread("&disc_1\save\save.lst")
                l0=mlcount(memoread("&disc_1\save\save.lst"),25)
                dele file &disc_1\save\save.lst
                for i=1 to l0
           memowrit("&disc_1\save\save.lst",memoread('&disc_1\save\save.lst');
           +'c:\s000\'+subs(memoline(ssss,40,i),9,15)+chr(13)+chr(10))
                next
                 !  &disc_1\pk\pkzip c:\s000\s000.zip -3 @&disc_1\save\save.lst
                 !  &disc_1\pk\pkzip a:\s000\s000.zip -3 @&disc_1\save\save.lst
                  us0='a:'
                  dr0='s000'
                  provdisk()
                  us0='c:'
                  ! cd c:\&dr1
                  ll11='≠'
                  loop
           endif
  ************************* ÄKíìÄãàáÄñàü áÄ åÄÉÄáàHà **************

	 if subs(go0,1,1)='m'.and.0 < val(subs(go0,2,1))
              _LOC5 := "&us0:\"+'_FLASH\a'
           if file ("&us0:\"+'saveT.exe')
              copy file &us0:\saveT.exe to &disc_1\save\saveT.exe
           endif
            us0='a'   &&  za flashka da se spre
                    ll11='§'
                    br0=1
                 dr0=go0+dt0
             *   restore screen
                 @ 12,21,14,59 box ram1
                 @ 13,22 say '   èêéÉêÄåÄíÄ èêàïÇöêãü áÄÑöãÜÖHàÖ  '

            if file ("&us0:\"+"s000\s000.zip") &&  Ø∞•µ¢∫∞´ø ß†§∫´¶•≠®ø Æ≤ §®±Ø•∑•∞
               ! cd c:\s000
               save screen
	 	@  0, 0 clea to 24,80
	 	! &disc_1\pk\pkunzip -o &us0:\s000\s000.zip
	   	restore screen
               us_0='c:\s000\'
               podr_0=1
               save all like podr_0 to podred
	       podred()
               @ 12,21,14,59 box ram1
               @ 13,22 say '   èêéÉêÄåÄíÄ èêàïÇöêãü áÄÑöãÜÖHàÖ  '
	       ! cd c:\&dr0
               us_0='c:\&dr0\'
               us_1='c:\s000\'
       	       nom2=1
	       nom3=3500
               oper()
               l5='§'
               clos all
               copy file &us_1\prot.dbf to &us_0\prot.dbf
               podr_0=13
               save all like podr_0 to podred
	       podred()
               clos all
               aktual()
               analobo()
               clos all
               clos all
            endif
       *         if .not.file("&us0:\&dr0\*.*")  && towa se puska samo pri flashka ne disketa
       *            !md &us0:\&dr0
       *            k0=fcreate("&us0:\&dr0\a")
       *            fclose(k0)
       *         endif
       *        @ 12,21,14,59 box ram1
       *        @ 13,22 say '     èêéÉêÄåÄíÄ èêàïÇöêãü èêéÑÄÜÅà  '
       *        dr2='&dr0\&dr0'+'.zip'
       *        us_0='c:\s000\'
       *        us_1='c:\&dr0\'
       *        ! cd c:\s000
       *         @  0, 0 clea to 24,80
       *         ! &disc_1\pk\pkunzip -o  c:\s000\&dr0
       *         restore screen
       *         podr_0=1
       *         save all like podr_0 to podred
       *         podred()
       *       @ 12,21,14,59 box ram1
       *       @ 13,22 say '     èêéÉêÄåÄíÄ èêàïÇöêãü èêéÑÄÜÅà  '
       *       nom2=3001
       *       nom3=9999
       *       @ 23+ml0,15 say space(51)
       *       oper()
       *        clos all
       *        @  0, 0 clea to 24,80
       *    **  áÄ îãÄòKÄ ÑÄ ëÖ èìëHÖ
       *    *   !  &disc_1\pk\pkzip  a:\&dr0\&dr0 -3 @&disc_1\save\save.lst
       *         provdisk()
                ! cd c:\&dr0
                ll11='≠'
         endif
  *********************KêÄâ HÄ ÄKíìÄãàáÄñàü áÄ åÄÉÄáàHà **************
                       case v2=6
                       do ramka
                       ! &disc_1\job\arhi.exe
                       case v2=7  &&   yyyyyyyyyyyyyyyyyyyyyyyyyy
                        restore screen
                       @ 12,24,14,58 box ram1
                       @ 13,25 clea to 13,57
                         open_info(loc0:=9)
                         set filter to  0 < val(no)
                         go top
                         sort on no to infs
                         use infs
                         do while .not. eof()
                            dr0=go+dt0+'.zip'
                            dr1=diskname()+':\'+go+dt0+'\'
                            dr2=chr(13)+chr(10)
                     if file("&us1:\"+subs(dr0,1,4)+"\arhi.dbf")
           @ 13,25 say space(33)
           @ 13,25 say '  è∞Æ£∞†¨†≤† †∞µ®¢®∞†   '+ upper('&dr0')
           @ 23,15 say '    è∞Æ£∞†¨†≤† Ø∞†¢® †∞µ®¢ ≠† D:\Sync\ARHI\KOSI    '
           eras &disc_1\save\save.lst  ; inkey(1)
        memowrit(diskname()+":&disc_1\save\save.lst",+dr1+'sc*.'+dr2+dr1+'arhi.dbf'+dr2;
        +dr1+'bank.dbf'+dr2+dr1+'cal1.dbf'+dr2+dr1+'dds.dbf'+dr2+dr1+'dobo.dbf'+dr2;
        +dr1+'dpar.dbf'+dr2+dr1+'kobo.dbf'+dr2+dr1+'kobp.dbf'+dr2+dr1+'kpap.dbf'+dr2;
        +dr1+'kpar.dbf'+dr2+dr1+'obap.dbf'+dr2+dr1+'obve.dbf'+dr2+dr1+'prot.dbf'+dr2;
        +dr1+'tehno.dbf'+dr2+dr1+'zame.dbf'+dr2+dr1+'unpr.dbf'+dr2+dr1+'bank.mem'+dr2+dr1+'date.mem'+dr2;
        +dr1+'ddse.mem'+dr2+dr1+'harsmet.mem'+dr2+dr1+'razrjd.mem'+dr2+dr1+'dannom.mem'+dr2)
        eras &disc_0\arhi\&dr0 ;  inkey(2)
        ! &disc_1\pk\pkzip &disc_0\arhi\&dr0 -3 @&disc_1\save\save.lst  > aaa.txt
        inkey(2)
                     else
           @ 13,25 say space(33)
           @ 13,25 say 'Hø¨† Æ≤¢Æ∞•≠† §®∞•™Æ∞®ø  ' + upper(dr0)
           inkey(2)
                     endif
                     if file("&us1:\"+subs(dr0,1,4)+"\spis.dbf")
        memowrit(diskname()+":&disc_1\fish\fish.lst",+dr1+'spis.dbf'+dr2+dr1+'mese.dbf'+dr2;
        +dr1+'godn.dbf'+dr2+dr1+'nome.dbf'+dr2+dr1+'harved.mem'+dr2+dr1+'fdate.mem'+dr2;
        +dr1+'namhar.mem'+dr2+dr1+'nulstoi.mem'+dr2+dr1+'rabodni.mem'+dr2+dr1+'inforuso.mem'+dr2;
        +dr1+'dannom.mem')
        @ 13,25 say space(33) ;  @ 13,25 say ' è∞Æ£∞†¨†≤† †∞µ®¢®∞†   '+ upper('f&dr0')
        inkey(2) ; !  &disc_1\pk\pkzip &disc_0\arhi\f&dr0 -3 @&disc_1\fish\fish.lst  > aaa.txt
        inkey(2)
                     endif
                           skip
                         enddo
        @ 13,25 say space(33)
        @ 13,25 say '  è∞Æ£∞†¨†≤† †∞µ®¢®∞†   '+ upper('&pake'+'_&dt0')
        eras &disc_1\job\arhiv.lst
        inkey(1)

           memowrit("&disc_1\job\arhiv.lst",;
            +'&disc_0\arhi\??'+dt0+'.zip'+chr(13)+chr(10);
            +'&disc_0\arhi\f??'+dt0+'.zip'+chr(13)+chr(10);
            +'&disc_1\job\bala.dbf'+chr(13)+chr(10);
            +'&disc_1\save\hlp.dbf'+chr(13)+chr(10);
            +'&disc_1\job\info.dbf'+chr(13)+chr(10);
            +'&disc_1\job\regl.dbf'+chr(13)+chr(10);
            +'&disc_1\fish\nome.dbf'+chr(13)+chr(10))

        erase '&disc_0'+'\arhi\arhi\'+'&pake'+'_&dt0'+'.zip'
        inkey(1) ; eras aaa.txt ;  inkey(1)

         x0='&disc_1\pk\pkzip  &disc_0\arhi\arhi\&pake'+'_&dt0'+' -3 @&disc_1\job\arhiv.lst'
         x1='&disc_0'+'\arhi\arhi\'+'&pake'+'_&dt0'+'.zip'
         ! &x0   > aaa.txt
           do while .t.
             if file ('&disc_0'+'\arhi\arhi\'+'&pake'+'_&dt0'+'.zip')
                  ! dir &x1  > aaa.txt
                    inkey(3)
                    x3=val(subs(memoline(memoread("&us_0\aaa.txt"),40,7),18,11))

                    @ 11,26 say 'ê†ß¨•∞ ≠† '+'&pake'+'_&dt0'+'.zip='+str(x3,9)
                *   ? x3
               if 0 < x3 .and. x3=val(subs(memoline(memoread("&us_0\aaa.txt"),40,7),18,11))
                 exit
               endif
             endif
                inkey(3)
                @ 11,26 say space(31)
           enddo
        @ 13,25 say 'è∞Æ£∞†¨†≤† †∞µ®¢®∞† '+upper('&pake'+'_&dt0')+' ≠† '+upper(us0)+':'
       if .not. upper(us0)=diskname()
             erase '&us0:\disc\arhi\arhi\&pake'+'_&dt0'+'.zip' ;  inkey(1)
          if dirchange("&us0:\DISC\arhi\arhi")=0
          *  !!!! dirchange -. chnge folder if driver the same !!!!
            copy file '&disc_0'+'\arhi\arhi\'+'&pake'+'_&dt0'+'.zip' to ;
                      '&us0:\disc\arhi\arhi\&pake'+'_&dt0'+'.zip'
             @ 23,15 say '   è∞Æ£∞†¨†≤† Ø∞†¢® †∞µ®¢ ≠† &us0:\DISC\ARHI\ARHI  ' ;  inkey(2)
         else 
             @ 23,15 say '     è∞Æ£∞†¨†≤†  ≠• ≠†¨®∞† &us0:\DISC\ARHI\ARHI    ' color 'R+/B' ; inkey(2)
         endif
       endif
         inkey(2)

        x0='&disc_0'+'\arhi\*.zip'
       ! del &x0   > aaa.txt
        inkey(2)
        eras aaa.txt
        inkey(1)

                       case v2=8

        restore screen from ekr0
        @ 12,19,14,61 box ram1
        @ 13,20 clea to 13,60

        dr0=subs(us_0,4,4)+'.zip'
           if iz0=1.or.iz0=2.or.iz0=3
       @ 13,21 say 'Ç∫ß±≤. Æ≤ '+subs(upper('&us_1'),1,17)+' -> '+dr0
          else
       @ 13,23 say 'Ç∫ß±≤. Æ≤ '+subs(upper('&us_1'),1,14)+' -> '+dr0
           endif
        eras &dr0

        ! &disc_1\pk\pkunzip -o &us_1 &dr0 > aaa.txt
        inkey(2)

        ! &disc_1\pk\pkunzip -o &dr0 > aaa.txt
        inkey(2)
        eras aaa.txt
        inkey(1)
        eras &dr0

        us_1=space(8)
        restore screen from ekr0
                            podr_0=1
                            save all like podr_0 to podred
                            podred()

               restore from date additive
           *   data0=substr(dtoc(date0),4,5)
               data0=substr(dtoc(date0),4,3)+subs(us_0,6,2)

		    endcase
   **************  KRAY  ARHIVIRAE / WYZSTANOVYAVANE  ******************
       endcase
       enddo

      ************** è∞Æ∂•§≥∞† ß† Ø†¨•≤≤†  *************
 		   proc pamet
	   save screen
	   @ 11,26,13,51 box ram1
	   @ 12,27 clea to 12, 50
	   @ 12,27 say 'ë¢Æ°Æ§≠† Ø†¨•≤ -> ' + str(memory(0),6)
				   inkey(0)
	   !mem /c |more
				   inkey(0)
	  restore screen
	  return

      ************** è∞Æ∂•§≥∞† ß† §†≤†≤†  *************
		   proc datsme
	   set key -7 to
	   save screen
	  @  9,20,13,59 box ram1
	  @ 10,21 clea to 12,58
	  set curs on
	  set century on
	  @ 11,22 say 'Ç∫¢•§•≤• ∞†°Æ≤≠†≤† §†≤† :' get date0  pict '99/99/9999'
	  chet()
	  set curs off
	  save all like date0 to date
      	  dt0=substr(dtoc(date0),9,2)
          data0=substr(dtoc(date0),4,3)+substr(dtoc(date0),9,2)
          vek0=substr(str(year(date0),6),3,4)
	  dte1=ctod('01'+substr(dtoc(date0),3,6))
	  dte2=ctod('30'+substr(dtoc(date0),3,6))
	  set century off
	  set key -7 to datsme
	  restore screen
          if sc9='§'.or. sc11='§'
             @ 0,72 say dtoc(date0)
          else
             @ 0,75 say subs(dtoc(date0),4,5)
          endif
	  return
     ***********************  á†π®≤† ******************
			 proc gast

     if file('&disc_1\exe\fand.com')  ; cance ; endif

    if file("&disc_1\exe\frame\kill\readdir.reg")
   memowrit('&disc_1\EXE\FRAME\KILL\01.reg','Windows Registry Editor Version 5.00'+chr(13)+chr(10)+;
   '[-HKEY_LOCAL_MACHINE\SOFTWARE\King]')

   ! start regedit.exe /S &disc_1\EXE\FRAME\KILL\01.reg

*     start regedit.exe /S yourfile.reg  &disc_1\EXE\FRAME\KILL\01.reg

   ! start regedit.exe /S &disc_1\EXE\FRAME\KILL\readdir.reg

   inkey(10)
    endif
 ? subs(memoread("s0001.prn"),161,11)
 ? 'K i n g _ A'

    if subs(memoread("s0001.prn"),159,11) ='K i n g _ A'
    endif

			return

      ************** è∞Æ∂•§≥∞† ß† ØÆ¨Æπ help   ************
		   proc help
	   save screen
	   set key 28 to
	   @ 19,0 say ' '
	   ramka()
	   @  2, 2 clea to 21+ml0, 78
	   @ 23+ml0, 2 say '                  ë´•§¢†π •™∞†≠ - PgUp    è∞•§®∏•≠ •™∞†≠ PgDu               '
	   @ 22,13 say repli(chr(205),59)
	    ff0 = select()
             open_hlp()
	    set filter to t=tt0
		go top
		declare fiel[1]
		fiel[1]='nam'
		declare imem[1]
		imem[1]='                              èéåéôÖH ÖKêÄH'
                 dbedit( 2, 2,21+ml0,78,fiel," ",'',imem,'=','')
	   restore screen
	   sele &ff0
	   set key 28 to help
	   return
       ************** ™†´™≥´†≤Æ∞  ********************
			  proc call1
			  ! &disc_1\cal1\cal1.exe
			  return
       ************** ™†´™≥´†≤Æ∞  ********************
			  proc calll
			  ! &disc_1\cal\cal.exe
			  return
      ************** è∞Æ∂•§≥∞† ß† Ø•∑†≤ ≠† ØÆ§Ø®± **********
		   proc podp
                  @  23,15 say space(51)
                  @  23,30 say 'ÑÆ™≥¨•≠≤∫≤ • ØÆ§Ø®±†≠'

          memowrit('s0001.prn',+memoread('s0001.prn')+chr(13)+chr(10)+;
          chr(13)+chr(10)+chr(13)+chr(10)+chr(13)+chr(10)+;
          chr(13)+chr(10)+chr(13)+chr(10)+chr(13)+chr(10)+chr(13)+chr(10)+;
          space(20)+'ë∫±≤†¢®≤•´:...............'+space(42)+'ê∫™Æ¢Æ§®≤•´:..............') && oborotna vedomos sint
                  inkey(2)
          @ 23+ml0,15 say 'àß°Æ∞ ≠† ¨•≠æ ±≤∞•´™† '+chr(25)+' '+chr(24)+' ®´® ≠•£Æ¢®ø ØÆ∞•§•≠ ≠Æ¨•∞'
		   return

       ******************   è∞Æ∂•§≥∞† ¢®™† ÑÑë Ø∞Æ£∞†¨† *******
			proc dnev
                     if file('&disc0\deklar.txt').and.file('&disc0\pokupki.txt').and.file('&disc0\prodagbi.txt')
                        copy file &disc0\deklar.txt to d:\deklar.txt
                        copy file &disc0\pokupki.txt to d:\pokupki.txt
                        copy file &disc0\prodagbi.txt to d:\prodagbi.txt
                        ! notepad.exe &disc0\deklar.txt
                        ! notepad.exe &disc0\pokupki.txt
                        ! notepad.exe &disc0\prodagbi.txt
                     else

                  @  23,15 say 'H• ±≤• ®ß∞†°.¥†©´Æ¢•≤• ®ßØ∫´≠•≤• ¨•≠æ 4/6/3 ® 4/6/4'
                       inkey(5)
          @ 23+ml0,15 say 'àß°Æ∞ ≠† ¨•≠æ ±≤∞•´™† '+chr(25)+' '+chr(24)+' ®´® ≠•£Æ¢®ø ØÆ∞•§•≠ ≠Æ¨•∞'
                     endif
			save screen
			@  0, 0 clea to 24,80
			restore screen
			return
       ******************   è∞Æ∂•§≥∞† ¢®™† DLMENU ************
			proc dlme
			save screen
			@  0, 0 clea to 24,80
			! &disc_1\djcp.exe
			restore screen
			return
      ************** è∞Æ∂•§≥∞† ß† ±¨ø≠† ≠† ¥®∞¨† ***************************8
			 proc firma
	       if .not. file("dannom.mem")
		  firm()
	       endif
              ***********   NACHALO MEM PROWERKI ******

           if file ("us_0.mem").and.(sc9='§'.or.sc10='§')
                restore from us_0 additive
           else
                us_0=diskname()+':\'+curdir()+'\'
                eras us_0.mem
                save all like us_0 to us_0
          endif
         if file ("ddse.mem")
            store 0 to d_s10,d_s11,d_s12
            restore from ddse additive
            d_s12=d_s10+d_s11
         else
            store 0 to d_s0,d_s10,d_s11,d_s12
            save all like d_s* to ddse
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

              if file ("&disc_1\job\cyr.mem")
                 restore from &disc_1\job\cyr additive
              else
                 cyr0=1
                 save all like cyr0 to &disc_1\job\cyr
              endif

                    if sc9='§'
                     * store date() to date0
                       date0=ctod(subs(dtoc(date()),1,8)+subs(us_0,6,2))

                       ramka()
                       if .not. file("&disc_1\job\admini.mem")
                         do admini
                       endif
       *                 do operat  && pro6
                    endif

         if file ("date.mem")
             if sc9='§' .or. sc11='§'
              * store date() to date0
               date0=ctod(subs(dtoc(date()),1,8)+subs(us_0,6,2))
               dt1= str(val(dt0)+1,2)
            if (subs(dtoc(date()),1,5)='28/12'.or.subs(dtoc(date()),1,5)='29/12' ;
            .or. subs(dtoc(date()),1,5)='30/12'.or.subs(dtoc(date()),1,5)='31/12') ;
            .and.(.not. file("&us0:\&go0&dt1\arhi.dbf"))
          @  9,17,12,66 box ram1 ; @ 11,18 clea to 11,65
          @ 10+ml0,23 say 'ÇHàåÄHàÖ !'  color 'R+/B'
          @ 10,34 say "åÆ´ø Æ≤™∞®©≤• ≠Æ¢†≤† £Æ§®≠†"
          @ 11,18 say "±´•§ ØÆ±´•§≠†≤† ±∑•≤Æ¢Æ§≠† ÆØ•∞†∂®ø ß† ≤•™≥π†≤†!" ; inkey(0) //ggg
            endif
                save all like date0 to date
                @ 0,72 say dtoc(date0)
             else
                restore from date additive
                @ 0,75 say substr(dtoc(date0),4,5)
             endif
          else
             *  store date() to date0
                date0=ctod(subs(dtoc(date()),1,8)+subs(us_0,6,2))
                save all like date0 to date
                @ 0,72 say dtoc(date0)
           *    store date() to date0
                date0=ctod(subs(dtoc(date()),1,8)+subs(us_0,6,2))
          endif
                data0=substr(dtoc(date0),4,3)+subs(us_0,6,2)  // sledvashtite 4-ri reda
           *    dt0=substr(dtoc(date0),7,2)   // da ne se vkarwat w proverkata
                dt0=subs(us_0,6,2)

                vek0=substr(str(year(date0),6),3,4)  // if file ("date.mem")
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
       if .not. file("arhi.dbf")
           return
      endif

   **********************   KRAY MEM PROWERKI ************************
                     if file("sc1")  ; sc1='§'  ; else ; sc1='≠'  ; endif
                     if file("sc2")  ; sc2='§'  ; else ; sc2='≠'  ; endif
                     if file("sc3")  ; sc3='§'  ; else ; sc3='≠'  ; endif
                     if file("sc4")  ; sc4='§'  ; else ; sc4='≠'  ; endif
                     if file("sc5")  ; sc5='§'  ; else ; sc5='≠'  ; endif
                     if file("sc6")  ; sc6='§'  ; else ; sc6='≠'  ; endif
                     if file("sc10") ; sc10='§' ; else ; sc10='≠' ; endif
                     if file("sc12") ; sc12='§' ; else ; sc12='≠' ; endif
                     if file("sc13") ; sc13='§' ; else ; sc13='≠' ; endif
                     if file("sc14") ; sc14='§' ; else ; sc14='≠' ; endif
                     if file("sc15") ; sc15='§' ; else ; sc15='≠' ; endif
                     if file("sc16") ; sc16='§' ; else ; sc16='≠' ; endif
		     restore from dannom additive
                     set exclu on

                     open_info(loc0:=9)
		     locate for dn+go=dngo0
                        if .not. found()
                           store  upper(subs(curdir(),1,2)) to go0
                           locate for upper(go)=go0
                        endif
                 sch00=subs(reg,1,3)  ; fir=fir
                 obek00=subs(fir,1,4) ; myas00=subs(fir,42,4)
                 dn1=dn ; no=no ;  klon0=klon ; reg=reg  ; adr=adr ; grad=grad
                 tel=tel ; egn=egn ; datk=datk ; nam=name ; obst=obst ; repu=repu
                 dlaz=dlaz ; buls=buls ; tdd=tdd ; idfu00=podr ; ll6=p 
                 bf00=bf ; dat1=dat1 ; dat2=dat2 ; lize=lize
                 unlock
                 rec_unlock()
                if d_s0 = 0 .and. p='•'
              @  9,19,13,61 box ram1
              @ 10,20 clea to 12+ml0,60
              @ 10,36 say 'ÇHàåÄHàÖ!' color 'R+/B'
              @ 11,20 say 'ÑÑë ±≤†¢™†≤† • ∞†¢≠† ≠† 0, ¨Æ´ø ®ßØ∫´≠•≤•'
              @ 12,20 say ' Alt+®/± ß† §† ¢∫¢•§•≤• ±≤†¢™†≤† ≠† ÑÑë. '
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


			return  //  firma

******************  Çæ§¶•≤≠® ¢ß•¨†≠®ø    *******************
	       proc budj
	       set key -31 to
	       save screen
	       @  1,10,24,70 box ram1
	       @  2,11 clea to 23,69
	       @  2,22 say 'Ñ ö ê Ü Ä Ç H à   Ç á Ö å Ä H à ü'
               open_obap(loc0:=88)  && aobi
	       find '452   1'
	       @  5,22 say 'ÑÄHöK áÄ éÅôàHÄíÄ    '+str(ksal,14,0)
	       find '452   2'
	       @  6,22 say 'ÑÄHöK Ç/ì èÖóÄãÅÄíÄ  '+str(ksal,14,0)
	       find '452   3'
	       @  7,22 say 'îéHÑ "åàãàéêÄñàà"    '+str(ksal,14,0)
	       find '452   4'
	       @  8,22 say 'Ñ é Ñ  ó´. 13        '+str(ksal,14,0)
	       find '454   1'
	       @ 10,22 say 'Ñ é Ñ  ó´. 4         '+str(ksal,14,0)
	       find '454   2'
	       @ 11,22 say 'è K Å                '+str(ksal,14,0)
	       find '455   1'
	       @ 12,22 say 'Ñ é é                '+str(ksal,14,0)
	       find '453   9'
	       @ 13,22 say 'Ñ Ñ ë                '+str(ksal,14,0)
	       find '455   2'
	       @ 16,22 say 'ÅéãHàóHà             '+str(ksal,14,0)
	       find '455   3'
	       @ 17,22 say 'ÑÖíëKà               '+str(ksal,14,0)
	       find '455   4'
	       @ 18,22 say 'åÄâóÖHëíÇé           '+str(ksal,14,0)
	       find '455   5'
	       @ 19,22 say 'ÖÑHéäêÄíHÄ èéåéô     '+str(ksal,14,0)
	       pauza()
	       set key -31 to budj
	       restore screen
	       return

          ******************** è∞Æ∂•≠≤ ≠† ÑÑë   *****************************
			  proc ddspro
	   set key 279 to
           save screen
	  if file ("ddse.mem")
	     restore from ddse additive
	  endif
	  @  8,22,12,55 box ram1
	  @  9,23 clea to 11,54
	  set curs on
	  d_s0=d_s0*100
	  d_s10=d_s10*100
	  d_s11=d_s11*100
	  @ 09,26 say 'Ç∫¢•§•≤• Ø∞Æ∂•≠≤ ÑÑë :' get d_s0 pict "99"
	  @ 10,26 say 'Ñ†≠∫™ Ø∞®-≤Æ ®¨≥-≤¢Æ :' get d_s10 pict "9.99"
	  @ 11,26 say 'í†™±†≤† ß† ¢Ø®±¢†≠•  :' get d_s11 pict "9.99"
	  chet()
	  d_s0=d_s0/100
	  d_s10=d_s10/100
	  d_s11=d_s11/100
	  d_s12=d_s10+d_s11
	  save all like d_s* to ddse
	  set key 279 to ddspro
	  restore screen
	  return
			  return

      ************** è∞Æ∂•§≥∞† Ø∞†¢® Ø∞Æ¢•∞™† ≠†  §®±™•≤†≤† ************
                          proc provdisk
           if file("&us0:\disc\arhi\arhi\&dr0"+".zip")

            ! &disc_1\pk\pkunzip -t &us0:\disc\arhi\arhi\&dr0..zip
            ! if errorlevel 1 copy nul > greshka


	          @ 0,0 clea to 24,80
              if .not. file ("greshka")
          	  @  8,13,12,64 box ram1
	         @ 10,15 say 'ÄêïàÇöí Ö äéêÖäíÖH HÄ '+upper('&us0:\disc\arhi\arhi\'+trim(dr0)+'.zip')
                 inkey(3)
	          @ 0,0 clea to 24,80
              else
                 @  8,20,12,57 box ram1
                 @  9,35 say 'ÇHàåÄHàÖ !'  color 'R+/B'
	         @ 10,24 say 'HÄèêÄÇÖH Ö HÖäéêÖäíÖH ÄêïàÇ HÄ'
	         @ 11,27 say upper('&us0:disc\arhi\arhi\'+trim(dr0)+'.zip')
                   erase greshka
                   inkey(9)
              endif
           endif
                          return
   ***********************    VIKA EXPLPRER   *********************
                           proc explorer
                    do case
                       case dr2='§'
                            dok4='c:\disc\comp\&go0\contract'
                       case dr2='Ø'
                            dok4='c:\disc\comp\&go0\notar'
                    endcase
                     !  c:\Windows\explorer.exe &dok4
                           return


***********************   nachalo ustro    *******************************
                         func direk0  //  sav0-1 sav1-1 sav6-4 sav8-1
       *  if .not. lastkey()=13  // sprqno zaradi niki
       *      return  .T.

       *  endif
       save screen
       q0=1
      if readvar()='US_0'  //  NE GO PRABI S MALKI BUSKVI US_
        @ 14,25,21,57 box ram1
        @ 15,26 clea to 20,56
        mrega0='&disc_1\job\'+'mrega.mrg'
        mreg0=memoread("&mrega0")
        mreg0=memoedit(mreg0,15,26,20,56,.t.,"fmrega",31,4,1,1)
        memowrit('&mrega0',mreg0)
        if .not. empty(trim(subs(memoline(mreg0,31,q0),1,13)))
           us_0=trim(subs(memoline(mreg0,31,q0),1,16))
        endif
           @ 14,24 clea to 21,57
           restore screen
      *    @  8,53 say ' '
      endif
                         return  .T.
