? 'SAVE Version 5.1  Book-keeping by Double Entry'
? 'Copyright (C) 1989-1994 by Stefan Mirchev. All Rights Reserved.'
?
?
       save screen to ekr1
       set key 301 to calll
       set talk off
       set bell off
       set date british
           *                     É ã é Å Ä ã H à
      if file ("razrjd.mem")
         restore from razrjd additive
      else
        j0=14    &&  ê†ß∞ø§≠Æ±≤ ¢ ±≤Æ©≠Æ±≤ Æ°πÆ
        j1=0     &&  ê†ß∞ø§≠Æ±≤ ¢ ±≤Æ©≠Æ±≤ ¢ §∞Æ°≠†≤† ∑†±≤
        j2=12    &&  ê†ß∞ø§≠Æ±≤ ¢ ™Æ´®∑•±≤¢Æ Æ°πÆ
        j3=0     &&  ê†ß∞ø§≠Æ±≤ ¢ ™Æ´®∑•±≤¢Æ ¢ §∞Æ°≠†≤† ∑†±≤
        j4=0     &&  ê†ß∞ø§≠Æ±≤ ¢ §∞Æ°≠†≤† ∑†±≤ ≠† ∂•≠†
        save all like j? to razrjd
      endif
       gran0=''
       tt0='00'
       dok0='          .'+space(29)
       norm0='2'
       sbit0='1'
       store ctod('') to razd0,pdat0,pris0,zami0,dkpp0
       store ' ' to admi0
       store 0  to nom0,staj0,re1,b2
       store space(11)  to pnom0
       store space(10) to egn0
       store space(15) to darz0,kpp0
       store space(20) to grad0,obla0,ime0
       store space(18) to name0,prez0,fami0,lnam0,lpre0,lfam0,pmvr0,graz0
       zel0=' íìêàáöå'+space(16)
       store space(40) to adr0
       store space(1) to ll0,ll10,plat0,staj1
       store space(1) to reg,fir,adr,tel,dlaz,nam,dat1,dat2,lize,ekpr0,vd0
       store space(10) to dn,dn1,dngo0
       store 0 to b0,b1,b3,dr0
       store '-----' to sa_11,sa_12,sa_13,sa_14,sa_15,sa_16

           *          åéÜÖ ÑÄ ëÖ èéãáìÇÄí

       store spac(1) to l0,l1,l2,l3,l4,l5,l6,l7,l8,l9,l11,v0
       store space(10) to dn2,dn3,dnev0,izr0
       store spac(4) to part0,part1,part2,part01,part4,dr1,data0,data3,otgo0
       store spac(3) to sch0,sch1,sch2,dok4,data1,data2,dtno0,ds0,ds1
       store spac(2) to mk0,mk1,mese1,mese2,ff0,d1,d2,m1,m2,i,go0,vid1,vid2,vid4
       podr_0=40
       ram1=chr(201)+chr(205)+chr(215)+chr(199)+chr(216)+chr(205)+chr(200)+chr(199)

	  if file ("zvetia.mem")
	     restore from zvetia additive
	  else
	     zv0=2
	  endif
             colors := setcolors ()
             setcolor (colors [zv0])
         menu to v1
       if file("c:\hlp\prl")
          ll3='1'
          sbit0='(11x'
          norm0='(17x'
       endif
       if file("c:\hlp\prs")
          ll3='1'
          norm0='(3R(s0p10h12v0s0b1t'
          norm1='(3R(s0p16h12v0s0b1t'
          sbit0='(3R(s0p20h12v0s0b1t'
       endif
         clea
         do firma
       set key -22 to belezka
       set key -28 to pamet
       set key 306 to podp
       store date() to date0
       !cd
       if file ("date.mem")
         @ 0,72 say dtoc(date0)
       endif
       @  1, 0,24,79 box ram1
       do dat
       do admini
       if (.not.file("\hlp\job\ussh.ntx")).or.(.not.file("schi.ntx"))
       @  9,10 clea to 15,60
       podr_0=40
       save all like podr_0 to podred
       podred()
       endif
      *  sele 1
      *  use hotel inde nomi,sthi
      *  sele 2
      *  use stai inde stii,snoi,schi
      *  sele 3
      *  use \hlp\job\uslu inde \hlp\job\ussh
      *  sele 4
      *  use stat inde stdi,dist
       @  2,24 say ' É ã Ä Ç H é              å Ö H û  '
       do while .t.
          if file ("date.mem")
             @ 0,72 say dtoc(date0)
          endif
       set key -1 to
       set key -6 to admini
       set key -7 to dat
       set key -8 to firm
       set key 182 to zvetia
  *    set key 280 to ddok
       ramka()
       us0='c'
       @  0,72 say dtoc(date0)
       set wrap on
       @  2,24 say ' É ã Ä Ç H é              å Ö H û  '
       @  4,27 prompt '1. ê•£®±≤∞†∂®ø       '
       @  6,27 prompt '2. é°±´≥¶¢†≠• ØÆ ±≤†®'
       @  8,27 prompt '3. ë≤†≤≥± ≠† ±≤†ø    '
       @ 10,27 prompt '4. í•´•¥Æ≠≠† ∂•≠≤∞†´†'
       @ 12,27 prompt '5. é≤∑•≤®            '
       @ 14,27 prompt '6. KÆ∞•™∂®®          '
       @ 16,27 prompt '7. àß≤∞®¢†≠•'
       @ 18,27 prompt '8. Ä∞µ®¢®∞†≠• ® ¢∫ß±≤†≠Æ¢ø¢†≠•'
       @ 20,27 prompt '9. àßµÆ§ Æ≤ Ø∞Æ£∞†¨†≤†'
    *  @ 22, 2 say repli(chr(205),78)
       @ 23,15 say 'àß°Æ∞ ≠† ¨•≠æ ±≤∞•´™†-'+chr(25)+' '+chr(24)+' ®´® ≠•£Æ¢®ø ØÆ∞•§•≠ ≠Æ¨•∞'
      if file ("date.mem")
      *  restore from date additive
      else
         store date() to date0
         do dat
      endif
         menu to v1
       set curs on
       data0=substr(dtoc(date0),4,5)
       dt0=substr(dtoc(date0),7,2)
     * dte1=ctod('01'+substr(dtoc(date0),3,6))
       g_0=substr(str(year(date0),6),3,1)
       vid3=date0
       set cent on
       vek0=substr(str(year(date0),6),3,4)
       dte1=ctod('01'+substr(dtoc(date0),3,8))
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
     * store ctod('30'+substr(dtoc(date0),3,6)) to dte2, dte3
       mese3='c:\&go0'+substr(data0,4,2)
       @ 0,72 say dtoc(date0)
       save screen to ekr0
    *  set key -1 to help
       SETKEY (28, {|_XOC1,_XOC2,_XOC3| HELP (_XOC1, _XOC2, _XOC3)})
   *   set key 28 to
       set key 280 to
       set key -6 to
       set key -7 to
       set key -8 to
       set key -31 to
       set key 182 to
        do case
           case v1=9
         restore screen from ekr1
       close all
       clea all
       set talk on
       set bell on
       set color to
       clea
       exit
           case v1=1
                 hote1()
           case v1=2
                 hote2()
           case v1=3
                 hote3()
           case v1=4
              * clea
              * ! c:\t.bat
           case v1=5
                 hote5()
           case v1=6
                 hote6()
           case v1=7
                hote7()
           case v1=8
                  *   do dire
                  *   dr0=trim(dr0)
                  *   store dr0 to dr2
                  *   @ 12,23 prompt 'Ä  ê  ï  à  Ç  à  ê  Ä  ç  Ö'



             *  loop
                      v2=5
                      us0='a'
                      go1='  '
                      @ 11,21,13,52 box ram1
                      @ 12,22 clea to 12,51
                  *   @  7,28 say 'ÄêïàÇàêÄHÖ '
                      @ 12,23 prompt 'Ä  ê  ï  à  Ç  à  ê  Ä  ç  Ö'
                  *   @ 12,30 prompt '2. Ç∫ß±≤†≠Æ¢. ± ZIP'
                  *   @ 11,30 prompt '3. Ä∞µ®¢®∞†≠• ± COPY'
                  *   @ 12,30 prompt '4. Ç∫ß±≤†≠Æ¢. ± COPY'
                  *   @ 16,31 prompt 'ESC - àßµÆ§ Æ≤ ¨•≠æ'
                  *       menu to v2
                       v2=1
                       if lastkey()=27
                              us0='c'
                              loop
                       endif
                        l0='y'
                          do dire
                              if lastkey()=27
                                  loop
                              else
                                    if v2=3 .or. v2=1
                          *       @ 16,27 say 'H† ≥±≤∞Æ©±≤¢Æ "a" ®´® "b":' get us0
                                    endif
                                    if v2=4 .or. v2=2
                          *       @ 16,27 say 'é≤ ≥±≤∞Æ©±≤¢Æ "a" ®´® "b":' get us0
                                    endif
                          *       read
                                            if  us0='c'
                          *       @ 16,27 say 'é≤ / H† §∞≥£† §®∞•™≤Æ∞®ø: ' get go1
                          *                 read
                                            else
                                          store go0 to go1
                                            endif
                              endif
                              if lastkey()=27
                                  loop
                              endif
                      *   @ 12,26,14,55 box ram1
                      *   @ 13,27 clea to 13,54
                          dr0=trim(dr0)
                        if us0='c'
                          store go1+substr(dr0,3,2) to dr2
                        else
                          store dr0 to dr2
                        endif

        ********************************************************************



                          if .not.file("&us0:\&go0&dt0\*.*")
                             !md &us0:\&go0&dt0
                             !md &us0:\hh00
                             k0=fcreate("&us0:\&go0&dt0\a")
                             fclose(k0)
                             k0=fcreate("&us0:\hh00\a")
                             fclose(k0)
                          endif



        ********************************************************************
                     if   .not. file("&us0:\&dr2\*.*")
                          ?? chr(7)
                          @ 12,23 prompt '   ÉêÖ àíÖ ÑàêÖäíéêàüíÄ !   '
                                   i0=inkey(0)
                       loop
                     else
                          set color to w*/
                              if len(dr0)=4
                                    if v2=3
                     *    @ 13,28 say 'èêéÉêÄåÄíÄ ÄêïàÇàêÄ - '+upper('&go1')+'&dt0'
                                    else
                     *    @ 13,27 say 'èêéÉêÄåÄíÄ ÇöáëíÄHéÇüÇÄ-'+upper('&go1')+'&dt0'
                                    endif
                              dr1=upper('&go0')+'&dt0'
                              else
                                    if v2=3
                     *    @ 13,28 say 'èêéÉêÄåÄíÄ ÄêïàÇàêÄ - '+substr(dr2,6,4)
                                    else
                     *    @ 13,27 say 'èêéÉêÄåÄíÄ ÇöáëíÄçéÇüÇÄ-'+substr(dr2,6,4)
                                    endif
                              dr1=substr(dr2,6,4)
                              endif
                          setcolor (colors [zv0])
                     endif
                    do case
                       case v2=1
                       clea
   *  !    \hlp\pkzip &us0:\&dr0\&dr1 -&v @\hlp\save.lst
   *  ! lh c:\hlp\pkzip -o  &us0:\&dr0\h&dr0 @c:\hlp\hotel.lst
      !    c:\hlp\pkzip &us0:\&dr0\h&dr0 -&v @c:\hlp\hotel.lst
    * !      \hlp\pkzip &us0:\&dr0\&dr1 -&v @\hlp\save.lst

   *  ! cd \
   *  ! cd \hh00
   *  ! c:\hlp\pkzip  a:\hh00\hhh00 -&v @c:\hlp\hotel.lst
   *  ! cd \
   *  ! cd \&dr0

                       case v2=2
                       clea
                *     ! c:\hlp\arj  e  &us0:\&dr0\&dr0 c:\&dr0
                *     !   \hlp\pkunzip -o  &us0:\&dr3\&dr1 \&dr0
                      !   \hlp\pkunzip -o  &us0:\&dr0\h&dr0 \&dr0
                              clea
                              podr_0=40
                              save all like podr_0 to podred
                              podred()
                       case v2=3
                       copy file c:\&dr0\dannom.mem to &us0:\&dr2\dannom.mem
                         if file ("c:\&dr0\belez.mem")
                       copy file c:\&dr0\belez.mem to &us0:\&dr2\belez.mem
                         endif
                       case v2=4
                       copy file &us0:\&dr2\dannom.mem to c:\&dr0\dannom.mem
                           if file ("&us0:\&dr0\belez.mem")
                       copy file &us0:\&dr2\belez.mem to c:\&dr0\belez.mem
                            endif
                              clea
                              podr_0=40
                              save all like podr_0 to podred
                              podred()
                    endcase
       endcase
       enddo
      ************** é∑•∞≤†¢†≠• ≠† ∞†¨™†  **************
                       proc ramka
                      @ 0,0 clea to 24,80
                      !cd
                      set cent off
                      @ 0,72 say dtoc(date0)

                      @  1, 0,24,79 box ram1
                      @ 22, 0,24,79 box ram1
                      @ 22, 0 say 'Ã'
                      @ 22,79 say '∆'
                      @ 22,14 say 'À'
                      @ 24,14 say ' '
                      @ 23, 2 say 'ESC - ®ßµÆ§ «'
                      @ 23,66 say '« F1 - ØÆ¨Æπ'
                      @ 22,66 say 'À'
                      @ 24,66 say ' '
                       return
      ************** K∞†© ≠† Æ∑•∞†¢†≠• ≠† ∞†¨™†  *************

      ************** è∞Æ∂•§≥∞† ß† Ø†¨•≤≤†  *************
                   proc pamet
           save screen
           @ 11,27,13,49 box ram1
           @ 12,28 clea to 12, 48
           @ 12,28 say 'ë¢Æ°Æ§≠† Ø†¨•≤ -> ' + str(memory(0),3)
                                   i0=inkey(0)
           !mem/c|more
                                   i0=inkey(0)
          restore screen
          return




     ***********************  á†π®≤† ******************
                         proc gast
               clea
             @ 10,20 say 'è ê é É ê Ä å Ä í Ä   Ö  á Ä ô à í Ö H Ä  !!!'
             @ 12,23 say 'èéíöêëÖíÖ ëöáÑÄíÖãü HÄ èêéÉêÄåÄíÄ  !!!'
             @ 14,23 say '        HÄ íÖã.  2 - 30 - 13          '
                    i0=inkey(0)
               clea
               canc
                        return



      ************** è∞Æ∂•§≥∞† ß† ≠†®¨•≠Æ¢†≠®• ≠† ¥®∞¨†≤† *************
                   proc dire
           set key -3 to
           save screen
           clear gets
      *    @ 12,19,20,62 box ram1
      *    @ 13,20 clea to 19,61
      *    @ 13,21 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† ¥®∞¨†≤†' get go0
      *    @ 13,51 say '® £Æ§.' get dt0
      *        @ 17,24 prompt upper('&go0')+'&dt0'
      *        @ 15,30 prompt 'JANU'
      *        @ 17,30 prompt 'FEBR'
      *        @ 19,30 prompt 'MARC'
      *        @ 15,36 prompt 'APRI'
      *        @ 17,36 prompt 'MAY '
      *        @ 19,36 prompt 'JUNE'
      *        @ 15,42 prompt 'JULY'
      *        @ 17,42 prompt 'AUGU'
      *        @ 19,42 prompt 'SEPT'
      *        @ 15,48 prompt 'OCTO'
      *        @ 17,48 prompt 'NOVE'
      *        @ 19,48 prompt 'DECE'
      *        @ 17,54 prompt 'ZADB'
          *     if  l0='y'
          *       @ 18,57 say '…ÕÕÕÕ'
          *       @ 19,57 say '«'
          *       @ 20,57 say ' '
          *       @ 19,58 say dr1
          *     endif
          *      read
          *      menu to v22
                 v22=1

           if lastkey()=27
               dr0=go0+dt0
               return
           else
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
                       dr0=go0+dt0+'\ZADB'
               endcase
           endif
          restore screen
          l0=' '
          return
      ************** è∞Æ∂•§≥∞† ß† ØÆ¨Æπ help   ************

      ****************************************************



    *               sele 7
    *               use c:\hlp\hhlp
    *               SETKEY (28, {|_XOC1,_XOC2,_XOC3| HELPUPR (_XOC1, _XOC2, _XOC3)})


     ***************************************************************
             FUNCTION   HELP (_LOC1, _LOC2, _LOC3)
     ***************************************************************
                    sele 7
                    use c:\hlp\hhlp
       do case
          case _LOC3 == "DARZ0"
                CINDEXLOCA := "200"
                NSSIHL (CINDEXLOCA)
          case _LOC3 == "DEXPI0"
           store ctod(subs(dtoc(pdat0),1,6)+str(year(pdat0)+10,4)) to dexpi0
         other
            return nil
       endcase

    *    NSSIHL (CINDEXLOCA)
       RETURN  NIL

      ***************************************************************
        PROCEDURE   NSSIHL (_LOC1)
      ***************************************************************
    sele 7
    PRIVATE SCR, SEL
    B_DOUBLE := "…Õ◊«ÿÕ»«"
    LOCATE FOR _LOC1=KOD
    SCR := SAVESCREEN (4, 0, 23, 54)
  * save screen
  * SCROLL (22,15, 23, 65)
    MSG := ""
    MSG := ARRAY (0)
        DO WHILE ((KOD = _LOC1) .AND. (!EOF ()))
            AADD (MSG, NAM)
            DBSKIP (1)
        ENDDO

 *   @ 23,15 clea to 23,65
     ac=0
     do while ac=0
     *  ac := ACHOICE (22, 1,23,78, MSG)
        AC := ACHOICE (12,10,12,24, MSG)
     enddo
    DBSELECTAR (SEL)
  * RESTSCREEN (4, 0, 23, 54, SCR)
  * restore screen
             do case
                case _LOC1 = "200"
                   store subs(MSG[AC],1,15) to darz0
                   store subs(MSG[AC],1,15)+'   ' to graz0,pmvr0
                   store subs(MSG[AC],1,15)+space(5) to grad0
                   store subs(MSG[AC],1,15)+space(25) to adr0
                   @ 10,30 say grad0
     *             wait '111111111111111'
             endcase
   return


       ************** ™†´™≥´†≤Æ∞  ********************
                          proc calll
                          !lh  cal
                          return

      ************** è∞Æ∂•§≥∞† ß† Ø•∑†≤ ≠† ØÆ§Ø®± **********
                   proc podp
           ??
           ? '          àáÉéíÇàã : ..............            ìíÇöêÑàã : ..............'
           ?
                   return

       ******************   è∞Æ∂•§≥∞† ß† Ø†≥ß†  ***************
                        proc pauza
                     *   set colo to w/ ,x
                          @ 16,80 get l0
                           read
                         setcolor (colors [zv0])
                       return
          set curs off
          restore screen
                        return
      ************** è∞Æ∂•§≥∞† ß† ±¨ø≠† ≠† ¥®∞¨† **********
                         proc firma
               if .not. file("dannom.mem")
                  do firm
               endif
                      if file("sc1").or.file("c:\hlp\sc1")
                         sc1='§'
                      else
                         sc1='≠'
                      endif
                      if file("sc2").or.file("c:\hlp\sc2")
                         sc2='§'
                      else
                         sc2='≠'
                      endif
                      if file("sc3").or.file("c:\hlp\sc3")
                         sc3='§'
                      else
                         sc3='≠'
                      endif
                      if file("sc4").or.file("c:\hlp\sc4")
                         sc4='§'
                      else
                         sc4='≠'
                      endif
                      if file("sc5").or.file("c:\hlp\sc5")
                         sc5='§'
                      else
                         sc5='≠'
                      endif
                      if file("sc6").or.file("c:\hlp\sc6")
                         sc6='§'
                      else
                         sc6='≠'
                      endif
                     restore from dannom additive
                     sele 1
                     use \hlp\job\info
                     locate for dn+go=dngo0
                     reg=reg
                     store dn to dn,dn1,dn3
                     fir=fir
                     adr=adr
                     tel=tel
                     nam=name
                     dlaz=dlaz
                     ll6=p
                     go0=go
                     dat1=dat1
                     dat2=dat2
                     lize=lize
                        return
      ************** è∞Æ∂•§≥∞† ß† ≠†®¨•≠Æ¢†≠®• ≠† ¥®∞¨†≤† *************
                   proc firm
           set key -8 to
           save screen
           @ 15,17,21,63 box ram1
           @ 16,18 clea to 20,62
           @ 18,18 say repli('Õ', 45)
           set cent on
                sele 1
                use   \hlp\job\info
                ii1='   '
                locate for dn+go=dngo0
                declare fiel[22]
                fiel[1]='fir'
                fiel[2]='dn'
                fiel[3]='reg'
                fiel[4]='adr'
                fiel[5]='tel'
                fiel[6]='name'
                fiel[7]='dlaz'
                fiel[8]='p'
                fiel[9]='go'
                fiel[10]='    '
                fiel[11]='buls'
                fiel[12]='obst'
                fiel[13]='vvid'
                fiel[14]='gr'
                fiel[15]='bf'
                fiel[16]='ba'
                fiel[17]='gb'
                fiel[18]='bk'
                fiel[19]='bs'
                fiel[20]='dat1'
                fiel[21]='dat2'
                fiel[22]='lize'
                declare imem[22]
                imem[1]='         H†®¨•≠Æ¢†≠®• ≠† ¥®∞¨†≤†'
                imem[2]='Ñ†≠∫∑•≠  ’   '
                imem[3]='P•£®±≤∞. ’ '
                imem[4]='                 Ä§∞•±   '
                imem[5]=' í•´•¥Æ≠   '
                imem[6]='      à¨• ≠† Ø∞•ß®§•≠≤†'
                imem[7]='        Ñ´∫¶≠Æ±≤    '
                imem[8]='èe∞®Æ§'
                imem[9]=' î.™Æ§ '
                imem[10]='  é±®£.N   '
                imem[11]='Å≥´±≤†≤                           '
                imem[12]=' Å.™Æ§  '
                imem[13]='H†®¨•≠Æ¢†≠®• ≠† ¥®∞¨. ¢∫¢ ¥†™≤≥∞†≤†   '
                imem[14]='      Ä§∞•± ≠† ∞•£®±≤∞†∂®ø'
                imem[15]=' Å.™Æ§   Å.±¨•≤™†'
                imem[16]='              Å†≠™† '
                imem[17]='ä´Æ≠ ≠† °†≠™†≤†     '
                imem[18]='   Å†≠™Æ¢ ™Æ§    èãÄíÖÜHé '
                imem[19]='   Å†≠™Æ¢† ±¨•≤™†'
                imem[20]='ê•£®±≤∞†∂®ø               è'
                imem[21]='∞•™∞†≤ø¢†≠•'
                imem[22]='      ã®∂• ß† ™Æ≠≤†™≤              '
                 dbedit(16,18,17,62,fiel,"pfunk2",'',imem,'','')
                set key -8 to firm
                dn1=dn
                dngo0=dn+go
                save  all like dngo0 to dannom
                set cent off
                do firma
                restore screen
          return
      ************ èÆ≤∞•°®≤•´±™† ¥≥≠™∂®ø **********
                function pfunk2
                parameters mode0,fld0
                private fld0
                cur0=fiel[fld0]
                 do case
                   case mode0 < 4
       @ 19,20 say 'àß°Æ∞ ≠† ØÆ´• '+'-'+chr(26)+' '+chr(25)+' '+chr(24)+' '+chr(27)+'-'+'"Enter" - ∞•§†™∂®ø'
       @ 20,18 say 'F10-§Æ°†¢ø ≠Æ¢† ¥®∞¨†  Ctrl+F10-µ-™† ß† ¥-∞†'
                        return 1
                   case lastkey()=-9
                        appe blank
                   case lastkey()=-29
                        sele 1
                        appe blank
                        repl regl->dn with info->dn
                        sele 7
                   case lastkey()=27
                        return 0
                   case lastkey()=13
                         set cursor on
                      if rec_lock(3)
                         @ row(),col() get &cur0
                      else
                         vapros()
                      endif
           @ 19,20 say '        Ç∫¢•§•≤• ¶•´†≠®≤• Ø∞Æ¨•≠®         '
           @ 20,18 say '                                            '
                         read
                         keyboard chr(4)
                         set cursor off
                         return 1
                   otherwise
                         return 1
                 endcase
                return 1
******************  ë∫Æ°π•≠®• ß† ¥®∞¨†≤†  *******************
               proc belezka
               set key -22 to
                save screen
                clea gets
                if file ("belez.mem")
                     @  1,10,24,70 box ram1
                     @  2,11 clea to 23,69
                      restore from belez additive
                      set curs on
                      @ 2,17 say fir
                      @ 4,12 get X_0
                      @ 5,12 get X_1
                      @ 6,12 get X_2
                      @ 7,12 get X_3
                      @ 8,12 get X_4
                      @ 9,12 get X_5
                      @10,12 get X_6
                      @11,12 get X_7
                      @12,12 get X_8
                      @13,12 get X_9
                      @14,12 get X_10
                      @15,12 get X_11
                      @16,12 get X_12
                      @17,12 get X_13
                      @18,12 get X_14
                      @19,12 get X_15
                      @20,12 get X_16
                      @21,12 get X_17
                      @22,12 get X_18
                      @23,12 get X_19
                      read
                else
                      store space(57) to X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9
                      store space(57) to X_10,X_11,X_12,X_13,X_14,X_15,X_16,X_17,X_18,X_19
                endif
                              save all like X_* to belez
                set key -22 to belezka
                restore screen
                read
             return

          ******************   è∞Æ∂•§≥∞† ß† ∞†ß∞ø§≠Æ±≤ ***********
                           proc razr
                        do case
                           case ll4='´'.or.l4='≤'
                             ra0=1
                             mk1=' ãÖÇÄ '
                           case ll4='µ'.or.l4='Ø'.or.l4='æ'
                             ra0=1000
                             mk1='ïàã.ãÇ'
                           case ll4='¨'
                             ra0=1000000
                             mk1='åãH.ãÇ'
                        endcase
                           return

      *******************  î≥≠™∂®ø ß† Ø∞Æ¢•∞™® ¢ ¨∞•¶†  ******************
                               proc mreza   && mreza
                 function  rec_lock
                 paramet wait
                 private fore
                      if rlock()
                         return (.t.)
                      endif
                 fore=(wait=0)
                 do while (fore .or. wait > 0)
                      if rlock()
                         return (.t.)
                      endif
                    inkey(.5)
                    wait=wait-1
                 enddo
        otgo0='           á Ä è à ë ö í   Ö   Å ã é K à ê Ä H            '
                 return (.f.)

  *              function  fil_lock
  *              paramet wait
  *              private fore
  *                   if rlock()
  *                      return (.t.)
  *                   endif
  *              fore=(wait=0)
  *              do while (fore .or. wait > 0)
  *                   if rlock()
  *                      return (.t.)
  *                   endif
  *                 inkey(.5)
  *                 wait=wait-1
  *              enddo
  *     otgo0='           á Ä è à ë ö í   Ö   Å ã é K à ê Ä H            '
  *              return (.f.)





                               return       && mreza
      *******************  î≥≠™∂®ø ß† Æ≤£Æ¢Æ∞ ¢ ¨∞•¶†  ******************
                               proc vapros  && vapros
                               set bell on
                               ?? chr(7)
                               set bell off
                               save screen
                               @ 11, 5,13,74 box ram1
                               @ 12, 6 clea to 12,73
                               @ 12,12 say otgo0
                               pauza()
                               restore screen
                               return       && vapros

      ************** è∞Æ∂•§≥∞† ß† ¢∞•¨≠≠Æ ±Ø®∞†≠•    ******************
                          proc spri
                                 b0=b0+1
                                 if  b0=b1.or.b0>b1
                                   if b3=0
                                      do case
                                         case tt0='40'
                                              b1=b1+10
                                      endcase
                                   endif
                                   b3=b3+1
                                   b2=b2+1
                                   b0=0
                                   save_0='save'+ltrim(str(b3,2))
                                   set prin to c:\hlp\&save_0
                                 endif
                          return
               ********** è∞Æ∂•§≥∞† ß† Ø•∑†≤† ******
                            proc izrab
                 set cons off
                 set marg to 0
                 store 0 to b0,b3
                 b2=1
                 ekpr0=1
                 b1=341
                 @ 18,66 clea to 21,78
             *   @ 22,14,24,66 box ram1
                 @ 18,66,21,78 box ram1
                 @ 19,68 prompt 'Ö K ê Ä H'
                 @ 20,68 prompt 'è Ö ó Ä í'
                 menu to ekpr0
                    if lastkey()=27
                      return 1
                    endif
                 !del  c:\hlp\save*.prn
                 set prin on
                 set prin to c:\hlp\save0
                            return

               ********** è∞Æ∂•§≥∞† ß† Ø•∑†≤† ******
                            proc pech
             if lastkey()=27   && .and.(.not.t0='-')
                set cons on
                ekpr0=1
                return
             endif
          if ll10=' '
             b3=0
          endif
             set marg to 0
             set prin off
             set prin to
             set cons on
     if ekpr0=1
               l0=' '
                 @ 23,15  say 'Alt+PgD - ±≤∞†≠®∂† ≠†§Æ´≥ Alt+PgU - ±≤∞†≠®∂† ≠†£Æ∞•'
             do while .t.
                 save_0='c:\hlp\'+'save'+ltrim(str(b3,2))+'.prn'
                 save0=memoread("&save_0")
                 memoedit(save0,5,2,21,78,.f.,"fdobav",200,40,1,20)
                if l0='§'
                   exit
                endif
             enddo
     else
            do while .t.
             if isprinter()=.f.
                ?? chr(7)
                @ 23,17 say ' Ç™´æ∑•≤• Ø∞®≠≤•∞† ® ≠†≤®±≠•≤• ™Æ© §† • ™´†¢®∏ '
                i0=inkey(0)
                if lastkey()=27
                   return
                 endif
                loop
             else
                @ 23,17 say '                                               '
                exit
             endif
            enddo
                              set cons off
                              set prin on
                                do case
                                   case ll0='1'.and.ll3='1'
                                    ?? '&l1O'  && µÆ∞®ßÆ≠≤†´•≠
                                   case ll0='2'.and.ll3='1'
                                    ?? '&l0O' && ¢•∞≤®™†´•≠
                                endcase
              @ 23,24 say 'è∞Æ£∞†¨†≤† Ø•∑†≤†, ¨Æ´ø ØÆ∑†™†©≤• !'
              do while  .t.
                   save_0='c:\hlp\'+'save'+ltrim(str(b3,2))+'.prn'
                   if file("&save_0")
                ??      memoread("&save_0")
                        b3=b3+1
              save_0='c:\hlp\'+'save'+ltrim(str(b3,2))+'.prn'
           if file("&save_0")
              ?
          *   @ 23,24 say ' é°∫∞≠•≤• ´®±≤≤† ® ≠†≤®±≠•≤• "ESC" '
                        *      do while .t.
                        *          pauza()
                        *          if lastkey()=27
                        *               exit
                        *          endif
                        *      enddo
              @ 23,24 say 'è∞Æ£∞†¨†≤† Ø•∑†≤†, ¨Æ´ø ØÆ∑†™†©≤• !'
           else
              exit
           endif
                   else
                      if lastkey()=27
                          exit
                      endif
                   endif
              enddo
            *   keyboard chr(27)
            *   @ 23,21 say 'ë´•§ ±Ø®∞†≠• ≠† Ø•∑†≤† ≠†≤®±≠•≤• "Esc"'
                @ 23,21 say 'Esc - ®ß∑†™¢† Ø•∑†≤   Enter - Ø•∑†≤ ±•£†'
                do pauza
                  do case
                     case lastkey()=13
                          ? ''
                     case lastkey()=27
                          ?
                  endcase
            do while .t.
             if isprinter()=.F.
                @ 23,21 say ' Ç™´æ∑•≤• Ø∞®≠≤•∞† ® ≠†≤®±≠•≤•   "Esc"'
                i0=inkey(0)
                loop
             else
                @ 23,21 say '                                      '
                exit
             endif
            enddo
               ?? norm0
               set prin off
               set cons on
     endif
                           return
                          func fdobav
                             do case
                                case  lastkey()=27
                                  if l0=' '
                                      l0='§'
                                  else
                                      l0=' '
                                  endif
                                case  lastkey()=417
                                      l0='≠'
                                      b3=b3+1
                                      keyboard chr(27)
                                case  lastkey()=409
                                      l0='≠'
                                      b3=b3-1
                                      keyboard chr(27)
                                other
                                      l0=' '
                             endcase
                          return

      ************** è∞Æ∂•§≥∞† ß† §†≤†≤†  *************
                   proc dat
           set key -7 to
           save screen
          @  9,20,13,59 box ram1
          @ 10,21 clea to 12,58
          set curs on
          set century on
          @ 11,22 say 'Ç∫¢•§•≤• ∞†°Æ≤≠†≤† §†≤† :' get date0  pict '99/99/9999' valid   ctod('01/01/2000') < date0
          read
          set century off
          set curs off
          save all like date0 to date
          dt0=substr(dtoc(date0),7,2)
          data0=substr(dtoc(date0),4,5)
     *    dte1=ctod('01'+substr(dtoc(date0),3,6))
     *    dte2=ctod('30'+substr(dtoc(date0),3,6))
          set key -7 to dat
          restore screen
          @ 0,72 say dtoc(date0)
          return


                  **************  è∞Æ∂•§≥∞†   *********
                             proc raboti
      @ 23,15 say '        è∞Æ£∞†¨†≤† ∞†°Æ≤®, ¨Æ´ø ØÆ∑†™†©≤• !        '
                             return
         ***************** ê•®≠§•™±†∂®ø ************************
                        proc podred

               if file("\hlp\podred\podred.exe")
                  clos all
                  ! \hlp\podred\podred.exe
               endif

                          return


      ************** è∞Æ∂•§≥∞† ß† ≠†°´æ§†¢†≠• ≠† ÑÑë ¢≠Æ±™®  *************
                        proc izdir
                sele 11
                clea gets
                set key -2 to
                save screen
                declare fiel[7]
                fiel[1]='staj'
                fiel[2]='nom'
                fiel[3]='name'
                fiel[4]='prez'
                fiel[5]='fami'
                fiel[6]='pris'
                fiel[7]='zami'
                declare imem[7]
                imem[1]='ëíÄü'
                imem[2]='HéåÖê'
                imem[3]='àåÖ'
                imem[4]='èêÖáàåÖ'
                imem[5]='îÄåàãàü'
                imem[6]='èêàëíÉçÄã'
                imem[7]='áÄåàçÄã'
                @  4, 4,21,76 box ram1
                dbedit( 5, 5,20,75,fiel,"pfunk1",'',imem,'Õ','”')  && pfunk1 sav5.prg
                set key -2 to izdir
                restore screen
                return

 *************  è∞Æ∂•§≥∞† ß† Æ≤Ø•∑†≤¢†≠• ≠† †§∞•±≠† ™†∞≤† ***********
                              proc adrkart
  set cent on
               do case
                  case l0=1
  izrab()
  set cent on
      if ekpr0=2
           ?? norm1
            store '2' to  ll0
            store '1' to  ll3
           set marg to 2
      endif
    ?
    ? '                       ïéíÖã "KéêÄã" ëã.ÅêüÉ'                                                       +SPACE(49)
    ?                                                                                                      +SPACE(18)
    ? '                 ÄÑêÖëHÄ KÄêíÄ áÄ áÄèàëÇÄHE Ç ïéíÖã  '+nom1                                         +SPACE(35)
  ? '⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒœ'                         +SPACE(18)
  ? '”      '+name0+'    '+prez0+'    '+fami0+'      ”'                                                    +SPACE(18)
  ? '”             /®¨•/               /Ø∞•ß®¨•/             /¥†¨®´®ø/          ”'                         +SPACE(18)
  ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'                         +SPACE(18)
  ? '”êÆ§•≠(†) ≠† '+dtoc(razd0)+space(52)+'”'                                                              +SPACE(18)
  ? '”¢ £∞.(±.) '+grad0+'                 Æ°´†±≤ '+obla0+'”'                                               +SPACE(18)
  ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'                         +SPACE(18)
  ? '”è†±ØÆ∞≤ N '+pnom0+'®ß§†§•≠ Æ≤ '+pmvr0+'≠† §†≤† '+dtoc(pdat0)+'  ”'                                   +SPACE(18)
  ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'                         +SPACE(18)
  ? '”Ü®¢≥π(†) ¢ £∞.(±.) '+adr0+'               ”'                                                         +SPACE(18)
  ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'                         +SPACE(18)
  ? '”ïÆ≤•´ '+'"KéêÄã"  ëã.ÅêüÉ'+'       ±≤†ø '+str(staj0,4)+'        '+'ÖÉH  '+egn0+'          ”'         +SPACE(18)
  ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'                         +SPACE(18)
  ? '”                                                                          ”'                         +SPACE(18)
  ? '”Ñ†≤† '+dtoc(pris0)+space(12)+'èÆ§Ø®± ≠† ∞•£®±≤∞†≤Æ∞† ........................”'                      +SPACE(18)
  ? '¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ'                         +SPACE(18)
  ?
  ?
     pech()
                  case l0=2
  izrab()
      if ekpr0=2
         ?? norm1
          store '1' to  ll0,ll3
          set marg to 0
    * 111111111111111
      endif
      if pol0='å'
         pol1='M'
      else
         pol1='F'
      endif


   ?'⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒœ'                +SPACE(10)+'⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒœ'
   ? '”ÄÑêÖëHÄ KÄêíÄ HÄ óÖÜÑÖHÖñ: '+nom1+'”ãHó/ÖÉH: '+egn0+'      ”  èéã  ”  SEX  ”'               +SPACE(10)+ '”ÄÑêÖëHÄ KÄêíÄ HÄ óÖÜÑÖHÖñ: '+nom1+'”ãHó/ÖÉH: '+egn0+'      ”  èéã  ”  SEX  ”'
   ? '”REGISTRATION CARD OF FOREIGNER   ”Personal number             ”       ”       ”'               +SPACE(10)+ '”REGISTRATION CARD OF FOREIGNER   ”Personal number             ”       ”       ”'
   ? '”É∞†¶§†≠±≤¢Æ                      ”Citizen                     ”   '+pol0+ '   ”   '+pol1+'   ”'+SPACE(10)+ '”É∞†¶§†≠±≤¢Æ                      ”Citizen                     ”   '+pol0+ '   ”   '+pol1+'   ”'
   ? '”Nationaly: '+darz0+'       ”                            ”       ”       ”'                     +SPACE(10)+ '”Nationaly: '+darz0+'       ”                            ”       ”       ”'
   ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒ‘'               +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒ‘'
   ? '”          '+name0+'    '+prez0+'    '+fami0+'      ”'                                          +SPACE(10)+ '”          '+name0+'    '+prez0+'    '+fami0+'      ”'
   ? '”          '+lnam0+'    '+lpre0+'    '+lfam0+'      ”'                                          +SPACE(10)+ '”          '+lnam0+'    '+lpre0+'    '+lfam0+'      ”'
   ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'               +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'
   ? '”êÆ§•≠(†) '+space(69)+'”'                                                                       +SPACE(10)+ '”êÆ§•≠(†) '+space(69)+'”'
   ? '”Date and place off birth: '+dtoc(razd0)+space(42)+'”'                                          +SPACE(10)+ '”Date and place off birth: '+dtoc(razd0)+space(42)+'”'
   ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'               +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'
   ? '”ÑÆ™≥¨•≠≤ ß† '+space(37)+'àß§†§•≠ ≠† '+space(18)+'”'                                            +SPACE(10)+ '”ÑÆ™≥¨•≠≤ ß† '+space(37)+'àß§†§•≠ ≠† '+space(18)+'”'
   ? '”ß† ±†¨Æ´®∑≠Æ±≤'+space(35)+'Date of issue : '+dtoc(pdat0)+'   ”'                                +SPACE(10)+ '”ß† ±†¨Æ´®∑≠Æ±≤'+space(35)+'Date of issue : '+dtoc(pdat0)+'   ”'
   ? '”Identity document: '+pnom0+space(15)+'Ç†´®§•≠ §Æ                   ”'                          +SPACE(10)+ '”Identity document: '+pnom0+space(15)+'Ç†´®§•≠ §Æ                   ”'
   ? '”'+space(49)+'Date of expiry: '+dtoc(dexpi0)+'   ”'                                             +SPACE(10)+ '”'+space(49)+'Date of expiry: '+dtoc(dexpi0)+'   ”'
   ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'               +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'
   ? '”ñ•´ ≠† Ø∞®°®¢†¢†≠•≤Æ '+space(57)+'”'                                                           +SPACE(10)+ '”ñ•´ ≠† Ø∞®°®¢†¢†≠•≤Æ '+space(57)+'”'
   ? '”Purpose of stay : '+zel0+space(36)+'”'                                                         +SPACE(10)+ '”Purpose of stay : '+zel0+space(36)+'”'
   ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'               +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'
 * ? '”Ä§∞•± é°´†±≤ '+space(36)+'”'+space(28)+'”'                                                     +SPACE(10)+ '”Ä§∞•± é°´†±≤ '+space(36)+'”'+space(28)+'”'
 * ? '”Address Region: '+space(33)+'”'+space(28)+'”'                                                  +SPACE(10)+ '”Address Region: '+space(33)+'”'+space(28)+'”'
 * ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘                            ”'               +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘                            ”'
 * ? '”é°π®≠†'+space(43)+'”'+space(28)+'”'                                                            +SPACE(10)+ '”é°π®≠†'+space(43)+'”'+space(28)+'”'
 * ? '”Municipality: '+space(35)+'”'+space(28)+'”'                                                    +SPACE(10)+ '”Municipality: '+space(35)+'”'+space(28)+'”'
 * ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘                            ”'               +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘                            ”'
 * ? '”É∞./±•´Æ'+space(41)+'”'+space(28)+'”'                                                          +SPACE(10)+ '”É∞./±•´Æ'+space(41)+'”'+space(28)+'”'
 * ? '”Town/Village: '+space(35)+'”'+space(28)+'”'                                                    +SPACE(10)+ '”Town/Village: '+space(35)+'”'+space(28)+'”'
 * ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘                            ”'               +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘                            ”'
 * ? '”Ü.™.'+space(45)+'”'+space(28)+'”'                                                              +SPACE(10)+ '”Ü.™.'+space(45)+'”'+space(28)+'”'
 * ? '”Housing estate: '+space(33)+'”'+space(28)+'”'                                                  +SPACE(10)+ '”Housing estate: '+space(33)+'”'+space(28)+'”'
 * ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘                            ”'               +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘                            ”'
 * ? '”Å´Æ™'+ space(45)+'”'+space(28)+'”'                                                             +SPACE(10)+ '”Å´Æ™'+ space(45)+'”'+space(28)+'”'
 * ? '”Housing estate: '+space(33)+'”'+space(28)+'”'                                                  +SPACE(10)+ '”Housing estate: '+space(33)+'”'+space(28)+'”'
 * ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘                            ”'               +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘                            ”'
 * ? '”Çµ.                E≤.           ÄØ.             ”'+space(28)+'”'                              +SPACE(10)+ '”Çµ.                E≤.           ÄØ.             ”'+space(28)+'”'
 * ? '”Entrance           Floor:        Flat:           ”'+space(28)+'”'                              +SPACE(10)+ '”Entrance           Floor:        Flat:           ”'+space(28)+'”'
 * ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'+space(28)+'”'                              +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'+space(28)+'”'
 * ? '”èÆ§Ø®± ≠† ∑≥¶§•≠•∂†'+space(30)+'”'+space(28)+'”'                                               +SPACE(10)+ '”èÆ§Ø®± ≠† ∑≥¶§•≠•∂†'+space(30)+'”'+space(28)+'”'
 * ? '”Foreigner`s signature '+space(27)+'”'+space(28)+'”'                                            +SPACE(10)+ '”Foreigner`s signature '+space(27)+'”'+space(28)+'”'
 * ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘                            ”'               +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘                            ”'
 * ? '”ÑÆ¨†™®≠'+space(42)+'”'+space(28)+'”'                                                           +SPACE(10)+ '”ÑÆ¨†™®≠'+space(42)+'”'+space(28)+'”'
 * ? '”(®¨•≠†): '+space(40)+'”'+space(28)+'”'                                                         +SPACE(10)+ '”(®¨•≠†): '+space(40)+'”'+space(28)+'”'
 * ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'               +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'
   ? '” ” å ” Ü ” ÖÉH/ãHó '+space(30)+'” Ñ†≤† ÉKèè   '+dtoc(dkpp0)+'     ”'                           +SPACE(10)+ '” ” å ” Ü ” ÖÉH/ãHó '+space(30)+'” Ñ†≤† ÉKèè   '+dtoc(dkpp0)+'     ”'
   ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'+' ÉKèè '+kpp0+'       ”'                   +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'+' ÉKèè '+kpp0+'       ”'
   ? '”èÆ§Ø®±             '+space(30)+'” è∞®±≤®£≠†´  '+dtoc(pris0)+'     ”'                           +SPACE(10)+ '”èÆ§Ø®±             '+space(30)+'” è∞®±≤®£≠†´  '+dtoc(pris0)+'     ”'
   ? '”≠† §Æ¨†™®≠†           '+space(27)+'” è∞•±≤Æ© '+str(zami0-pris0,5)+'  §≠®         ”'            +SPACE(10)+ '”≠† §Æ¨†™®≠†           '+space(27)+'” è∞•±≤Æ© '+str(zami0-pris0,5)+'  §≠®         ”'
   ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘ á†¨®≠†¢†    '+dtoc(zami0)+'     ”'          +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘ á†¨®≠†¢†    '+dtoc(zami0)+'     ”'
   ? '”ïÆ≤•´,             '+space(30)+'”'+space(28)+'”'                                               +SPACE(10)+ '”ïÆ≤•´,             '+space(30)+'”'+space(28)+'”'
   ? '”¨ø±≤Æ ß† ØÆ§±´Æ≠:  "KéêÄã"'+'       ë≤†ø '+str(staj0,4)+'       ”'+space(28)+'”'               +SPACE(10)+ '”¨ø±≤Æ ß† ØÆ§±´Æ≠:  "KéêÄã"'+'       ë≤†ø '+str(staj0,4)+'       ”'+space(28)+'”'
   ? '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'               +SPACE(10)+ '√ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ‘'
   ? '”èÆ§Ø®±             '+space(30)+'”'+space(28)+'”'                                               +SPACE(10)+ '”èÆ§Ø®±             '+space(30)+'”'+space(28)+'”'
   ? '”≠† ∞•£®±≤∞†≤Æ∞†:   '+space(30)+'”'+space(28)+'”'                                               +SPACE(10)+ '”≠† ∞•£®±≤∞†≤Æ∞†:   '+space(30)+'”'+space(28)+'”'
   ? '¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ'               +SPACE(10)+ '¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ'
*  ? ''


  pech()

               endcase
     set cent off
                              return

     **************** è∞Æ∂•§≥∞† ß† ®ß°Æ∞ ≠† †§¨®≠®±≤∞.  ***************
                           proc  admini

                  if file("admini.mem")
                          restore from admini additive
                          @  9,23,13,58 box ram1
                          @ 10,24 clea to 12,57
                          parol0=0
                          store ' ' to x1,x2,x3,x4,x5
                          set curs on
                          @ 10,24 say 'åÆ´ø ¢∫¢•§•≤• Ç†∏†≤† Ø†∞Æ´†:'
                       *  setcolor (colors [zv0+3])
                          @ 10,52  say space(5)
                          @ 10,52  get x1  && pict "9"
                          read
                          @ 10,52  say '*'
                          @ 10,53  get x2
                          read
                          @ 10,53  say '*'
                          @ 10,54  get x3
                          read
                          @ 10,54  say '*'
                          @ 10,55  get x4
                          read
                          @ 10,55  say '*'
                          @ 10,56  get x5
                          read
                          @ 10,56  say '*'
                          setcolor (colors [zv0])
                          set curs off
                         parol0=x1+x2+x3+x4+x5

                     do case
                        case sa_11=parol0
                            store sa_1 to ime0
                            admi0='1'
                        case sa_12=parol0
                            store sa_2 to ime0
                            admi0='2'
                        case sa_13=parol0
                            store sa_3 to ime0
                            admi0='3'
                        case sa_14=parol0
                            store sa_4 to ime0
                            admi0='4'
                        case sa_15=parol0
                            store sa_5 to ime0
                            admi0='5'
                        case sa_16=parol0
                            store sa_6 to ime0
                            admi0='6'
                        other
                          @ 10,24 clea to 12,57
                          @ 10,29 say 'ë∫¶†´ø¢†¨, ≠Æ ≠ø¨†≤• Ø∞†¢Æ '
                          @ 12,30 say '    ≠† §Æ±≤∫Ø  !!!         '
                          i0=inkey(0)
                          cance
                     endcase
                      read
                      set cons on
                       ? ime0
                       ? admi0
                     pause '44444444444444444444444444444444444444'

                      set cons off

                            @ 10,24 clea to 12,57
                            @ 10,25 say ime0
                            @ 10,56 say admi0
                            @ 12,30 say 'F3 - Ø∞Æ¨ø≠† ≠† Ø†∞Æ´†'
                            i0=inkey(0)
                      if lastkey()=-2
                          set curs on
                          @ 10,24 clea to 12,57
                          @ 10,24 say 'åÆ´ø ¢∫¢•§•≤• HÆ¢†≤† Ø†∞Æ´†' get parol0
                          @ 12,24 say 'à¨•' get ime0
                          read
                          set curs off
                     do case
                        case admi0='1'
                            store parol0 to sa_11
                            store ime0 to sa_1
                        case admi0='2'
                            store parol0 to sa_12
                            store ime0 to sa_2
                        case admi0='3'
                            store parol0 to sa_13
                            store ime0 to sa_3
                        case admi0='4'
                            store parol0 to sa_14
                            store ime0 to sa_4
                        case admi0='5'
                            store parol0 to sa_15
                            store ime0 to sa_5
                        case admi0='6'
                            store parol0 to sa_16
                            store ime0 to sa_6
                     endcase
                      endif

                      save all like sa_* to admini.mem
                  else
                      store space(30)  to sa_1,sa_2,sa_3,sa_4,sa_5,sa_6
                      store '-----'  to sa_11,sa_12,sa_13,sa_14,sa_15,sa_16
                      save all like sa_? to admini.mem
                  endif
                           return

      ************ èÆ≤∞•°®≤•´±™† ¥≥≠™∂®ø **********
                function pfunk1
                parameters mode0,fld0
                cur0=fiel[fld0]
                 do case
            case mode0 < 4
                      if l2='§'
                       l2='≠'
                      endif
                       if dele()
                           @ 23,25 say 'K†∞≤† • åÄêK. ß† ®§≤∞®¢†≠•'
                       else
                           @ 23,15 say space(50)
                           @ 23,24 say 'Enter - ¢ß•¨† §†≠≠®≤• ≠† ´®∂•≤Æ'
                       endif
                      return 1
            case lastkey()=13
                          @ 11,16 clea to 20,64
                          return 0
            case lastkey()=27
                          @ 11,16 clea to 20,64
                          go bott
                          return 0
            case lastkey()=172.or.lastkey()=175.or.lastkey()=162
                do case
                   case lastkey()=172  &&  ¨
                         @ 23,25 say 'K†∞≤† • åÄêK. ß† ®§≤∞®¢†≠•'
                    dele
                   case lastkey()=162  &&  ¢
                         @ 23,25 say 'K†∞≤† • ÇöáëíÄHéÇÖHÄ      '
                   reca
                endcase
                       if dele()
                             @ 23,25 say 'K†∞≤† • åÄêK. ß† ®ß≤∞®¢†≠•'
                       else
                             @ 23,25 say '                          '
                       endif
            otherwise
                  return 1
          endcase
                return 1
  *********** K∞†© ≠† ØÆ≤∞•°®≤•´±™†≤† ¥≥≠™∂®ø ß† µ†∞†™≤•∞®±≤®™† ≠† ±≤†ø  ********



      function   setcolors (_loc1)
          local _loc2
     _loc2 := {"W/ , /W, /W, /W, /W", "GR+/B, R/W, N/N, N/N, N/W", ;
               "W*/N","R+*/B",;
               "W/ , /W, /W, /W, /W", "N/W, R/W, N/N, N/N, N/W"}
             * "GR+B/BG,N/W,N/N,N/N,B/BG", "R/W,R/W,N/N,N/N,R/W", ;
             * "R/W,B/BG,N/N,N/N,R/W","R/W,B/BG,N/N,N/N,R/W",  ;
             * "N/W,B+/BG,N/N,N/N,N/W", "B/BG,B/BG,N/N,N/N,B/BG", ;
             * "GR+/B,R/W,B/B,W/G,RB/W","BG+/B,B/BG,N/N,N/N,BG+/B"}
          return _loc2
      ************** è∞Æ∂•§≥∞† ß† §†≤†≤†  *************
		   proc zvetia
	   set key 182 to
	   save screen
	  @ 10,23,12,56 box ram1
	  @ 11,24 clea to 11,55
	  set curs on
          @ 11,25 say 'ó•∞≠Æ/°ø´Æ - 1 ∂¢•≤≠Æ - 2 :' get zv0  pict "99" valid 0 < zv0 .and. zv0 < 13
	  read
	  set curs off
          save all like zv0 to zvetia
	  set key 182 to zvetia
	  restore screen
          setcolor (colors [zv0])
          keyboard chr(27)
                   return .T.
