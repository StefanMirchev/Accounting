
        // Switch to graphic mode
        SET VIDEOMODE TO LLG_MODE_VGA_640_480_16
     // Switch to graphic mode and save the current graphic mode
        // settings
        SET VIDEOMODE TO LLG_MODE_VGA_640_480_16
        aMode := GMODE()
        // Store the different values
        nTxtRow    := aMode[LLG_MODE_TEXT_ROW]
        nTxtCol    := aMode[LLG_MODE_TEXT_COL]
        nGraRow    := aMode[LLG_MODE_GRAPH_ROW]
        nGraCol    := aMode[LLG_MODE_GRAPH_COL]
        nFonRow    := aMode[LLG_MODE_FONT_ROW]
        nFonCol    := aMode[LLG_MODE_FONT_COL]
        nColorMax  := aMode[LLG_MODE_COLOR_MAX]
        nVideoMode := aMode[LLG_MODE_IN_USE]

        nLibVer    := aMode[LLG_MODE_LIB_VERSION]
        nLstColor  := aMode[LLG_MODE_LST_COLOR]
        nLstMode   := aMode[LLG_MODE_LST_MODE]

        #translate GMAXROW()   => GMODE()[LLG_MODE_GRAPH_ROW]
        #translate GMAXCOL()   => GMODE()[LLG_MODE_GRAPH_COL]

        #translate GMAXCOLOR() => GMODE()[LLG_MODE_COLOR_MAX]






         wait '111111111111111111111111111111111111111111'





  * !C:\Windows\System32\rundll32.exe PRINTUI.DLL,PrintUIEntry /e /n "Zan Image Printer (BW)"
  ** mode con se startira po-dolo
  **  belezka budj calll firm firma datsme ddspro direk0 dlme dnev gast help mreza
  **  pamet papka podp pishi provdisk setcolors. smov smov1 smov2 vapros ustro
  ** p0  aktual broj ddok ddok2 dire izrab nulb3 nulb4 izrav line mes nsinf oper pauza pech fdobav
  ** p0  preh podred ramka raboti razr rock spisk spri stok1 zvan zenisme direk1
  ** p1  chet ddsizv dubl nulfakt lusi protkol pszame slovo spdok
  ** p2  fakt obob klient prodag proze proze1 zadalz startkey vazkey viddok
  ** p3  aktdis  dostav dospr file_lock inde_lock otvo prodaz vies
  ** p4  asci analobo avtteh. banko chpa consig dds1 ddok1 edno joana nobkol
  ** p4  oborot !razdds1! rupper spdds vidprn admini zanvi pfunk4
  ** p5  grupprod mol krprev nammag osok osmich osok plat potok potkor troi
  ** p5  prikzkpo pfunk6 funk6. tehkar. tehkar.  stok2 userpass
  ** p6  admini kaparat  operat suptot
  ** s1  korsmet promnam sapa umnoz operi pfunk pkorder spdos sppro setcons stokraz
  ** s2  adob dobor barcod. sav33. fkt fnom gkor gzik kdso kdao kkso kobob konpart
  ** s2  podpri prodraz starkeY vazkeY viddok
  ** s3  asme bank. chast ddok3 glkn grani lihva. novpar nepr niva nvo nivo1
  ** s3  obsin razrjd sbor. spisk1 ssme tXt1 tXt2 zavar pechzan
  ** s4  spravdds
  ** s5  pfunk1
  ** s6  aktdis  nnom nvo otvo inde_lock rec_loc rec_unlock vapros.
  ** s7  amort del dnspis dspis gr61 izpis iztri mark markir nadc no pr60 prik prikdds r7 reca
  ** s8  fzame izvl  lipso mol2 mesexx nootst prov regt prehansi tehnol zame
  **  GRESHKA j6,j7 IZTRIJ &disc_1\job\razrjd.mem"

        sc9='н'     //    д/н
        sc11='н'    //    д/н

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
          inkey(1)

             if file ("_belg")
                memowrit('prov.bat','start &disc_1\exe\txt\win32pad.exe _belg')
                !&disc_1\exe\hstart.exe /noconsole prov.bat
                inkey(1)
                erase prov.bat
             endif
        setcolor ('GR+/B')

* EXTERNAL SAV1,SAV2,SAV3,SAV4,SAV5,SAV6,SAV7
        do pro0
        do as
       save screen to ekr1
   *   #include "Directry.ch"
   *   #include "print.ch"
          #include "achoice.ch"
       set key 272 to call1
       set key 301 to calll
       set key -47 to prehansi &&  Alt+F12
       set talk off
       set bell off
       set date british

             set cent on
               date0=ctod('01/05/2019')
               if date() < date0
               else
                    cance
               endif
             set cent off

	   *                     Г Л О Б А Л H И
        j5=1
*  ram1=chr(201)+chr(205)+chr(215)+chr(199)+chr(216)+chr(205)+chr(200)+chr(199)
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
	j7=0     &&  mode con cols=80 lines=j7=24/36
                store j7 to ml0
        	save all like j? to &disc_1\job\razrjd
      endif

       picze_0=repl('9',11-j4)+'.'+repl('9',j4)
      memowrit('&disc_1\bat\zan.bat','start /min &disc_1\exe\pdf\PDFXC.exe '+'&disc_0'+'\zan.pdf')
      dok0='          .'+space(29)
     * motik()
       de0='r'
       s0000='н'
       gran0=''
       us00=diskname()
       store space(1) to sd2,vi2,ll0,ll1,ll2,ll3,ll4,ll5,ll6,ll7,ll8,ll9,ll10,ll11,ll12,ll13,ll14,ll15
       store space(1) to reg,klon0,fir,no,adr,grad,datk,egn,tel,dlaz,buls,tdd,podr,nam,repu,dat1,dat2,lize,ekpr0,vd0,vek0
       store space(1) to dr2,vid0,barc0,barc1,dngo0,nv_0,more0,qp0,qd0,l4, reas0,reas10,asci0,asci1,ko,us0
       store space(3) to y_51,y_52,y_53,y_54,y_55,y_56,y_57,y_58,y_59,y_60,y_61,y_62,y_63,y_64,y_65
       store space(8) to us_1,b3_0,b4_0,name01,cden0,tars0,tars1,sel_0,ddsper_0,bank1,bank2,bank3,pnp00
       store space(10) to y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,sch00,sch01,part01
       store space(31) to dn30,iban0,bf00,obr0,idfu00,ime00
       store '   ' to z_1,z_2,z_3,z_4,z_5,z_6,z_7,z_8,z_9,z_10,z_11,z_12,z_13,z_14,z_15,z_16,z_17,z_18,z_19,als0
       store space(10) to dn1,bg,sc1,sc2,sc3,sc4,sc5,sc6,sc7,sc8,sc10,sc12,sc13,sc14,sc15,sc16,dati0
       store 0 to s110,s120,s130,s140,s150,s160,s170,b00,b0,b1,b3,b4,p11,p12,sec0,sec1,sa_00,sa_01
       store 0 to p110,p120,p130,p140,p150,p160,p170,p180,p190,p200,p210,p220,p230,p240,p250,p260
       store 0 to op01,op02,op03,op04,op05,op06,op07,op08,op09,op10,op11,op12,oop0,q0,iz0,sek0
       store 0 to r207,r304,r452,r469,r601,r602,r603,r604,r605,r609,r611,r621,r623,r624,r661
       store 0 to r6_1,r6_3,r623,r624,r661,r669,rI,rII,rIII,rIV,pI,pII,pIII,r_o,p_o,nom3,nom4,pr1,pr2
       store 0 to p6_3,p701,p702,p703,p705,p706,p709,p721,p722,p723,p724,p761,p769,b2,cyr0,vprn0,d_s0
       store 0 to nazad0,kl40,kl50,kl60,kl71,kl72,kl80,dsbor0,ksbor0,podr_0,v22,nSeconds,re_0
	   *          moge da se polzuvat

       store space(1) to l0,l1,l2,ll3l5,l6,l7,l8,l9,l11,kk0,zan0
       store space(10) to dn2,dn3,dnev0,izr0,date1,us_0,in_0,me0,me1,bud0,bin0
       store space(4) to part0,part1,part2,part01,part4,part5,dr1,data0,data3,otgo0,admi00,pake
       store space(3) to sch0,sch1,sch2,dok4,data1,data2,dtno0,ds0,ds1,vek1
       store space(2) to mk0,mk_0,mk1,mese1,mese2,ff0,d1,d2,m1,m2,i,go0,vid1,vid2,vid4,vid5,dt0
       store space(1) to t0,t1,t2,a0,a1,d0,dk0,dk1,dr0,tx0,ss1,vni0,save1,save_0
       store 0 to nom0,nom1,nom2,nom7,mdt0,dsto0,ksto0,dsto1,dsto2,ksto1,dast0,dast1,kast1,ksal1 ,mate0
       store 0 to sald0,sald1,sald2,sald_0,obor_0,fn0,ra0,ra1,ra2,re0,re3,v1,i0,sald0,obor0,stok0,sch3,sch4
       store 0 to kol0,kol1,kol2,kol3,kol4,papk0,zena0,zena1,zena2,zena3,nvo0,m0,a49,kkol0,kkol1,ksal0
       store space(9) to dn00,dn01
       store spac(35) to name0


            if file("&disc_1\save\us_0.mem")
                restore from &disc_1\save\us_0 additive
                @  0, 0 clea to 24,80
                go0=lower(subs(us_0,4,2))
                us0=subs(us_0,1,1)
                us1=us0+':\arhi\'+pake+'_'+subs(us_0,6,2)
                dr0=subs(us_0,1,7)
                dt0=subs(us_0,6,2)
                diskchange("&us0")
                l1=dirchange("&dr0")
                in_0=subs(us_0,1,2)+'&disc_1\job'
                         open_info(loc0:=9)
                         set filter to  0 < val(no)
                         go top

                locate for go=go0
                if found()
                  us1=us0+':\arhi\'+pake+'_'+subs(us_0,6,2)
                endif

            else
               dt0=subs(dtoc(date()),7,2)
               us0=diskname()
            endif

       ramka()
       @  0, 75 say substr(dtoc(date()),4,5)
       if .not. file("arhi.dbf")
            l3='y'
            dire()
       endif


       firma()
    do case
       case cyr0=1

         set cons on
     * ! &disc_1\exe\hstart.exe /noconsole  <-  ne go puskai prez
       !  &disc_1\cyr\tbds.com
       case cyr0=2
       ! &disc_1\cyr\kvd.com
    endcase
               @  0, 0 clea to 24,80
                    if sc9='д'
                       store date() to date0
                       ramka()
                       if .not. file("&disc_1\job\admini.mem")
                         do admini
                       endif
                         do operat  && pro6
                    endif


    * @ 0, 0 clea to 24+ml0,80
     * do belezka
       set key -22 to belezka  &&  Ctrl+F3
       set key 21 to papka    &&  Ctrl+кир K
       set key -28 to pamet
       set key 306 to podp


          if (.not.file ("&us_0\nari.ntx")).or.(.not.file ("&us_0\parpi.ntx")).or.(.not.file("&us_0\vidi.ntx")).or.(.not.file ("&in_0\dni.ntx"))
                podr_0=1
                save all like podr_0 to podred
            *   set cons on
            *   ? 'Go to 1'
            *   inkey(1)
                podred()
             *  @  0, 0 clea to 24,80
          endif
       if file ("&us_0\arhi.dbf")
           open_arhi(loc0:=70)
           set order to 0
	   if file(" \dos\fand.com").or.file("c:\windows\fand.com")
	    else
	   *   gast()
	   endif
	   if (papk='к  ')
	   *    gast()
	   endif
       endif

   *          if file("&disc_1\save\sc9") .and. sc9='д'
   *           @  0, 0 clea to 24,80
   *          save screen
   *   @ 10,10 say 'Hяматe предоставени права за ползуване на Save-T ver.01!'
   *   @ 12,10 say 'Моля свържете се с производителя на тел. +359 88 999 8611.'
   *   @ 14,10 say '                      Стефан Мирчев                       '
   *             inkey(5)
   *              restore screen
   *              cance
   *          endif

          dospr()

               *    if sc9='д'
               *       store date() to date0
               *       ramka()
               *       if .not. file("&disc_1\job\admini.mem")
               *         do admini
               *       endif
               *   *     do operat  && pro6
               *    endif

       do while .t.
          tt0='00'
          b00=0
       	*  firma()

               norm0='OPF11P10L06'
               sbit0='F11P17L06A65'

         *   if file("&disc_1\zan\sent\general.ini")
         *      zanvi(zan0:='general')
         *   endif
         *   if file("&disc_1\zan\vkl\app.ini")
         *      zanvi(zan0:='vkl')
         *   endif

       set key 28 to help
       set key -3 to vidprn  //  p4
       set key -5 to razrjd  &&  s3
       set key -6  to ustro  // save
       set key -7  to datsme
       set key -8  to firm
       set key -29  to mesexx  && sve8
       set key -20 to ascii   &&  Ctrl+F1
       set key -31 to budj
       set key -33 to ddok
       set key 274 to dlme && Alt+e /кир/
       set key 279 to ddspro
       set key 280 to ddok
  *    @  0, 0 clea to 24,80
       store subs(us_0,1,1) to us0,us1

      if subs(data0,4,2)=subs(dtoc(date()),7,2)
         store subs(us_0,1,len(us_0)-1) to ac_0
iif (dirchange("\disc")=3, makedir("\disc"),dirchange("&ac_0"))
iif (dirchange("\disc\god&dt0\")=3, makedir("\disc\god&dt0"),dirchange("&ac_0"))
iif (dirchange("\disc\arhi")=3, makedir("\disc\arhi"),dirchange("&ac_0"))
iif (dirchange("\disc\arhi\arhi")=3, makedir("\disc\arhi\arhi"),dirchange("&ac_0"))
iif (dirchange("\disc\god&dt0\GFO")=3, makedir("\disc\god&dt0\GFO"),dirchange("&ac_0"))
iif (dirchange("\disc\god&dt0\zkpo")=3, makedir("\disc\god&dt0\zkpo"),dirchange("&ac_0"))
      endif
  *  * vid3=date0
  *  * dtep0=ctod('  /  /  ')
  *  * mese3=' \&go0'+substr(data0,4,2)
  *        if .not.file("arhi.dbf")
  *                            ramka()
  *            @  2,18 say 'ВHИМАHИЕ !' color 'R+/B'
  *            @  2,29 say 'ЛИПСВАТ РАБОТНИТЕ ФЙЛОВЕ ЗА ДИРЕКТОРИЯТА!'
  *            @ 23+ml0,30 say 'F7 - списък от директории'
  *            store us0+':\arhi\'+pake+'_'+subs(us_0,6,2) to us_1
  *            @ 12,27 say 'Пакет:  ' get us_1
  *            read
  *                if  lastkey()=27
  *                    return
  *                endif
  *                         dr0=subs(us_0,4,4)+'.zip'
  *                         @  0, 0 clea to 24,80
  *                         ! &disc_1\pk\pkunzip -o &us_1 &dr0
  *                         ! &disc_1\pk\pkunzip -o &dr0
  *                         erase &dr0
  *               if .not.file("arhi.dbf")
  *                            @  0, 0 clea to 24,80
  *                            @ 12,30 say 'ФАЙЛОВЕТЕ НЕ СА НАМЕРЕНИ !' color 'R+/B'
  *                            inkey(4)
  *                            return
  *               endif
  *        endif
           open_arhi(loc0:=70)
                if .not. indexkey()='subs(data,4,2)+data+nom'
                    podr_0=1
                    save all like podr_0 to podred
             *      set cons on
             *   ? 'Go to 2'
             *      inkey(1)
             *      set cons off
                    podred()
               endif

           open_arhi(loc0:=70)
         if sc9='д'.or.sc11='д'
           if .not. subs(data,4,2)=subs(dtoc(date()),7,2)

             if sc9='д'
                  l1='търговски обект'
             endif

             if sc11='д'
                  l1='диспечер'
             endif

        @  7+ml0,34 say 'ВHИМАHИЕ !'  color 'R+/B'
        @ 11,18 say 'Програмата е инсталирана въе вариант '+l1+'.'
        @ 13,18 say 'За да продължите работа през новата '+str(year(date()),4)+' година,'
        @ 15,18 say 'следва да изпълните мененята 6-3-1 и 6-3-2.'
                     i0=inkey(0)
           endif
         endif
       ramka()
       set wrap on

       @  2,24 say '  Г Л А В H О           М Е H Ю  '


                     @  0,24 say '          Демо версия           '

          *  do case
          *     case sc9='д'
          *          @  0,24 say '         Търговски обект        '
          *     case sc11='д'
          *          @  0,24 say '     Диспечер търговски обект   '
          *      other
          *          @  0,24 say '       Счетоводна отчетност     '
          *  endcase
             if sc9='д'
       @  4,26 prompt '1. Въвеждане на начални салда '
       @  6,26 prompt '2. Счетоводни операции'
       @  8,26 prompt '3. Главна книга'
       @ 10,26 prompt '4. Оборотна ведомост и Дневници'
       @ 12,26 prompt '5. Справки'
       @ 14,26 prompt '6. Kорекции '
       @ 18,26 prompt '8. Архивиране и възстановяване'
             else
       @  4,26 prompt '1. Въвеждане на начални салда '
       @  6,26 prompt '2. Счетоводни операции'
       @  8,26 prompt '3. Главна книга'
       @ 10,26 prompt '4. Оборотна ведомост и Дневници'
       @ 12,26 prompt '5. Справки'
       @ 14,26 prompt '6. Kорекции '
       @ 16,26 prompt '7. Изтриване'
       @ 18,26 prompt '8. Архивиране и възстановяване'
             endif

       @ 20,26 prompt '9. Изход от програмата'
       @ 23+ml0,15 say 'Избор на меню стрелка '+chr(25)+' '+chr(24)+' или неговия пореден номер'

	 menu to v1
                  if sc9='д'
                     do case
                        case v1=7
                         v1=8
                        case v1=8
                         v1=9
                     endcase
                  endif

       save screen to ekr0
    *  set key 28  to
       set key -3  to
       set key -4  to
       set key -5  to
       set key -6  to
       set key -7  to
       set key -8  to
       set key -29 to
       set key -20 to
       set key -31 to
       set key 182 to
       set key 274 to
       set key 280 to
       set key 279 to
	do case
	   case v1=9
         copy file us_0.mem to &us00:&disc_1\save\us_0.mem

	 restore screen from ekr1
       do case
         case cyr0=1
         ! &disc_1\cyr\tbds.com /u
         case cyr0=2
         ! &disc_1\cyr\kvd.com /u
      endcase
       close all
       clea all
       exit
	   case v1=1
            	sav1()
	   case v1=2
       ***** З А Щ И Т А ******
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
          *           repl papk with 'к'
          *           rec_unlock()
          *        endif
          *        set cent off

		sav2()
	   case v1=3
		sav3()
	   case v1=4
		sav4()
	   case v1=5
		sav5()
	   case v1=6
		sav6()
	   case v1=7
                 if sc9='д'.and.dn1='147164000 '
                 else
                    sav7()
                 endif
	   case v1=8

                   store subs(us_0,1,1) to us0
                   for i = 65 to 90
                        us0=lower(chr(i))
                        if file("&us0:\"+'__FLASH\a')
                            exit
                         else
                            us0='c'
                         endif
                   next

         store subs(us_0,1,len(us_0)-1) to ac_0
         iif (dirchange("&us0:\disc")=3, makedir("&us0:\disc"),dirchange("&ac_0"))
         iif (dirchange("&us0:\disc\arhi")=3, makedir("&us0:\disc\arhi"),dirchange("&ac_0"))
         iif (dirchange("&us0:\disc\arhi\arh")=3, makedir("&us0:\disc\arhi\arh"),dirchange("&ac_0"))
         iif (dirchange("&us0:\disc\arhi\arhi")=3, makedir("&us0:\disc\arhi\arhi"),dirchange("&ac_0"))

		      go1='  '
                      save screen
		      @ 6,25,18,57 box ram1
		      @ 7,26 clea to 17,56
		      @  7,28 say 'АРХИВИРАHЕ и ВЪЗСТАHОВЯВАHЕ'
                             if sc9='д'
		      @  9,30 prompt '1. Архивиране с ZIP'
		      @ 10,30 prompt '2. Актуализация     '
                             else
		      @  9,30 prompt '1. Архивиране с ZIP'
		      @ 10,30 prompt '2. Възстанов. с ZIP'
		      @ 11,30 prompt '3. Архивиране с COPY'
		      @ 12,30 prompt '4. Възстанов. с COPY'
		      @ 13,30 prompt '5. Актуализация     '
		      @ 14,30 prompt '6. Дати на архиви   '
		      @ 15,30 prompt '7. Общ архив        '
		      @ 16,30 prompt '8. Възс.от Общ архив'
                             endif
			  menu to v2

                                 if sc9='д' .and. v2=2
                                   v2=5
                                 endif

                      if v2=2.or.v2=4
                               l0='н'
                               @ 23+ml0,15 clea to 23,65
                               @ 23+ml0,16 say 'ВHИМАHИЕ !'  color 'R+/B'
                               @ 23+ml0,28 say 'Потвърждавате ли възстанов. д/н ?' get l0  valid  l0='д'.or.l0='н'.or.l0='d'.or.l0='n'
                               chet()
                                       if l0='н' .or.l0='n'
                                          loop
                                       endif
                      endif
		       if lastkey()=27
                              store subs(us_0,1,1) to us0
			      loop    && return
		       endif

			      if lastkey()=27
				  loop  && return
			      endif
		                   @ 7,26 clea to 17,56
                                   do case
                                      case v2=1
		                         @ 7,32 say '1. Архивиране с ZIP'
                                      case v2=2
		                         @ 7,32 say '2. Възстанов. с ZIP'
                                      case v2=3
		                         @ 7,32 say '3. Архивиране с COPY'
                                      case v2=4
		                         @ 7,32 say '4. Възстанов. с COPY'
                                      case v2=7
		                         @ 7,32 say '7. Общ архив        '
                                      case v2=8
		                         @ 7,32 say '8. Възс.от Общ архив'
                                   endcase

				    if v2=1 .or. v2=3  // ARHIV-01
                                       if v2=3
                                          us0=' '
                                       endif
                                  *    if sc9='д'
                                  *       us0='a'
                                  *    endif
                   @ 10,28 say 'От у-ство:    на у-ство:'
                   @ 10,39 get us1 valid (64 < ASC(us1).and.;
                   (ASC(us1) < 91)).or.(96 < ASC(us1).and.(ASC(us1) < 123))
                   @ 10,53  get us0 valid (64 < ASC(us0).and.;
                   (ASC(us0) < 91)).or.(96 < ASC(us0).and.(ASC(us0) < 123))
                   chet()
                                      save screen
                                    endif                // ARHIV-01

 				    if v2=2 .or. v2=4   //  VAZST-01
                                       if v2=4
                                          us0=' '
                                       endif
                                 *     if sc9='д'
                                 *        us0='a'
                                 *     endif
      @ 10,33 say 'От устройство :' get us0 valid (64 < ASC(us0).and.(ASC(us0) < 91));
     .or.(96 < ASC(us0).and.(ASC(us0) < 123))
       chet()
                                    endif               //  VAZST-01
                             if  v2=7.or.v2=8     // PAKET-01
				if v2=8
                                   if v2=4
                                      us0=' '
                                   endif
                     restore screen
                     @ 6,23,17,59 box ram1
                     @ 7,24 clea to 16,58
                     @  7,29 say 'Възстановяване от архив:'
                     @  8,24 say repl('=',35)
                     @ 13,24 say repl('=',35)
                     set key -6 to direk1
                     @ 16,30 say 'F7 - списък от директории'

                             p0=0
                              us_1=us0+':\disc\arhi\'+pake+'_&dt0'+'.zip'
                              if file('&us_1')
                                p0=p0+1
                               endif
                              us_1='&disc_0\arhi\'+pake+'_&dt0'+'.zip'
                              if file('&us_1')
                                p0=p0+1
                               endif
                              us_1='d:\sync\arhi_1\'+pake+'_&dt0'+'.zip'
                              if file('&us_1')
                                p0=p0+1
                               endif
                              us_1='d:\sync\arhi\&pake\'+pake+'_&dt0'+'.zip'
                              if file('&us_1')
                                p0=p0+1
                               endif
                   q0=0
                   declare izb[p0]
                            us_1=us0+':\disc\arhi\'+pake+'_&dt0'+'.zip'
                      if file('&us_1')
                         q0=q0+1
                         izb[q0]=us0+':\disc\arhi\'+pake+'_&dt0'+'.zip'
                      endif
                            us_1='&disc_0\arhi\'+pake+'_&dt0'+'.zip'
                      if file('&us_1')
                         q0=q0+1
                         izb[q0]='&disc_0\arhi\'+pake+'_&dt0'+'.zip'
                      endif
                            us_1='d:\sync\arhi_1\'+pake+'_&dt0'+'.zip'
                      if file('&us_1')
                         q0=q0+1
                         izb[q0]='d:\sync\arhi_1\'+pake+'_&dt0'+'.zip'
                      endif
                            us_1='d:\sync\arhi\&pake\'+pake+'_&dt0'+'.zip'
                      if file('&us_1')
                         q0=q0+1
                         izb[q0]='d:\sync\arhi\&pake\'+pake+'_&dt0'+'.zip'
                      endif

                   iz0=achoice( 9,27,14,55,izb,,"")
                     us_1=izb[iz0]
              *    ? us_1


       *     wait '222222222222222222222222222'



			      if  lastkey()=27
				  loop  && return
			      endif

                                   set key -6 to direk1
                                   @ 16,30 say 'F7 - списък от директории'
                                   @ 14,24 say 'Избор' get us_1
                                endif
			 	chet()
                                set key -6 to
                             endif              // PAKET-01
			      if  lastkey()=27
				  loop  && return
			      endif
		       if .not. (v2=5.or.v2=6.or.v2=7.or.v2=8)
                           l3='n'
		           dire()
		              if  lastkey()=27
			          loop  && return
	                      endif
		          @ 12,26,14,55 box ram1
		          @ 13,27 clea to 13,54
		       endif
                                  clos all
		    do case
		       case v2=1
		*      @  0, 0 clea to 24,80
                           dr0=trim(dr0)+'.zip'
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

         ssss= diskname()+':\disc\arhi\arhi\&dr0'
         dele file &ssss
         ! &disc_1\pk\pkzip &ssss -3 @&disc_1\save\save.lst
         inkey(1)
         ssss= us0+':\disc\arhi\arhi\&dr0'
         dele file &ssss
         ! &disc_1\pk\pkzip &ssss -3 @&disc_1\save\save.lst
         inkey(1)
		       case v2=2
      provdisk()
      if file("greshka")
         loop
      endif
         ! &disc_1\pk\pkunzip -o  &us0:\disc\arhi\arhi\&dr0
                              podr_0=1
                              save all like podr_0 to podred
			      podred()
		       case v2=3
                             if diskname()=upper(us0)
                                @ 23+ml0,15 say space(51)
                                @ 23+ml0,16 say 'ВHИМАHИЕ !' color 'R+/B'
                                @ 23+ml0,27 say 'не можете да архивирате в същото у-во !'
                                inkey(2)
                                loop
                             endif
			  store go0 to go1
			  dr0=trim(dr0)
			  store dr0 to dr2
                              if len(dr0)=4
                                  @ 13,28 say 'ПРОГРАМАТА АРХИВИРА - '+upper('&go1')+'&dt0'
                              else
                                  @ 13,28 say 'ПРОГРАМАТА АРХИВИРА - '+substr(dr2,6,4)
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
                                @ 23+ml0,16 say 'ВHИМАHИЕ !' color 'R+/B'
                                @ 23+ml0,27 say 'не можете да възстонов. от същото у-во!'
                                inkey(2)
                                loop
                             endif
			  store go0 to go1
			  dr0=trim(dr0)
			  store dr0 to dr2
                               if len(dr0)=4
                                   @ 13,27 say 'ПРОГРАМАТА ВЪЗСТАHОВЯВА-'+upper('&go1')+'&dt0'
                               else
                                   @ 13,27 say 'ПРОГРАМАТА ВЪЗСТАНОВЯВА-'+substr(dr2,6,4)
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

  *********************** АKТУАЛИЗАЦИЯ ОТ ДИСПЕЧЕР **********************
    **  s000 s100 HА ДИСПЕЧЕРСKИЯ KОМПЮТЪР
    **  s000  HА МАГАЗИHСKИЯ KОМПЮТЪР

           sc6=1
           if go0='m0'  &&  оператор
                  ll11='д'
                  br0=1
                  dr1=go0+dt0
         *      @11,21,13,59 box ram1
         *      @ 12,22 say '     ПРОГРАМАТА ПРИХВЪРЛЯ ПРОДАЖБИ  '
         *     do while br0 < 30  &&  ТЕГЛИ ПРОДАЖБИ
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
         *        @ 12,22 say '    ПРОГРАМАТА ПРЕХВЪРЛЯ ПРОДАЖБИ  '
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
                  @ 13,22 say '   ПРОГРАМАТА ПРИХВЪРЛЯ ЗАДЪЛЖЕHИЕ  '
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
                  @ 13,22 say '   ПРОГРАМАТА ПРИХВЪРЛЯ ЗАДЪЛЖЕHИЕ  '
                  ! cd c:\s000
                  us_0='c:\s000\'
                  us_1='c:\&dr1\'
                  nom2=1
                  nom3=3500
                  @ 23+ml0,15 say space(51)
                  oper()
                  clos all
                  sc9='н'
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
                  ll11='н'
                  loop
           endif
  ************************* АKТУАЛИЗАЦИЯ ЗА МАГАЗИHИ **************
	 if subs(go0,1,1)='m'.and.0 < val(subs(go0,2,1))
              _LOC5 := "&us0:\"+'__FLASH\a'
           if file ("&us0:\"+'saveT.exe')
              copy file &us0:\saveT.exe to &disc_1\save\saveT.exe
           endif
            us0='a'   &&  za flashka da se spre
                    ll11='д'
                    br0=1
                 dr0=go0+dt0

                 @ 12,21,14,59 box ram1
                 @ 13,22 say '   ПРОГРАМАТА ПРИХВЪРЛЯ ЗАДЪЛЖЕHИЕ  '
            if file ("&us0:\"+"s000\s000.zip") &&  прехвърля задължения от диспечер
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
               @ 13,22 say '   ПРОГРАМАТА ПРИХВЪРЛЯ ЗАДЪЛЖЕHИЕ  '
	       ! cd c:\&dr0
               us_0='c:\&dr0\'
               us_1='c:\s000\'
       	       nom2=1
	       nom3=3500
               oper()
               l5='д'
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
       *        @ 13,22 say '     ПРОГРАМАТА ПРИХВЪРЛЯ ПРОДАЖБИ  '
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
       *       @ 13,22 say '     ПРОГРАМАТА ПРИХВЪРЛЯ ПРОДАЖБИ  '
       *       nom2=3001
       *       nom3=9999
       *       @ 23+ml0,15 say space(51)
       *       oper()
       *        clos all
       *        @  0, 0 clea to 24,80
       *    **  ЗА ФЛАШKА ДА СЕ ПУСHЕ
       *    *   !  &disc_1\pk\pkzip  a:\&dr0\&dr0 -3 @&disc_1\save\save.lst
       *         provdisk()
                ! cd c:\&dr0
                ll11='н'
         endif
  *********************KРАЙ НА АKТУАЛИЗАЦИЯ ЗА МАГАЗИHИ **************
                       case v2=6
                       do ramka
                       ! &disc_1\job\arhi.exe
                       case v2=7
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
         @  0, 0 clea to 24,80
         ssss= diskname()+':&disc_1\save\save.lst'
         dele file &ssss
           memowrit(diskname()+":&disc_1\save\save.lst",+dr1+'sc*.'+dr2+dr1+'arhi.dbf'+dr2;
        +dr1+'bank.dbf'+dr2+dr1+'cal1.dbf'+dr2+dr1+'dds.dbf'+dr2+dr1+'dobo.dbf'+dr2;
        +dr1+'dpar.dbf'+dr2+dr1+'kobo.dbf'+dr2+dr1+'kobp.dbf'+dr2+dr1+'kpap.dbf'+dr2;
        +dr1+'kpar.dbf'+dr2+dr1+'obap.dbf'+dr2+dr1+'obve.dbf'+dr2+dr1+'prot.dbf'+dr2;
        +dr1+'tehno.dbf'+dr2+dr1+'zame.dbf'+dr2+dr1+'unpr.dbf'+dr2+dr1+'bank.mem'+dr2+dr1+'date.mem'+dr2;
        +dr1+'ddse.mem'+dr2+dr1+'harsmet.mem'+dr2+dr1+'razrjd.mem'+dr2+dr1+'dannom.mem'+dr2)

         ssss= diskname()+':\disc\arhi\arh\&dr0'
         dele file &ssss
        ! &disc_1\pk\pkzip &ssss -3 @&disc_1\save\save.lst
        inkey(1)
                     else
           @  0, 0 clea to 24,80
	   @ 11,22 say 'Няма отворена дирекория -> ' + upper(dr0)
                    inkey(5)
                     endif
                     if file("&us1:\"+subs(dr0,1,4)+"\spis.dbf")
        ssss= diskname()+':&disc_1\fish\fish.lst'
        dele file &ssss
        memowrit(diskname()+":&disc_1\fish\fish.lst",+dr1+'spis.dbf'+dr2+dr1+'mese.dbf'+dr2;
        +dr1+'godn.dbf'+dr2+dr1+'nome.dbf'+dr2+dr1+'harved.mem'+dr2+dr1+'fdate.mem'+dr2;
        +dr1+'namhar.mem'+dr2+dr1+'nulstoi.mem'+dr2+dr1+'rabodni.mem'+dr2+dr1+'inforuso.mem'+dr2;
        +dr1+'dannom.mem')

         ssss= diskname()+':\disc\arhi\arh\f&dr0'
         dele file &ssss
         ! &disc_1\pk\pkzip &ssss -3 @&disc_1\fish\fish.lst
         inkey(1)
                     endif
                           skip
                         enddo

           ssss= diskname()+':&disc_1\job\arhiv.lst'
           eras &ssss
           memowrit(diskname()+":&disc_1\job\arhiv.lst",;
            +diskname()+':\disc\arhi\arh\??'+dt0+'.zip'+chr(13)+chr(10);
            +diskname()+':\disc\arhi\arh\f??'+dt0+'.zip'+chr(13)+chr(10);
            +diskname()+':&disc_1\job\bala.dbf'+chr(13)+chr(10);
            +diskname()+':&disc_1\save\hlp.dbf'+chr(13)+chr(10);
            +diskname()+':&disc_1\job\info.dbf'+chr(13)+chr(10);
            +diskname()+':&disc_1\job\regl.dbf'+chr(13)+chr(10);
            +diskname()+':&disc_1\fish\nome.dbf'+chr(13)+chr(10))
            @  0, 0 clea to 24,80
            ? memoread(diskname()+":&disc_1\job\arhiv.lst")
            inkey(2)
           ssss=diskname()+':\disc\arhi\'+pake+'_'+substr(data0,4,2)
           dele file &ssss
           ! &disc_1\pk\pkzip &ssss -3 @&disc_1\job\arhiv.lst
           inkey(1)
           ssss=us0+':\disc\arhi\'+pake+'_'+substr(data0,4,2)
           dele file &ssss
           ! &disc_1\pk\pkzip &ssss -3 @&disc_1\job\arhiv.lst
           inkey(1)
           ssss=diskname()+':\disc\arhi\arh\*.zip'
           ? 'C:\DISC\ARHI\ARH'
           ? ssss
           ! del &ssss
                       case v2=8
                            dr0=subs(us_0,4,4)+'.zip'



                            wait '3333333333333333333333333333333333333'
                            cance


                            ! &disc_1\pk\pkunzip -o &us_1 &dr0
                            ! &disc_1\pk\pkunzip -o &dr0
                            erase &dr0
                            podr_0=1
                            save all like podr_0 to podred
                            podred()
		    endcase
       endcase
       enddo

      ************** Процедура за паметта  *************
 		   proc pamet
	   save screen
	   @ 11,26,13,51 box ram1
	   @ 12,27 clea to 12, 50
	   @ 12,27 say 'Свободна памет -> ' + str(memory(0),6)
				   inkey(0)
	   !mem
				   inkey(0)
	  restore screen
	  return

      ************** Процедура за датата  *************
		   proc datsme
	   set key -7 to
	   save screen
	  @  9,20,13,59 box ram1
	  @ 10,21 clea to 12,58
	  set curs on
	  set century on
	  @ 11,22 say 'Въведете работната дата :' get date0  pict '99/99/9999'
	  chet()
	  set century off
	  set curs off
	  save all like date0 to date
	  dt0=substr(dtoc(date0),7,2)
	  data0=substr(dtoc(date0),4,5)
          vek0=substr(str(year(date0),6),3,4)
	  dte1=ctod('01'+substr(dtoc(date0),3,6))
	  dte2=ctod('30'+substr(dtoc(date0),3,6))
	  set key -7 to datsme
	  restore screen
          if sc9='д'.or. sc11='д'
             @ 0,72 say dtoc(date0)
          else
             @ 0,75 say subs(dtoc(date0),4,5)
          endif
	  return

      ************** Процедура за устройство **********
		   proc ustro
  * set key -6 to
    set key -6 to ustro
    save screen       //  u
           set curs on
   @  7, 7,11,67 box ram1
   @  8, 8 clea to 10,66

   @  8, 8 say 'Въведете cyr на клавиатурата:'
                 @  8,38 prompt 'TBDS'
                 @  8,43 prompt 'KVD'
                 menu to cyr0
                   if  lastkey()=27
                       restore screen
                       return
                   endif
   @  8,55 say 'Пакет:' get pake valid 64<asc(pake).and.asc(pake)<123
         	  chet()
   @ 10, 8 say 'Въведете работната директория: proced e sprqna ' // get us_0 valid direk0('us_0')
          inkey(2)
               @  8, 8 clea to 10,66
              @  8,11 say 'За да се смени кирилизацията следва да влезете на ново'
              @ 10,17 say 'в програмата. Програмата сега ще прекъсне!'
              inkey(5)

      *  	  chet()
      *   us_0=trim(us_0)
      *          l0=1
      *          @ 10,49 prompt 'ВРЕМЕHHО'
      *          @ 10,58 prompt 'ПОСТОЯHHО'
      *          menu to l0
      *           if l0=1
      *              erase sc10
      *           else
      *             *dd0=ltrim(str(nom1,4))+'-'+substr(data0,1,2)+'.o'
      *              han0=fcreate("sc10")
      *              fclose(han0)
      *           endif
      *   set curs off
      *   save all like us_0 to us_0
          save all like pake to &disc_1\job\pake
          save all like cyr0 to &disc_1\job\cyr
          clos all
          memowrit('&disc_1\bat\pake.txt','&pake')
          inkey(1)
          quit
          set key -6 to ustro
          restore screen
	  return


     ***********************  Защита ******************
			 proc gast

    if file("&disc_1\exe\frame\kill\readdir.reg")
   memowrit('&disc_1\EXE\FRAME\KILL\01.reg','Windows Registry Editor Version 5.00'+chr(13)+chr(10)+;
   '[-HKEY_LOCAL_MACHINE\SOFTWARE\King]')
   memowrit('prov.bat','start regedit.exe /S C:\DISC\HLP\EXE\FRAME\KILL\01.reg')
   !&disc_1\exe\hstart.exe /noconsole prov.bat
*     start regedit.exe /S yourfile.reg  C:\DISC\HLP\EXE\FRAME\KILL\01.reg
   inkey(10)
 cance
   memowrit('prov.bat','start regedit.exe /S C:\DISC\HLP\EXE\FRAME\KILL\readdir.reg')
   !&disc_1\exe\hstart.exe /noconsole prov.bat
   inkey(10)
    endif
 ? subs(memoread("s0001.prn"),161,11)
 ? 'K i n g _ A'

    if subs(memoread("s0001.prn"),159,11) ='K i n g _ A'
    endif

     @  0, 0 clea to 24,80
   *      do case
   *         case   sc9='д'
   *  ? 'Copyright (C) "SaveT ver.01" all Rights Reserved.'
   *               sc11='н'
   *         case  sc11='д'
   *  ? 'Copyright (C) "SaveD ver.01" all Rights Reserved.'
   *               sc9='н'
   *         other
   *  ? 'Copyright (C) "SaveA ver.01" all Rights Reserved.'
   *                  sc9='н'
   *                 sc11='н'
   *      endcase

	       @  0, 0 clea to 24,80
	     @ 10,20 say 'П Р О Г Р А М А Т А   Е  З А Щ И Т Е H А  !!!'
	     @ 12,23 say 'ПОТЪРСЕТЕ СЪЗДАТЕЛЯ HА ПРОГРАМАТА  !!!'
	     @ 14,23 say '        HА ТЕЛ.  2 - 30 - 13          '
		    inkey(0)
	       @  0, 0 clea to 24,80
	       canc
			return

      ************** Процедура за помощ help   ************
		   proc help
	   save screen
	   set key 28 to
	   @ 19,0 say ' '
	   ramka()
	   @  2, 2 clea to 21+ml0, 78
	   @ 23+ml0, 2 say '                  Следващ екран - PgUp    Предишен екран PgDu               '
	   @ 22,13 say repli(chr(205),59)
	    ff0 = select()
             open_hlp()
	    set filter to t=tt0
		go top
		declare fiel[1]
		fiel[1]='nam'
		declare imem[1]
		imem[1]='                              ПОМОЩЕH ЕKРАН'
                 dbedit( 2, 2,21+ml0,78,fiel," ",'',imem,'=','')
	   restore screen
	   sele &ff0
	   set key 28 to help
	   return
       ************** калкулатор  ********************
			  proc call1
			  ! &disc_1\cal1\cal1.exe
			  return
       ************** калкулатор  ********************
			  proc calll
			  ! &disc_1\cal\cal.exe
			  return
      ************** Процедура за печат на подпис **********
		   proc podp
                  @  23,15 say space(51)
                  @  23,30 say 'Документът е подписан'

          memowrit('s0001.prn',+memoread('s0001.prn')+chr(13)+chr(10)+;
          chr(13)+chr(10)+chr(13)+chr(10)+chr(13)+chr(10)+;
          chr(13)+chr(10)+chr(13)+chr(10)+chr(13)+chr(10)+chr(13)+chr(10)+;
          space(20)+'Съставител:...............'+space(42)+'Ръководител:..............') && oborotna vedomos sint
                  inkey(2)
          @ 23+ml0,15 say 'Избор на меню стрелка '+chr(25)+' '+chr(24)+' или неговия пореден номер'
		   return

       ******************   Процедура вика ДДС програма *******
			proc dnev
                     if file('&disc0\deklar.txt').and.file('&disc0\pokupki.txt').and.file('&disc0\prodagbi.txt')
                        copy file &disc0\deklar.txt to d:\deklar.txt
                        copy file &disc0\pokupki.txt to d:\pokupki.txt
                        copy file &disc0\prodagbi.txt to d:\prodagbi.txt
                     else

                  @  23,15 say 'Не сте израб.файловете изпълнете меню 4/6/3 и 4/6/4'
                       inkey(5)
          @ 23+ml0,15 say 'Избор на меню стрелка '+chr(25)+' '+chr(24)+' или неговия пореден номер'
                     endif
			save screen
			@  0, 0 clea to 24,80
			restore screen
			return
       ******************   Процедура вика DLMENU ************
			proc dlme
			save screen
			@  0, 0 clea to 24,80
			! &disc_1\djcp.exe
			restore screen
			return
      ************** Процедура за смяна на фирма ***************************8
			 proc firma
	       if .not. file("dannom.mem")
		  firm()
	       endif
              ***********   NACHALO MEM PROWERKI ******

           if file ("us_0.mem").and.(sc9='д'.or.sc10='д')
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
                @ 0,72 say dtoc(date0)
             else
                restore from date additive
                @ 0,75 say substr(dtoc(date0),4,5)
             endif
          else
                store date() to date0
                save all like date0 to date
                @ 0,72 say dtoc(date0)
               store date() to date0
          endif
                data0=substr(dtoc(date0),4,5) // sledvashtite 4-ri reda
                dt0=substr(dtoc(date0),7,2)   // da ne se vkarwat w proverkata
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
   **********************   KRAY MEM PROWERKI ************************
                     if file("sc1")
 			 sc1='д'
 		      else
			 sc1='н'
		      endif
		      if file("sc2")
			 sc2='д'
		      else
			 sc2='н'
		      endif
		      if file("sc3")
			 sc3='д'
		      else
			 sc3='н'
		      endif
		      if file("sc4")
			 sc4='д'
		      else
			 sc4='н'
		      endif
		      if file("sc5")
			 sc5='д'
		      else
			 sc5='н'
		      endif
		      if file("sc6")
			 sc6='1'
		      else
			 sc6='2'
		      endif
		      if file("sc10")
			sc10='д'
		      else
			sc10='н'
		      endif
		      if file("sc12")
			sc12='д'
		      else
			sc12='н'
		      endif
		      if file("sc13")
			sc13='д'
		      else
			sc13='н'
		      endif
		      if file("sc14")
			sc14='д'
		      else
			sc14='н'
		      endif
		      if file("sc15")
			sc15='д'
		      else
			sc15='н'
		      endif
		      if file("sc16")
			sc16='д'
		      else
			sc16='н'
		      endif
		     restore from dannom additive
                     set exclu on
                     open_info(loc0:=9)
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

                if d_s0 = 0 .and. p='е'
              @  9,19,13,61 box ram1
              @ 10,20 clea to 12+ml0,60
              @ 10,36 say 'ВНИМАНИЕ!' color 'R+/B'
              @ 11,20 say 'ДДС ставката е равна на 0, моля изпълнете'
              @ 12,20 say ' Alt+и/с за да въведете ставката на ДДС. '
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


			return
      ************** Процедура за наименование на фирмата *************
		   proc firm

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
	  return
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
		return 1
******************  Съобщение за фирмата  *******************
	       proc belezka
	*       set key -22 to
        *    if file ("&disc_1\belg\belg.exe")
        *  *    ! &disc_1\belg\belg.exe
        *    endif
 	*       restore screen
	*       set key -22 to belezka
 	*      return

******************  Вюджетни вземания    *******************
	       proc budj
	       set key -31 to
	       save screen
	       @  1,10,24,70 box ram1
	       @  2,11 clea to 23,69
	       @  2,22 say 'Д Ъ Р Ж А В H И   В З Е М А H И Я'
               open_obap(loc0:=88)  && aobi
	       find '452   1'
	       @  5,22 say 'ДАHЪK ЗА ОБЩИНАТА    '+str(ksal,14,0)
	       find '452   2'
	       @  6,22 say 'ДАHЪK В/У ПЕЧАЛБАТА  '+str(ksal,14,0)
	       find '452   3'
	       @  7,22 say 'ФОHД "МИЛИОРАЦИИ"    '+str(ksal,14,0)
	       find '452   4'
	       @  8,22 say 'Д О Д  Чл. 13        '+str(ksal,14,0)
	       find '454   1'
	       @ 10,22 say 'Д О Д  Чл. 4         '+str(ksal,14,0)
	       find '454   2'
	       @ 11,22 say 'П K Б                '+str(ksal,14,0)
	       find '455   1'
	       @ 12,22 say 'Д О О                '+str(ksal,14,0)
	       find '453   9'
	       @ 13,22 say 'Д Д С                '+str(ksal,14,0)
	       find '455   2'
	       @ 16,22 say 'БОЛHИЧHИ             '+str(ksal,14,0)
	       find '455   3'
	       @ 17,22 say 'ДЕТСKИ               '+str(ksal,14,0)
	       find '455   4'
	       @ 18,22 say 'МАЙЧЕHСТВО           '+str(ksal,14,0)
	       find '455   5'
	       @ 19,22 say 'ЕДHОКРАТHА ПОМОЩ     '+str(ksal,14,0)
	       do pauza
	       set key -31 to budj
	       restore screen
	       return

          ******************** Процент на ДДС   *****************************
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
	  @ 09,26 say 'Въведете процент ДДС :' get d_s0 pict "99"
	  @ 10,26 say 'Данък при-то иму-тво :' get d_s10 pict "9.99"
	  @ 11,26 say 'Таксата за вписване  :' get d_s11 pict "9.99"
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

      ************** Процедура прави проверка на  дискетата ************
                          proc provdisk
           if file("&us0:\disc\arhi\arhi\&dr0"+".zip")
             memowrit('prov.bat','&disc_1\pk\pkunzip -t &us0:\disc\arhi\arhi\'+trim(dr0)+'.zip';
             +chr(13)+chr(10)+'if errorlevel 1 copy nul > greshka')
               !&disc_1\exe\hstart.exe /NOCONSOLE prov.bat
	          @ 0,0 clea to 24,80
              if .not. file ("greshka")
          	  @  8,13,12,64 box ram1
	         @ 10,15 say 'АРХИВЪТ Е КОРЕКТЕН HА '+upper('&us0:\disc\arhi\arhi\'+trim(dr0)+'.zip')
                 inkey(3)
	          @ 0,0 clea to 24,80
              else
                 @  8,20,12,57 box ram1
                 @  9,35 say 'ВHИМАHИЕ !'  color 'R+/B'
	         @ 10,24 say 'НАПРАВЕН Е НЕКОРЕКТЕН АРХИВ НА'
	         @ 11,27 say upper('&us0:disc\arhi\arhi\'+trim(dr0)+'.zip')
                   erase greshka
                   inkey(9)
              endif
           endif
          erase prov.bat
                          return
      ********* Процедура за отпечатване на заглавна страница на пака ************
                              proc papka
                     set key 21 to
                     save screen
                     store subs(fir,7,31) to X_0
                     X_1='         K  А  С  А      '
                     X_2='   ЯHУАРИ     -     ЮHИ  '
               *     vek0=substr(str(year(date0),6),3,4)
                     set curs on
                 do while .t.
                     @  0, 0 clea to 24,80
                     ramka()
		     @  2,27 say 'ЗАГЛАВHА СТРАHИЦА НА ПАПКА'
		     @  3,26 say '----------------------------'
		     @  8,24 get X_0
		     @ 10,27 get X_1
		     @ 12,27 get X_2
                     chet()
                     if lastkey()=27
                        set key 21 to papka
                        set curs off
                        restore screen
                        return
                     endif
		     izrab()
                     set marg to 0
            ?'F23'
            ?? ' ?????????????????????????????????'
            ? ' ў'+X_0+'ў'
            ? ' ў                               ў'
            ? ' ў                               ў'
            ? ' ў                               ў'
            ? ' ў                               ў'
            ? ' ў    С Ч Е Т О В О Д С Т В О    ў'
            ? ' ў                               ў'
            ? ' ў                               ў'
            ? ' ў                               ў'
            ? ' ў                               ў'
            ? ' ў                               ў'
            ? ' ў   '+X_1+'   ў'
            ? ' ў                               ў'
            ? ' ў                               ў'
            ? ' ў   '+X_2+'   ў'
            ? ' ў                               ў'
            ? ' ў                               ў'
            ? ' ў                               ў'
            ? ' ў                               ў'
            ? ' ў                               ў'
            ? ' ў                               ў'
            ? ' ў         '+vek0+' ГОДИHА           ў'
            ? ' ?????????????????????????????????'
            ? 'F13'
               do pech
                 enddo
                                 return

    
   ***********************    VIKA EXPLPRER   *********************
                           proc explorer
                    do case
                       case dr2='д'
                            dok4='c:\disc\comp\&go0\contract'
                       case dr2='п'
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
