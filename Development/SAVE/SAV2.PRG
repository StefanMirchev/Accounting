   *SAV2.PRG  adob dobor barcod. fkt fnom gkor gzik kdso kdao kkso kobob konpart
   **  prodpri prodraz sav33.
   *  @  0,15  say 'bbbb ' ; inkey(0) //kkk

      do pro2
     set curs on
  *   data0=substr(dtoc(date0),4,5)
      tt0='20'
       open_arhi(loc0:=33) ; set filter to substr(papk,1,1)='k'.and.data=data0
             go top
        if .not.data0=data
             @ 23+ml0,15 say ' ÇHàåÄHàÖ !'   color 'R+/B'
         * if sc9='§'
             @ 23+ml0,26 say '  HÖ éíäêàí åÖëÖñÄ åéãü àáèöãHÖíÖ 6/3/2 '
         * else
         *   @ 23+ml0,26 say '  HÖ éíäêàí åÖëÖñÄ åéãü àáèöãHÖíÖ 6/5/2 '
         * endif
                  zvan()
                  inkey(4)
                  return
        endif
                if sc9='§'
             set filter to substr(papk,1,1)='k'.and.data=data0 &&  .and.subs(nom,1,1)='7'  &&  supto vkluchi
                else
             set filter to substr(papk,1,1)='k'.and.data=data0
                endif
               go top
               declare fiel[1]
               fiel[1]='dok'
               declare imem[1]
               imem[1]=''
               @  4,18,20,62 box ram1
               @  5,19 clea to 19,61
               @  5,22 say 'éØ∞•§•´ø≠• £∞≥Ø†≤† ≠† §Æ™≥¨•≠≤†∂®ø≤†'

                dbedit( 6,26,19,53,fiel,"",'xxxxxxxxxxxxxxxxxxxxxxxxxx',imem,' ')
                       if lastkey()=27.or.substr(dok,23,4)='    '
                           return
                       endif
       nom1=subs(data0,4,2)+data0+str(val(substr(dok,23,4)),4)
       dok2= substr(dok,1,26)
   @  1, 0 clea to 24+ml0,80
   @  1,30 say 'ë∑•≤Æ¢Æ§≠† ÆØ•∞†∂®ø'
   @  2,29 say '---------------------'
   @  3, 5 say 'HÆ¨•∞ ≠† ëé :'
   @  3,50 say 'ÑÆ±≤†¢.ØÆ ∑´.163† áÑÑë'
   @  4, 5 say 'ÑÖÅàí'
   @  4,12 say '/ESC - ®ßµÆ§'
   @  4,56 say 'F2 - ØÆ¨Æπ/'
   @  4,69 say 'KêÖÑàí'
   @  4,27 say dok2
   @  5, 5 say repli('-',70)
   @ 19, 1 say repli('-',78)
   p0=6
   b0=0
   bg_0='BG'
      do while b0<11
         @ p0,40 say '›'
         p0=p0+1
         b0=b0+1
      enddo
      open_arhi(loc0:=34)
     find '&nom1'
        if found()
          skip -1
        else
        endif
   nom0=val(nom)
   clos data
   store  '≠' to l2,l9,barc1
   dr22=' '
   fn0=0
   vid4=space(23)
    store date0 to date1
   do while .t.    &&      NACHALO G L A V E N   C I K A L
   store '≠' to l4,l5,l7,l8,l11,regl0,ll7,ll11,ll12 && l4 ®ß∞†¢≠ø¢† ÆØ•∞†∂®ø
   sch2=' ' ; vd0='01' ; vid1='¥-∞†' ; vid2=space(10) ; timeb0='  :  :'
   store 0 to nvo0, kkol0,ksal0,papk0
   @  6, 0 clea to 17,37 ; @  6,43 clea to 17,75 ; @ 17,0 say space(70)
   if sc9='§' ; papk0=val(subs(sch00,3,1)) ; endif
        nom0=nom0+1
        if file("sc17") ; sc17='n' ; else ; sc17='y' ; endif
        if nom1=data0+str(nom0,4)
           @ 18,25 say 'á†§•´e≠®≤• ≠Æ¨•∞† ±† ®ß∑•∞Ø†≠® !'
           i0=inkey(0)
           return
        endif
           do startkey && p2
                     * if subs(str(nom0,4),1,1)='3'
                     *    sc9='≠'
                     *  endif
          @  3,17 say str(nom0,5)+'-'+data0

         if sc9='§'
            open_dobo(loc0:=30)
            dtno0=subs(data0,4,2)+data0+str(nom0,4)
            find '&dtno0'
             del()
           if found()
              @ 20+ml0,38 say 'ÇHàåÄHàÖ!'  color 'R+/B'
              @ 22+ml0,26 say 'éØ•∞†∂®ø≤† • ß†¢∫∞∏®´† ≠•™Æ∞•™≤≠Æ'
              @ 23+ml0,14 say 'åÆ´ø ®ß∑†™†©≤• ≠ø™Æ´™Æ ±•™≥≠§® ß† §† ±• Æ≤±≤∞†≠® Ø∞Æ°´•¨†!'
              for l1=1 to 2
                   @ 20+ml0,38 say 'ÇHàåÄHàÖ!' color 'R+/B' ; inkey(1)
                   @ 20+ml0,38 say '         '  ; inkey(1) ; next
              @ 20,14 clea to 23,78
             del()
              open_kobo(loc0:=30)
              dtno0=subs(data0,4,2)+data0+str(nom0,4)
              find '&dtno0'
             del()
                    podr_0=22 ; save all like podr_0 to podred ; podred()
                    podr_0=23 ; save all like podr_0 to podred ; podred()
              @ 20,14 clea to 23,78
              @ 22+ml0,23 say 'äÆ∞•™∂®ø≤† • ≠†Ø∞†¢•≠† ¨Æ´ø Ø∞Æ§∫´¶•≤•!'
                inkey(2)
              @ 22+ml0,23 say space(50)
           endif
         endif
               sele 1
   set cursor on
   @  3,73 get papk0 pict '99' &&  valid papk0=0.or.papk0=1.or.papk0=2
   chet() && read
   set key 304 to ; save screen to ekr1  ; @ 22,20 say space(50)
         do vazkey
         if lastkey()=27 ; do vazkey ; clos data ; return ; endif
       if sc9='≠'
         spdok() &&  pro1 !!!! VIzh TOVA -> za targovski variant spdok se startira izrav p0
       endif
       p0=7
         if lastkey()=27.and.(p0=17.or.p0<>8)
            set key -3 to
            set key -4 to
            return
         endif
        if l9='§'
                 store 0 to ksto0, ksto1, dsto1
        else
                          store 0 to dsto1,ksto1,min0
                          do dobor

        endif

          if sc11='§'.and.dsto1=0
             l8='§'
          endif
        if .not.l8='§'
         *    @  0,15  say 'supto 01' ; inkey(0) //kkk
                          do kobor
        endif
       if p0=7
          set key -3 to
          set key -4 to
          return
       endif
      if  l5='§'.and.ksto0=0.and.ll12='≠'
            open_arhi(loc0:=35)
         find '&nom1'
         if found()
           skip -1
         endif
        nom0=val(nom)
          loop
      endif

   &&!!!KLUCHEVO MYASTO AKO ksto1=0 OPER. NE SE REG. V ARHI.DBF V TYRG.MODUL!!!!
         if sc9='§'.and. ksto1=0 ; izrav() ; return  ; endif
          *    @  0,15 say  'supto 02 vika izrav' ; inkey(0) //kkk
      do regt  //  sav8 - izdirva kontragent
           *   @  0,15  say 'supto 06 izdirva kontragent' ; inkey(0) //kkk

      open_arhi(loc0:=36)
      appe blank
                rec_lock()
                if dr2='§'.or.dr2='Ø'
                    repl sd with sd2, vd with vd0
                    if dsto1 < -0
                       vid0='™-®•'+subs(vid0,5,44)
                       repl vd with '03'
                    endif
                else
                    repl sd with ' '
                endif

                if dr2='Ø'
                    repl fakt with substr(vid0,6,10)
                    if l4='§'
                       if vd0='09'
                          repl f with 'Æ'
                       else
                        if 0 < val(fakt) ; repl f with '™' ; endif
                       endif
                    endif

                   *   if dn1='147164000 '
                   *  *   dok0='Ø∞Æ¨.±≤Æ™®. '+'™†±Æ¢ °Æ≠'+space(5)+'-'+dtoc(date0)+space(4)+subs(dok0,40,1)
                   *      dok0='Ø∞Æ¨.±≤Æ™®. '+space(4)+fakt+'-'+dtoc(date0)+space(4)+subs(dok0,40,1)
                   *   endif

                endif
                if sc4='§'.and.substr(dok0,1,10)=space(10)
                    repl dok with dnev0+substr(dok0,11,30)
                endif
                rec_unlock()
                if sch2='411'.and.dr2='Ø'
                   dok0=subs(dok0,1,39)+'Å'
                else
                   if subs(dok0,40,1)='Å'
                      dok0=subs(dok0,1,39)+' '
                   endif
                endif
            if sc9='§'
                if sch2='501'.and.dr2='Ø'
                   dok0=subs(dok0,1,39)+'ä'
                else
                   if subs(dok0,40,1)='ä'
                      dok0=subs(dok0,1,39)+' '
                   endif
                endif
                if l11='§'
           dok0=subs(dok0,1,38)+'*'+subs(dok0,40,1)
                endif
            endif

               rec_lock()
   repl nom with str(nom0,4), papk with str(papk0,3),dok with dok0,vid with vid0,;
   dn with dn2,dr with dr2,data with data0, vek with subs(vek0,1,2), ;
   vek with subs(str(year(date0),4),1,2), reg with dtoc(date())

   if (dr2='Ø'.and.sd='®').or.(dr2='§'.and.sd='¢')
      repl dn with subs(dn30,3,10), bg with subs(dn30,1,2), dn3 with subs(dn30,13,3)
   endif
               re0=recn()
               re_0=recno()
               rec_unlock()
               papk0=val(papk)
               clos data
                     dsto1=round(dsto1,j1)
                     ksto1=round(ksto1,j1)
             if .not. dsto1=ksto1
                 if dsto1>ksto1
                    l0='§'
                 else
                    l0='™'
                 endif
   @ 18, 1 say 'Hø¨† ∞†¢•≠±≤¢Æ ØÆ Ñ-≤†-'+str(dsto1,14,2)+' ® K-≤†-';
   +str(ksto1,14,2)+' <'+l0+'> '+str(abs(dsto1-ksto1),14,2)
   store ksto1 to ksto11
                 pauza()
   @ 18, 0 say space(80)
                 do gkor
   ra2=0
   @  1, 0 clea to 24+ml0,80
   @  1,30 say 'ë∑•≤Æ¢Æ§≠† ÆØ•∞†∂®ø'
   @  2,29 say '---------------------'
   @  3, 5 say 'HÆ¨•∞ ≠† ëé :'
   @  3,28 say 'ÑÆ±≤†¢.ØÆ ∑´.163† áÑÑë'
   @  3,63 say 'Ñ†≤†   '
   @  4, 5 say 'ÑÖÅàí'
   @  4,12 say '/ESC - ®ßµÆ§'
   @  4,56 say 'F2 - ØÆ¨Æπ/'
   @  4,69 say 'KêÖÑàí'
   @  4,27 say dok2
   @  5, 5 say repli('-',70)
   @ 19, 1 say repli('-',79)
   p0=6
   b0=0
   store '≠' to l11,ll7,ll9
   do while b0<11
   @ p0,40 say '›'
   p0=p0+1
   b0=b0+1
   enddo
      open_arhi(loc0:=37)
     find '&nom1'
        if found()
          skip -1
        endif
   nom0=val(nom)
             else

       ********************  KRAY SHETOVODNA OPERACIYA *****************
          *  @  0,15  say 'supto 07  fakt()'+sc17 ; inkey(0) //kkk

       if sc9='§'
          l5='≠'
          if sc17='y'
             fakt()
          else
             @ 22+ml0,15 say '         è∞Æ£∞†¨†≤† Ø•∑†≤†, ¥®±™†´≠• °Æ≠.             '
           inkey(0)

             l2='y'  // proverka za vkluchen f. printer
             ekpr0=2
             store nom0 to nom2
             pl0='¢ °∞Æ©'
             store round(ksto0,2) to slov0
         *   do fprint  // sav1
              if l2='n' ; loop ; endif // ne e vkluchen f. printer
              do kaparat // pro6 - proverka za wkl. k.aparat
          endif
          restor screen from ekr1
       endif

                  loop
             endif

   enddo  //  &&      KRAY G L A V E N   C I K A L
   *   1     H†∑†´Æ ≠† Ø∞Æ∂•§≥∞†≤† ß† ¢∫¢•¶§†≠• ≠† Ñ•°®≤≠®≤• Æ°Æ∞Æ≤®
                                proc dobor
   dk1='d'     && d2
     if sc13='§'
        l4='§'
     endif
   do while p0<16
   store 0 to dsto0, ksto0,mdt0
   if sc9='§'.and.p0=7
             if dn1='147164000 '
                 sch0='411'
                 dsto0=0
             else
                 sch0='501'
                 dsto0=1
             endif
   else
      sch0='   '
   endif
   set key 176 to prodraz
   set key -33 to zadalz
             if subs(str(nom0,4),1,1)='3' .and. sc16='§' .and. p0=7
                store sch00 to sch0
             endif
   @ p0, 6 get sch0
   chet() && read
   set key -33 to  && Alt+F4
   set key 176 to
   if lastkey()=27.and.ll11='≠'
      @ p0,6 clea to p0+1,36
      return
   endif
   if sch0='41'.or.sch0='498'.or.sch0='501'
      store sch0 to sch2
   else
      if .not. sch0='   '
         sch2=' '
      endif
   endif
   @ 18, 0 say space(80)
   if ll11='§'.and.dr2='§'.and.(sd2='±'.or.sd2='¢')
      if dsto2=0
         return
      endif
             @ p0, 6 say '453'
             @ p0, 23 say str(round(dsto2*d_s0,j1),j0,j1)
      ll12='≠'
      ll11='≠'
      set key -3 to ddok
      @ 16,22 say str(dsto1,14,2)
             return
   endif
      if sch0='   '.or.l8='§'.or.lastkey()=9
        @ p0,6 clear to p0+1,36
        exit
      endif
             if substr(sch0,1,1)='6'.and.sc2='§'
                 ss1='6'
             endif
      open_obve(loc0:=21)
      find '&sch0'
     if .not.found()
        nsinf()
        loop
     endif
          if sc6='§'.and.substr(sch,1,1)='3'
             ra2=0
             proze()
          endif
        a0=a
        if a='§'
                if l4='§'.or.sc9='§'
                   l7='§'
                   dtno0=subs(data0,4,2)+data0+str(nom0,4)
                endif
           t0=t
           clos data
           adob()
               if dsto0=0 .and. ll12='≠'
                  loop
               endif
        else
           clos data
                if l4='§'.or.sc9='§'
                   dtno0=subs(data0,4,2)+data0+str(nom0,4)
                endif
             set key  -4 to prik   &&  sav7
             @ p0,23 get dsto0 pict "99999999999.99"
             chet() && read
             set key  -4 to
                   if ll7='§'.and.sch0='7'
                      dsto0=round(dsto0/(1+d_s0),j1)  && round(dsto0/1.22,2)
                      @ p0,23 say dsto0 pict "99999999999.99"
                      ll7='≠'
                   endif
                  @ 18, 0 say space(80)
               if dsto0=0 .and. ll12='≠'
                  @ 18,18 say 'Hø¨†≤• Ø∞†¢Æ §† ¢∫¢•¶§†≤• ≠≥´•¢® ±≤Æ©≠Æ±≤® !'
                          i0=inkey(0)
                  @ 18, 0 say space(80)
                  loop
               endif
        endif
   p0=p0+1
          open_dobo(loc0:=30)

          if sc9='§'
             find '&dtno0'
            if found()        &&&    ppppppppppppppppppppppppp
               @ 20+ml0,38 say 'ÇHàåÄHàÖ!'  color 'R+/B'
               @ 22+ml0,26 say 'éØ•∞†∂®ø≤† • ß†¢∫∞∏®´† ≠•™Æ∞•™≤≠Æ'
               @ 23+ml0,26 say '    åÆ´ø ß†ØÆ∑≠•≤• Æ≤≠†∑†´Æ!     '
               for l1=1 to 4
                    @ 20+ml0,38 say 'ÇHàåÄHàÖ!' color 'R+/B' ; inkey(1)
                    @ 20+ml0,38 say '         '  ; inkey(1) ; next
               return
            endif
          endif
   set order to 2
   ss0=sch0+subs(data0,4,2)+data0+str(nom0,4)
   find "&ss0"
   if .not. found()
       appe blank
   endif
               rec_lock()
   repl nom with str(nom0,4), sch with sch0, nvo with str(nvo0,4), dsto with dsto0, data with data0
               rec_unlock()
   dsto1=dsto1+dsto
          clos data
          if sc9='§'
             exit
          endif
   enddo
   @ 16,22 say str(dsto1,14,2)
   return
   *   2     H†∑†´Æ ≠† Ø∞Æ∂•§≥∞†≤† ß† ¢∫¢•¶§†≠• ≠† K∞•§®≤≠® Æ°Æ∞Æ≤®
                             proc kobor
       dk1='k'
       nvo0=0
       if p0=7.and.l9='≠'
          set key -3 to
          return
       endif
                   if l9='§'
                      p0=8
                   endif
    k1=' '
             if p0<9
                 p1=17
             else
                 p1=p0+1
             endif
   do while p0<p1
   sch0='   '
   ksto0=0
   l6='≠'
   if sc9='≠'
      set key 175 to prodpri  && sav2
   endif
   if sc9='§'
          store sch00 to sch0
       @ p0,43 get sch0
       chet() && read
         if sch0=sch00
            store time() to timeb0

            prodag()   // nova prodagba schet. operaciq

            sele 4
            clos data
            @ p0,60 say ksto0 pict "99999999999.99"
         else

            l7='≠'
            @ 21, 0 clear to 24+ml0,80
            spdok() &&  pro1 !!!! VIzh tova -> za targovski variant spdok se startira ot pro0
         endif
   else

     @ p0,43 get sch0
     chet() && read
     set key -33 to
   endif
           set key 175 to
   if sc9='≠'
           @ 18, 0 say space(80)
          if sch0='   '
            if k1='y'
               @ p0,43 clear to p0+1,74
                 if sc16='§'
                    sc9='§'
                    analobo()
                    @ 23, 0 say space(80)
                 *  sc9='≠'
                 endif
               exit
            else
               loop
            endif
          endif

             if (substr(sch0,1,1)='5'.or.substr(sch0,1,1)='4').and.(ss1='6') && .and.(.not.substr(sch0,1,2)='45')) && ±´. °∞ø£
                nivo()    &&  sav3
             endif
                ss1=' '
            * if sch0='501'.or.sch0='401'
            *    sch01=sch0
                 sch01='501'
            * endif
      open_obve(loc0:=22)
   go top
   find '&sch0'
     if .not.found()
         nsinf()
         loop
     endif
          if sc6='§'.and.substr(sch,1,1)='3'
             ra2=0
             proze()
          endif
        a0=a
        if a='§'
           t0=t
                adob()
               if ksto0=0 .and. ll12='≠'
                  loop
               endif
        else
                    if dr2='Ø'.and.(sd2='Æ'.or.sd2='±')
                      store round(dsto1/(1+d_s0),j1) to ksto0
                    else
                      store dsto1 to ksto0
                    if sch0='777'
                       ksto0=dsto1-ksto1
                    endif
                    endif
             set key -4 to prik
             @ p0,60 get ksto0 pict "99999999999.99"
             chet()
             set key -4
                   if ll7='§'.and.sch0='7'
                      ksto0=round(ksto0/(1+d_s0),j1)
                      @ p0,60 say ksto0 pict "99999999999.99"
                      ll7='≠'
                   endif
                  @ 18, 0 say space(80)
               if ksto0=0 .and. ll12='≠'
                @ 18,18 say 'Hø¨†≤• Ø∞†¢Æ §† ¢∫¢•¶§†≤• ≠≥´•¢® ±≤Æ©≠Æ±≤® !'
                          i0=inkey(0)
                  @ 18, 0 say space(80)
                loop
               endif
        endif
     p0=p0+1
     k1='y'
   endif
          open_kobo(loc0:=28)
   set order to 2
   ss0=sch0+subs(data0,4,2)+data0+str(nom0,4)
   find "&ss0"
   if .not. found()
       appe blank
   endif
               rec_lock()
   repl nom with str(nom0,4), sch with sch0, nvo with str(nvo0,4), ksto with ksto0,;
   data with data0
               rec_unlock()
   ksto1=ksto1+ksto
         if sc9='§'   &&   ®ß≤∞®¢† ß†Ø®±® Æ≤ Ø∞Æ§†¶≠† ÆØ•∞†∂®ø ¢ ¨†£†ß®≠
          if ksto0=0.and.ll12='≠'  && Ø∞® Æ≤™†ß Æ≤ ÆØ•∞†∂®ø
            @ 20,1 clea
            store nom1 to nom3
            store nom0 to nom1,nom2
            store data0 to data3
            l0='¨'
            markir()
            iztri()
            store nom3 to nom1
          endif
            return    //   proc kobor
         endif
   enddo
   return
   *    3  H†∑†´Æ ≠† Ø∞Æ∂•§≥∞†≤† ß† ¢∫¢•¶§†≠• ≠†  Æ°Æ∞Æ≤® ØÆ †≠†´ ±-™®
                            proc adob
       clos data
       store 0 to part0,dast1
       if sc9='§'
           l11='≠'
             if dn1='147164000 '
                if sch00='717'.or.sch00='718'
                   part0=25
                else
                   part0=26
                endif
                dast1=1
             endif
       endif
       do while .t.
          if dk1='d'.and.sc9='§'.and.part0=0
            @ 20, 0 clea to 24+ml0,69
              ll7='≠'
              l11='≠'
              ll9='≠'
              return
          endif
               konpart()
                               set key -32 to
                           if lastkey()=27
                               @ 20, 0 clea to 24+ml0,69
                               ll7='≠'
                               l11='≠'
                               ll9='≠'
                               return
                           endif
         part1=sch0+str(part0,4)
         l2='≠'
       kol0=0
       if sc13='§'
         kol0=1
       endif
      if part2='7'.or.part2='3'
         @ 20, 1 say 'HÄãàóHà KéãàóÖëíÇÄ'
         @ 21, 3 say str(kkol0,j2,j3)
      endif
      if  sch0='412'
          mk0='´¢'
      endif

         @ 23,13 say 'åüêKÄ         K-Çé         ÖÑ.ñÖHÄ         ëí-ëí'
                   do while .t.
                    * set key 300 to pp
                      set key 279 to ddok
                      @ 24,15 get mk0
                   if .not. mk0='´¢'
                      @ 24,22 get kol0 pict "99999999.999"
                      @ 24,38 get zena0 pict "&picze_0"
                           if lastkey()=27
                               set key -32 to
                               set key 300 to
                               set key 279 to
                               exit
                           endif
                   else
                     if dk1='k'
                        store dsto1 to dast1
                     endif

                        if dk1='k'.and.dr2='Ø'.and.(sd2='Æ'.or.sd2='®'.or.sd2='±')
                         if  vd0='61'
                             if mdt0=0
                                 @ 18,20 say 'MÆ´ø ¢∫¢•§•≤• Ø´†≤•≠®≤• åÑí ØÆ ±§•´™†≤†!'
                                 dast1=0
                             endif
                           if 0 < mdt0   && novo
                               dast1=round((dsto1-mdt0*d_s0)/(1+d_s0)-mdt0,j1+1)
                           endif               && novo
                           *  dast1=round(dsto1/((1+d_s12)*(1+d_s0)-d_s12),j1+1) && satro
                         else
                           dast1=round(dsto1/(1+d_s0),j1+1)
                         endif
                        endif
                   endif
                      chet()
                   if .not. mk0='´¢'
                      dast1=round(zena0*kol0,j1+1)
                   endif
                           if lastkey()=27
                               set key 300 to
                               set key 279 to
                               exit
                           endif

                         if sch0='453'

                                if d_s0*100 < 20
                                  @ 24,47 say 'x'+str(d_s0*100,2)+'%'
                                endif
                            if  sd2='±'.or.sd2='¢'.or.sd2='∑'.or.sd2='Æ'.or.sd2='®'
                              if dk1='d'
                                   dast1=round(dsto1*d_s0,j1+1)
                              else
                                  if vd0='61'
                                    dast1=round((ksto1+mdt0)*d_s0,j1+1)   &&  novo
                                 *  dast1=round((ksto1+(ksto1-min0)*d_s12)*d_s0,j1+1) && staro
                                  else
                                    dast1=round(ksto1*d_s0,j1+1)
                                  endif
                              endif
                            else
                          zvan()
                          @ 18,14 say 'Ç≠®¨†≠®• ÆØ•∞†∂®ø≤† ≠• • µ†∞†™≤•∞®ß®∞†≠† ™†≤Æ §†≠∫∑≠† !'
                          i0=inkey(0)
                          @ 18, 0 say space(80)
                            endif
                         endif
                 if dast1<-9999999999.99.or.dast1>99999999999.99
                          zvan()
                          @ 18,27 say 'Ç≠®¨†≠®• Ø∞•Ø∫´¢†≤• ∞•£®±≤∫∞† !'
                          loop
                  else
                          @ 18, 0 say space(80)
                 endif
                              if ll7='§'
                                 if mk0='´¢'.or.zena0=0
                                   @ 24,53 get dast1 pict "99999999999.99"
                                   chet()
                                   if dk1='k'
                                      dast1=round(dast1/(1+d_s0),j1+1)
                                   endif
                                 else
                                   zena0=round(zena0/(1+d_s0),4) && ≠•°®¢† §† ±• Ø∞Æ¨•≠ø
                                   @ 24,38 say zena0 pict "9999999.999"
                                   dast1=round(zena0*kol0,j1+1)
                                 endif
                              endif && endif
                                 if l11='§'
                                   if sc12='§'
                                      zena0=round(zena0/(100+ra2)*100,3)
                                      @ 24,38 say zena0 pict "9999999.999"
                                      dast1=round(zena0*kol0,j1+1)
                                   else
                                      zena0=zena0-round(zena0*ra2/100,3)
                                      @ 24,38 say zena0 pict "9999999.999"
                                      dast1=round(zena0*kol0,j1+1)
                                   endif
                                 endif
                                   if ll9='§'
                                      zena0=zena0+round(zena0*ra1/100,3)
                                      @ 24,38 say zena0 pict "9999999.999"
                                      dast1=round(zena0*kol0,j1+1)
                                   endif
                                   @ 24,53 get dast1 pict "99999999999.99"
                                   chet()

                         if  vd0='61'.and.mdt0=0 .and. sch0='412'
                             mdt0=dast1
                         endif


                           if lastkey()=27
                               loop
                           endif
                           if dast1 < -0
                              min0 = dast1
                           endif
                        if dast1=0 .and. ll12='≠'
                          @ 18,20 say 'Hø¨†≤• Ø∞†¢Æ §† ¢∫¢•¶§†≤• ≠≥´•¢® ±≤Æ©≠Æ±≤® !'
                          loop
                        else
                          @ 18, 0 say space(80)
                          exit
                        endif
                   enddo
                         if (sch0='503'.or.sch0='504')   &&   .and.(lastkey()=13)
                           rec_lock()
                           if dk1='d'
                              repl kkol with kkol+kol0, ksal with ksal+dast1
                           else
                              repl kkol with kkol-kol0, ksal with ksal-dast1
                           endif
                           rec_unlock()
                           kkol0=kkol
                           ksal0=ksal
      if sch0='504'
         @ 20, 1 say ' ëÄãÑé HÄ ëåÖíKÄíÄ'
         @ 21, 3 say '™´'+str(kkol0,j2,j3)
         @ 22, 3 say '±†'+str(ksal0,j2,j3)
      endif
      if sch0='503'
         @ 20, 1 say ' ëÄãÑé HÄ ëåÖíKÄíÄ'
         @ 21, 3 say str(ksal0,j2,j3)
      endif
                         endif
                      *  if sch0='501'.or.sch0='401'
                      *     part01=part1
                      *  endif
                        if sc5='§'.and.sch0='411'
                           store nom0 to nom2
                           store dast1 to sald0
                          if dk1='k'
                       *   lihva()   && sav3
                          endif
                        endif
              if lastkey()=27
                 loop
              endif
  if dk1='d'
         open_dpar(loc0:=25)
          if sc9='§'
             find '&dtno0'
            if found()

               store dast1 to dsto0
               exit
            endif
          endif
         appe blank
               rec_lock()
   repl  nom with str(nom0,4), part with part1,mk with mk0, zena with zena0,;
   kol with kol0, dast with dast1, data with data0
         rec_unlock()
         dsto0=dsto0+dast
  else
         open_kpar(loc0:=26)
         appe blank
               rec_lock()
   repl  nom with str(nom0,4), part with part1, mk with mk0, zena with zena0,;
   kol with kol0, kast with dast1, data with data0
         ksto0=ksto0+kast
   if part='7'.or.(709 < val(part).and. val(part) < 721)
    if field(3)='PARTP'.and.sc1='§'
       repl partp with part
    endif
    if field(8)='OTST'
       repl otst with ra2
    endif
   endif
               rec_unlock()
  endif
         if zena=0.and.kol<>0.and.(substr(part,1,3)='304'.or.substr(part,1,3)='302'.or.substr(part,1,3)='702'.or.substr(part,1,3)='502')
            if dk1='d'
                  rec_lock()
               repl zena with round(dast/kol,3)
                  rec_unlock()
            else
                  rec_lock()
               repl zena with round(kast/kol,3)
                  rec_unlock()
            endif
         endif
         part3=part
         l2='§'
                 if dsto1<-9999999999.99.or.dsto1>99999999999.99
                         zvan()
                         @ 18,27 say 'Ç≠®¨†≠®• Ø∞•Ø∫´¢†≤• ∞•£®±≤∫∞† !'
                         dsto1=0
                  else
                          @ 18, 0 say space(80)
                 endif
               if subs(part,1,3)='702'.and.dk1='k'.and.sc3='§'  &&  ¢†§® ≠†´®∑≠® ™Æ´®∑•±≤¢†
               clos data
                  open_obap(loc0:=49)
                  part2=sch0+str(part0,4)
                  find '&part2'
                   if t0='†'
                      find '&part2'
                      if found()
                         rec_lock()
                         repl kkol with kkol-kol0
                         rec_unlock()
                      endif
                   else
                      part2='304'+str(part0,4)
                      find '&part2'
                      if found()
                         rec_lock()
                         repl kkol with kkol-kol0
                         rec_unlock()
                       endif
                   endif
                     rec_unlock()
               endif

               if subs(part,1,3)='304'.and.go0='M0'
                  part2='304'+str(part0,4)
                  open_obap(loc0:=50)
                  find '&part2'
                  if found()
                      rec_lock()
                      repl zena with zena0
                      rec_unlock()
                  endif
               endif
               clos data
     if dk1='d'
         @ p0,23 say dsto0 pict "99999999999.99"
     else
         @ p0,60 say ksto0 pict "99999999999.99"
     endif
          if dk1='d'.and.sc9='§'
             exit
          endif
       enddo
   return
    ************ è∞Æ∂•§≥∞† ß† ¢∫¢•¶§†≠• ≠† Ø†∞≤®§† ØÆ ™Æ≠≤®∞†≠†≤† ±¨•≤™† ******
                                 proc konpart
                  do while .t.
     if barc1='§'.and.sc13='§'
               barc0='                         '
               *     set key 287 to barcod
               @ 20, 1 clea to 24+ml0,69
               @ 20+ml0,22 say 'èêéóÖíÖíÖ ÅÄêäéÑ   ' get barc0
               chet()
                if barc1='≠'
                   loop
                endif
               if lastkey()=27
                  return
               endif
               set key 287 to
               open_obap(loc0:=51)
               set order to 0
               locate for barc=barc0
               if found()
                  part0=val(subs(part,4,4))
                  kol0=1
               else
                      l0='≠'
                      set filter to substr(part,1,3)=sch0
                      go bott
                      part0=val(substr(part,4,4))+1
                      zena0=zena
               endif
               l4='§'
     else
         *    set key 287 to barcod
         set key -2 to spisk1
         set key -32 to spisk1  && Alt+F3
         set key -4 to prik
         set key -34 to zavar   &&  sav3    Alt+F5
         set key -40 to proze   &&  sav2    F11
         set key -41 to nadc    &&  sav7    F12
         @ 18, 0 say space(80)
         @ 18,19 say 'F3-£∞≥Ø† Ø†∞≤®§®  Alt+F3-®≠§®¢®§≥†´≠† Ø†∞≤®§†'
         @ 20,50 say '                 '
             if sch0='453'.and.dr2='§'.and.(sd2='±'.or.sd2='¢')
                part0=1
             endif
             if sch0='453'.and.dr2='Ø'
                part0=2
             endif
         @ 20, 1 clea to 24+ml0,69
      if sch0='504'
         @ 20, 1 say ' ëÄãÑé HÄ ëåÖíKÄíÄ'
         @ 21, 3 say '™´'+str(kkol0,j2,j3)
         @ 22, 3 say '±†'+str(ksal0,j2,j3)
      endif
      if sch0='503'
         @ 20, 1 say ' ëÄãÑé HÄ ëåÖíKÄíÄ'
         @ 21, 3 say str(ksal0,j2,j3)
      endif
            if (sch0='401'.or.sch0='411').and.(.not.dn2=space(9))
               open_obap(loc0:=51)
               set filter to substr(part,1,3)=sch0
             if .not. dn1='147164000 '
               locate for dn2=subs(name,27,9)
              endif
                 if found()
                   part0=val(substr(part,4,4))
                   @ 21,23 say name
                 else
                   part0=0
                 endif
            endif
         @ 20,22 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† †≠†´. Ø†∞≤®§†:' get part0 picture "9999"
         read
          if barc1='§'
             loop
          endif
         if sc14='§'
            if dk1='d'.and.(sch2='41'.or.sch2='498'.or.sch2='501')
               part5=str(part0,4)
            endif
            if dk1='k'.and.(sch2='41'.or.sch2='498'.or.sch2='501').and.(sch0='702'.or.sch0='71')
               if .not. lastkey()=27
                   proze()
               endif
            endif
         endif

         set key 287 to
         set key -4 to
     *   set key -32 to      // oooooooooooooooooooooooooooo
         set key -34 to
         set key -40 to
         set key -41 to

         @ 18, 0 say space(80)
         @ 21, 0  clea to 24+ml0,69
         l2='≠'
                           if lastkey()=27
                               return
                           endif
                           if part0<1
                               loop
                           endif
     endif
         open_obap(loc0:=53)
         part1=sch0+str(part0,4)
         part2=sch0+str(part0,4)
             find '&part2'
                if  found()
                   @ 21,23 say  name
                   name01=name
                   mk0=mk
                   store zena to zena0, zena1
                   dn00=dnev
                   if  type(subs(name,27,9))='N'
                        dn2=subs(name,27,9)+' '
                   else
                     if (sch0='401'.or.sch0='411').and.(.not.dn2=space(9))
                        if (subs(name,27,9)=space(9)).and.(.not.dn2=space(9))
                            rec_lock()
                            repl name with subs(name,1,26)+dn2
                            rec_unlock()
                        endif
                     endif
                   endif
      if sch0='504'
                   kkol0=kkol
                   ksal0=ksal
         @ 20, 1 say ' ëÄãÑé HÄ ëåÖíKÄíÄ'
         @ 21, 3 say '™´'+str(kkol0,j2,j3)
         @ 22, 3 say '±†'+str(ksal0,j2,j3)
      endif
      if sch0='503'
                   kkol0=kkol
                   ksal0=ksal
         @ 20, 1 say ' ëÄãÑé HÄ ëåÖíKÄíÄ'
         @ 21, 3 say str(ksal0,j2,j3)
      endif



                   if sch0='41'.or.sch0='498'.or.sch0='501'
                      nv_0=subs(name,35,1)
                   endif
               if (subs(part,1,3)='702'.or.subs(part,1,2)='71').and.sc3='§'
                  if t0='†'
                      find '&part2'
                      if found()
                         kkol0=kkol &&  åéÜÅà èêÖóà HÄ ÅÄêäéÑÄ
                      endif
                   else
                      part2='304'+str(part0,4)
                      find '&part2'
                      if found()
                         kkol0=kkol &&  åéÜÅà èêÖóà HÄ ÅÄêäéÑÄ
                         ksal0=ksal &&  åéÜÅà èêÖóà HÄ ÅÄêäéÑÄ
                      endif
                   endif
                 if sc13='§'
                    kkol0=1
                 endif
               endif
                     if .not. substr(part2,1,3)='453'
                           dnev0=dnev
                     endif
                   if sc5='§'
                      open_zeni()
                      dnpa0=dn2+substr(part1,4,4)
                      find "&dnpa0"
                        if found()
                           zena0=zena
                        endif
                   endif
                   sele 6
                   return
                else
                    l0='≠'
   @ 18,5 say 'Hø¨†≤• Ø†∞≤®§† ± ≤Æß® ≠Æ¨•∞ ¶•´†•≤• ´® §† ¢∫¢•§•≤• ≠Æ¢† Ø†∞≤®§† §/≠ ?' get l0  valid l0='§'.or.l0='≠'
                         chet()
   @ 18, 0 say space(80)
                                     if l0='§'
                                       zena0=0
      if sch0='401'.or. sch0='411'
         name0=vid4+'   '+subs(dn2,1,9)
         mk0='´¢'
      endif
     @ 21,0 clea
     @ 18,19 say 'Ç∫¢•§•≤• ≠†®¨•≠Æ¢†≠®•≤Æ ≠† †.Ø†∞≤®§†    :'
     @ 23, 6 say 'å-KÄ      H†®¨•≠Æ¢†≠®• ≠† Ø†∞≤®§†≤†           ñ•≠†    é-≠®• ¢ ∞-∞'
     @ 24, 7 get mk0
     @ 24,11 get name0
     @ 24,48 get zena0 pict "9999999.999"
     @ 24,61 get dnev0
     chet()
                                                if t0=' '
   t1=' '
   @ 18,1 say 'ë¨•≤™†≤† • †™≤®¢≠Æ-Ø†±®¢≠†  ¢∫¢•§•≤• "§"-ß† Ñ-≤≠† ® "™"-ß† K-≤≠† †≠†´. Ø-§† ' get t1 valid t1='§'.or.t1='™'
     chet()  ;  @ 18, 0 say space(80)
                                                endif
                         appe blank
                         rec_lock()
                         repl part with part1, mk with mk0, name with name0, zena with zena0
                         if barc1='§' .and. sc13='§'  ;  repl barc with barc0 ;  endif
                             zena0=zena
                             if t0=' ' ;  repl t with t1 ;    endif
                         rec_unlock()

     if (substr(part,1,1)='3'.or.substr(part,1,1)='7').and.sc3='§'
                        part4=subs(part,4,4)
                        preh()
      endif
                         @ 18, 0 say space(80)
                         @ 23+ml0,0 clea
                         @ 21,23 say  name
                       else
                            loop
                                     endif
                endif

                  enddo
                                 return
   *   6      KÆ∞•™∂®ø Ø∞® £∞•∏≠† ™Æ∞•±ØÆ≠§•≠∂®ø
                     proc gkor
   set dele off
   data0=subs(data0,1,3)+subs(us_0,6,2)
   @  1, 0 clea to 24+ml0,80
   p0=6
   b0=0

   @  1,26 say 'KÆ∞•™∂®ø ≠† ±∑•≤Æ¢Æ§≠† ÆØ•∞†∂®ø'
   @  2,26 say '-------------------------------'
          @  5, 5 say repli(chr(45),70)
        do while b0<11
          ll7='≠'
          store '≠' to l11,ll12
          @ p0,40 say '›'
          p0=p0+1
          b0=b0+1
        enddo
          @ 19, 1 say repli('-',79)
     do gzik
   @  4,12 say '/ESC - ®ßµÆ§'
   @  4,56 say 'F2 - ØÆ¨Æπ/'
   return  //  gkor
   *   60     KÆ∞•™∂®ø ≠† £∞•∏≠† Ø∞Æ∂•§≥∞† - ∂®™∫´
                    proc gzik
   @  6, 0 clea to 17,37
   @  6,43 clea to 17,75
      if  valtype(nom0)='C'
          nom0=val(nom0)
      endif
      set curs on
   do while .t.
   @ 18, 0 say space(80)
   @  3, 5 say 'Ç∫¢•§•≤• ≠Æ¨•∞† ≠† ëé:' get nom0 pict "9999"
   chet()
   if nom0=0
      return
   endif
          if subs(str(nom0,4),1,1)='3'
          *  sc9='≠'
          endif
   @ 18, 0 say space(80)
   @  3,36 say 'Ñ†≤†'
   @  3,41 get data0 pict '99/99'
   chet()
      dn0=subs(data0,4,2)+data0+str(nom0,4)
        if sc9='§'
      open_unpr(loc0:=39)
      set order to 2
      go top
   find '&dn0'
         if found()
         *  @ 20+ml0,36 say 'ÇHàåÄHàÖ!'  color 'R+/B'
         *  @ 22+ml0, 2 say 'à¨† ¢•∑• ®ß§†§•≠ ™†±Æ¢ °Æ≠ ß† ≤†ß® ¥†™≤≥∞† /ëé/. H•§ÆØ≥±≤®¨Æ • ™Æ∞™∂®ø≤† ©!'
         *      inkey(5)
         *      @ 20+ml0,1 clea to 22+ml0,80
         *      loop
         endif
        endif
      open_arhi(loc0:=39)
   go top
   dn0=subs(data0,4,2)+data0+str(nom0,4)
   find '&dn0'
      if found()
          papk0=val(papk)
       *  @  3,63 say 'è†Ø™† ï'
       *  @  3,71 get papk0 pict '999'
          @  3,50 say 'ÑÆ±≤†¢.ØÆ ∑´.163† áÑÑë'
          @  3,73 get papk0 pict '99' &&  zaradi flight l e sprqno valid papk0=0.or.papk0=1.or.papk0=2
          chet()
           dn2=dn
           bg_0=bg
           vid1=substr(vid,1,4)
           vid2=substr(vid,6,10)
           date1=substr(vid,17,8)
           date1=ctod(subs(date1,1,6)+vek+subs(date1,7,2))
           vid4=substr(vid,26,23)
           dok0=dok
           dn3=dn3
           dr21=dr
           sd21=sd
           vd0=vd
  if sc9='§'
          @ 18,32 say 'ÑÄHHà áÄ îÄKíìêÄ'
  else
          @ 18,30 say 'ëØ∞†¢™† ß† §Æ™≥¨•≠≤†'
  endif
                    dr2=dr21
     @ 20, 3 say 'ÇàÑ HÄ êÖÉàëíöêÄ §Æ±≤†¢™®  - "§", Ø∞Æ§†¶°®≤• - "Ø", ≠• ±• ¢™´æ∑¢† - " " :' get dr2  valid dr2=' '.or.dr2='§'.or.dr2='Ø'
                         chet()
              if dr2='§'
                    sd2=sd21
   @ 21, 8 say 'ëÑÖãKÄ °•ß §†≠∫™ ®´® °•ß Ø∞†¢Æ ≠† ÑK-"≠", ± Ø∞†¢Æ ≠† Ø∫´•≠ ÑK-"±"'
   @ 22, 22 say '± Ø∞†¢Æ ≠† ∑†±≤®∑•≠ ÑK-"∑"  ¢≠Æ±-"¢":' get sd2  valid sd2='±'.or.sd2='¢'.or.sd2='≠'.or.sd2='∑'
                         chet()
              endif

                if dr2='Ø'
                    sd2=sd21
  if sc9='≠'
   @ 21, 3 say 'ëÑÖãKÄ  20%-k.12-"Æ" Çéè-k.15/¢≠Æ±/-"¢" k.16-"§" 7%-k.18-"±" ®ß≠Æ± k.19-"´"'
   @ 22, 7 say 'ÇéÑ k.20-"®" k.21-"•" k.22-"ß" k.23-"∑" Æ±¢§-k.24-"≠" k.25-"ø":' get sd2 valid sd2='Æ'.or.sd2='¢'.or.sd2='§'.or.sd2='±'.or.sd2='®'.or.sd2='´'.or.sd2='•'.or.sd2='ß'.or.sd2='∑'.or.sd2='≠'.or.sd2='ø'
 * @ 22,76 get bg_0
                         chet()
  endif
                endif
     @ 20,0 clea
     if dr2='§'.or.dr2='Ø'
          dn30=bg+dn2+dn3
          set key -3 to dnspis
       if sc9='≠'
          set key -5 to viddok
       endif
           set cent on
           @ 20, 1 say 'àN'
           if (dr2='Ø'.and.(sd='¢'.or.sd='®'.or.sd='§')).or.(dr2='§'.and.(sd='¢'.or.sd='ß'))
             if (dr2='Ø'.and.(sd='¢'.or.sd='®'.or.sd='§'))
                @ 20, 1 say 'àN   ®ß≠Æ±'
                @ 21, 3 get dn30
             else
                @ 20, 1 say 'àN   ¢≠Æ± '
                @ 21, 3 get dn30
             endif
           else
             @ 20, 3 get dn2
           endif
           @ 20,14 say 'ÇàÑ'
           @ 20,18 get vid1
           @ 20,22 say vd0
           @ 20,25 get vid2
           @ 20,36 say 'ÑÄíÄ'
           @ 20,41 get date1
           @ 20,52 say 'îàêåÄ'
           @ 20,57 get vid4
          dok01=subs(dok0,1,10)
          dok02=subs(dok0,11,17)
          dok03=subs(dok0,28,13)
          @ 24,10 say 'éèàëÄHàÖ HÄ éèÖêÄñàüíÄ'
          @ 24,33 get dok01
          @ 24,44 get dok02
          @ 24,62 get dok03
          chet() && read
          dok0=dok01+dok02+dok03
        * ne go iztrivay vid0 !!!
           set cent off
        vid0=vid1+' '+vid2+' '+dtoc(date1)+' '+vid4
          set key -3 to
          set key -5 to
            if !prekpp (trim(dn2)) .or. ((len (trim(dn2)) != 9) .and. ;
               (len (trim(dn2)) != 13)).and.(.not.dn2=space(10))
                @ 22,35  say "ÅìãëíÄíöí HÖ Ö ÇÖêÖH !"
                inkey(2)
            endif
     else
           date1=date0
          dok01=subs(dok0,1,10)
          dok02=subs(dok0,11,17)
          dok03=subs(dok0,28,13)
          @ 24,10 say 'éèàëÄHàÖ HÄ éèÖêÄñàüíÄ'
          @ 24,33 get dok01
          @ 24,44 get dok02
          @ 24,62 get dok03
          chet() && read
          dok0=dok01+dok02+dok03

     endif
  *  nulfakt()  &&   pro5    procedurata e spryana
          @ 18, 0 say space(80)
          @ 20,0 clea
   reca()
   rec_lock()
   repl dok with dok0,vid with vid0,dn with dn2,dr with dr2, bg with bg_0
                if dr2='§'.or.dr2='Ø'
                    repl sd with sd2, vd with vd0
                    if dr2='Ø'
                       repl fakt with vid2
                    endif
                else
                    repl sd with ' '
                endif
           if (dr2='Ø'.and.(sd='¢'.or.sd='®'.or.sd='§')).or.(dr2='§'.and.(sd='¢'.or.sd='ß'))
              repl dn with subs(dn30,3,10), bg with subs(dn30,1,2), dn3 with subs(dn30,13,3)
           endif
    rec_unlock()
           if papk0>0
   rec_lock()
              repl papk with str(papk0,3)
   rec_unlock()
           endif
          exit
      else
        @ 18,21 say 'Hø¨† ≠† ≤†ß® §†≤† ÆØ•∞†∂®ø ± ≤Æß® ≠Æ¨•∞'
                 i0=inkey(0)
        loop
      endif
   enddo
   @  4, 5 say 'ÑÖÅàí'
   @  4,69 say 'KêÖÑàí'
   @  4,12 say '/ESC - ®ßµÆ§'
   @  4,56 say 'F2 - ØÆ¨Æπ/'
   @  1,63 say str(ksto11,14,2)
   set key -3 to ddok
   do regt
   do kdso
   do kkso
   dsto1=round(dsto1,2)
   ksto1=round(ksto1,2)
             if .not. dsto1=ksto1
                 if dsto1>ksto1
                    l0='§'
                 else
                    l0='™'
                 endif
   @ 18, 1 say 'Hø¨† ∞†¢•≠±≤¢Æ ØÆ Ñ-≤†-'+str(dsto1,14,2)+' ® K-≤†-';
   +str(ksto1,14,2)+' <'+l0+'> '+str(abs(dsto1-ksto1),14,2)
   store ksto1 to ksto11
                 pauza()
       @ 18, 0 say space(80)
                 do gzik
             else
   if sc9='§'
      open_arhi(loc0:=40)
      go top
      dn0=subs(data0,4,2)+data0+str(nom0,4)
      find '&dn0'
    if l11='§'
               rec_lock()
      repl dok with subs(dok,1,38)+'*'+subs(dok,40,1)
               rec_unlock()
    endif
   endif
                   p0=7
                   set key -3 to
                   return
             endif
            return    //   gzik
   *   61   KÆ∞•™∂®® ≠† Ñ•°®≤≠® Æ°Æ∞Æ≤®
                 proc kdso
   dk1='d'  && d2
   nvo0=0
   p0=7
   store 0 to dsto1,ksto1,dsto0,ksto0
          open_dobo(loc0:=31)
   go top
   find '&dn0'
   ll11='≠'
    if sc11='§'
          set key -33 to zadalz
          @ p0, 6 say sch
          pauza()
          set key -33 to
          if l2='≠'.and.dr2='§'
             @ p0, 6 say '453'
             @ p0, 23 say str(round(dsto2*d_s0,j1),j0,j1)
          endif
          if ll12='§'
             ll12='≠'
             @ 16,22 say str(dsto1,14,2)
             return
          endif
    endif

    if ll11='≠'
         do while data=data0.and.nom=str(nom0,4)
           @ p0, 6 say sch
             if substr(sch,1,1)='6'.and.sc2='§'
                 ss1='6'
             endif
           sch0=sch
           dns0=subs(data,4,2)+data+nom+sch
           nvo0=val(nvo)
           re0=recno()
              open_obve(loc0:=23)
           find '&sch0'
           a0=a
           t0=t
              if a0='§'
                 kdao()
                 open_dobo()
                 go re0
                 rec_lock()
                 repl nvo with str(nvo0,4), dsto with dsto0
                 rec_unlock()
              else
                 sele 2
                 set key -4 to prik
                 @ p0,23 get dsto pict "99999999999.99"
                 chet()
                 set key -4 to
                 rec_lock()
                 repl nvo with str(nvo0,4)
                 rec_unlock()
              endif
                  if dsto=0 .and. ll12='≠'
                     @ p0,6 clea to p0+1,37
                     del()
                     han0=fcreate("chop")
                     fclose(han0)
                     p0=p0-1
                  else
                     reca()
                  endif
           dsto1=dsto1+dsto
           p0=p0+1
              if eof()
                exit
              else
                skip
              endif
         enddo
          l0='≠'
          @ 18,20 say 'Ü•´†•≤• ´® §† ¢∫¢•§•≤• ≠Æ¢† ±¨•≤™† §/≠ ?' get l0  valid l0='§'.or.l0='≠'
          chet()
          @ 18, 0 say space(80)
          @ 22,0 say '                                                                               '
             if l0='§'
                dobor()
             endif
   endif
   @ 16,22 say str(dsto1,14,2)
   return   // kdso
   *   62   KÆ∞•™∂®® ≠† K∞•§®≤≠® Æ°Æ∞Æ≤®
         proc kkso
   dk1='k'
   nvo0=0
   @ 7,43 clear to 17,74
   k1='y'
          open_kobo(loc0:=29)
   go top
   find '&dn0'
   if sc9='§'.and.sch00=sch
              store sch00 to sch0
        @ p0,43 say sch0
        @ p0,60 say ksto pict "99999999999.99"
        prodag()   //   korekciq shetovodna operacia
        store ksto0 to ksto1,dsto1
          open_dobo(loc0:=32)
        find "&dn0"
        rec_lock()
        repl dsto with dsto1
        rec_unlock()
            open_dpar(loc0:=26)
        find "&dn0"
        if found()
           rec_lock()
           repl dast with dsto1
           rec_unlock()
        endif
          open_kobo(loc0:=30)
        find '&dn0'
           if found()
              rec_lock()
              repl ksto with ksto0
              rec_unlock()
           else
              appe blank
              rec_lock()
              repl nom with str(nom0,4), sch with sch0, ksto with ksto0, data with data0
              rec_unlock()
           endif
        @  7,23 say ksto0 pict "99999999999.99"
        @ p0,60 say ksto0 pict "99999999999.99"
        data0=substr(dtoc(date0),4,5)
        return
   else
         do while data=data0.and.nom=str(nom0,4)
           @ p0,43 say sch
           sch0=sch
           dns0=subs(data,4,2)+data+nom+sch
           sdn0=sch+subs(data,4,2)+data+nom
           nvo0=val(nvo)
           re0=recno()
              open_obve(loc0:=24)
           find '&sch0'
           a0=a
           d0='k'
           t0=t
             if (substr(sch,1,1)='5'.or.substr(sch,1,1)='4').and.(ss1='6')  && .and.(.not.substr(sch0,1,2)='45'))
                nivo()    && sav3
             endif
                ss1=' '
              if a0='§'
                 kdao()
                 open_kobo()
                 go re0
                 rec_lock()
                 repl nvo with str(nvo0,4), ksto with ksto0
                 rec_unlock()
              else
                 sele 3
                 set key -4 to prik
                 @ p0,60 get ksto pict "99999999999.99"
                 chet()
                 set key -4 to
                 rec_lock()
                 repl nvo with str(nvo0,4)
                 rec_unlock()
              endif
                if ksto=0 .and. ll12='≠'
                  @ p0,43 clear to p0+1,74
                  p0=p0-1
                     del()
                  han0=fcreate("chop")
                  fclose(han0)
                else
                   reca()
                endif

           ksto1=ksto1+ksto
           p0=p0+1
              if eof()
                exit
              else
                skip
              endif
         enddo
                      l0='≠'
                      @ 18,20 say 'Ü•´†•≤• ´® §† ¢∫¢•§•≤• ≠Æ¢† ±¨•≤™† §/≠ ?' get l0 valid l0='§'.or.l0='≠'
                      chet()
                    @ 18, 0 say space(80)
                    @ 22,0 say '                                                                               '
                       if l0='§'
                       kobor()
                       endif
   endif
          return //  kkso
   *   63   H†∑†´Æ ≠† ™Æ∞•™≤®¢†≠† Ø∞Æ∂•§≥∞† ØÆ †≠†´. Ø†∞≤.
                           proc kdao
            if dk1='d'
                  open_dpar(loc0:=27)
            else
                  open_kpar(loc0:=27)
            endif
                  go top
                  find '&dns0'
               store '≠' to l2,l6
               if sc11='§'
                  @ 24,70 say 'ÅÖá ìåHéÜ.'
                  l6='≠'
               endif
               store 0 to dsto0, ksto0
               @ 20,24 say 'ò®¥∫∞† ≠† †≠†´. Ø†∞≤®§†:'
               @ 23,13 say 'åüêKÄ         K-Çé         ÖÑ.ñÖHÄ         ëí-ëí'
               @ 18, 0 say space(80)
    do while data=data0.and.substr(nom,1,4)=str(nom0,4).and.substr(part,1,3)=sch0
               dp2=part
               open_obap(loc0:=54)
               find '&dp2'
            if found()
               name1=name ; zena0=zena ; dn00=dnev ; part0=substr(part,4,4)
            else


      if sch0='401'.or. sch0='411'
 

*  @  0,15  say 'bbbb '+ dp2   ; inkey(0) //kkk
          part1=dp2 
         name0=vid4+'   '+subs(dn2,1,9) ;  mk0='´¢'
         appe blank
         rec_lock()
         repl part with part1, mk with mk0, name with name0
         if barc1='§' .and. sc13='§'  ;  repl barc with barc0 ;  endif
             zena0=zena
             if t0=' ' ;  repl t with t1 ;    endif
         rec_unlock()
          name1=name ; zena0=zena ; dn00=dnev ; part0=substr(part,4,4)
          if dk1='d' ; sele 4 ;  else ; sele 5 ; endif  
      else 
           part0=subs(dp2,4,4)
           name1="!!!ÇHàåÄHàÖ èÄêíàÑíÄ HÖ Ö Ç ëèàëöäÄ!!!"
      endif              
            endif
                 if part='7'.and.field(8)='OTST'.and.0 < otst
                    ra2=otst   && ≤Æß® if • ß† Æ≤±≤∫Ø™†
                    save screen
                    @ 13,22,15,59 box ram1
                    @ 14,23 clea to 14,58
                    @ 14,24 say 'Ç∫¢•§•≤• % ≠† Æ≤±≤∫Ø™†≤† : ' get ra2 pict'999.99'
                    chet()
                    restore screen
                    kol0=kol
                    zena0=zena0-round(zena0*ra2/100,3)
                    @ 24,38 say zena0 pict "9999999.999"
                  * @ 24,38 say zena0 pict "&picze_0"
                    dast2=round(zena0*kol0,j1+1)
                 else
                    if dk1='d' ; sele 4 ;  else ; sele 5 ; endif
                    zena0=zena
                 endif
                   if dk1='d' ; sele 4 ;  else ; sele 5 ; endif  
               @ 24, 0 say space(70)
               @ 20,50 say part0
              store part0 to part5
              nv_0=subs(name1,35,1)
              if name1="!!!ÇHàåÄHàÖ èÄêíàÑíÄ HÖ Ö Ç ëèàëöäÄ!!!"
               @ 22,20 say name1 color 'R+/B'
              else
               @ 21,23 say name1
              endif

           set key 28 to umnoz
               @ 24,15 get mk
           if .not. mk='´¢'
               if dk1='k'
                  if field(8)='OTST'
                     ra2=otst
                  endif
               endif
               kol0=kol
               kkol1=kol
               @ 24,22 get kol0 pict "99999999.999"
               zena0=zena
          *    @ 24,38 get zena0 pict "9999999.999"
               @ 24,38 get zena0 pict "&picze_0"
           else
               kol0=kol
               zena0=0
           endif
           set key 300 to
            if dk1='d'
               dast2=dast
            else
               dast2=kast
            endif
               if l6='§'   &&  .and.(part='7'.or.part='3')
                  umnoz()
               endif
               @ 24,53 get dast2 pict "99999999999.99"
               chet()
               set key 28 to
                      if dast2=0 .and. ll12='≠'.and.(.not.mk='**')
                         @ 18,18 say 'Hø¨†≤• Ø∞†¢Æ §† ¢∫¢•¶§†≤• ≠≥´•¢® ±≤Æ©≠Æ±≤® !'
                         loop
                      else
                         @ 18, 0 say space(80)
                      endif
    @ 16,22 say str(dast2,14,2)   //  lll
            if mk='**'
               del()
               han0=fcreate("chop")
               fclose(han0)
            else
                   reca()
           if dk1='d'
               rec_lock()
               repl kol with kol0,zena with zena0,dast with dast2
              if field(3)='PARTP'
                 if .not. subs(partp,1,2)='  '.and.(subs(partp,1,3)='304'.or.subs(partp,1,3)='702')
                    repl partp with part
                 endif
               endif
               dsto0=dsto0+dast
               rec_unlock()
           else
               rec_lock()
              if field(3)='PARTP'
                 if .not. subs(partp,1,2)='  '.and.(subs(partp,1,3)='304'.or.subs(partp,1,3)='702')
                  repl partp with part
                 endif
              endif
               repl kol with kol0, zena with zena0,kast with dast2
               rec_unlock()
               ksto0=ksto0+kast
                      if part='7'
                       if field(8)='OTST'
                          rec_lock()
                          repl otst with ra2
                          rec_unlock()
                       endif
                      endif
           endif
               l2='§'
            endif
               if subs(part,1,3)='702'.and.dk1='k'
                     open_obap(loc0:=55)
                  part2=sch0+part0
                  find '&part2'
                   if t0='†'
                      find '&part2'
                   else
                      part2='304'+part0
                      find '&part2'
                   endif
                 if found()
                   rec_lock()
                   repl kkol with kkol+kkol1-kol0
                   rec_unlock()
                 endif
               endif
               if dk1='d'
                  sele 4
               else
                  sele 5
               endif
       if dk1='d'
          @ p0,23 say str(dsto0,14,2)
       else
          @ p0,60 say str(ksto0,14,2)
       endif
               if eof()
                 exit
               else
                 skip
               endif
    enddo
             if sc5='§'.and.sch0='411'
                store nom0 to nom2
                store date0 to dati0
               if dk1='d'
                store dsto0 to sald0
               else
                store ksto0 to sald0
               endif
               if dk1='k'
               *  lihva()    && sav3
               endif
             endif
               if dk1='d'
                  sele 4
               else
                  sele 5
               endif
                   do while .t.
                       i0=inkey(0)
                       if lastkey()=27
                          exit
                       endif
                   enddo
                       l0='≠'
                       @ 18,20 say 'Ü•´†•≤• ´® §† ¢∫¢•§•≤• ≠Æ¢† Ø†∞≤®§† §/≠ ?' get l0 valid l0='§'.or.l0='≠'
                       chet()
                     @ 18, 0 say space(80)
                     @ 22,0 say '                                                                               '
                        if l0='§'
                           adob()
                       endif
           @ 20, 0 clea to 24+ml0,69
                    return  //  kdao
          *********    è∞Æ∂•§≥∞† ß† ¥†™≤≥∞•≠ ≠Æ¨•∞ ******************
                              proc fnom
                              l4='§'
                              open_arhi(loc0:=41)
                              set order to 2
                             if vd0='09'
                                set filter to f='Æ'
                                go bott
                             else
                                set filter to f='™'
                                go bott
                             endif

       if vd0='01' .or. vd0='02'.or.vd0='03'
   store str(val(fakt)+1,10) to vid2
   store repl('0',10-len(ltrim(str(val(vid2)))))+ltrim(str(val(vid2))) to vid2
       endif
           *   @  0,15  say 'supto 04 fnom '+vid2 ; inkey(0) //kkk
           open_arhi(loc0:=42)
                              return

       *         è∞Æ∂•§≥∞† ß† ´®±≤•≠• ≠† ¥-∞†*
                              proc fkt
                           *   kk0=lastkey()
                              vazkey()
                              save screen to ekr4
                              fakt()
                              restore screen  from ekr4
                              stor 0 to ra2
                              startkey()  &&   p2
                            * papk0=val(papk0)
                              @  3,73 get papk0 pict '99' valid papk0=0.or.papk0=1.or.papk0=2
                              chet()
                              set key 304 to
                              return

    ********* è∞Æ∂•§≥∞† ß† ®ß∑®±´ø¢†≠• ≠† ≤∫∞£Æ¢±™† Æ≤±≤∫Ø™† ************

            *********  è∞Æ∂•§≥∞† ß† †¢≤Æ¨†≤. ÆØ•∞†∂®ø ß† ∞†ßµÆ§® ************
                        proc prodraz
                      clea gets
                        l8='§'
                      ksto0=dsto1+round(dsto1*d_s0,j1)
                      dsto0=round(dsto1*d_s0,j1)
                      store ksto0 to dsto1, ksto1
                      @ p0, 6 say '453'
                      @ p0,23 say dsto0 pict "99999999999.99"
                      p0=p0+1
                      @ p0,43 say sch01
                    *  if sch01='401'
                    *     @ 21,17 say part01+'  '+name01
                    *  endif
                      @ p0,60 get ksto0 pict "99999999999.99"
                      read
                     ksto1=round(ksto0,j1)
          open_dobo(loc0:=33)
          appe blank
          rec_lock()
          repl nom with str(nom0,4), sch with '453', nvo with str(nvo0,4), dsto with dsto0,;
          data with data0
          rec_unlock()
          open_kobo(loc0:=31)
          appe blank
          rec_lock()
             sch01='501'
            repl nom with str(nom0,4), sch with '501', nvo with str(nvo0,4), ksto with ksto0,;
            data with data0
          rec_unlock()
          open_dpar(loc0:=28)
          appe blank
          rec_lock()
          repl  nom with str(nom0,4), part with '453   1',mk with '´¢',;
          dast with dsto0, data with data0
          rec_unlock()
                      p0=p0+1
                        return
            *********  è∞Æ∂•§≥∞† ß† †¢≤Æ¨†≤. ÆØ•∞†∂®ø ß† Ø∞®µÆ§® ************
                        proc prodpri
                        clea gets
                        l8='§'
                      kast0=round(ksto1*d_s0,j1)
                      @ p0,43 say '453'
                      @ p0,60 get kast0 pict "99999999999.99"
                      chet()
                      dsto0=round(ksto1+kast0,j1)
                      @  7, 6 say '501'
                      @  7,23 say dsto0 pict "99999999999.99"
                      store dsto0 to dsto1, ksto1
          open_kobo(loc0:=32)
          appe blank
          rec_lock()
          repl nom with str(nom0,4), sch with '453', nvo with str(nvo0,4), ksto with kast0,;
          data with data0
          rec_unlock()
          open_dobo(loc0:=34)
          appe blank
          rec_lock()
          repl nom with str(nom0,4), sch with '501', nvo with str(nvo0,4), dsto with dsto0,;
          data with data0
          rec_unlock()
          open_kpar(loc0:=28)
          appe blank
          rec_lock()
          repl  nom with str(nom0,4), part with '453   2', mk with '´¢',;
          kast with kast0, data with data0
          rec_unlock()
          @ 18,29 say 'H†≤®±≠•≤• ™Æ© §† • ™´†¢®∏'
                      pauza()
                      p0=p0+1
                        return

