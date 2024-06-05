   *FISH.PRG * f ! if exist


  *  @  0, 0 clea to 24,80
  *  @  0,15  say 'bbbb ' ; inkey(0) //kkk
  *  cance

    * f cal chaper chdire dat dire dlaz dudr firm firma hrlp mego nuhar
    * f pauza podp podred prome ramka setcolos spri noizch
    * f1 azbuka ddohod dobavi grupprom mark pfish promia vzemi
    * f2 helpproba gragd line motik promime slbel smetgd smettd tdog zapov uvedom
    * f3 budzhet raboti vedomost sentinel timecount
    * f5 dospr nach pechzan pfunk rekapi setcons srok harakt zvan zanvi
    * f6 izch kalen nomenkl minosi prenom proz doop lipso
    * f7 dani ddok2 dopl dvzem izrab harve nulb3 nulb4 parvich pech platpi slovom nammese
    * f8 ascans disk dekl6 pismod kalen0 mpls grplat plateg protobr1 direk1
    * f8 asci mins92 stag

      disc_0='\disc'
      disc_1='\disc\hlp'
      pdfxc_0='&disc_1\exe\pdf\PDFXC.exe'

   **   1 dnsi 2 sdni
       set talk off
       set bell off
       set date british


      *                       Г Л О Б А Л H И

  ram1=chr(201)+chr(205)+chr(215)+chr(199)+chr(216)+chr(205)+chr(200)+chr(199)
  ram1=chr(201)+chr(205)+chr(203)+chr(204)+chr(202)+chr(205)+chr(200)+chr(204)
       @  0, 0 clea to 24,80
       tt0=' 10'

        setcolor ('GR+/B')

       store space(1) to l1,l2,l3,l4,l5,l6,ll0,ll1,ll3,ll13,ll14,ll15  && зад║лжи▓елни
       store 'н' to ll1,izch_0,s0000
       store 'м' to l3
       store ' ' to  _loc1, _loc2, _loc3, LOC3,fimes0,fimem0,os_0,nam1,zan0, us_0, iz0
       store space(1) to l0,l4,sch1,sch2,sch3,hara0,dr0,dr1,dni0,plat0,plat1,pal0,kr0,t0,l6,sc15,td_0
       store space(2) to x,xx,pp0,go0,dn1,dn00,ba00,gb00,ibbf0,bibf0,bk00,bf00,buls0,onom00,fir00,buls00,obst00,repu00,prom0,rabo0
       store space(2) to pr0,pr37,pr29,pr22,har0,vek0,vek1,vek2,vek3,vek4,br0,den0,den1,vidd0,dumi0,dngo0,tdd00,mail00,asci0,asci1
       store '   ' to z_1,z_2,z_3,z_4,z_5,z_6,z_7,z_8,z_9,z_10,z_11,z_12,z_13,z_14,z_15,z_16,z_17,z_18,z_19,ll10
       store '   ' to z_20,z_21,z_22,z_23,z_24,z_25,z_26,z_27,z_28,z_29,z_30,z_31,z_32,z_33,z_34,z_35,z_36,z_37,z_38
       store '   ' to j_1,j_2,j_3,j_4,j_5,j_6,j_7,j_8,j_9,j_10,j_11,j_12,j_13,j_14,j_15,j_16,j_17,j_18,j_19,obek0
       store '   ' to j_20,j_21,j_22,j_23,j_24,j_25,j_26,j_27,j_28,j_29,j_30,j_31,j_32,j_33,j_34,j_35,j_36,j_37,j_38
       store '   ' to x_0,x_1,x_2,x_3,x_4,x_5,x_6,x_7,x_8,x_9,x_10,x_11,x_12,x_13,x_14,x_15,x_16,x_17,x_18,x_19,x_20
       store '   ' to x_21,x_22,x_23,x_24,x_25,x_26,x_27,x_28,x_29,x_30,x_31,x_32,x_33,x_34,x_35,x_36,x_37,x_38,x_39
       store '   ' to x_40,x_41,x_42,x_43,x_44,x_45,x_46,x_47,x_48,x_49,x_50,x_51,x_52,x_53,x_54,x_55,x_56,x_57,x_58
       store '   ' to x_59,x_60,x_61,x_62,x_63,x_64,x_65,x_66,x_67,x_68,x_69,x_70,x_71,x_72,x_73,x_74,x_75,x_76,x_77
       store '   ' to x_78,x_79,x_80,x_81,x_82,x_83,x_84,x_85,x_86,x_87,x_88,x_89,x_90,x_91,x_92,x_93,x_94,x_95,x_96
       store '   ' to x_97,x_98,x_99,x_100,x_101,x_102,x_103,x_104,x_105,x_106,x_107,x_108,x_109,x_110,x_111,x_112
       store '   ' to x_113,x_114,x_115,x_116,x_117,x_118,x_119,obr0,namme0,name_T,egn_0,egn_T,bs_T,tars0,sel_0,kod0,pake
       store 0 to x0,pr_2,pr_6,pr_11,pr_13,pr_14,pr_15,pr_16,pr_25,pr_26,pr_30,pr_31,pr_32,pr_33,pr_34,pr_40,pr_41,pr_50,pr_51,pr_52,pr_94,brm0
       store 0 to pr_111,pr_113,pr_114,pr_115,pr_116,pr_125,pr_126,pr_130,pr_131,pr_132,pr_133,pr_134,pr_140,pr_141,pr_150,pr_151,pr_152,b00
       store space(7) to y_0,y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,y_16,y_17,y_18,y_19,y_20,y_21,y_22,y_23,y_24,obia10,obia20,sdn0
       store 0 to b_3,b_30,b_31,b_32,b_33,b_34,b_50,b_51,b_52,bt_53,b_14,b_95,b_99,b_99t,osig0,brtr0,cyr0,vprn0,data0,date0,i00,b_11_s,b_30_s,b_50_s
       store space(4) to dr1,fir,adr00,grad,lize,datk,tel,tel00,vvid,buls,nam,name00,lkar,dlaz,parag0,parag1,bs0,bss0,ba0,bud0,gb0,dni_0,tdd0,grad0,bdbe0
             nest0=repl('_',16)
             cindexloca := ""
       store space(30) to name0,ibdo0
       store 0 to x71,x71_1,x33,x33y,x110,x150,x151,xb151,x601,x602,x603,x604,x605,x606,x607,x608,x609,x610,x610data0,x611,x612,x613,x625,x631,x651,x694,x700,x40t,br3,br33,br4,god0
       store 0 to m_01,m_02,m_03,m_04,m_05,m_06,m_07,m_08,m_09,m_10,m_11,m_12,staz0,xx1,n1,n2,n3,n4,n5,n6,n7,n8,n9,osig1, sum00
       store 0 to x1,x2,x3,b_94,x5,x5b,x5b0,x5b1,x5b2,x5b3,x6,x7,x8,x9,x10,b_11,b_11t,x12,b_13,x14,b_15,b_16,b_25,b_26,x16,x102,x16,xb0,x18,b_42,b_42t
       store 0 to x2,k50,k51,k52,k14,k71,k70,k95,k42,x51,x52,x81,x14,x41,x40,k_k0,dod0,vs0,nom0,data1,dati1,data_1,data_3,data_4,data2,data_2,data3,data_3,data_4d12_1,d12_2,d12_3,d12_4,d12_5,d13_0  && !
       store 0 to b0,b1,b2,b3,b_41,b_40,sb_3,b_9,b_10,bo_2,b_94,b_2,u_0,u_1,u_2,u_3,u_4,u_5,u_6,u_7,u_8 ,u_9,u_10,u_00,u_01,u_02,u_03,u_04,u_05,u_06,u_07,u_08,u_09,u_010,br3
       store 0 to ma0,ekpr0,x201,x204,x205,x207,x409,udra0,kast0,N0,ut_4,gg0,mm0,dd0,bp92,bs92,s92, s92_8,s92_8s,s92_4,s92_4s,s92_1,s92_1s
       store 0 to t161,q0,ma0,ma1,ma2,me0,me1,b80,b81,b82,b92,sb_9,god_0,bch0,vazn0,dpz0,god0,vazn0,osig0,sec0,sec1,sek0,sek1,sek2
       store 0 to p_11,pt_11,p_13,p_14,p_15,p_16,p_25,p_26,p_30,p_31,p_32,p_33,p_34,p_40,ml0,b4,sekundi0
       store 0 to p_41,p_42,p_50,p_51,p_52,p_53,pt_53,p_70,p_71,ya0,ya1,ya0,ya2,mn0,mn1,mn2,da0,da2,yan0,mon0,dan0
       store 0 to dd0,mm0,gg0,bch0,vod0,kpd0,dvd0,dpd0,pnm0,rs0,pnv0,voz0,vpz0,mou0,dau0
       store ' ' to ime0,prime0,family0,inic0,egn0,egn00,pk0,adr0,obl0,nasm0,stg0,stg8,stg4,trk0,trk8,trk4,sch0,dvz0
       store ' ' to pk0,ss0,ms0,ms1,prsl_0,begn0,mg0,bold0,mayd0,detd0,godc0,kd0,pd0,slo01,slo02,slo81,slo82,slo41,slo42
       store ' ' to chlu0,obra0,osnn0,osnp0,nkp0,nkp1,nkpnam1,nkid0,nkidnam0,kd0,pd0,mg0,oid0,oid1,td0,chln0,lkn0,izd0,bsdo0
       store ctod("  /  /    ") to datn0,srok0,datu0,datp0,lkd0,bold0,mayd0,detd0,godc0
       store ctod("  /  /    ") to datn8,datn4,datu8, datu4
       pl_0=1 ;  podr_0=30 ; nom_1=1 ; nom_2=999999 ; j1=2
       meg0=-5 
       norm0='OPF11P10L06'
       sbit0='F11P17L06A65'
    us_0=diskname() ;  date0=date()

             if file("&disc_1\fish\us_0.mem")
                 restore from &disc_1\fish\us_0 additive
                 go0=upper(subs(us_0,4,2))
                 us0=subs(us_0,1,1)
                 dr0=subs(us_0,1,7)
                 dt0=subs(us_0,6,2)

     * !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     * FUNC dirchange() SE POLZUVA S dr0 A NE S us_0 ZASHTO FUNC
     * NE NAMIRA DIR AKO ZAVARSHVA S NAKL. CHERT. KAKTO E US_0
     * SMQNA MEGDU C: D: SE PARWI SAMI S FUNC diskchange() I ZATOVA
     * VINAGI TRYABWA DA SE POLUVAT I DVETE FUNKCII
     * V dirchange("&dr0") SINTAKS. NE E KAKTO V PROC DIRE dirchange("\&dr0")
     * ZASHTOT SA S PROM. S RAZLICHNO SADRGANIE
     * POVEDENIETI I NA DWETE FUNKCII E ANAOGICHNO NA DOS COMM. I ZATOVA
     * NE E CELESAOBRAZNO POLZUVNETO NA DOS COMMAND
                diskchange("&us0")  //  0 exist 1
                dirchange("&dr0")
             endif
               set cent on ; date0=ctod(subs(dtoc(date()),1,8)+subs(us_0,6,2))
              set cent off
     do ramka
               if .not. file ("mese.dbf")
                  l4='y' ;  do dire ;  @  3, 3 clea to 21,75
               endif
       in_0=subs(us_0,1,2)+'&disc_1\job'
       l4='y'
       firma()
                 obek0=subs(trim(ltrim(fir)),1,18)
           do case
              case buls='102905637'
                   obek0=subs('Вила "Mа░и┐ Рева▒"',1,18)
           endcase

         if cyr0=1
            !  &disc_1\cyr\tbds.com /b > aaa.txt
         else
            !  &disc_1\cyr\tbds.com  > aaa.txt
         endif
       if file("aaa.txt") ; eras aaa.txt ; endif

    *     sele 1
    *     use spis
    *     set filter to .not.pd=' '
    *     go top
    *        oid0=oid
    *        nkid0=nkid
    *
    *             if .not.oid=oid0
    *                @ 12,26 say 'ВHИMАHИЕ!'   color 'R+/B'
    *                @ 12,37 say 'ИMАТЕ РАЗЛЧHИ ОИД'
    *                i0=inkey(3)
    *             endif
    *             if .not.nkid=nkid0
    *                @ 12,26 say 'ВHИMАHИЕ!'  color 'R+/B'
    *                @ 12,37 say 'ИMАТЕ РАЗЛЧHИ HKИД'
    *                i0=inkey(2)
    *                exit
    *             endif
    *             if lastkey()=27 .or. lastkey()=13 .or. lastkey()=32
    *                exit
    *             endif
    *       if .not. eof()
    *          skip
    *       endif
    *     enddo
         dospr()
      #include "Inkey.ch"
      #include "error.ch"
      #include "fileio.ch"
   *  #include "achoice.ch"
       set key  -5 to mego    && F6
       set key  -6 to doop    && F7
       set key -33 to ddok2   && Alt+F4
       set key -35 to mego    && Alt+F6
       set key  28 to help    && F1
       set key 275 to noizch  && Alt+r
       set key 280 to dudr    && Alt+o  /lat/
       set key 301 to cal     && Alt+x  /lat/
       set key 306 to podp    && Alt+m  /lat/
       tt0=' 10'
       set curs off
      if subs(data0,4,2)=subs(dtoc(date()),7,2)
 ! cmd /c 'if not exist \disc\nul md \DISC'             > aaa.txt
 ! cmd /c 'if not exist \disc\god&dt0\nul md \DISC\GOD&dt0'      > aaa.txt
 ! cmd /c 'if not exist \disc\arhi\nul md \DISC\ARHI'         > aaa.txt
 ! cmd /c 'if not exist \disc\arhi\arh\nul md \DISC\ARHI\ARH'    > aaa.txt
 ! cmd /c 'if not exist \disc\arhi\arhi\nul md \DISC\ARHI\ARHI'    > aaa.txt
 ! cmd /c 'if not exist \disc\god&dt0\doo\nul md \DISC\GOD&dt0\DOO'  > aaa.txt
 ! cmd /c 'if not exist \disc\god&dt0\zAPL\nul md \DISC\GOD&dt0\ZAPL' > aaa.txt
 ! cmd /c 'if not exist \disc\sync\nul md \DISC\SYNC' > aaa.txt
 ! cmd /c 'if not exist \disc\sync\doc\nul md \DISC\SYNC\DOC' > aaa.txt
 ! cmd /c 'if not exist \disc\sync\doc\&go0\nul md \DISC\SYNC\DOC\&go0' > aaa.txt
      inkey(0.5)
      eras aaa.txt
      endif
   *    @  0, 0 clea to 24,80
       do while .t.
       set key -37 to kalen ; set key -31 to chaper
       set key -7 to dat ;  set key -8 to firm ;  set key 182 to zvetia
       sek0=0  ; set curs off
       do ramka
       if ll1='д' ; @  0,28 say 'БЕЗ ДЪРЖАВHИ ВЗЕMАHИЯ ' ; endif
       if izch_0='д'
          @  0,28 say 'СЪС ЗАПИС HА ИЗЧИСЛЕHИЕ'
       endif
       set wrap on
       @  2,25 say 'Г  Л  А  В  H  О    M  Е  H  Ю'
       @  4,27 prompt '1. Спи▒║╖ен ▒║▒▓ав'
       @  6,27 prompt '2. С│ми за пол│╖аване'
       @  8,27 prompt '3. Рекапи▓│ла╢и┐'
       @ 10,27 prompt '4. По ме▒е╖на об░або▓ка'
       @ 12,27 prompt '5. Сп░авки'
       @ 14,27 prompt '6. Kо░ек╢ии'
       @ 16,27 prompt '7. Из▓░иване'
       @ 18,27 prompt '8. А░╡иви░ане и в║з▒▓анов┐ване'
       @ 20,27 prompt '9. Из╡од о▓ п░ог░ама▓а'
       @ 23,15 say 'Избо░ на мен╛ ▒▓░елка '+chr(25)+' '+chr(24)+' или негови┐ по░еден номе░'
  *    @ 22, 1 say repli(chr(205),78)
              fimes0='nom_1-1<val(nom).and.val(nom)<nom_2+1'
              fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
    *       mego()
      *   restore from &disc_1\fish\doopr.mem additive
      if  pr_11=0.or.pr_111=0.or.pr_13=0.or.pr_113=0.or.pr_14=0.or.pr_114=0.or.;
          pr_26=0.or.pr_30=0.or.pr_31=0.or.pr_32=0.or.pr_50=0.or.pr_51=0.or.;
          pr_52=0.or.pr_94=0.or.pr_2=0.or.pr_6=0
          save screen
          @  9,10,14,69 box ram1 ; @ 10,11 clea to 13,68
          @ 10+ml0,36 say 'ВHИMА═ИЕ !'  color 'R+/B'
          @ 12+ml0,11 say 'Mол┐ в║веде▓е ▒▓ойно▒▓и▓е в ▓абли╢а ПРОЦHТИ HА ОСИГУРОВКИ,'
          @ 13+ml0,20 say 'ко┐▓о ▒е ▒▓а░▓и░а ▒ F7 В ГЛАВHО MЕHЮ'
           inkey(0)
          restore screen
      endif

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
           set cent off
           @  0,75 say substr(dtoc(date0),4,5)
      *   if file("mese.dbf")
      *         sele 2
      *         use mese inde sdni
      *         go bott
      *          if .not.data=data0
      *            @ 23,11 say 'ВHИMАHИЕ ???' color 'R+/B'
      *      *     @ 23,20 say 'ме▒е╢а на п░ог░ама▓а е '+substr(data00,1,2)+', а на ░або▓ни┐ ме▒е╢ '+substr(data,1,2)

      *            pauza()
      *          endif
      *   endif

          menu to v1
        set curs on
        save screen to ekr0
        set key -2 to
        set key -3 to
        set key -7 to
        set key -8 to
        set key -37 to
        set key 182 to

      if  (v1=1.or.v1=2.or.v1=3.or.v1=4.or.v1=0.or.v1=6.or.v1=7)
         if .not. file('mese.dbf')
           @  23,15 say  ' Mол┐ ░аза░╡иви░ай▓е ░або▓ни▓е ┤айлове ▒ мен╛ 8/8 !'
               inkey(10)
           @  23,15 say space(50)
            loop
         else
          if (.not.file ("&us_0\dnsi.ntx")).or.(.not.file ("&us_0\gdnsi.ntx"))
              podr_0=30
              save all like podr_0 to podred
              podred()
           endif
         endif
      endif

         do case
            case v1=9
                 copy file us_0.mem to &disc_1\fish\us_0.mem
       do case
         case cyr0=1
         !   &disc_1\cyr\tbds.com /u
         case cyr0=2
         !   &disc_1\cyr\kvd.com /u
      endcase

        close all
        clea all
        set talk on
        set bell on
        set color to
        * ! &disc_1\cyr\tbds /u

       exit
           case v1=1
                 fis1()
           case v1=2
                 fis2()
           case v1=3
                 fis3()
           case v1=4
                 fis4()
           case v1=5
                 fis5()
           case v1=6
                 fis6()
           case v1=7
                      v2=1
                      @ 6,23,18,56 box ram1
                      @ 7,24 clea to 17,55
                      @  7,32 say 'И З Т Р И В А H Е'
                      @  8,31 say '-------------------'
                      @ 10,31 prompt '1. В ме▒е╖ни┐ ┤айл'
                      @ 12,31 prompt '2. В на▓░│пва╣и┐ ┤айл'
                      @ 14,31 prompt '3. Година в ме▒е╖ни┐ '
                      @ 16,31 prompt '4. Hа▓░│пва╣ S0000'

                      save screen
                          menu to v2
                       if lastkey()=27
                              loop
                       endif
                 set cent on
                 store date0 to date1
          do while .t.
                 @  0, 0 clea to 24,80
                 ramka()
                 set cent on
                 @  3,19 say '---------------------------------------'
            do case
               case v2=1
              *  l1='м'
                 meg0=-5
                 @  2,20 say ' ИЗТРИВАHЕ HА MЕСЕЦ В MЕСЕЧHИЯ ФАЙЛ'
                 @  7,19 say 'В║веде▓е ме▒е╢а за из▓░иване' get date1
                 read
                 vek1= subs(dtoc(date1),7,4)
                 data1=subs(dtoc(date1),4,3)+subs(dtoc(date1),9,2)
                 dp0="substr(data1,1,1)=' '"
                 dp1="vek+data=vek1+data1"
                 vd0=vek1+data1
                 dd0=substr(data1,1,2)+'.mz'
               case v2=2
                 meg0=-35
               * l1='г'
                 @  2,20 say ' ИЗТРИВАHЕ HА MЕСЕЦ В ГОДИШHИЯ ФАЙЛ'
                 @  7,19 say 'В║веде▓е ме▒е╢а за из▓░иване' get date1
                 read
                 vek1= subs(dtoc(date1),7,4)
                 data1=subs(dtoc(date1),4,3)+subs(dtoc(date1),9,2)
                 dp0="substr(data1,1,1)=' '"
                 dp1="vek+data=vek1+data1"
                 vd0=vek1+data1
                 dd0=substr(data1,1,2)+'.mz'
               case v2=3
                 meg0=-5
              *  l1='м'
                 vek1='    '
                 @  2,20 say 'ИЗТРИВАHЕ HА ГОДИHА В MЕСЕЧHИЯ ФАЙЛ'
                 @  7,21 say 'В║веде▓е ме▒е╢а за из▓░иване' get vek1
                 read
                 dp0="substr(vek1,1,1)=' '"
                 dp1="vek=vek1"
                 store vek1 to vd0
                 dd0=vek1+'.mz'
               case v2=4
                 @  2,25 say 'ИЗТРИВАHЕ HА MЕСЕЦ s0000'
                   if file("s0000")
                      !del s0000
                   endif
                   keyboard chr(-33)
                   ddok2()
                   exit
            endcase
                 set cent off
                 if &dp0 .or. lastkey()=27
           l0='н'
           @ 23,15 say space(51)
           @ 23,29 say 'Желае▓е ли из▓░иване д/н' get l0 valid l0='д'.or.l0='н'.or.l0='d'.or.l0='n'
           read
         if l0='д'.or.l0='d'
                                  if file("*.mz")
                                      !del *.mz
                                  endif

              @ 23,23 say 'П░ог░ама▓а из▓░ива, мол┐ из╖акай▓е !'
                           podr_0=31
                           save all like podr_0 to podred
                           podred()
         endif
                   exit
                 endif
        l0=' '
           @ 23,22 say 'Mа░ки░ане - "м" в║з▒▓анов┐ване - "в"' get l0 valid l0=' '.or.l0='м'.or.l0='в'.or.l0='m'.or.l0='w'
           read
               if l0=' '
                   loop
               endif
        if l0='м'
   @ 12,18 say 'П░ог░ама▓а ма░ки░а обо░о▓и▓е на ме▒е╢ - '+dtoc(date1)
        else
   @ 12,18 say 'П░ог░ама▓а в║з▒▓ан обо░о▓и▓е на ме▒е╢ - '+dtoc(date1)
        endif
                @ 23,24 say 'П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е !'
               do mego
                find '&vd0'
                if found()
                         do while &dp1
                             han0=fcreate("&dd0")
                             fclose(han0)
                          if l0='м'.or.l0='m'
                              dele
                          else
                                 if file("&dd0")
                                    eras  &dd0
                                 endif
                              recall
                          endif
                            if .not. eof()
                               skip
                            endif
                         enddo
                else
                endif
                set bell on
                 ?? chr(7)
                set bell off
              @ 23,15 say space(16)+'П░ог░ама▓а п░икл╛╖и'+space(16)
                      pauza()
          enddo




           case v1=8        // NACAHALO ARHIVIRAE / WYZSTANOVYAVANE
                    l4='n'
                    v2=1
                   store subs(us_0,1,1) to us0
                   for i = 65 to 90
                        us0=lower(chr(i))
                        if file("&us0:\"+'__FLASH\a')
                            exit
                         else
                            us0='c'
                         endif
                   next

                      @ 6,25,18,57 box ram1
                      @ 7,26 clea to 17,56
                      @  7,28 say 'АРХИВИРАHЕ и ВЪЗСТАHОВЯВАHЕ'
                      @  9,30 prompt '1. А░╡иви░ане ▒ ZIP'
                      @ 10,30 prompt '2. В║з▒▓анов. ▒ ZIP'
                      @ 11,30 prompt '3. А░╡иви░ане ▒ COPY'
                      @ 12,30 prompt '4. В║з▒▓анов. ▒ COPY'
                      @ 13,30 prompt '5.                  '
                      @ 14,30 prompt '6. Да▓и на а░╡иви   '
                      @ 15,30 prompt '7. Об╣ а░╡ив  STOP!!'
                      @ 16,30 prompt '8. В║з▒.о▓ Об╣ а░╡ив'

                          menu to v2
                       if lastkey()=27
                              loop
                       endif
                          if v2=2.or.v2=4
                               l0='н'
                               @ 23,15 say space(51)
                               @ 23,16 say 'ВHИMАHИЕ !'  color 'R+/B'
                               @ 23,28 say 'По▓в║░ждава▓е ли в║з▒▓анов. д/н ?' get l0  valid  l0='д'.or.l0='н'.or.l0='d'.or.l0='n'
                               read
                                       if l0='н'.or.l0='n'
                                          loop
                                       endif
                          endif
                       if lastkey()=27
                             store subs(us_0,1,1) to us0
                             loop    && return
                      endif

                      if lastkey()=27
                              loop
                       endif

                          @ 7,26 clea to 17,56
                             do case
                               case v2=1
                                  @ 7,32 say '1. А░╡иви░ане ▒ ZIP'
                               case v2=2
                                  @ 7,32 say '2. В║з▒▓анов. ▒ ZIP'
                               case v2=3
                                  @ 7,32 say '3. А░╡иви░ане ▒ COPY'
                               case v2=4
                                  @ 7,32 say '4. В║з▒▓анов. ▒ COPY'
                               case v2=7
                                  @ 7,32 say '7. Об╣ а░╡ив  STOP!!'
                               case v2=8
                                  @ 7,32 say '8. В║з▒.о▓ Об╣ а░╡ив'
                             endcase


  			    if  v2=3  // ARHIV-01
                                       if v2=3
                                          us0=' '
                                       endif
                                  *    if sc9='д'
                                  *       us0='a'
                                  *    endif
                   @ 10,28 say 'О▓ │-▒▓во:    на │-▒▓во:'
                   @ 10,39 get us1 valid (64 < ASC(us1).and.;
                   (ASC(us1) < 91)).or.(96 < ASC(us1).and.(ASC(us1) < 123))
                   @ 10,53  get us0 valid (64 < ASC(us0).and.;
                   (ASC(us0) < 91)).or.(96 < ASC(us0).and.(ASC(us0) < 123))
                   read
                                      save screen
                                    endif                // ARHIV-01

  			    if  v2=4   //  VAZST-01
                                       if v2=4
                                          us0=' '
                                       endif
                                 *     if sc9='д'
                                 *        us0='a'
                                 *     endif
      @ 10,33 say 'О▓ │▒▓░ой▒▓во :' get us0 valid (64 < ASC(us0).and.(ASC(us0) < 91));
     .or.(96 < ASC(us0).and.(ASC(us0) < 123))
       read
                            endif      //  VAZST-01

                             if  v2=7.or.v2=8     // PAKET-01
				if v2=8
                                   if v2=4 ; us0=' ' ; endif
                     store pake to pake0
                     restore screen
                     @ 6,20,18,59 box ram1 ; @ 7,21 clea to 17,58
                     @ 7,21 say 'В║веде▓ паке▓а за в║з▒▓аноб┐ване:' get pake0 valid (64 < ASC(pake0).and.(ASC(pake0) < 91))
                     read
			      if lastkey()=27  ;  loop  ; endif
                     @  9,22 say upper('&us0:\disc\arhi\arhi ; ')+diskname()+upper(':&disc_0\arhi\arhi')
                     @ 10,22 say upper('d:\sync\arhi\&pake0; d:\sync\arhi_1')
                     @ 11,21 say repl(chr(205),38)
                     @ 16,21 say repl('═',38)
                     @ 17,21 say 'С▓░елка <- -> показва да▓а▓а на а░╡ива'
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
              @ 17,23 say 'H┐ма▓е а░╡ив на ▓ова ░або▓но м┐▒▓о!'
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
                         versia()  // fis8
                       loop
                  endif
                    if lastkey()=27 .or. lastkey()=13 ; exit ; endif
           enddo
			      if  lastkey()=27
                                  us_1=space(8)
 				  loop  && return
 			      endif
                         us_1=izb[iz0]+'  '
                         @ 17,21 say 'Избо░' get us_1

           endif //  v2=8
			 	read // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                             endif              // PAKET-01




  		              if lastkey()=27
                                  us_1=space(8)
  			          loop  && return
                             endif

  	           if  (v2=1.or.v2=2)

                           * l3='    MОЛЯ ВЪВЕДЕТЕ РАБОТHАТА ДИРЕКТОРИЯ      '
                            if v2=1
                             l3=' Mол┐ в║вед▓е ди░ек▓о░и┐▓а за а░╡иви░ан░ане '
                            else
                             l3='Mол┐ в║вед▓е ди░ек▓о░и┐▓а за в║з▒▓анов┐ване '
                            endif

  	                     dire()

  	                if  lastkey()=27
  		          loop  && return
                        endif
  	                 @ 12,26,14,55 box ram1
  	                 @ 13,27 clea to 13,54
  	           endif
                                 clos all

  	 	    do case
  		       case v2=1   // ARHIV-02
       restore screen from ekr0
       @ 12,21,14,59 box ram1
       @ 13,22 clea to 13,58
     if len(dr0)=4
       @ 13,28 say 'П░ог░ама▓а а░╡иви░а - '+rtrim(upper('f&dr0'))
     else
       @ 13,24 say 'П░ог░ама▓а а░╡иви░а - '+upper('f&dr0')
     endif
                     dr0=subs(trim(dr0),1,4)+'.zip'
                     dr1=diskname()+':\'+subs(dr0,1,4)+'\'
                     dr2=chr(13)+chr(10)
         ssss= diskname()+':&disc_1\fish\fish.lst'
         dele file &ssss
           memowrit(diskname()+":&disc_1\fish\fish.lst",+dr1+'mese.dbf'+dr2;
        +dr1+'godn.dbf'+dr2+dr1+'spis.dbf'+dr2+dr1+'fdate.mem'+dr2+dr1+'dannom.mem'+dr2;
        +dr1+'harved.mem'+dr2+dr1+'namhar.mem'+dr2+dr1+'nulstoi.mem'+dr2+dr1+'rabodni.mem'+dr2)
        if  file("&us0:\disc\arhi\arh\f&dr0")
            ! del &us0:\disc\arhi\arh\f&dr0
        endif
         inkey(2)
      ! &disc_1\pk\pkzip &us0:\disc\arhi\arh\f&dr0 -3 @&disc_1\fish\fish.lst > aaa.txt
         inkey(2)

       if file("\disc\arhi\arh\f&dr0")
         ! del \disc\arhi\arh\f&dr0
       endif
         inkey(2)
      ! &disc_1\pk\pkzip \disc\arhi\arh\f&dr0 -3 @&disc_1\fish\fish.lst  > aaa.txt
         inkey(2)
         eras aaa.txt


	   	       case v2=2  //   VAZST-01
  *   provdisk()
  *   if file("greshka")
  *      loop
  *   endif
       restore screen from ekr0
       @ 12,21,14,59 box ram1
       @ 13,22 clea to 13,58
     if len(dr0)=4
       @ 13,24 say 'П░ог░ама▓а в║з▒▓анов┐ва - '+rtrim(upper('f&dr0'))
     else
       @ 13,21 say 'П░ог░ама▓а в║з▒▓анов┐ва - '+upper('f&dr0')
     endif

      ! &disc_1\pk\pkunzip -o  &us0:\disc\arhi\arh\f&dr0   > aaa.txt
         inkey(2)
      eras aaa.txt

                              podr_0=30
                              save all like podr_0 to podred
                              podred()



  	           case v2=3   //   ARHIV-03  COPY
                             if diskname()=upper(us0)
                                @ 23+ml0,15 say space(51)
                                @ 23+ml0,16 say 'ВHИMАHИЕ !' color 'R+/B'
                                @ 23+ml0,27 say 'не може▓е да а░╡иви░а▓е в ▒║╣о▓о │-во !'
                                inkey(2)
                                loop
                             endif
                             store go0 to go1
                             dr0=trim(dr0)
                             store dr0 to dr2
                              if len(dr0)=4
                                  @ 13,28 say 'П░ог░ама▓а а░╡иви░а - '+upper('&go1')+'&dt0'
                              else
                                  @ 13,28 say 'П░ог░ама▓а а░╡иви░а - '+substr(dr2,6,4)
                              endif

                copy file \&dr0\mese.dbf    to &us0:\&dr2\mese.dbf
                copy file \&dr0\godn.dbf    to &us0:\&dr2\godn.dbf
                copy file \&dr0\spis.dbf    to &us0:\&dr2\spis.dbf
                copy file \&dr0\fdate.mem   to &us0:\&dr2\fdate.mem
                copy file \&dr0\dannom.mem  to &us0:\&dr2\dannom.mem
                copy file \&dr0\harved.mem  to &us0:\&dr2\harved.mem
                copy file \&dr0\namhar.mem  to &us0:\&dr2\namhar.mem
                copy file \&dr0\nulstoi.mem to &us0:\&dr2\nulstoi.mem
                copy file \&dr0\rabodni.mem to &us0:\&dr2\rabodni.mem
                         dr0=trim(dr0)

                         store upper('&us0:\&dr0\') to us_0
                         save all like us_0 to us_0
                         podr_0=30
                         save all like podr_0 to podred
                         do podred
                         us_0=diskname()+':\'+curdir()+'\'
                         save all like us_0 to us_0

  	            case v2=4  //   VAZST-3 copy

                             if diskname()=upper(us0)
                                @ 23+ml0,15 say space(51)
                                @ 23+ml0,16 say 'ВHИMАHИЕ !' color 'R+/B'
                                @ 23+ml0,27 say 'не може▓е да в║з▒▓онов. о▓ ▒║╣о▓о │-во!'
                                inkey(2)
                                loop
                             endif
  		            store go0 to go1
  		            dr0=trim(dr0)

  		            store dr0 to dr2
                               if len(dr0)=4
                                   @ 13,27 say 'П░ог░ама▓а в║з▒▓анов┐ва-'+upper('&go1')+'&dt0'
                               else
                                   @ 13,27 say 'П░ог░ама▓а в║з▒▓анов┐ва-'+substr(dr2,6,4)
                               endif

             copy file &us0:\&dr2\mese.dbf     to \&dr0\mese.dbf
             copy file &us0:\&dr2\godn.dbf     to \&dr0\godn.dbf
             copy file &us0:\&dr2\spis.dbf     to \&dr0\spis.dbf
             copy file &us0:\&dr2\fdate.mem    to \&dr0\fdate.mem
             copy file &us0:\&dr2\dannom.mem   to \&dr0\dannom.mem
             copy file &us0:\&dr2\harved.mem   to \&dr0\harved.mem
             copy file &us0:\&dr2\namhar.mem   to \&dr0\namhar.mem
           * copy file &us0:\&dr2\harsmet.mem  to \&dr0\harsmet.mem  && antetka na wedomost i ne trqbwa da se prehwyrla
             copy file &us0:\&dr2\nulstoi.mem  to \&dr0\nulstoi.mem
             copy file &us0:\&dr2\rabodni.mem  to \&dr0\rabodni.mem


             *     dr0=trim(dr0)
             *     store upper('&us0:\&dr0\') to us_0
             *     save all like us_0 to us_0
                   podr_0=30
                   save all like podr_0 to podred
                    podred()
                       case v2=5
                       case v2=6
                       case v2=8
        restore screen from ekr0
        @ 12,19,14,62 box ram1
        @ 13,20 clea to 13,61
        dr0='f'+subs(us_0,4,4)+'.zip'
           if iz0=1.or.iz0=2.or.iz0=3
        @ 13,21 say 'В║з▒▓. о▓ '+subs(upper('&us_1'),1,17)+' -> '+dr0
           else
        @ 13,23 say 'В║з▒▓. о▓ '+subs(upper('&us_1'),1,14)+' -> '+dr0
            endif
            eras &dr0
         ! &disc_1\pk\pkunzip -o &us_1 &dr0 > aaa.txt 
         inkey(2)
         ! &disc_1\pk\pkunzip -o &dr0 > aaa.txt  
         inkey(3) // never with ;
          eras aaa.txt ; inkey(1) ;  eras &dr0
          if ! file ("mese.dbf")
              @ 13,17 clea to 13,75 ; @ 12,17,14,68 box ram1  
              @ 13,18 say 'Паке▓а '+trim(us_1)+' е неко░ек▓eн!' color 'R+/B' ; inkey(0) 
          else 
          restore screen from ekr0
              us_1=space(8) ; podr_0=30 ;  save all like podr_0 to podred ; podred()
              restore from date additive ; data0=substr(dtoc(date0),4,3)+subs(us_0,6,2)
          endif
        endcase
   **************  KRAY  ARHIVIRAE / WYZSTANOVYAVANE  ******************
       endcase
       enddo

      ************** П░о╢ед│░а за н│ли░ане на ╡а░ак▓е░и▒▓ики   ********
                   proc nuhar
          set key -2 to nomenkl
          @ 23,16 say '         F3 - ▒пи▒║к на номенкла▓│░и▓е          '
          @  8,28 say 'H│ли░ане на ╡а░ак▓е░и▒▓ики'
          restore from nulstoi additive
          clea gets
             br0=1
             br1=3
             br2='  '
            do while br0 < 20
              br2=ltrim(str(br0,2))
              @ 10,br1 get z_&br2
              br0=br0+1
              br1=br1+4
             enddo
             br0=20
             br1=3
             br2='  '
            do while br0 < 39
              br2=ltrim(str(br0,2))
              @ 12,br1 get z_&br2
              br0=br0+1
              br1=br1+4
             enddo


          @ 15,16 say 'Ха░ак▓е░и▒▓ики зави▒ими о▓ ░або▓ни▓е дни в ме▒е╢а'
          restore from rabodni additive
             br0=1
             br1=3
             br2='  '
            do while br0 < 20
              br2=ltrim(str(br0,2))
              @ 17,br1 get j_&br2
              br0=br0+1
              br1=br1+4
             enddo
             br0=20
             br1=3
             br2='  '
            do while br0 < 39
              br2=ltrim(str(br0,2))
              @ 19,br1 get j_&br2
              br0=br0+1
              br1=br1+4
             enddo
               read
        save all like z_* to nulstoi
        save all like j_* to rabodni
        @  5, 2 clea to 19,78
        @  5, 8 say 'П░ог░ама ╣е о▓к░ие ме▒е╢ '+data0+' по▓в║░ждава▓е ли о▓к░иване▓о д/н:' get l0
          read
          set key -2 to nuhar
          return

      ************** П░о╢ед│░а за пе╖а▓ на подпи▒ **********
                   proc podp
           save screen
           set prin on
           ?
           ? '          ИЗГОТВИЛ : ..............            УТВЪРДИЛ : ..............'
           ?
           set prin off
           restore screen
                   return

      ************** П░о╢ед│░а за да▓а▓а  *************
                   proc dat
           set key -7 to
           save screen
          @  9,20,13,59 box ram1
          @ 10,21 clea to 12,58
          set curs on
          set cent on
          @ 11,22 say 'В║веде▓е ░або▓на▓а да▓а :' get date0
          read
          set curs off
          set cent off
          save all like date0 to fdate
          vek0=substr(str(year(date0),6),3,4)
      *   dt0=substr(dtoc(date0),7,2)
          dt0=subs(us_0,6,2)
          ***!!! ako 1 e markirano spira da se izrabotwa fish sas
          *** zapis za predishna godina  zashto ne se promenq godinata
          dt0=substr(dtoc(date0),7,2)   //  1
      *   dt0=subs(us_0,6,2)            //  2





          data0=substr(dtoc(date0),4,3)+dt0
          dte1=ctod('01'+substr(dtoc(date0),3,6))
          store data0 to data_1,data_2
          set key -7 to dat
          restore screen
          @ 0,75 say substr(dtoc(date0),4,5)
          return

      ************** О╖е░▓аване на ░амка  **************
                       proc ramka

       @ 0,0 clea to 24+ml0,80 ; @ 0,0 say upper(us_0)
       @  1, 0,24+ml0,79 box ram1 ; @ 22+ml0,1 say repl(chr(205),78)
       @ 22,14 say chr(203) ; @ 22,66 say chr(203)
       @ 23,14 say chr(204) ; @ 23,66 say chr(204)
       @ 24,14 say chr(202) ; @ 24,66 say chr(202)

                          do case
                             case cdow(date())='Monday'
                                  cden0='Понеделник'
                             case cdow(date())='Tuesday'
                                  cden0='  В▓о░ник '
                             case cdow(date())='Wednesday'
                                  cden0='  С░┐да   '
                             case cdow(date())='Thursday'
                                  cden0=' Че▓в║░▓║к'
                             case cdow(date())='Friday'
                                  cden0='   Пе▓║к  '
                             case cdow(date())='Saturday'
                                  cden0='  С║бо▓а  '
                             case cdow(date())='Sunday'
                                  cden0='  Hедел┐  '
                          endcase
                         @  0,75 say substr(dtoc(date0),4,5)
                         @ 23, 3 say cden0
                         @ 23,69 say substr(dtoc(date()),1,10)



                      polo()
                       return

       ******************   П░о╢ед│░а за па│за  ***************
                        proc pauza
                         clea gets
                          @ 16,80 get l0
                           read
                         clea gets
                       return

       ************** калк│ла▓о░  ********************
                          proc cal
                          ! &disc_1\cal\cal
                          return

      ************** П░о╢ед│░а за помо╣ help   ************
                   proc help
           save screen
           set key 28 to
           @ 19,0 say ' '
           do ramka
           @  2, 2 clea to 21, 78
           @ 23, 2 say '                  Следва╣ ек░ан - PgUp    П░еди╕ен ек░ан PgDu               '
           @ 22,11 say repli(chr(205),59)
            ff0 = select()
            sele 7
            use &disc_1\fish\fhlp
            set filter to kod=tt0
                go top
                declare fiel[1]
                fiel[1]='nam'
                declare imem[1]
                imem[1]='                              ПОMОЩЕH ЕKРАH'
             *  dbedit(2,2,21,78,fiel," ",'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',imem)
                dbedit(2,2,21,78,fiel," ",repl('x',77),imem)
           restore screen
           sele &ff0
           set key 28 to help
           return

      ************** П░о╢ед│░а за помо╣ help   ************
                   proc prome
            ff0 = select()
            sele 7
            use &disc_1\fish\fhlp
            set filter to kod=' 99'
                go top
                declare fiel[1]
                fiel[1]='nam'
                declare imem[1]
                imem[1]='                                           '
 dbedit(12,2,21,78,fiel,"p1funk",'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',imem)
           sele &ff0
           set key 28 to help
           return


      ************** П░о╢ед│░а за в░емнно ▒пи░ане    ******************
                          proc spri
                                 b0=b0+1
                                 if  b0=b1.or.b0>b1
                                   if b3=0
                                      do case
                                         case tt0=' 30'
                                              b1=b1+5
                                      endcase
                                   endif
                                   b3=b3+1
                                   b0=0
                                   save_0='s'+nulb3()
                                   set prin to &save_0
                                 endif
             *  keyboard chr(13)
             *  keyboard chr(4)
             *  keyboard chr(19)


                          return

      ************** П░о╢ед│░а за наименование на ┤и░ма▓а *************
                   proc dire
           set key -3 to
       *   save screen
           us0=upper(us0)
      do while .t.
           @  3, 3 clea to 21,75
           @ 12,19,20,62 box ram1
           @ 13,20 clea to 19,61

                if l4='y'
                  @ 10,32 say 'См┐на на ди░ек▓о░и┐▓а'
                endif

           @ 13,20 say 'В║веде▓е │-во' get us0 valid 64<asc(us0).and.asc(us0)<123
           @ 13,37 say 'Ши┤║░а на ┤-▓а' get go0 valid 64<asc(go0).and.asc(go0)<123
           @ 13,55 say 'Год.' get dt0
                 read
            if empt(us0).or. empty(go0) .or. empty(dt0)
              @  6,39 say 'ВHИMАHИЕ!' color 'R+/B'
              @  8,21 say ' недоп│▒▓имо е да има непоп║лнени поле▓а!'
              @  8,35 say upper(dr0) color 'R+/B'
              inkey(6)
              loop
           endif
      
               us0=upper(us0)
               @ 17,24 prompt upper('&go0')+'&dt0'
               @ 15,30 prompt 'JANU'
               @ 17,30 prompt 'FEBR'
               @ 19,30 prompt 'MARC'
               @ 15,36 prompt 'APRI'
               @ 17,36 prompt 'MAY '
               @ 19,36 prompt 'JUNE'
               @ 15,42 prompt 'JULY'
               @ 17,42 prompt 'AUGU'
               @ 19,42 prompt 'SEPT'
               @ 15,48 prompt 'OCTO'
               @ 17,48 prompt 'NOVE'
               @ 19,48 prompt 'DECE'
               @ 17,54 prompt 'IZHO'
                 menu to v22

               do case
                  case v22=1
                       dr0=go0+dt0+'     '
                  case v22=2
                       dr0=go0+dt0+'\JANU'
                  case v22=3
                       dr0=go0+dt0+'\FEBR'
                  case v22=4
                       dr0=go0+dt0+'\MARC'
                  case v22=5
                       dr0=go0+dt0+'\APRI'
                  case v22=6
                       dr0=go0+dt0+'\MAY '
                  case v22=7
                       dr0=go0+dt0+'\JUNE'
                  case v22=8
                       dr0=go0+dt0+'\JULY'
                  case v22=9
                       dr0=go0+dt0+'\AUGU'
                  case v22=10
                       dr0=go0+dt0+'\SEPT'
                  case v22=11
                       dr0=go0+dt0+'\OCTO'
                  case v22=12
                       dr0=go0+dt0+'\NOVE'
                  case v22=13
                       dr0=go0+dt0+'\DECE'
                  case v22=14
                       dr0=go0+dt0+'\IZHO'
               endcase

               dr0=trim(dr0)

     if l4='y'
       ! cmd /c if exist &us0:\&dr0 (echo &us0:\&dr0) ELSE (echo NOTFOLDER) > aaa.txt
       inkey(1)
       if .not. '&us0:\&dr0'=trim(subs(memoline(memoread('aaa.txt'),31,1),1,15))
          @  6,36 say 'ВHИMАHИЕ!' color 'R+/B'
          @  8,21 say 'ДИРЕКТОРИЯТА                HЕ Е HАMЕРЕHА!'
          @  8,36 say upper(us0)+':'+upper(dr0) color 'R+/B'
            inkey(1)
            loop
       endif
             eras aaa.txt
             * chdire()
                          diskchange("&us0")
                          dirchange("\&dr0")

              us_0=diskname()+':\'+curdir()+'\'
              eras us_0.mem
              save all like us_0 to us_0
          if file ("fdate.mem")
                 restore from fdate additive
           else
                set cent on
                 set cent on
                 date0=ctod(subs(dtoc(date()),1,8)+subs(us_0,6,2))
                 save all like date0 to fdate
                 @ 0,72 say dtoc(date0)
                 set cent off
           endif
           *  chdire()

        if .not. file('&us0:\&dr0\mese.dbf')
          return 0
        endif
     endif
             if lastkey()=13 .or. lastkey()=27
                 exit
             endif
      enddo

      *   restore screen
         if l4='y'
            firma()
         endif
          l0=' '
         ** missfile // dobavya novi .dbf faylove v stara direktoriya
                                return

      ************** П░о╢ед│░а за ▒м┐на на ┤и░ма **********
                         proc firma
              if .not. file("dannom.mem")
                 firm()
              endif
             ***********   NACHALO MEM PROWERKI ******
          if file ("us_0.mem")
               restore from us_0 additive
          else
               us_0=diskname()+':\'+curdir()+'\'
               eras us_0.mem
               save all like us_0 to us_0
         endif
           if file ("&disc_1\job\pake.mem")
                restore from &disc_1\job\pake additive
           else
                pake='XXXX'
           endif

         if file ("zvetia.mem")
           restore from zvetia additive
        else
           zv0=2
        endif
            if file ("&disc_1\job\cyr.mem")
               restore from &disc_1\job\cyr additive
            else
               cyr0=1
               save all like cyr0 to &disc_1\job\cyr
            endif
            inkey(1)

           if file ("&disc_1\fish\merd.mem")
              restore from &disc_1\fish\merd additive
           else
              store 0 to m_01,m_02,m_03,m_04,m_05,m_06,m_07,m_08,m_09,m_10,m_11,m_12
              save all like m_* to &disc_1\fish\merd
           endif

           if file ("&disc_1\fish\doopr.mem")
              restore from &disc_1\fish\doopr.mem additive
           else
              save all like  pr_* to &disc_1\fish\doopr
           endif

          if file ("fdate.mem")
                restore from fdate additive
                @ 0,75 say substr(dtoc(date0),4,5)
          else
                store date() to date0
                save all like date0 to fdate
                @ 0,72 say dtoc(date0)
               store date() to date0
          endif
          ***!!! ako 1 e markirano spira da se izrabotwa fish sas
          *** zapis za predishna godina  zashto ne se promenq godinata

                data0=substr(dtoc(date0),4,5) // sledvashtite 4-ri reda  // 1
                dt0=substr(dtoc(date0),7,2) // da ne se vkarwat w prover/ //1
             *  data0=substr(dtoc(date0),4,3)+subs(us_0,6,2)             // 2
             *  dt0=subs(us_0,6,2)         `                             // 2
                vek0=substr(str(year(date0),6),3,4)  // if file ("fdate.mem")
                store date0 to dati1,dati2
                store data0 to data_1,data_2
                dte1=ctod('01'+substr(dtoc(date0),3,6))
                store data0 to x610data0
                      if file("sc15")
                       sc15='д'
                     else
                       sc15='н'
                     endif
                     restore from dannom additive

                     sele 7
                     use &disc_1\job\info
                     locate for dn+go=dngo0
                        if .not. found()
                           store  lower(subs(curdir(),1,2)) to go0
                           locate for go=go0
                        endif
                     reg=reg
                     store dn to dn,dn1,dn3
                     fir=fir
                     vvid=vvid
                     adr00=adr
                     grad=grad
                     lize=lize
                     buls=buls
                     lkar=lkar
                     datk=datk
                     tel=tel
                     tel00=ltrim(trim(tel))
                     tdd00=tdd
                     nam=name
                     name00=ltrim(trim(name))
                     dlaz=dlaz
                     go0=upper(go)
                     tdd0=tdd
                     p=p
                     buls00=subs(buls,1,9)
                     fir00=ltrim(trim(fir))
                     egn00=egn
                     buls0=buls
                     onom00=lkar
                     obst00=obst
                     repu00=repu
                     ibbf0=bf
                     bibf0=subs(bf,5,4)+subs(bf,1,2)+'BF'
                     ba00=ba
                     gb00=gb
                     mail00=ltrim(trim(dat2))
                     bf00=bf
                     go=go
                        return

      ************** П░о╢ед│░а за наименование на ┤и░ма▓а *************
		   proc firm
	   set key -8 to
	   save screen
	   @  3,17,21,63 box ram1
	   @  4,18 clea to 20,62
	   @  5,18 say repli('═', 45)
	   @ 18,18 say repli('═', 45)
	   set cent on
                sele 7
                use &disc_1\job\info
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
           imem[1]='         Hаименование на ┤и░ма▓а'
           imem[2]='Nо  '
           imem[3]='HKИД    '
           imem[4]=' Иде▓. No    '
           imem[5]='  Б│л▒▓а▓  '
           imem[6]='                  Ад░е▒   '
           imem[7]='    Г░ад      '
           imem[8]=' Теле┤он   '
           imem[9]='      Име на п░езиден▓а'
           imem[10]='        Дл║жно▒▓      '
           imem[11]='П-од '
           imem[12]='Ф.код  '
           imem[13]='Ли╖на ка░▓а  '
           imem[14]='Да▓а на изд. '
           imem[15]='   E Г H    '
           imem[16]='   Kлон    '
           imem[17]='       Т Д Д  '
           imem[18]=' ID на ФУ '
           imem[19]='П.код. '
           imem[20]='Hаименование на ┤и░м. в║в ┤ак▓│░а▓а   '
           imem[21]='      Ад░е▒ на ░еги▒▓░а╢и┐'
           imem[22]='Банкова ▒ме▓ка           '
           imem[23]='Банка'
           imem[24]='Клон на банка▓а'
           imem[25]='Реги▒▓░а╢и┐    '
           imem[26]='e-mail'
           imem[27]='    Ли╢е за кон▓ак▓'
           imem[28]='   Ли╢е издало ┤ак▓│░а▓а    '
           imem[29]='Сме▓ка на маг.'

                dbedit( 6,18,17,62,fiel,"pfunk2",'',imem,'═','')
		set key -8 to firm
		dn1=dn
                dngo0=dn+go
		save  all like dngo0 to dannom
		set cent off
		do firma
		restore screen
                    	  return
      ************ По▓░еби▓ел▒ка ┤│нк╢и┐ **********
		function pfunk2
		parameters mode0,fld0
		private fld0
		cur0=fiel[fld0]
		 do case
		   case mode0 < 4
                if .not.(p=' '.or.p='е')
       @ 19,18 say 'Kолона "П-од" ▓░┐бва де е или " " или ки░ "е"'
                inkey(3)
                endif
       @  4,18 say fir
       @  4,59 say str(recno(),3)
       @ 19,18 say '  Избо░ на поле '+'-'+chr(26)+' '+chr(25)+' '+chr(24)+' '+chr(27)+'-'+'"Enter" - ░едак╢и┐'
       @ 20,18 say 'F10-добав┐ нова ┤и░ма  Ctrl+F10-╡-ка за ┤-░а'
			return 1
		   case lastkey()=-2
                        set curs on
                        dn2=dn
                        save screen
	                @ 19,18 clea to 20,61
                        @ 19,25 say 'В║зеде▓е ИN или б│кви▓е на ┤и░ма▓а'
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
        	      @ row(),col() get &cur0
	   @ 19,20 say '        В║веде▓е желани▓е п░омени         '
	   @ 20,18 say '                                            '
			 read   && chet()
			 keyboard chr(4)
			 set cursor off
			 return 1
		   otherwise
			 return 1
		 endcase
		return 1



         ***************** Реиндек▒а╢и┐ ************************
                        proc podred
 ! cmd /c 'if  exist \disc\hlp\podred\nul REM &disc_1\PODR PODRED ' > aaa.txt
          if file("&disc_1\podred\podred.exe")
             clos all
             ! &disc_1\podred\podred.exe
          else
            if file("spis.dbf")
                sele 1
                  use spis
                  inde on nom to nomi
                  inde on name to namz
                sele 2
                  use mese
                  inde on vek+data+nom+sch to dnsi
                  inde on sch+vek+data+nom to sdni
                sele 3
                  use &disc_1\fish\nome
                  inde on sch  to \disc&disc_1\fish\nosi
                sele 4
                  use godn
                  inde on vek+data+nom+sch to gdnsi
                  inde on sch+vek+data+nom to gsdni
            endif
          endif
                        return
   *************** П░о╢ед│░а за показване из╖и▒л┐ване болни╖ен ***********
                           func mego
                     set cent off
                     do case
                        case lastkey()=-5
                @ 0,75 say substr(dtoc(date0),4,5)
                @  0,68  say  ' MЕСЕЦ '+substr(dtoc(date0),4,5)
                sele 2
                use mese inde dnsi,sdni
                l3='м'
                meg0=-5
                        case lastkey()=-35
                @ 0,75 say substr(dtoc(date0),4,5)
                @  0,68  say  'ГОДИHА '+substr(dtoc(date0),4,5)
                set cons on
                l3='г'
                meg0=-35
                sele 4
                use godn inde gdnsi,gsdni
                        case meg0=-5
                @ 0,75 say substr(dtoc(date0),4,5)
                @  0,68  say  ' МЕСЕЦ '+substr(dtoc(date0),4,5)
                sele 2
                use mese inde dnsi,sdni
                l3='м'
                meg0=-5
                        case meg0=-35
                @ 0,75 say substr(dtoc(date0),4,5)
                @  0,68  say  'ГОДИHА '+substr(dtoc(date0),4,5)
                set cons on
                l3='г'
                meg0=-35
                sele 4
                use godn inde gdnsi,gsdni
                     endcase
                 polo()
                           return

      ************ По▓░еби▓ел▒ка ┤│нк╢и┐ **********
                function pfunk1
                parameters mode0,fld0
                cur0=fiel[fld0]
                 do case
            case mode0 < 4
                      @ 23,15 say '    ENTER за п░ом┐нана дани▓е,  F10 - Добав┐не   '
                      return 1
            case lastkey()=27
                          @  9,16 clea to 18,64
                          return 0
            case lastkey()=172
                 @ 23,15 say '           Запи▒║▓ е ма░ки░ан за из▓░иване        '
                          dele
                          inkey(1)
            case lastkey()=162
                 @ 23,15 say '               Запи▒║▓ е в║з▒▓ановен              '
                          recal
                          inkey(1)
            case lastkey()=13
                  clear gets
                  set cursor on
                  @ row(),col() get &cur0
                  @ 23,17 say '          В║веде▓е желани▓е п░омени            '
                  read
                  repl vek with val(vek0)
                  keyboard chr(4)
                  set cursor off
                  return 1
            case lastkey()=-9
         *********** П░о╢ед│░а за добав┐не на запи▒ в номенкла▓│░а▓а **********
                          go bott
                          appe blank
                          repl data with data1
                go bott
                  return 1

         *********** П░о╢ед│░а за вземане на ╡а░ак▓е░и▒▓ика  ***********
            otherwise
                  return 1
          endcase
                  return 1
         *********** П░о╢ед│░а ▒пи░а д║░жавни▓е вземани┐  ***********
                         proc dudr
                         ll1='д'
                      if ll1='д'
                          @  0,28 say ' БЕЗ ДЪРЖАВHИ ВЗЕMАHИЯ'
                      endif
                         return
         *********** П░о╢ед│░а ▒пи░а из╖и▒л┐ване на ┤и╕  ***********
                         proc noizch
                      do case
                         case izch_0='н'
                         izch_0='д'
                          @  0,28 say 'СЪС ЗАПИС HА ИЗЧИСЛЕHИЕ'
                         case izch_0='д'
                         izch_0='н'
                          @  0,28 say '                       '
                      endcase
                         return
         *********** П░о╢ед│░а ╖а▒▓ о▓ пе░▒онала  ***********
                          func chaper
          store data0 to data_1,data_2
          save screen
          @  9,20,15,59 box ram1
          @ 10,21 clea to 14,58
          set curs on
          set cent on
            @ 10,25 say '     ЧАСТ ОТ ПЕРСОHАЛА      '
            @ 12,22 say 'О▓ номе░ :' get nom_1 pict '999999'
            @ 12,42 say 'До номе░ :' get nom_2 pict '999999'
            @ 14,22 say 'О▓ да▓а  :' get data_1
            @ 14,42 say 'До да▓а  :' get data_2
            read
             fimes0='nom_1-1<val(nom).and.val(nom)<nom_2+1'
             fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
          set curs off
          restore screen
                          return

         *********** П░о╢ед│░а за да▓а▓а  *************
		   proc zvetia
	   set key 182 to
	   save screen
	  @ 10,23,12,56 box ram1
	  @ 11,24 clea to 11,55
	  set curs on
          @ 11,25 say 'Че░но/б┐ло - 1 ╢ве▓но - 2 :' get zv0  pict "99" valid 0 < zv0 .and. zv0 < 13
	  read
	  set curs off
          save all like zv0 to zvetia
	  set key 182 to zvetia
	  restore screen
          keyboard chr(27)
                   return .T.


         ************** PROCEDURA ZA PROWERKA SMQNATA NA DIREKTOR ********
                                 func chdire
  @ 4,2 say "\DISC\HLP\us_0 = "+us_0
  @ 5,2 say '!cd= '
  ! cd
  @ 6,2 say 'us0 = '+us0
  @ 7,2 say 'dr0 = '+dr0
  @ 8,2 say 'l4  = '+ l4
  @ 9,2 say 'date0 = '+dtoc(date0)
  inkey(0)
  @ 3,2 clea to 10,75
  inkey(1)


                                 return
****************************************************************************************
