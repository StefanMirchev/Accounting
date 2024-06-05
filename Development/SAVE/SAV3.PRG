   * EXTERNAL
   *SAV3.PRG  asme chast ddok3 glkn grani lihva. novpar nepr. niva nvo nivo1 obsin
   * @  0,15  say 'bbbb ' ; inkey(0) //kkk
   *   razrjd sentinel spisk1 ssme sbor. txt1 txt2 timecount zavar.
   set dele on
   dt0=substr(dtoc(date0),7,2)
   if sc9='§'
      store sch00 to sch0
   else
      sch0='   '
   endif
   tt0='30' ; store '§' to l2,l3 ; ll4='´' ; tx0=2 ; b2=1 ; ekpr0=1
   store 0 to nom1,nom3,nom4,nom5,nom6,nom7,br0
   store substr(dtoc(date0),4,5) to data3,data4,data5,data6
       do while .t.
           ramka()
        *  set cons on
           store 0 to b0 ; store '     ' to data1,data2 ; a=' '
           store '≠' to ll1,l1 ; store '§' to a1,a2
       *   store 0 to line0,line1,line2, line9, sec0
   @  2,32 say 'ÉãÄÇHÄ  KHàÉÄ'
   @  3,31 say '---------------'

   if !sc9='§'
     set key -2 to ddok3 ; set key -3 to ddok3 ; set key -4 to glkn // sav3
     set key -5 to ddok  ; set key -6 to ddok1
     @ 18+ml0,14,24+ml0,66 box ram1
     @ 19+ml0,15 clea to 23+ml0,65
     @ 19+ml0,21 say 'F3 - ®ß´®±≤¢† ∑†±≤ Æ≤ ±¨•≤™† ®´® Ø†∞≤®§† '
     @ 20+ml0,21 say 'F4 - Æ≤Ø•∑†≤¢† ∑†±≤ Æ≤ ±¨•≤™† ®´® Ø†∞≤®§†'
     @ 21+ml0,21 say 'F5 - Æ≤Ø•∑†≤¢† £´†¢≠† ™≠®£† ≠† ±®≠≤´.±-™®'
     @ 22+ml0,21 say 'F6 - ÆØ®±†≠®• ØÆ ∞•£®±≤∫∞                '
     @ 23+ml0,21 say 'F7 - §-≠® Æ°-≤® ØÆ 304 ™-≠® Æ°-≤® ØÆ 702 '
   endif
   @  8,23 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† ±¨•≤™†≤† ' get sch0
   @ 10,19 say 'Ç ´•¢† "´" µ®´. ´•¢† "µ"  ¨´≠. ´•¢† "¨"' get ll4 valid ll4='´'.or.ll4='µ'.or.ll4='¨'
   chet()
   set key -2 to
   set key -3 to
   set key -4 to
*  set key -5 to
   set key -6 to
                 @ 17+ml0,14 clea to 23+ml0,66
                 @ 22+ml0,14,24+ml0,66 box ram1
              if lastkey()=27 .or. substr(sch0,1,1)=' '
                 set dele off
                 set key -2 to
                 set key 24 to
                 set key  5 to
                 set key  3 to
                 set key 18 to
                 set key 191 to
                 exit
              endif
           open_arhi()
          locate for subs(dok,1,5)=data0
             if found()
                dn00=data+nom
             endif
   open_obve(loc0:=25)
   find '&sch0'
     if.not. found()
          @  23,15 say '          Hø¨† §¢®¶•≠®• ØÆ ≤†ß® ±¨•≤™†            '
          i0=inkey(0)
          loop
     endif
       t0=t
       tx0=2
         a0=2
                 @ 23+ml0,16 say 'èÄêíàÑà          éèàëÄHàÖ ÑÄ HÖ    F6-éèàë.èé êÖÉ.'
                 @ 23+ml0,24 prompt 'ÑÄ'
                 @ 23+ml0,27 prompt 'HÖ'
                 menu to a0
                 @ 23+ml0,33 say 'éèàëÄHàÖ '
                 @ 23+ml0,42 prompt 'ÑÄ'
                 @ 23+ml0,45 prompt 'HÖ'
                 menu to tx0
        razr()
           @ 20,14 clea to 23,66 ; @ 22+ml0,14,24+ml0,66 box ram1
              izrab()
              if lastkey()=27 .or. substr(sch0,1,1)=' '
                 set dele off ; set key -2 to ; exit ; endif
           @ 18+ml0,66 clea to 21+ml0,78
       if  a0=1
              do asme
       else
              do ssme
       endif
       enddo
   *   1  ----------------- è∞Æ∂•§≥∞† ß† ±®≠≤®≤•∑≠® ±¨•≤™®-------------------
                                 proc  ssme
      open_obve(loc0:=26)  ; find '&sch0'
      t0=t
          if l2='§' ; do grani ; endif
          if ekpr0=2.and.l2='§'
             if tx0=1 ; b1=29 ; else  ; b1=55 ; endif
          @ 12,21 say 'Ç∫¢•§•≤• °∞Æ© ∞•§Æ¢• ≠† ±≤∞†≠®∂†' get b1 pict'999' ; chet()
          endif
     *       store 100 to line1  ; store round(line1/20*1,2)+1 to line9
         * if l2='§' ; line() ; endif

              ? gran0+space(18)+'ë∑•≤Æ¢Æ§≠† ±¨•≤™†   '+sch0 ; spri(loc0:=01)
              ?  gran0+'ÑÖÅàí                   '+mk_0+'                  KêÖÑàí'
              spri(loc0:=02)
                  *  if l2='§'  && izobshto ne trqbwa da e wklucheno
                  *     if tx0=1
                  *        ? gran0+space(85)+'±≤∞. '+str(b2,3) ; spri(loc0:=03)
                  *     else
                  *        ? gran0+space(85)+'±≤∞. '+str(b2,3) ; spri(loc0:=04)
                  *     endif
                  *  endif

              ?  gran0+repli('-',54) ; spri(loc0:=05)

              store 0 to x0,x1
   store 0 to dsto1,dsto3,ksto1,ksto3,dsto0,ksto0,ndso0,nkso0,dsbor0,ksbor0
   ds0=sch0
   sele 7
   find  '&ds0'
     ndso0=ndso
     nkso0=nkso
                                   if nom3>0 .or. nom4>0
                                        store 0 to dsto3,ksto3
                                        dsnd0=sch0+subs(data3,4,2)+data3+str(nom3,4)
                                        open_dobo(loc0:=35)
                                        set order to 2
                                      find  '&ds0'
      do while ((val(nom)<nom3.and.data=data3).or.val(substr(data,1,2))<val(substr(data3,1,2))).and.(sch=sch0)
                                    dsto3=dsto3+dsto
                                          if .not. eof() ; skip ; else ; exit ; endif
                                  enddo
                                      * unlock
                                      open_kobo(loc0:=33)
                                      set order to 2
                                      find  '&ds0'
                                      dsnd1=sch0+subs(data4,4,2)+data4+str(nom4,4)
      do while ((val(nom)<nom4.and.data=data4).or.val(substr(data,1,2))<val(substr(data4,1,2))).and.(sch=sch0)
                                    ksto3=ksto3+ksto
                                          if .not. eof() ; skip ; else ; exit ; endif
                                   enddo
                                   endif
                                   * unlock
   sele 7
        do case
           case t0='†'
                  ob0=1
           case t0='Ø'
                  ob0=2
           case t0=' '
                  ob0=3
           endcase
                  obsin()
                * spri()

   sch1=sch0
   open_dobo(loc0:=36)
   set order to 2
   *      count for sch=sch0 to line1
   go top
                                 if nom3>0
                                    find  '&dsnd0'
                                 else
                                    find  '&ds0'
                                 endif
         if found()
         else
          dsto0=0
         endif
    open_kobo(loc0:=34)
    set order to 2
    *     count for sch=sch0 to line2
    *     line1=line1+line2
    go top
                                 if nom4>0
                                    find  '&dsnd1'
                                 else
                                    find  '&ds0'
                                 endif
         if found()
         else
          ksto0=0
         endif
          ? '    ' ; spri(loc0:=06)

          do while sch0=sch1
          store space(26) to akt0,pas0
            sele 2
            dsto0=dsto
         if sch=sch0.and.a1='§'  &&  ñ®™∫´† ¢†§® Ñ-≤ Æ°Æ∞Æ≤
               do chast
           if l2='§'
                 *    line()
           endif
         *  akt0=nom+'-'+substr(data,1,2)+space(5)+str((dsto0)/ra0,j0,j1)
            akt0=nom+'-'+substr(data,1,5)+space(2)+str((dsto0)/ra0,j0,j1)
            dsto1=dsto1+dsto0
                           if data+nom=dn00.or.(sch='421'.and.data=data0.and.nom='1')
                              dsbor0=dsbor0+dsto0
                           endif
            sch1=sch
            if  nom='9999' .and. (.not. eof())
                skip
                loop
            endif
            sch1=sch
              if  tx0=1
                 do txt1
              endif
                 sele 2
         else
             x0=1
         endif
              if .not. eof() ; skip ; else ; endif
                                if nom5>0
   if (val(nom)>nom5.and.data=data5).or.val(substr(data,1,2))>val(substr(data5,1,2))
                  a1='≠'
   endif
                                endif


            sele 3     &&  ñ®™∫´† ¢†§® K-≤ Æ°Æ∞Æ≤
            ksto0=ksto
         if sch=sch0.and.a2='§'
            if  nom='9999' .and. (.not. eof())
                ksto1=ksto1+ksto0
                           if data=data0.and.val(nom) < 2000
                              ksbor0=ksbor0+ksto0
                           endif
                skip
                ksto0=ksto
            endif
               do chast
           if l2='§'
                 *     line()
           endif
           * pas0=nom+'-'+substr(data,1,2)+space(5)+str((ksto0)/ra0,j0,j1)
             pas0=nom+'-'+substr(data,1,5)+space(2)+str((ksto0)/ra0,j0,j1)
             ksto1=ksto1+ksto0
                           if data=data0.and.val(nom) < 2000
                              ksbor0=ksbor0+ksto0
                           endif
            sch1=sch
              if  tx0=1
                 do txt2
              endif
                 sele 3
         else
            x1=1
         endif
              if .not. eof() ; skip ; else ; endif
                                if nom6>0
   if (val(nom)>nom6.and.data=data6).or.val(substr(data,1,2))>val(substr(data6,1,2))
                  a2='≠'
   endif

                                endif
                     if x0=1.and.x1=1

                       exit
                     endif


               ? akt0+'  '+pas0 ; spri(loc0:=07)

                   if ekpr0=2.and.l2='§'.and.b0=0
                        do grani
                       b2=b2+1
                        if tx0=1
                           ? gran0+space(47)+'±≤∞. '+str(b2,3) ; spri(loc0:=08)
                        else
                           ? gran0+space(47)+'±≤∞. '+str(b2,3) ; spri(loc0:=09)
                        endif
                   endif
               if a1='≠'.and.a2='≠'
                     exit
               endif
          enddo
       ? '   '  ; spri(loc0:=10)

    *  ? gran0+'é°Æ∞Æ≤      '+str((dsto1)/ra0,j0,j1)+'  é°Æ∞Æ≤      '+str((ksto1-obor_0)/ra0,j0,j1)
       ? gran0+'é°Æ∞Æ≤      '+str((dsto1-obor_0)/ra0,j0,j1)+'  é°Æ∞Æ≤      '+str((ksto1)/ra0,j0,j1)
       spri(loc0:=11)
        do case
           case t0='†'
                  ob0=4
           case t0='Ø'
                  ob0=5
           case t0=' '
                  ob0=6
           endcase
                  obsin()
                  ? '     ' ; spri(loc0:=12)

          *  sbor()
        if l2='§'
           b3=1 ; pech()
        endif
         return

   *   2  ---------------- è∞Æ∂•§≥∞† ß† †≠†´®≤®∑≠® Ø†∞≤®§®-------------------
                               proc  asme
             do while .t.
                 set cons on ; ramka()
                 l7=' ' ; l8=' ' ; ll1='≠' ; store '§' to a1,a2 ; part0=0
                         *    store 0 to line0,line1,line2, line9, sec0
                         @ 21+ml0,14,24+ml0,66 box ram1
                         @ 22+ml0,15 clea to 23+ml0,65
                         set key -2 to spisk1
                         set key -32 to spisk1
                         set key -6 to ddok3
                         set key -7 to razrjd
                         @  2,29 say 'ÄHÄãàíàóHà èÄêíàÑà'
                         @  3,28 say '--------------------'
                         @  8,22 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† Ø†∞≤®§†≤† ' get part0 pict "9999"
                         @ 23+ml0,15 say 'F3-£∞≥Ø† Ø†∞≤®§®        Alt+F3-®≠§®¢®§≥†´≠† Ø†∞≤®§†'
                         @ 22+ml0,15 say 'éèàëÄHàÖ         F6 - éèàë.èé êÖÉ.  F8 - êÄáêüÑHéëí'
                         @ 22+ml0,25 prompt 'ÑÄ'
                         @ 22+ml0,28 prompt 'HÖ'
                         chet()
                         menu to tx0
                         set key -2 to
                         set key -32 to
                         set key -6 to
                         set key -7 to
                      if 0 < part0
                         @ 20,14 clea to 23,66 ; @ 22+ml0,14,24+ml0,66 box ram1
                         izrab()
                      endif
                             if lastkey()=27
                                   exit
                             endif
            if substr(sch0,1,1)='4'.or.substr(sch0,1,1)='6'.or.substr(sch0,1,1)='7'.or.substr(sch0,1,2)='12'
                clear gets
                nv0=' '
              do while .not.(nv0='1'.or.nv0='2'.or.nv0='3'.or.nv0='4')
                nv0='4'
                @ 10,10 say 'Ç∫¢•§•≤• ≠®¢Æ≤Æ I-¢Æ - 1,II-∞Æ - 2,III-≤Æ - 3,IV-≤Æ - 4 ' get nv0
                chet()
              enddo
            else
              nv0='4'
            endif
                             if lastkey()=27
                                   exit
                             endif
            do case
               case nv0='1'
                    part0=substr(str(part0,4),1,1)
                    dsp0='---'+part0+'---'
                    dsp0=sch0+part0
               case nv0='2'
                    part0=substr(str(part0,4),1,2)
                    dsp0='---'+part0+'--'
                    dsp0=sch0+part0
               case nv0='3'
                    part0=substr(str(part0,4),1,3)
                    dsp0='---'+part0+'-'
                    dsp0=sch0+part0
               case nv0='4'
                    part0=substr(str(part0,4),1,4)
              dsp0=sch0+part0
            endcase
      set cons off
              open_obap(loc0:=56)  && aobi
              find  '&dsp0'
                     @ 23+ml0,15 say space(51)
                   store space(22) to iban0
                   if found()
                        name0=name
                        zena1=zena
                        mk0=mk
                     if field(14)='IBAN'
                        iban0=iban
                     endif
                   else
            do case
               case nv0='1'.or.nv0='2'.or.nv0='3'
                         @ 23+ml0,22 say '   Hø¨†≤• £Æ ÆØ∞•§•´•≠Æ ≤Æ¢† ≠®¢Æ !  '
               case nv0='4'
                         @ 23+ml0,22 say 'Hø¨† †≠†´®≤®∑≠† Ø†∞≤®§† ± ≤Æß® ≠Æ¨•∞ !'
            endcase
                         i0=inkey(0)
                         loop
                   endif
          b0=0
          if ekpr0=2.and.l2='§'
        *    do grani   &&   da ne se puska
             b2=1
             if tx0=1
                b1=35
             else
                b1=55
             endif
             b2=1
             @ 12,21 say 'Ç∫¢•§•≤• °∞Æ© ∞•§Æ¢• ≠† ±≤∞†≠®∂†' get b1 pict'999'
             chet()
          endif
             if l2='§'
              *   store 100 to line1
              *   store round(line1/20*1,2)+1 to line9
              *   line()
             endif

          do grani
              ? gran0+space(69)+'±≤∞.5'+str(b2,3) ; spri(loc0:=13)
              ?  gran0+'ë-KÄ '+sch0+'è-ÑÄ HéåÖê '+part0+'- '+name0+' ±∞.∂.'+str(zena1,11,j4)+'  '
          *   ?  gran0+'ë-KÄ '+sch0+'è-ÑÄ HéåÖê '+part0+'- '+subs(name0,1,31)+'ß† Ø•∞®Æ§† 2077-2011£Æ§.'
          *   ?  gran0+space(14)+'ë•°•±≤©≠Æ±≤ ≠† Æ°•™≤ '+trim(subs(name0,1,31))+' ß† 2007£Æ§.'
              spri(loc0:=14)
              ?  gran0+'ÑÖÅàí                              '+mk_0+'     '+iban0+'   KêÖÑàí'
          *   ?  gran0+'ÑÖÅàí                              '+mk_0+'     '+space(22)+'   KêÖÑàí'
              spri(loc0:=15)
              ?  gran0+repli('_',77) ; spri(loc0:=16)

              ?  gran0+'éèÖê. ÑATA     K-Çé  ÖÑ.ñ.       ëí-ëí éèÖê. ÑÄíÄ    K-Çé    ÖÑ.ñ.      ëí-ëí'
              spri(loc0:=17)
              ?  gran0+repli('_',16)+mk0+repli('_',36)+mk0+repli('_',21)
              spri(loc0:=18)
              store 0 to x0,x1

             i=' '
            restore from &disc_1\job\razrjd additive
   store 0 to asal0,asal1,kol0,kol1,kol11,kol2,kol3,kol4,kol5,dast0,dast1,dast2,kast0,kast1,kast2,zena0,dsbor0,ksbor0


   dsp0=sch0+part0
      *  open_kobp(loc0:=1)  && pril  !!! da ne se trie
      *  dele all            && pril
      *  pack                && pril
   open_obap(loc0:=57)  && aobi
   find  '&dsp0'
         if found()
                           do niva
          if .not. t0=' '
          do while part01=sch0+part0
              kol1=kol1+kol
              asal0=asal0+asal
              if .not. eof() ; skip ; endif
                           do niva
          enddo
          else
          do while part01=sch0+part0
             if t='™'
                asal1=asal1+asal
                kol11=kol11+kol
             else
                asal0=asal0+asal
                kol1=kol1+kol
             endif
              if .not. eof() ; skip ; endif
                              do niva
          enddo
          endif
         endif
                               if nom3>0 .or. nom4>0
                                      store 0 to dast2,kast2,kol4,kol5
                                      dsnd0=sch0+part0+subs(data3,4,2)+data3+str(nom3,4)
                                      open_dpar(loc0:=29)
                                      set order to 2
                                      find  '&dsp0'
                                      do nivo1
      do while ((val(nom)<nom3.and.data=data3).or.val(substr(data,1,2))<val(substr(data3,1,2))).and.part=part1
                                    kol4=kol4+kol
                                    dast2=dast2+dast
                                         if .not. eof() ; skip ; else ; exit ; endif
                                  enddo
                                      unlock
                                      clos data
                                      open_kpar(loc0:=29)
                                      set order to 2
                                      find  '&dsp0'
                                      dsnd1=sch0+part0+subs(data4,4,2)+data4+str(nom4,4)
                                      do nivo1
      do while ((val(nom)<nom4.and.data=data4).or.val(substr(data,1,2))<val(substr(data4,1,2))).and.part=part1
                                    kol5=kol5+kol
                                    kast2=kast2+kast
                                          if .not. eof() ; skip ; else ; exit ; endif
                                   enddo
                               endif   && else
                               * unlock
        do case
           case t0='†'
                  ob0=7
           case t0='Ø'
                  ob0=8
           case t0=' '
                  ob0=9
           endcase
                 obsin()

   part0=sch0+part0
   part1=part0
   open_dpar(loc0:=30)
   set order to 2
   *    count for part=part0 to line1
   go top
                                 if nom3>0
                                    find  '&dsnd0'
                                 else
                                    find  '&dsp0'
                                 endif
         if found()
         else
          kol0=0
          dast0=0
         endif
    open_kpar(loc0:=30)
    set order to 2
      *       count for part=part0 to line2
      *       line1=line1+line2
   go top
                                 if nom4>0
                                    find  '&dsnd1'
                                 else
                                     if l1='§'.and.sch0='304'
                                        dsp0='702'+subs(part0,4,4)
                                     endif
                                    find  '&dsp0'
                                 endif

         if found()
         else
          kol0=0
          kast0=0
         endif
          ? '   ' ; spri(loc0:=19)

          do while part0=part1
             *     line()
            store space(38) to akt0,pas0
            sele 4
            kol0=kol
            zena0=zena
            dast0=dast
            if l1='§'.and.subs(part0,1,3)='702'  && ¢†§® §-≤ Æ° ≠† 304 ®
                part0='304'+subs(part0,4,4)      &&  ™-≤•≠ Æ° ≠† 702
            endif
                       do niva
         if part01=part0.and.a1='§'    &&&&&  Ñ-≤ Æ°Æ∞Æ≤ ØÆ †≠†´.ß† †™≤ ±-™®
               do chast
         if mk0='´¢'
         * akt0=nom+'-'+substr(data,1,2)+space(17)+str((dast0)/ra0,j0,j1)
           akt0=nom+'-'+substr(data,1,5)+space(14)+str((dast0)/ra0,j0,j1)
         else
             if zena0=0.and.kol0<>0.and.(substr(part,1,3)='304'.or.substr(part,1,3)='302')
                zena0=round(dast0/kol0,j4)
             endif
             if zena0 > 0.and.kol0=0.and.(substr(part,1,3)='304'.or.substr(part,1,3)='302')
                kol0=round(dast0/zena0,j3)
             endif
           akt0=nom+'-'+substr(data,1,5)+i+str(kol0,07+j6,j3)+i+str(zena0,7-j6,j4)+i+str((dast0)/ra0,11,j1)
         endif
            kol2=kol2+kol 
            dast1=dast1+dast0
                           if data+nom=dn00
                              dsbor0=dsbor0+dast0
                           endif

            if  nom='9999' .and. (.not. eof())
                skip
                loop
            endif


                          do nivo1
              if  tx0=1
                 do txt1
              endif
                  sele 4
            else
             x0=1
         endif
              if .not. eof() ; skip ; endif
                                if nom5>0
   if (val(nom)>nom5.and.data=data5).or.val(substr(data,1,2))>val(substr(data5,1,2))
                  a1='≠'
   endif
                                endif



            sele 5         &&  ñ®™∫´† ¢†§® K-≤ Æ°Æ∞Æ≤
            kol0=kol
            zena0=zena
            kast0=kast

            if  nom='9999' .and. (.not. eof())
                kol0=kol
                zena0=zena
                kast0=kast

                kol3=kol3+kol
                kast1=kast1+kast0
                           if data=data0
                              ksbor0=ksbor0+kast0
                           endif
                skip
                kol0=kol
                zena0=zena
                kast0=kast
            endif


                             do niva
            if l1='§'.and.subs(part01,1,3)='702'  && ¢†§® §-≤ Æ° ≠† 304 ®
                part0='702'+subs(part0,4,4)      &&  ™-≤•≠ Æ° ≠† 702
            endif

         if part01=part0.and.a2='§' && K-≤ Æ°Æ∞Æ≤ Ø† †≠†´.  ß† Ø†±. ±-™®
               do chast
          if mk0='´¢'
          * pas0=nom+'-'+substr(data,1,2)+space(17)+str((kast0)/ra0,j0,j1)
            pas0=nom+'-'+substr(data,1,5)+space(14)+str((kast0)/ra0,j0,j1)
          else
            if zena0=0.and.kol0<>0.and.(substr(part,1,3)='702')
               zena0=round(kast0/kol0,j4)
            endif
            pas0=nom+'-'+substr(data,1,5)+i+str(kol0,07+j6,j3)+i+str(zena0,7-j6,j4)+i+str((kast0)/ra0,11,j1)
          endif
            kol3=kol3+kol
            kast1=kast1+kast0
                           if data=data0
                              ksbor0=ksbor0+kast0
                           endif
            if l1='§'.and.subs(part0,1,3)='702'  && ¢†§® §-≤ Æ° ≠† 304 ®
            *   part0='304'+subs(part0,4,4)      &&  ™-≤•≠ Æ° ≠† 702
                dsp0='304'+subs(part0,4,4)
            endif
                                 do nivo1
              if  tx0=1
                 do txt2
              endif
                 sele 5
            else
            x1=1
         endif
              if .not. eof() ; skip ; endif
                                if nom6>0
   if (val(nom)>nom6.and.data=data6).or.val(substr(data,1,2))>val(substr(data6,1,2))
                  a2='≠'
   endif
                                endif
                     if x0=1.and.x1=1
                       exit
                      endif
               ? akt0+' '+pas0 ; spri(loc0:=20)

                   if ekpr0=2.and.l2='§'.and.b0=0
                      do grani
                        b2=b2+1
                           ? gran0+space(69)+'±≤∞. '+str(b2,3) ; spri(loc0:=21)
                   endif
               if a1='≠'.and.a2='≠'
                  exit
               endif
          enddo
       ? '   ' ; spri(loc0:=22)
       ? gran0+'é°-Æ≤ '+str(kol2,j2+j6,j3)+space(6-j6)+str((dast1)/ra0,j0,j1)+' é°-Æ≤ '+str(kol3,j2+j6,j3)+space(6-j6)+str((kast1)/ra0,j0,j1)
       spri(loc0:=23)
       *  proc se izrabotw s opciq s "opisanie" i to s F6
       *  antetkata trjabwa da zapochw ot tretiq red , da se raazdeli fajla
       *  na dwa ili tri kato wseki ima ne-poweche ot 66 reda
    *  ? 'ÉÑÑÑÅÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÖÑÑÑÑÑÑÑÑÑÑÑÑÖÑÑÑÑÑÑÑÑÑÑÑÑî' &&  novi
    *  ? 'ì'+space(36)+' Ç±®∑™Æ    ì'+str((dast1)/ra0,12,j1)+'ì'+str((dast1/2)/ra0,12,j1)+'ì'
    *  ? 'ì'+space(36)+'   5%      ì'+space(12) +'ì'+str((dast1/2*.05)/ra0,12,j1)+'ì'
    *  ? 'ì'+space(30)+'ë≤Æ©≠Æ±≤ °•ß ÑÑë ì'+space(12) +'ì'+str((dast1/2*1.05)/ra0,12,j1)+'ì'
    *  ? 'ÄÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÅÑÑÑÑÑÑÑÑÑÑÑÑÅÑÑÑÑÑÑÑÑÑÑÑÑô'
    *  ?
    *  ?
    *  ? '                                     ë∫±≤†¢®´:..................'

        do case
           case t0='†'
                  ob0=10
           case t0='Ø'
                  ob0=11
           case t0=' '
                  ob0=12
           endcase
                 obsin()
                 rec_unlock()
              if ekpr0=2
              *  @ 14,29 say 'Å∞Æ© ≠† ë≤∞†≠®∂®≤• '+ str(b2,3)
              endif
              b3=1 ; pech()
             enddo
            return

         ************** è∞Æ∂•§≥∞† ß† ØÆ¨Æπ spisk1  *************

                              proc spisk1
                                save screen to ekr2
                                set key -2 to
                                set key -32 to
                                clear gets
                                pp1=' '
                                spisk()
                                set key -2 to spisk1
                                set key -32 to spisk1
                                restore screen from ekr2
                             do case
                                case substr(tt0,1,1)='1'
                                @ 15,21 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† †≠†´. Ø†∞≤®§†:' get part0 pict '9999'
                                chet()
                                case substr(tt0,1,1)='2'
                                    if pp1='!'
                                               if dk1='d' &&
                                                  @ p0,23 say dsto0 pict "99999999999.99"
                                               else
                                                  @ p0,60 say ksto0 pict "99999999999.99"
                                               endif
                                    endif
                                @ 20,22 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† †≠†´. Ø†∞≤®§†:' get part0 picture "9999"
                                chet()
                                case substr(tt0,1,1)='3'
                                  @  8,22 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† Ø†∞≤®§†≤† ' get part0 pict "9999"
                                chet()
                                case substr(tt0,1,1)='5'
                                  @ 14,24 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† Ø†∞≤®§†≤† ' get part0 pict "9999"
                                chet()
                             endcase
                              return



               ********** è∞Æ∂•§≥∞† ß† ¢†§•≠• ≠† ≤•™±≤ *******
                          proc txt1
                     clear gets
                     noda0=subs(data,4,2)+data+nom
                     open_arhi(loc0:=43)  && nari
                      find '&noda0'
                          if found ()
                            if ll1='§'
                               if substr(vid,6,43)='0000000000'
                                  akt0=dok+' '+space(14)+akt0
                               else
                                  akt0=substr(dok,1,10)+' '+substr(vid,6,43)+' '+akt0
                               endif

                             *  pas0=''  &&  novi
                             *  akt0='ì'+str(b0-6,3)+'ì'+substr(vid,6,43)+'ì '+subs(akt0,28,12)+'ì'+str(val(subs(akt0,28,12))/2,12,2)+'ì'

                            else
                                akt0=dok+' '+akt0
                            endif
                          endif
                         return
               ********** K∞†© ≠† Ø∞Æ∂•§≥∞†≤† ******

               ********** è∞Æ∂•§≥∞† ß† ¢†§•≠• ≠† ≤•™±≤ *******
                          proc txt2
                     if  empty(akt0)
                           if a0=1            && s partidi
                              if ll1='§'      && ØÆ ∞•£®±≤∫∞
                                 akt0=space(93)
                              else            && ØÆ ÆØ®±. ÆØ•∞.
                                 akt0=space(79)
                              endif
                           else       && °•ß Ø†∞≤®§®
                              if ll1='§'      && ØÆ ∞•£®±≤∫∞
                                 akt0=space(81)
                              else            && ØÆ ÆØ®±. ÆØ•∞.
                                 akt0=space(67)
                              endif
                           endif
                     endif
                     clear gets
                     noda0=subs(data,4,2)+data+nom
                  *  part2=part+data     &&  pril
                     open_arhi(loc0:=44)  && nari
                      find '&noda0'
                          if found ()
                            if ll1='§'
                               if substr(vid,6,43)='0000000000'
                                  pas0=pas0+' '+space(14)+dok
                               else
                                  pas0=pas0+' '+substr(dok,1,16)+' '+substr(vid,6,43)
                               endif

                           *   sele 8       &&  pril
                           *   appe blank   &&  pril
                           *   rec_lock()   &&  pril
                           *   repl nom with subs(pas0,1,4), part with subs(part2,1,7), data with subs(part2,8,5),;
                           *   ksto with val(subs(pas0,27,12)), vid with subs(pas0,57,43)  &&  pril
                           *   sele 5       &&  pril
                            else
                                pas0=pas0+' '+dok
                            endif
                          endif
                         return
                  ********** K∞†© ≠† Ø∞Æ∂•§≥∞†≤† *********


    ********** è∞Æ∂•§≥∞† ß† ß†ØÆ∑¢†≠• ≠† Æ≤Ø•∑†≤¢†≠≤Æ ************
                        proc chast
              if nom=str(nom1,4) .and. data=data1
                   nom1=0
                   @  0, 0 clea to 24,80
                   p0=0
                   @  p0,13 say sbit0
                   b3=1 ; pech()
              endif
                         return
               ********** K∞†© ≠† Ø∞Æ∂•§≥´†≤† ******

                         proc ddok3
                     do case
                        case lastkey()= -2
      ********** è∞Æ∂•§≥∞† ß† ®ß´®±≤¢†≠• ≠† ∑†±≤ Æ≤ ±¨•≤™† ®´® Ø†∞≤®§† ********
              set key -2 to
              save screen
              clear gets
              store 1 to  nom3,nom4,nom5,nom6
              @ 11,23,18,57 box ram1
              @ 12,30 say 'àáãàëíÇÄ óÄëí éí ëMÖíKÄ'
              @ 13,25 say '-------------------------------'
              @ 14,25 say 'ëé ØÆ Ñ-≤†' get nom3 pict '9999'
              @ 15,25 say 'Ñ†≤†     ' get data3

              @ 16,25 say 'ëé ØÆ Ñ-≤†' get nom5 pict '9999'
              @ 17,25 say 'Ñ†≤†     ' get data5

              @ 14,41 say 'ëé ØÆ K-≤†' get nom4 pict '9999'
              @ 15,41 say 'Ñ†≤†     ' get data4

              @ 16,41 say 'ëé ØÆ K-≤†' get nom6 pict '9999'
              @ 17,41 say 'Ñ†≤†     ' get data6
                         chet()
                  @ 23+ml0,15 say space(51)
             restore screen
              @  8,23 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† ±¨•≤™†≤† ' get sch0
                         chet()

                        case lastkey()= -3

          ********** è∞Æ∂•§≥∞† ß† Æ≤Ø•∑†≤¢†≠• ≠† ∑†±≤ Æ≤ ±¨•≤™† ******
                    set key -3 to
              save screen
              clear gets
              @ 11,22,18,57 box ram1
              @ 12,29 say 'éíèÖóÄíÇÄ óÄëí éí ëMÖíKÄ'
              @ 13,25 say '-------------------------------'
              nom1=0
              store substr(dtoc(date0),4,5) to  data1,data2
                  @ 19,14 clea to 23,66
                  @ 21,14,24,66 box ram1
              @ 14,28 say 'Ç∫¢•§•≤• Æ≤ ≠Æ¨•∞' get nom1 pict '9999'
              @ 15,28 say 'Ç∫¢•§•≤• §†≤†≤†  ' get data1
              @ 16,28 say 'Ç∫¢•§•≤• §Æ ≠Æ¨•∞' get nom7 pict '9999'
              @ 17,28 say 'Ç∫¢•§•≤• §†≤†≤†  ' get data2
              @ 23+ml0,17 say 'F6 - ®ß¢•¶§† ÆØ®±†≠®• ≠† ÆØ•∞†∂®ø≤† ØÆ ∞•£®±≤∫∞'
                         chet()
             restore screen
              do case
                 case substr(tt0,1,1)='3'
                @ 19+ml0,14 clea to 23+ml0,66
                @ 22+ml0,14,24+ml0,66 box ram1
                  @ 23+ml0,15 say space(51)
              @  8,23 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† ±¨•≤™†≤† ' get sch0
                         chet()
                 case substr(tt0,1,1)='1'
                 endcase

                        case lastkey()= -6
              clear gets
              do ramka
              @  2,27 say 'ëÖÅÖëíéâHéëí HÄ èêéÑÄÜÅàíÖ'
              @  3,26 say '----------------------------'
           *  do izrab
                open_obap(loc0:=58)
                find "701"
                if .not. found()
                   return
                endif
                store 0 to ksal7,ksal6,ksal70,ksal60
      set marg to 2
      ?  '-------------------------------------------------------------------------'
      ?  'èÄêíàÑÄ                                           èêéÑÄÜHÄ   ëÖÅÖëíéâHéëí'
      ?  '-------------------------------------------------------------------------'

             do while part='701'
                re0=recno()
                part2='601'+subs(part,4,4)
                name0=name
                ksal7=ksal
                ksal70=ksal70+ksal
                find "&part2"
                  if found()
                     ksal6=ksal
                     ? '701'+subs(part2,4,4)+' '+name+' '+str(ksal7,14,2)+' '+str(ksal6,14,2)
                     ksal60=ksal60+ksal
                  endif
                   go re0
                   skip
             enddo
    ?
    ?  ' èÖóÄãÅÄ '+str(ksal70-ksal60,14,2)+space(15)+'éÅôé'+space(2)+str(ksal70,14,2)+' '+str(ksal60,14,2)

    b3=1 ; pech()
           *        restore screen
                    open_obve(loc0:=25)
                     endcase
                         return

                  ********** è∞Æ∂•§≥∞† ß† ≠®¢†≤† part1 *********
                         proc nivo1
            do case
               case nv0='1'
                    part1=substr(part,1,4)
               case nv0='2'
                    part1=substr(part,1,5)
               case nv0='3'
                    part1=substr(part,1,6)
               case nv0='4'
                    part1=substr(part,1,7)
            endcase
                           return
                  ********** è∞Æ∂•§≥∞† ß† ≠®¢†≤† **********
                         proc niva
            do case
               case nv0='1'
                    part01=substr(part,1,4)
               case nv0='2'
                    part01=substr(part,1,5)
               case nv0='3'
                    part01=substr(part,1,6)
               case nv0='4'
                    part01=substr(part,1,7)
            endcase
                           return

          ***************** è∞Æ∂•§≥∞† ß† Æ°Æ∞Æ≤®≤• ØÆ ±¨•≤™®≤• ***************
                               proc obsin
          do case
             case ob0=1
             ndso0=ndso0+dsto3-ksto3
             ? gran0+'≠.±.        '+str((ndso0+sald)/ra0,j0,j1) ; spri(loc0:=24)
             sald_0=sald
             obor_0=obor
             case ob0=2
             nkso0=nkso0+ksto3-dsto3
            ? gran0+space(28)+'≠.±.        '+str((nkso0-sald)/ra0,j0,j1) ; spri(loc0:=25)
             sald_0=sald
             obor_0=obor

             case ob0=3
                  ndso0=ndso0+dsto3
                  nkso0=nkso0+ksto3
                if ndso0>nkso0
                      ndso0=ndso0-nkso0
                      ? gran0+'≠.±.        '+str(ndso0/ra0,j0,j1) ; spri(loc0:=26)
                      nkso0=0
                else
                      nkso0=nkso0-ndso0
                      ? gran0+space(28)+'≠.±.        '+str(nkso0/ra0,j0,j1)
                      spri(loc0:=27)
                      ndso0=0
                endif
             sald_0=sald
             obor_0=obor

             case ob0=4
          * ? gran0+'ë°Æ∞        '+str((dsto1+ndso0+sald_0)/ra0,j0,j1)+'  ë°Æ∞        '+str((ksto1-obor_0)/ra0,j0,j1)
            ? gran0+'ë°Æ∞        '+str((dsto1+ndso0+sald_0-obor_0)/ra0,j0,j1)+'  ë°Æ∞        '+str((ksto1)/ra0,j0,j1)
             spri(loc0:=28)
          * ? gran0+'ë†´§Æ       '+str((dsto1+ndso0-ksto1+sald_0+obor_0)/ra0,j0,j1)
            ? gran0+'ë†´§Æ       '+str((dsto1+ndso0-ksto1+sald_0-obor_0)/ra0,j0,j1)
             spri(loc0:=29)
             case ob0=5
          * ? gran0+'ë°Æ∞        '+str((dsto1)/ra0,j0,j1)+'  ë°Æ∞        '+str((ksto1+nkso0-sald_0-obor_0)/ra0,j0,j1)
            ? gran0+'ë°Æ∞        '+str((dsto1-obor_0)/ra0,j0,j1)+'  ë°Æ∞        '+str((ksto1+nkso0-sald_0)/ra0,j0,j1)
             spri(loc0:=30)
          * ? gran0+space(28)+'ë†´§Æ       '+str((ksto1+nkso0-dsto1-sald_0-obor_0)/ra0,j0,j1)
            ? gran0+space(28)+'ë†´§Æ       '+str((ksto1+nkso0-dsto1-sald_0+obor_0)/ra0,j0,j1)
             spri(loc0:=31)
             case ob0=6
            ? gran0+'ë°Æ∞        '+str((dsto1+ndso0)/ra0,j0,j1)+'  ë°Æ∞        '+str((ksto1+nkso0)/ra0,j0,j1)
             spri(loc0:=31)
          if (dsto1+ndso0) > (ksto1+nkso0)
            ? gran0+'ë†´§Æ       '+str((dsto1+ndso0-ksto1-nkso0)/ra0,j0,j1)
          else
            ? gran0+space(28)+'ë†´§Æ       '+str((ksto1+nkso0-dsto1-ndso0)/ra0,j0,j1)
          endif
           spri(loc0:=32)

             case ob0=7
                kol1=kol1+kol4-kol5
                asal0=asal0+dast2-kast2
                ? gran0+'≠.±.  '+str(kol1,j2,j3)+space(6)+str(asal0/ra0,j0,j1)
                spri(loc0:=33)


        *   set marg to 3  && novi
            * otpechatwa se na ekran i s parwi na stranica do 75 red na redaktora
        *   ?
        *   ?
        *   ? '                              è ê é í é ä é ã                              '
        *   ? '         ß† ∞†ßØ∞•§•´•≠®• ≠† ∞†ßµÆ§®≤• ≠† Æ°•™≤ "ä∞®±≤†´" ë´. °∞ø£         '
        *   ? '                      ß† Ø•∞®§† ø≠≥†∞® - æ≠® 2011£Æ§.                      '
        *   ?
        *   ? 'öÑÑÑÇÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÇÑÑÑÑÑÑÑÑÑÑÑÑÇÑÑÑÑÑÑÑÑÑÑÑÑè' &&  novi
        *   ? 'ì Noì  î†™≤≥∞†    Ñ†≤†    à¨• ≠† ¥®∞¨†          ì  ë≤Æ©≠Æ±≤  ì ë≤o©≠Æ±≤†  ì'
        *   ? 'ì   ì                                           ì            ìß† ¥†™≤≥∞†  ì'
        *   ? 'ÉÑÑÑÖÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÑÖÑÑÑÑÑÑÑÑÑÑÑÑÖÑÑÑÑÑÑÑÑÑÑÑÑî'


             case ob0=8
                kol1=kol1+kol5-kol4
                asal0=asal0+kast2-dast2
                ? gran0+space(39)+'≠.±.  '+str(kol1,j2,j3)+space(6)+str(asal0/ra0,j0,j1)
                spri(loc0:=34)
             case ob0=9
              if   (asal0+dast2) > (asal1+kast2)
                   t1='§'
                   kol1=kol1+kol4-kol11-kol5
                   asal0=asal0+dast2-asal1-kast2
                   ? gran0+'≠.±.  '+str(kol1,j2,j3)+space(6)+str(asal0/ra0,j0,j1)
                   spri(loc0:=35)
              else
                    t1='™'
                    kol1=kol11+kol5-kol1-kol4
                    asal0=asal1+kast2-asal0-dast2
                    ? gran0+space(39)+'≠.±.  '+str(kol1,j2,j3)+space(6)+str(asal0/ra0,j0,j1)
                    spri(loc0:=36)
              endif



             case ob0=10
                ? gran0+'ë°Æ∞  '+str(kol2+kol1,j2+j6,j3)+space(6-j6)+str((dast1+asal0)/ra0,j0,j1)+;
                ' ë°Æ∞  '+str(kol3,j2+j6,j3)+space(6-j6)+str(kast1/ra0,j0,j1)
                 spri(loc0:=37)
                ? gran0+'ë†´§Æ '+str(kol2+kol1-kol3,j2+j6,j3)+space(6-j6)+str((dast1+asal0-kast1)/ra0,j0,j1)
                 spri(loc0:=38)
             case ob0=11
                ? gran0+'ë°Æ∞  '+str(kol2,j2+j6,j3)+space(6-j6)+str((dast1)/ra0,j0,j1)+;
                ' ë°Æ∞  '+str(kol3+kol1,j2+j6,j3)+space(6-j6)+str((kast1+asal0)/ra0,j0,j1)
                spri(loc0:=39)
                ? gran0+space(39)+'ë†´§Æ '+str(kol3+kol1-kol2,j2+j6,j3)+space(6-j6)+str((kast1+asal0-dast1)/ra0,j0,j1)
                spri(loc0:=40)
             case ob0=12
                    if .not. t1='™'
                           ? gran0+'ë°Æ∞  '+str(kol2+kol1,j2+j6,j3)+space(6-j6)+str((asal0+dast1)/ra0,j0,j1)+;
                             ' ë°Æ∞  '+str(kol3,j2+j6,j3)+space(6-j6)+str((kast1)/ra0,j0,j1)
                           spri(loc0:=41)
                        if (asal0+dast1) > ( kast1 )
                           ? gran0+'ë†´§Æ '+str(kol1+kol2-kol3,j2+j6,j3)+space(6-j6)+str((asal0+dast1-kast1)/ra0,j0,j1)
                        else
                           ? gran0+space(39)+'ë†´§Æ '+str(kol3-kol1-kol2,j2+j6,j3)+space(6-j6)+str((kast1-asal0-dast1)/ra0,j0,j1)
                        endif
                         spri(loc0:=42)
                    else
                             ? gran0+'ë°Æ∞  '+str(kol2,j2+j6,j3)+space(6-j6)+str((dast1)/ra0,j0,j1)+;
                             ' ë°Æ∞  '+str(kol1+kol3,j2+j6,j3)+space(6-j6)+str((asal0+kast1)/ra0,j0,j1)
                             spri(loc0:=43)
                        if ( dast1 ) > ( kast1+asal0 )
                             ? gran0+'ë†´§Æ '+str(kol2-kol1-kol3,j2+j6,j3)+space(6-j6)+str((dast1-asal0-kast1)/ra0,j0,j1)
                        else
                             ? gran0+space(39)+'ë†´§Æ '+str(kol1+kol3-kol2,j2+j6,j3)+space(6-j6)+str((asal0+kast1-dast1)/ra0,j0,j1)
                        endif
                           spri(loc0:=44)
                    endif
          endcase

                          return
           *********************  è∞Æ∂•§≥∞† ß† £∞†≠®∂† ******************
                            proc grani
                      do case
                         case a0=1.and.tx0=2    && ± Ø†∞≤®§®  °•ß ±∫Æ°π.
                            gran0=space(0)
                           if ekpr0=1
                            set marg to 0
                           else
                            set marg to 3
                           endif
                            ll0='2'
                         case a0=1.and.tx0=1    && ± Ø†∞≤®§®  ± ±∫Æ°π.
                               ? 'OL'+sbit0
                               prn0='OL'+sbit0
                            if ll1='§'          && ØÆ ∞•£®±≤∫∞
                               gran0=space(55)
                               set marg to 0
                            else                && ØÆ ÆØ®±. §Æ™.
                               gran0=space(41)
                                  set marg to 30
                            endif
                            ll0='1'
                         case a0=2.and.tx0=2   && °•ß Ø†∞≤®§®  °•ß ±∫Æ°π.
                            gran0=space(0)
                            set marg to 12
                            ll0='2'
                         case a0=2.and.tx0=1   && °•ß Ø†∞≤®§®  ± ±∫Æ°π.
                                ? 'OL'+sbit0
                                prn0='OL'+sbit0
                            if ll1='§'          && ØÆ ∞•£®±≤∫∞
                                gran0=space(55)
                                set marg to 15
                            else                && ØÆ ÆØ®±. §Æ™.
                               gran0=space(41)
                               set marg to 15
                            endif
                               ll0='2'
                         endcase


                            return

 ******************* é≤Ø•∑†≤¢†≠• ≠† £´†¢≠† ™≠®£† ************************
                       proc glkn
    clea gets ; close data
    @ 10+ml0,14 clea to 23+ml0,66  ; @ 22+ml0,14,24+ml0,66 box ram1
    razr() ; l0=0 ; l2='n'
  set cursor on ; inkey(0.5) ; eras aaa.txt ; sch0='101' ; b1=56
   store 2 to a0,tx0,ekpr0
   @  2,25 say 'éíèÖóÄíÇÄHÖ HÄ ÉãÄÇHÄ KHàÉÄ'
   @  3,24 say '-----------------------------'
   @  8,23 say space (50)
 *    dospr()
 *         if lastkey()=27 ; return ; endif
 *             @ 10+ml0,14 clea to 21+ml0,66

     @ 23,15 say 'è∞Æ∂•§≥∞†≤† π• Ø∞Æ§∫´¶® Æ™Æ´Æ 2 ¨®≠≥≤† ® 00 ±•™≥≠§®';inkey(2)

       @ 23+ml0,15 say space(51)
        if (.not.file("kobot.dbf")).or.(.not.file("kobot.dbf"))
            oborot()
        endif
   store sch0 to sch1
   open_obve(loc0:=27)
       find '&sch0'
     if .not.found()
          @  23,15 say '          Hø¨† §¢®¶•≠®• ØÆ ≤†ß® ±¨•≤™†             '
                 i0=inkey(0)
                 return
     endif

*      ************ BEGIM EDINICHEN ***************************
*        if file("s*.prn") ; !del s*.prn
*        endif
         set cons off
         set marg to 0
         b3=1
         set prin on
         set prin to s0001

       do while .not. eof()
          sele 7
          find '&sch0'
               store 0 to dsto1,ksto1
               open_dobot()
               find '&sch0'
                 if found()
                    dsto1=round(dsto/ra0,j1)
                 endif
               open_kobot()
               find '&sch0'
                 if found()
                    ksto1=round(ksto/ra0,j1)
                 endif
               sele 7
               l1=2
          if .not.(ndso=0.and.nkso=0.and.dsto1=0.and.ksto1=0.and.kdso=0.and.kkso=0)
               l1=1

               do ssme

               sele 7
               store sch to sch0,sch1
               @ 23+ml0,50 say 'ÑÄ'
          else
               @ 23+ml0,50 say 'HÖ'
          endif
             @ 23+ml0,27 say 'Ü•´†•≤• ´® ±¨•≤™†: '+sch0

           if lastkey()=27
               t0='-'
               exit
           endif
           if .not. eof() ; skip ; else ; exit ; endif
               store sch to sch0,sch1
       enddo
      @ 23+ml0,15 say '       è∞Æ£∞†¨†≤† ∞†°Æ≤®, ¨Æ´ø ®ß∑†™†©≤• ...       '
          * raboti(sek0:=105)
            raboti()

      *   @  0,15  say 'edin ' ; inkey(3) ; cance //kkk
       ************ END EDINICHEN ***************************

       ************ BEGIN SDVOEN ***************************
    b1=58 ; b2=0 ; b4=0 ; b3=1 ; save_0='s0001'
    aabb00=1
   do while .t.
     timecount(sek2:=1)
     l5=0 ; b0=0 ; store ' ' to var1,var2,var
     set prin to
     save_1='&us_0'+'s'+nulb4()+'.prn'
    if file ("&save_1")
     var1=memoread("&save_1")
    endif
     save_2='&us_0'+'s'+nulb4()+'.prn'
    if file ("&save_2")
     var2=memoread("&save_2")
    endif
          if (.not.file ("&save_1")).and.(.not.file ("&save_2"))
             exit
          endif
                    set prin to '&us_0'+'&save_0'
                    b2=b2+1
                      set marg to 15
                     ?? space(125)+'±≤∞. '+str(b2,3) ; spri(loc0:=46)
      ****************    !!!  b1 cut last row !!!  ******************
                    for lin0 = 1 to b1
                    store space(54) to var_1,var_2
                       if .not. empty(var1)
                          var_1=memoline(var1,54,lin0)
                       endif
                       if .not. empty(var2)
                          var_2=memoline(var2,54,lin0)
                       endif
                   if len(var_1)=0
                      store space(54) to var_1
                   endif
                   if len(var_2)=0
                      store space(54) to var_2
                   endif

                 if l5=0
                    ?? var_1+'          '+var_2
                    l5=l5+1
                 else
                     ? var_1+'          '+var_2
                 endif
                    spri(loc0:=47)
                    next
   enddo
                   set prin off
                   set prin to
                   set cons on
         @ 10,29 say 'Å∞Æ© ≠† ±≤∞†≠®∂®≤• '+ str(b2,3)
         save_0='&us_0'+'s'+nulb3()+'.prn'
     do while file ("&save_0")
        timecount(sek2:=1)   //iztr 02
       !del  &save_0
       b3=b3+1
       save_0='&us_0'+'s'+nulb3()+'.prn'
    enddo

  *  @  0,15  say 'dvoe ' ; inkey(3) ; cance //kkk
       ************ END  SDVOEN ***************************

    set marg to 0
    ll0='2'
    ekpr0=2
    inte0=7  // empty row in glkn
    inte1=3  // empty row in memo
    deli0=8
    disgod0='\DISC\god&dt0\zkpo\&go0\glkn&vek0..pdf'


     do osmich  // pro5

                      return

*************  ê†ß∞ø§≠Æ±≤ ≠† †≠†´®≤®∑≠® Ø†∞≤®§®  ************
               proc razrjd
               set curs on
               set key -5  to
                save screen
                clea gets
                if file ("&disc_1\job\razrjd.mem")
                      restore from &disc_1\job\razrjd additive
                endif
                     @ 11,22,19,60 box ram1
                     @ 12,23 clea to 18,59
                      set curs on
                      @ 12,24 say 'Åêéâ êÄáêüÑà ëãÖÑ ÑÖëÖíàóHÄíÄ íéóKÄ'
                      @ 16,24 say 'ìÇÖãàó./HÄMÄã. ÑöãÜ. K-Çé/ñÖHÄ  < 5'
                      @ 14,24 say 'äÆ´®∑.  < 10 ñ•≠†  < 7  ë≤-±≤  < 10'
                      @ 14,31 get j3  pict "9"  valid  j3<10
                      @ 14,42 get j4  pict "9"  valid  j4<7
                      @ 14,54 get j1  pict "9"  valid  j1<10
                      @ 16,55 get j6  pict "9"  valid  j6<5
                      @ 18,24 say 'Mode 0/18' get j7  pict "99"  valid  j7=0.or.j7=18
                      @ 18,37 say 'Ç†´≥≤•≠ ™≥∞± ' get j5  pict "99.999999" valid 0 < j5
                      chet()
                      store j7 to ml0

                              save all like j? to &disc_1\job\razrjd
                picze_0=repl('9',11-j4)+'.'+repl('9',j4)
                set key -5 to razrjd
                restore screen
                chet()
               set curs off
             return

  
 

      ************** è∞Æ∂•§≥∞† ß† ÆØ∞•§•´ø≠• ØÆ ®™. •´•¨•≠≤® **************
                   proc nivo
       open_obap(loc0:=61)
      do while .t.
        set  key -2 to no
      @ 18,25 say 'F3 - ®ß§®∞¢† ¶•´†≠†≤† µ†∞†™≤•∞®±≤®™†'
      @ 20,25 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† ®™. •´•¨•≠≤:' get nvo0 picture "9999"
      chet()
        set  key -2 to
      @ 18, 0 say space(80)
      @ 20,25 say '                                             '
      @ 22,25 say '                                             '
                        if nvo0=0
                            set  key -2 to
                            return
                        endif
      dnvo0='   '+str(nvo0,4)
          find '&dnvo0'
             if  found()
             else
                 l0='≠'
    @ 18,5 say 'Hø¨†≤• Ø†∞≤®§† ± ≤Æß® ≠Æ¨•∞ ¶•´†•≤• ´® §† ¢∫¢•§•≤• ≠Æ¢† Ø†∞≤®§† §/≠ ?' get l0 valid l0='§'.or.l0='≠'
                      chet()
    @ 18, 0 say space(80)
                                  if l0='§'
                                    @ 18,15 say 'Ç∫¢•§•≤• ≠†®¨•≠Æ¢†≠®•≤Æ ≠† †.Ø†∞≤®§†    :'
                                    @ 23+ml0,15 say '           H†®¨•≠Æ¢†≠®• ≠† Ø†∞≤®§†≤†         '
                                    @ 24,22 get name0
                                    chet()
                                    appe blank
                                    rec_lock()
                                    repl part with '   '+str(nvo0,4),name with name0
                                    rec_unlock()
                                    @ 18, 0 say space(80)
                                    @ 23+ml0,0 clea
                                  else
                                     loop
                                  endif
             endif
                        if lastkey()=13
                            set  key -2 to
                            return
                        endif
      enddo
          return


 ********************** ÑÆ°†¢ø≠• ≠† ≠Æ¢† Ø†∞≤®§† *****************
                           proc novpart
   set curs on
   part4=str(part4,4)
                    l0='≠'
   @ 18,5 say 'Hø¨†≤• Ø†∞≤®§† ± ≤Æß® ≠Æ¨•∞ ¶•´†•≤• ´® §† ¢∫¢•§•≤• ≠Æ¢† Ø†∞≤®§† §/≠ ?' get l0 valid l0='§'.or.l0='≠'
                         chet()
   @ 18, 0 say space(80)
                                     if l0='§'
                        zena0=0
     @ 21+ml0,0 clea
     @ 18,19 say 'Ç∫¢•§•≤• ≠†®¨•≠Æ¢†≠®•≤Æ ≠† †.Ø†∞≤®§†    :'
     if sc11='§'
     @ 23+ml0,10 say 'M-KÄ      H†®¨•≠Æ¢†≠®• ≠† Ø†∞≤®§†≤†         è∞Æ§.ñ•≠†               '
     mk0='°∞'
     else
     @ 23+ml0, 10 say 'M-KÄ      H†®¨•≠Æ¢†≠®• ≠† Ø†∞≤®§†≤†           ñ•≠†    é-≠®• ¢ ∞-∞'
     endif
     @ 24,11 get mk0
     @ 24,15 get name0
     @ 24,53 get zena0 pict "9999999.999"
     chet()
   @ 18, 0 say space(80)
   @ 23+ml0,0 clea
   store zena0 to zena3
              set relation to
              clos all
              open_obap(loc0:=62)
              do preh
              open_kpap()
              set order to 0
              appe blank
              rec_lock()
              repl nom with str(nom0,4), data with data0
              repl sch with sch00,part with sch00+str(part0,4), par with part0, zena with zena0
              del()
              rec_unlock()
              store part0 to par0
              clos all
              open_obap(loc0:=63) && aobi
              open_kpap()
              set order to 0
              set relation to part into obap
              set filter to par=par0
              rec_lock()
              repl kpap->zena with zena0
              rec_unlock()
              @ 21,14,24,66 box ram1
                                     endif
             set curs off
                           return



 ************** ÑÆ°†¢ø §•°®≤≠®ø Æ°Æ∞Æ≤† Æ≤ §•°®≤† ®´® Æ≤ ™∞•§®≤† ¢ ÆØ•∞.**********
                                         proc zavar
              set key -34 to
              save screen
              a0=1
              l1=1
              @ 11,20,14,56 box ram1
              @ 12,21 clea to 13,55
              @ 12,21 say 'Ü•´†•≤• ´® ± ∂•≠® ≠† ±¨•≤™†≤†'
              @ 12,51 prompt 'ÑÄ'
              @ 12,54 prompt 'HÖ'
              menu to a0
              @ 13,23 say 'é≤ ±¨≤™† ØÆ'
              @ 13,36 prompt 'ÑÖÅàíHÄ'
              @ 13,45 prompt 'KêÖÑàíÄ'
              menu to l1
          restore screen
              open_dpar(loc0=0)
              open_kpar(loc0=0)
              open_obap(loc0=0)  && aobi
           if l1=1
              sele 4
           else
              sele 5
           endif
       dn0=subs(data0,4,2)+data0+str(nom0,4)
       find '&dn0'
              do while nom=str(nom0,4).and.data=data0
                  re0=recno()
                  part1=sch0+substr(part,4,4)
                  mk0=mk
                  kol0=kol
                if a0=2
                  if l1=1
                     kast0=dast
                     ksto0=ksto0+dast
                  else
                     kast0=kast
                     ksto0=ksto0+kast
                  endif
                     zena0=zena
                else
                   sele 6
                   find "&part1"
                     if found()
                        zena0=zena
                        kast0=round(kol0*zena0,j1)
                        ksto0=ksto0+kast0
                     else
                        store 0 to kast0,ksto0
                     endif
                   sele 4
                endif
       if dk1='k'
          @ p0,60 say ksto0 pict "99999999999.99"
       else
          @ p0,23 say ksto0 pict "99999999999.99"
          store ksto0 to dsto0
       endif
       if dk1='k'
          sele 5
          appe blank
          rec_lock()
          repl  nom with str(nom0,4), part with part1, mk with mk0,;
          kol with kol0, zena with zena0, kast with kast0, data with data0
          rec_unlock()
       else
          sele 4
          appe blank
          rec_lock()
          repl  nom with str(nom0,4), part with part1, mk with mk0,;
          kol with kol0, zena with zena0, dast with kast0, data with data0
          rec_unlock()
        endif
          go re0
           if l1=1
              sele 4
           else
              sele 5
           endif
               if .not. eof() ; skip ; else ; exit ; endif
            if subs(part,1,3)=sch0
               exit
            endif
          enddo
                  zvan()
            @ 23+ml0,15 say '              è∞Æ£∞†¨†≤† Ø∞®™´æ∑®                 '
             i0=inkey(0)
           set key-34 to zavar
                         return


******************     Procedurata izchakva izrabotwaneto na pdf file ********************
                               proc  sentinel
                   if file("&disc_0\sentinel.txt") //  tova iztrivane ne e neobhodimo da se slaga
                      dele file "&disc_0\sentinel.txt"  // na drugo mqsto v procedurata
                   endif // a i v programata
               do while  .t.
                       timecount(sek2:=1)
                 @ 23,15 say space(44)
                 if file("&disc_0\sentinel.txt")
                   @ 23+ml0,15 say '      è∞Æ£∞†¨†≤† ∞†°Æ≤®, ¨Æ´ø ®ß∑†™†©≤• ...'
                   exit
                 else
                   @ 23,22 say '   è∞Æ£∞†¨†≤† Ø•∑†≤† '+save_0
                 endif
               enddo
                              return // sentinel

     ***************Pokazwa ostanalite sekundi   *****************
                             func timecount

      i00=0  // dan se polzuwa nikade drugade tazi promenliva
          for i00 = 1 to sek2
                  sek1=&sekundi0

                  if sek1 < 0
                       @ 23,61 say '0: 0'
                  else
                    if 0 < val(subs(str(round(sek1/60,2),5,2),1,2))
                       @ 23,60 say subs(str(round(sek1/60,2),5,2),1,2)+':'+;
                       str(sek1-val(subs(str(round(sek1/60,2),5,2),1,2))*60,2)
                    else
                       @ 23,61 say '0:'+str(sek1,2)
                    endif
                   endif
                           inkey(1)
            next
                            return  // timecount

