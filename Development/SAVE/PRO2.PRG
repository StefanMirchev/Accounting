   *PRO2.PRG  fakt motik. obob pfunk3 pfunk5 prodag proze proze1 zadalz starkey vazkey

   ************** °®¶¥¤³°  §  ¨§·¨±«¿¢ ­¥ ­  ®²±²º¯ª  ­  ª®­±¨£­ ²®°¨  ***********
                          proc proze
           save screen
           clear gets
           set key -40 to    // F11
           if sc6='­' ; ra0=0 ; endif
         if sc9='¤'.or.sc11='¤'
           if 0 < kpap->otst ; ra2=kpap->otst ; endif
          if  ra2=0
               scpr0=nv_0+part0
               open_prot(loc0:=10)
               find "&scpr0"
     * FFF     if found() ; ra2=proz ; else ; ra2=0 ; endif
          endif
         endif
           @ 13,22,15,59 box ram1 ; @ 14,23 clea to 14,58
           @ 14,24 say '‚º¢¥¤¥²¥ % ­  ®²±²º¯ª ²  :' get ra2 pict'999.99'
           chet()
           if 0 < ra2 ; l11='¤' ; endif
                        if lastkey()=27 .or. ra2=0
                            set key -40 to proze  ; restore screen
                            return
                        endif
                            restore screen
                          return

   ************** °®¶¥¤³°  §  ¨§·¨±«¿¢ ­¥ ­  ®²±²º¯ª  ­  ª®­±¨£­ ²®°¨  ***********
                          proc proze1
           save screen ; clear gets ; set key -46 to  // Alt+F11
           if sc6='­' ;  ra0=0 ; endif
           @ 13,22,15,59 box ram1 ; @ 14,23 clea to 14,58
           @ 14,24 say '‚º¢¥¤¥²¥ % ­  ®²±²º¯ª ²  :' get ra2 pict'999.99'
           chet()
      * FFF if 0 < ra2 ; l11='¤' ; endif
                        if lastkey()=27 .or. ra2=0
                            set key -46 to proze1 ; restore screen
                            return
                        endif
                            restore screen
                          return

   ******************* °®¶¥¤³°  §  ´ ª²³°¨ ***************
                             proc fakt
         set dele on
         store ' '  to  bs00,ba00,gb00,mol1 ; ra2 = 0
            if 100 < lastkey() ; nom2=nom0-1 ; else ; nom2=nom0 ; endif
         vazkey()
         set date germ ; set date brit ; store data0 to data3
       * mjst0='0000015961 14-04-2020'
         mjst0=repl('X',21)
       * mjst1='0000907 14-04-20 09:32'
         mjst1=repl('X',22)
       * mjst2='36643578'
         mjst2=repl('X',8)
    do while .t.
        *   eras s0001.prn
            @ 0,0 clea to 24,80 ; ramka()
                       ramka()
            clear gets     &&&  !!! POSLEDNO MARKIRANO
                  if  timeb0='  :  :'
                      set curs on
                      @  4,13 say '‚º¢¥¤¥²¥ ­®¬¥°  ­  ‘:' get nom2 pict "9999"
                      @  4,43 say '‚º¢¥¤¥²¥ ¬¥±¥¶ ' get data3 pict '99/99'
                      chet()
                        if lastkey()=27 ;  return  ; endif
                 endif
           @ 11+ml0, 2 clea to 17+ml0,78
           set key 28 to ; set key 175 to ; store 0 to min0 ; set dele on
           dn0=subs(data3,4,2)+data3+str(nom2,4)
           dnp1=subs(data3,4,2)+data3+str(nom2,4)+'453'
           open_arhi(loc0:=18)  && nari
               if ll11='­'
                  find '&dn0'
                   if .not.found()
                     @ 23+ml0,23 say 'H¿¬  ®¯¥° ¶¨¿ ± ²®§¨ ­®¬¥°:'+str(nom2,4)+'-'+data3
                     i0=inkey(0)
                     loop
                   endif
               endif
             re0=recno()
              vd0=vd
                   do case
                      case vd0='01'
                         @  2,33 say '” € K ’ “  € '
                         blan0='  ” € K ’ “  €'
                      case vd0='02'
                         @  2,35 say '„…ˆ’H ˆ‡‚…‘’ˆ…'
                         blan0='„…ˆ’H ˆ‡‚…‘’ˆ…'
                      case vd0='03'
                         @  2,31 say 'K…„ˆ’H ˆ‡‚…‘’ˆ…'
                         blan0='K…„ˆ’H ˆ‡‚…‘’ˆ…'
                      case vd0='09'
                         @  2,33 say '   ’  Š  ‹'
                         blan0='   ’  Š  ‹'
                      case vd0='60'
                      *  @  2,27 say 'ˆ…Œ-…„€‚€’…‹…H ’Š‹'
                      *  blan0='ˆ…Œ-…„€‚€’…‹…H ’Š‹'
                         @  2,27 say '    €‡ˆ‘Š€ ‡€ „€†€    '
                         blan0='€‡ˆ‘Š€ ‡€ „€†€'
                      endcase
     open_info(loc0:=10)
     locate for dn+go=dngo0
          vid00=vvid ; buls00=buls ; gr00=gr ; bk00=substr(bf,5,4)+'BGSF'
          bs00=bf ; ba00=ba ; gb00=gb ; lize0=lize ; sas0=sas ; tel00=tel
          dat200=dat2

                    if sc9='¤' .and. vd0='03'.and. (.not. timeb0='  :  :')
           @ 11+ml0,36 say '‚HˆŒ€Hˆ…!'  color 'R+/B'
           @ 13+ml0,13 say '     ‡  ¤  ®²¯¥· ²  ´¨±ª «­¨¿ ¯°¨­²¥° ±²®°­® ¡®­        '
           @ 15+ml0,13 say 'Œ®«¿ ­ ¯° ¢¥²¥ ®²¬¥²ª  ¢ ¯°®£° ¬ ²  ­  ´¨±ª «­¨¿ ¯°¨­²¥°'
           @ 17+ml0,13 say ' Settings->Device Settings->Online (Orbinance H-18)  '
           memowrit('_cred.txt','')
                    inkey(0)
                    endif
                    if  file("_cred.txt") .and. vd0='01'
           @ 11+ml0,36 say '‚HˆŒ€Hˆ…!'  color 'R+/B'
           @ 13+ml0, 8 say '‡  ¤  ®²¯¥· ²  ´¨±ª «­¨¿ ¯°¨­²¥° ±² ­¤ °²¥­ ª«¨¥­²±ª¨ ´¨±ª «¥­ ¡®­'
           @ 15+ml0,13 say 'Œ®«¿ ­ ¯° ¢¥²¥ ®²¬¥²ª  ¢ ¯°®£° ¬ ²  ­  ´¨±ª «­¨¿ ¯°¨­²¥°'
           @ 17+ml0,15 say ' Settings->Device Settings->Online (Orbinance H-18)  '
           @ 17+ml0,15 say '          Settings->Device Settings->Other           '
            eras _cred.txt
                    inkey(0)
                    endif
           @ 11,3 clea to 17,75
           open_arhi(loc0:=18)  && nari
           go re0
                      vid1=substr(vid,20,23)+space(12)
                      dok1=subs(dok,1,10)
                      dsnd1=subs(dok,17,10)
                   if l5='­'
                      fn1=substr(vid,6,10)
                      store ctod(substr(vid,17,6)+vek+substr(vid,23,2) ) to ddat0,dati0
                   endif
                      dn00=dn  ; pl0='1'
      open_regl(loc0:=10)  && dni
      find '&dn00'
               if found()
                  l0=1;vid1=vid;gr0=gr;mol0=mol;buls0=buls;pol0=pol;re0=recno()
                 if sc5='¤'
                   if 0 < dni1
                     dati0=dati0+dni1-1
                   endif
                 endif
               else
                l0=0 ; store space(13) to buls0 ; store space(25) to pol0,mol0
                      store space(35) to gr0
                endif
                      dpl0=20 ; store ddat0 to dati0
                      set cent on ; set cent on
                      @  6,34 say 'K ‹ ˆ … H ’'
       @  8,18 say '”¨°¬       ' get vid1 ; @ 10,18 say 'ƒ° ¤       ' get gr0
       @ 12,18 say 'Œ  ‹      ' get mol0 ; @ 14,18 say '®«³·¥­® ®²' get pol0
                   *  @ 14,18 say '³«±² ²    ' get buls0
    *         if sc9='¤'.and. (.not. timeb0='  :  :')  && supto mahni zvezd sledv 5 reda
    *   @ 21,14,24,66 box ram1 ; @ 22,15 clea to 23,65
    *   @ 22+ml0,37 say '‚HˆŒ€Hˆ…!'  color 'R+/B'
    *   @ 23+ml0,16 say '„®ª³¬¥­²  ±¥ ¨§¢¥¦¤  ± ¬® ­  ¯¥· ² ± ´¨±ª «¥­ ¡®­!'
    *         endif
                      chet()
        @ 20,14 clea to 23,66  ; @ 22+ml0,14,24+ml0,66 box ram1

                  if vd0='02'.or. vd0='03'.or.vd0='09'
                        set confir on
                        @ 16,18 say 'Kº¬ ´ ª²³° '+space(23)+'‘'
                        @ 18,13 say 'No ´¨±ª.¡®­'+space(24)+'N® ”¨±ª.¯ ¬¥² '
                        @ 16,30   get mjst0  pict 'XXXXXXXXXX XX-XX-XXXX'
                        @ 16,55   get dsnd1  pict 'XXXX-XX/XX'
                        @ 18,25   get mjst1  pict 'XXXXXXX XX-XX-XX XX:XX'
                        @ 18,62   get mjst2
                      chet()
                      if lastkey()=27 .and. timeb0='  :  :' ; return  ; endif
                    do while .t.
                         if empty(subs(dsnd1,1,4)).or.empty(subs(dsnd1,6,2)).or.empty(subs(dsnd1,9,2))
                         @  23+ml0,15 say '‚HˆŒ€Hˆ…!'  color 'R+/B'
                         @  23+ml0,25 say 'Œ®«¿ ¢º¢¥¤¥²¥ ª®°¥ª²®­® "Šº¬ ´ ª²³°  ‘"'
                            inkey(5)
                         @  23+ml0,15 say space(51)
                        *  loop
                         else
                            exit
                         endif
                        @ 16,55   get dsnd1  pict 'XXXX-XX/XX'
                          chet()

                   if lastkey()=27 .and. timeb0='  :  :' ;  return  ; endif
                    enddo
                        set confir off
                  endif
                   *  @ 18,40 say '‘°®ª ­  ¯« ¹ ­¥ ¤®:' get dpl0 pict '99'
                      @ 23,28 say '« ¹ ­¥  ‚ ‰   €HK€'
                      chet()
                        set confir off
                      pl0=1
             @ 23,37 prompt '‚ ‰' ; @ 23,45 prompt ' €HK€' ;  menu to pl0
                if pl0=1 ; pl0='¢ ¡°®©' ; else ; pl0='¯® €HŠ€' ; endif
                     if pol0=space(25)
                        store mol0 to pol0
                     endif

                      store dati0+dpl0 to dati2
                      set cent off
                  if file("mol.mem")
                      ss0=' '
                      @ 23+ml0,15 say space(51)
                      @ 23+ml0,17 say 'ˆ§¤ « ¤®ª³¬¥­²  ' get ss0  valid ss0='1'.or.ss0='2'.or.ss0='3'
                      chet()
                  endif
                       @ 23+ml0,15 say space(51)
                       set key -2 to
                       set key -3 to
                   if lastkey()=27 .and. timeb0='  :  :' ;  return  ; endif
              if vd0='60'
                 rec_lock()
                 repl vid with vid1, gr with gr0, mol with mol0, pol with pol0
                 rec_unlock()
                 stokraz() && sav1
                 return
              endif

                if pl0='¯® €HŠ€' ; do klient ; endif
                     if sc5='¤'
                        open_dobo(loc0:=17) ; find '&dn0'
                        store dsto to sald0
                       dk1='d' ; dati0=dati0+1
                       *   lihva()
                       dati0=dati0-1
                     endif
                    if pl0='¯® €HŠ€'
                     l00=3
                  do while .not.(l00=1.or.l00=2)
                      l00=2
                      @ 23+ml0,24 say '†¥« ¥²¥ «¨ ¯°®¬¿­  ­  ¡.±. „€ H…'
                      @ 23+ml0,51 prompt '„€' ; @ 23+ml0,54 prompt 'H…' ; menu to l00
                  enddo
                    *   if  l00=1  ;  bank())  ; endif    && sav3
                    endif
      if (.not. empty(dn00)).and.(.not.empty(vid1))
        open_regl(loc0:=11)  && dni
             if l0=0
                appe blank
        rec_lock()
           repl dn with dn00, vid with vid1, gr with gr0, buls with buls0, pol with pol0, mol with pol0 && , sas with  sas0
        rec_unlock()
             else
        go re0
        rec_lock()
        repl vid with vid1, gr with gr0, buls with buls0, pol with pol0, mol with mol0
        rec_unlock()
             endif
      endif

     *  if sc9='¤'.and. (.not. timeb0='  :  :') ; ekpr0=4 ; endif  && supto vklu
        if sc9='¤'.and. (.not. timeb0='  :  :') ; ekpr0=1 ; endif  && supto izkl

       izrab()
        ?  norm0 ; ? ; ? ; ? ; ll0='2' ; set marg to 3
         if .not. ll6=' '
     if (.not.vd0='09') ; ?? space(32)+'F15'+' ˆƒˆH€‹ '+norm0 ; endif
         endif
     ?  space(64)+'‘ '+str(nom2,4)+'-'+data3 ; ? vid1+space(7)+vid00
     ? gr0+space(7)+gr00
     ? '“‹‘’€’      '+dn00+space(32)+'“‹‘’€’      '+trim(dn1)
     x0='Œ  ‹  '+ltrim(lize0)
     ? 'ˆH ¯® „„‘ BG '+dn00+space(32)+'ˆH ¯® „„‘ BG '+trim(dn1)
     ? 'Œ  ‹  '+mol0+space(13)+space(32-len(x0))+x0
     ? space(37)+'BIC '+bk00+' IBAN '+bs00
     ? space(36+(41-len(trim(ba00)+' K‹H '+trim(gb00))))+trim(ba00)+' K‹H '+trim(gb00)
     x0='ˆ¬ ©«: '+ltrim(dat200)
     ? space(25-len(x0)+34)+'’¥«. '+subs(tel00,1,13)+x0
     ?
                      set cent on
        if vd0='02'.or.vd0='03'.or.vd0='09'
           ? space(24)+'F16 '+blan0+' F13'
           ?
           ? space(22)+'F16 '+fn1+' '+dtoc(ddat0)+'F13'
           ?
           ? space(20)+  'Kº¬ ´-°  N:'+mjst0
        else
           ? space(26)+'F16 '+blan0+' F13'
           ?
           ? '                       F16 '+fn1+' '+dtoc(ddat0)+'F13'
        endif
       open_obap(loc0:=19)
       if ll11='­'
          open_kpar(loc0:=17)
          find '&dn0'
       else
          open_kpap()
          rein
         go top
       endif
       do while nom=str(nom2,4).and.data=data3
          if .not.otst=0 ; ra2=otst ; endif
          if .not. eof() ; skip ; else ; exit ; endif
       enddo
      if ll11='­' ; find '&dn0'
      else ; go top ; endif
       if 0 = ra2
      ? '-----------------------------------------------------------------------------'
      ? ' ˜ˆ”š       H€ˆŒ…H‚€Hˆ…              Œ-K€      K-‚   …„.–…H€         ‘’-‘’'
      ? '-----------------------------------------------------------------------------'
       else
      ?? sbit0
      prn0=sbit0
      ? '--------------------------------------------------------------------------------------------------------------------------------------'
      ? '˜ˆ”š          H€ˆŒ…H‚€Hˆ…                Œ-K€       K-‚      …„.–…H€      ‘’‰H‘’     % ’‘’     ‘’. ’‘’     …„.–…H€     ‘’‰H‘’'
      ? '--------------------------------------------------------------------------------------------------------------------------------------'
       endif
        store 0 to kast0,kast1,kast2
        l1='­'  && novo 276
       do while nom=str(nom2,4).and.data=data3
           if .not.substr(part,1,3)='453'
             part0=part
           else
             if .not. eof() ; skip ; loop ; else ; exit ; endif
           endif
             sele 6 ;  find "&part0"
                name0=name ; zena0=zena
                 if ll11='­' ; sele 5 ; else ; sele 9 ; endif
   if sc9='­'   &&   ‡€ ”ˆŒ€
       do case
          case kol>0
       if ra2=0   &&  …‡ ’‘’šK€
    ? substr(part,4,4)+' '+name0+mk+' '+str(kol,10,j3)+str(zena,10,j4)+'  '+str(kast,12,j1)
           kast0=kast0+kast
       else   &&  ‘  ’‘’šK€
    ? ' '+substr(part,4,4)+'   '+name0+' '+mk+' '+str(kol,j2,j3)+' '+str(zena/(1-otst/100),11,j4)+' '+str(kol*(zena/(1-otst/100)),13,j1)+'      '+str(otst,5,2)+' '+str((zena/(1-otst/100))-zena,11,j4)+' '+str(zena,11,j4)+' '+str(kol*zena,13,j1)
           kast0=kast0+kol*zena
       endif
          case  (kol=0.or.kol<0).and.kast<>0
    if ra2=0  &&  …‡  ’‘’šK€
       if vd0='61'    &&  ±   ² ª±¨ ¯® ¯°¥µ¢º°«¿­¥
         if l1='­'  && novo
             min0=kast          && novo
             l1='¤'
                if .not. eof() ; skip ; else ; exit ; endif   && novo
             loop               && novo
         endif                  && novo
         if  kast < -0
           ? '   4   €¢ ­±®¢ ¯°¥¢®¤'+space(43)+str(round(kast,2),j0,j1)
         else
            ? '   1. '+name0+space(22)+str(round(kast+min0,2),j0,j1)
         endif
      if 0 < kast
       ? '   2. ‘³¬ ²  ­  Œ„’ ¥ §  ±¬¥²ª  ­  ª³¯³¢ · '+space(20)+str(min0,j0,j1)
    *  ? '   2  „ ­ºª ¯°¨¤®¡¨¢ ­¥ ­  ¨¬³¹¥±²¢o '+str(round(d_s10*100,2),5,2)+'%'+space(21)+str(round(kast*d_s10,2),j0,j1)
    *  ? '   3   ’ ª± ²  §  ¢¯¨±¢ ­¥           '+str(round(d_s11*100,2),5,2)+'%'+space(21)+str(round(kast*d_s11,2),j0,j1)
      else
        *   min0=kast
      endif
       else
          ? substr(part,4,4)+'  '+name0+space(22)+str(kast,j0,j1)
       endif
    else   &&   ‘  ’‘’šK€
       ? ' '+substr(part,4,4)+'   '+name0+'   '+mk+space(72)+str(kast,j0,j1)
    endif
        kast0=kast0+kast
          case  kast=0
      ? name0+space(29)
           kast0=kast0+kast
       endcase
   else     &&   ‡€ Œ€ƒ€‡ˆH

          do case
             case kol<>0
          if ra2=0   &&  …‡ ’‘’šK€
       ? ' '+substr(part,4,4)+' '+name0+' '+mk+' '+str(kol,9,j3)+' '+str(round(zena/(1+d_s0),2),9,j4)+' '+str(round(kast/(1+d_s0),2),12,j1)
              kast0=kast0+round(kast/(1+d_s0),2)
          else  &&   ‘ ’‘’šK€
                if vd0='09'
   *   ? ' '+substr(part,4,4)+'  '+name0+'  '+mk+'  '+str(kol,10,j3)+'   '+str(round(zena,3)/(1-otst/100),10,j4)+'  '+str(kol*round((zena/(1-otst/100)),j4),12,j1);
   *        +'      '+str(otst,5,2)+' '+str(kol*round((zena/(1-otst/100)),j4)*(otst/100),12,j1)+'  '+str(round(zena,j4),10,j4)+' '+str(kol*zena,12,j1)
   *          kast0=kast0+round(kol*zena,j1)
                else
       ? ' '+substr(part,4,4)+'  '+name0+'  '+mk+'  '+str(kol,10,j3)+'   '+str(round(zena/(1+d_s0)/(1-otst/100),j4),10,j4)+'  '+str(kol*round(zena/(1+d_s0)/(1-otst/100),j4),12,j1);
            +'      '+str(otst,5,2)+' '+str(kol*round(zena/(1+d_s0)/(1-otst/100),j4)*(otst/100),12,j1)+'  '+str(round(zena/(1+d_s0),j4),10,j4)+' '+str(round(kast/(1+d_s0),j1),12,j1)
              kast1=kast1+kol*round(zena/(1+d_s0)/(1-otst/100),j4)
              kast2=kast2+kol*round(zena/(1+d_s0)/(1-otst/100),j4)*(otst/100)
              kast0=kast0+kast
                endif
          endif
          endcase
  endif
                if ll11='­' ; sele 5 ; else ; sele 9 ; endif
                if .not. eof() ; skip ; else ; exit ; endif
       enddo
    if sc9='­'   &&   ‡€ ”ˆŒ€
                  sele 5 ; find '&dnp1'     //  kpar
           if  ra2=0  &&  …‡ ’‘’šK€
               if .not. ll6=' ' ; ? spac(62)+'---------------' ; endif
         if vd0='61'
       ? '      ‘²®©­®±² ­  ±¤¥«ª ² '+space(37)+str((kast0+min0+min0),j0,j1)
        * ? '   ‘²®©­®±² ­ 1±¤¥«ª ² '+space(41)+str((kast0-min0)*(1+d_s12)-abs(min0),j0,j1)
       ? '      „„‘ '+str(d_s0*100,2)+' % '+space(48)+str(kast,j0,j1)
         else
                  if ll6='¥'  //faktura za registrirana firma  !!!!!!!!!!
     ? space(41)+'‘²®©­®±² ­  ±¤¥«ª ²   '+str(kast0,j0,j1)
     ? space(48)+'„„‘ '+str(d_s0*100,2)+' %       '+str(kast,j0,j1)
                  endif
         endif
                     kast0=kast0+kast
       ? spac(62)+'---------------'
         if vd0='61'   //  shibana faktura
       ? space(6)+'‚‘ˆ—Š         '+space(42)+str(kast0+min0+min0,j0,j1) && novo
        * ? space(7)+'‚‘ˆ—Š         '+space(42)+str(kast0+round((kast0-kast-min0)*d_s12,2),j0,j1)
       ? space(6)+'‘³¬ ²  ­  Œ„’ ¥ §  ±¬¥²ª  ­  ª³¯³¢ · '+space(20);
         +str(min0,j0,j1)    && novo
        * space(14-len(ltrim(str(round((kast0-kast-min0)*d_s12,2),j0,j1))))+'-'+ltrim(str(round((kast0-kast-min0)*d_s12,2),j0,j1))
            kast0=kast0+min0    &&  novo
       ? space(6)+'‘“Œ€ ‡€ ‹€™€H…'+space(42)+str(kast0,j0,j1)  && novo
        * ? space(6)+'‘“Œ€ ‡€ ‹€™€H…'+space(42)+str(kast0,j0,j1)
         else
       ? space(42)+'‚‘ˆ—Š'+space(15)+str(kast0,j0,j1)
         endif
           else   &&  ‘  ’‘’šK€
       ?
       ? spac(101)+'          -----------------------'
       ? space(85)+'‘²®©­®±² ­  ±¤¥«ª ² '+space(15)+str(kast0,j0,j1)
           if 0 < kast
       ? space(97)+'„„‘ '+str(d_s0*100,2)+' % '+space(14)+str(kast,j0,j1)
                     kast0=kast0+kast
           endif
       ? spac(99)+'-----------------------------------'
       ? space(99)+'‚‘ˆ—Š           '+space(15)+str(kast0,j0,j1)
           endif
                store round(kast0,2) to slov0
      ?? norm0
    else    &&  ‡€ Œ€ƒ€‡ˆH
           if  ra2=0   &&  …‡  ’‘’šK€
       ?
       ? spac(53)+'------------------------'
       ? space(41)+'‘²®©­®±² ­  ±¤¥«ª ²   '+str(kast0,j0,j1)
       ? space(48)+'„„‘ '+str(d_s0*100,2)+' %       '+str(round(kast0*d_s0,2),j0,j1)
       ? spac(42)+'-----------------------------------'
       ? space(49)+'‚‘ˆ—Š        '+str(round(kast0*(1+d_s0),2),j0,j1)
                store round(kast0*(1+d_s0),2) to slov0
           else  &&  ‘  ’‘’šK€
                if vd0='09'
   *   ? spac(101)+'---------------------------------'
   *   ? space(103)+'‚‘ˆ—Š'+space(11)+str(round(kast0,2),j0,j1)
                else
       ? spac(78)+'--------------------------------------------------------'
       ? space(90)+'‘²®©­®±² ­  ±¤¥«ª ²  '+space(9)+str(kast0-round(kast0/(1+d_s0)*d_s0,j1),j0,j1)
       ? space(103)+'„„‘ '+str(d_s0*100,2)+' % '+space(8)+str(round(kast0/(1+d_s0)*d_s0,j1),j0,j1)
       ? spac(101)+'---------------------------------'
       ? space(103)+'‚‘ˆ—Š'+space(11)+str(kast0,j0,j1)
                endif
                store round(kast0,2) to slov0
           endif

      ?? norm0
    endif
       ? '-----------------------------------------------------------------------------'

      if sc9='¤'
                  if ekpr0=2
                     l2='y'  // proverka za vkluchen f. printer
                 *   do fprint  // sav1  // supto pusni
                     if l2='n' ; loop ; endif // ne e vkluchen f. printer
                   endif

         * @  0,15  say 'supto 08 proverka za wkl. k.aparat' ; inkey(0) //kkk

         if ekpr0=2 .and. pl0='¢ ¡°®©'  &&  supto spri sledvashtite sledvashtite 5 reda s tozi
           l0=2
           @ 23+ml0,26 say '†¥« ¥²¥ «¨ ª ±®¢ ¡®­ „€ H…'
           @ 23+ml0,47 prompt '„€' ; @ 23+ml0,50 prompt 'H…' ; menu to l0
           if l0=1 ; do kaparat ; endif
         endif
       *   do kaparat // pro6 - proverka za wkl. k.aparat  && supto pusni
       do case
          case pl0='¢ ¡°®©'
           *   ? '“H: '+idfu01+'-'+admi01+'-'+pnp01+space(37)+'« ¹ ­¥ '+pl0  && supto pusni
               ? space(63)+'« ¹ ­¥ '+pl0  && supto pusni && supto spri
          case pl0='¯® €HŠ€'
           *   ? '“H: '+idfu01+'-'+admi01+'-'+pnp01+space(35)+'« ¹ ­¥ '+pl0  && supto pusni
               ? space(61)+'« ¹ ­¥ '+pl0  && supto spri
       endcase
      else
       do case
          case pl0='¢ ¡°®©'
               ? space(63)+'« ¹ ­¥ '+pl0
          case pl0='¯® €HŠ€'
               ? space(61)+'« ¹ ­¥ '+pl0
       endcase
      endif
       slovo()
       if .not.ll6=' '
    ?
    ? '„ ²  ­  ¤ ­º·­®²® ±º¡¨²¨¥/­  ¯« ¹ ­¥²®: '+ dtoc(ddat0)+' £®¤.'
       endif
       set cent off
    ?
 *  ? '‘²®ª ²  ¯®«³·¥­  ®² '+dtoc(ddat0)+space(34)
    ? '‘²®ª ² /“±«³£ ²  ¯®«³·¥­  ®² '+pol0
    ?
  * ? '           K° ¥­ ±°®ª ­  ¯« ¹ ­¥  G '+dtoc(dati2)+' H '
  * ?
  * ?    space(7)+'...................'+space(33)+'.................'
  *      ? space(11)+'SM‹¨¶ .®²£®¢®°­¨ §  ‘'+norm0+'T'+space(51)+'SM‹¨¶ .®²£®¢®°­¨ §  ‘P'+norm0+'T'
    ?
    ?
    ? '®«³· ²¥«:..................                        ‘º±² ¢¨«:.................'
    ? space(0+len(pol0)-len(ltrim(trim(pol0))))+'/'+ltrim(trim(pol0))+'/';
      +space(23+len(sas0)-len(ltrim(trim(sas0))))+'/'+ltrim(trim(sas0))+'/'
    if .not.sc9='¤'
     for i0 = 1 to 13 ; ? ; next
    endif
     *  @  0,15  say 'supto 11  KRAY'+space(15) ; inkey(0) //kkk
    pech()
     open_arhi(loc0:=19)
    if  vd0='03'
       find '&dn0'
           rec_lock()
           repl dok with 'ª-¨¥ ¯® ¯°®¤ ¦. '+dsnd1+subs(dok,27,14)
           rec_unlock()
    endif
     go bott
       if file("&disc_0\defexec.txt")
          eras &disc_0\defexec.txt
       endif
       if sc9='¤'.and. (.not. timeb0='  :  :') ; exit ; endif

    enddo
                    return   // fakt

       *******************  °®¶¥¤³°  §  ¯°®¤ ¦¡  ®² ¬ £ §¨­¨ ****************
                        proc  prodag

      *  copy file &disc_1\save\kobp.dbf i copy file &disc_1\save\kpap.dbf
      *  gornite kopiq izprazwat sydyrvanieto na kobp i kpap.dbf za da ne
      *  se polzuea iztrivane na zapis saglasno naredba N 18
      *  Wseki novodobawen zapis e deistvie "part with sch00+'aaaa'" - ne znam zashto
      *  i e markiran  za iztrivane s funkciqta "del()"
      *  Kogato se vyvede kolichestvo 0 shto se markira s funkciqta "del()"

             do vazkey
             ra2=0 ; l5='¤' ; store ' ' to fn1,ddat0
             save screen to ekr1
             open_kpar(loc0:=18)
             dn0=subs(data0,4,2)+data0+str(nom0,4)

             find "&dn0"
             if found()
              * podr_0=51  && zap  na kobp i kpap   // original
              * save all like podr_0 to podred      // original
              * podred()                            // original

                copy file &disc_1\save\kobp.dbf  to &us_0\kobp.dbf
                copy file &disc_1\save\kpap.dbf  to &us_0\kpap.dbf

                save all like podr_0 to podred
                podred()
                open_kpap()
                appe from '&us_0'+'kpar' for nom=str(nom0,4).and.data=data0
                open_kpap(loc0:=1)
                repl all par with val(subs(part,4,4))
                open_kpap(lock0:=0)
                set order to 0
                go top
                      ksto0=0
                      do while .not.eof()
                          ksto0=ksto0+kast
                          if .not. eof() ; skip ; else ; exit ; endif
                      enddo
                clos data
                open_kpar(loc0:=19)
                store nom0 to nom1,nom2 ; data3=data0 ; l0='¬'
                do mark  //  original
                podr_0=25
                save all like podr_0 to podred
                podred()
                nom1=str(nom1,4)
             else
                podr_0=28
                save all like podr_0 to podred
                podred()
                open_kpap()
                set order to 0
                locate for subs(data,4,2)+data+nom=dn0
              if found()
                 par0=par
              else
              * podr_0=51  && zap  na kobp i kpap   // original
              * save all like podr_0 to podred      // original
              * podred()                            // original
                copy file &disc_1\save\kobp.dbf  to &us_0\kobp.dbf
                copy file &disc_1\save\kpap.dbf  to &us_0\kpap.dbf
              endif
                open_kpap()
                set order to 0
             endif
             open_obap(loc0:=20) ; open_kpap() ; set order to 0 ; appe blank

             rec_lock()
             repl part with sch00+'aaaa'

              *   del()  // original
             rec_unlock()
             set relation to part into obap
             set filter to part=sch00
             go top
                  declare fiel[5]
                  fiel[1]='par'
                  fiel[2]='obap->name'
                  fiel[3]='kol'
                  fiel[4]='kpap->zena'
                  fiel[5]='kast'
                  declare imem[5]
                  imem[1]='˜ˆ”.'
                  imem[2]='          H€ˆŒ…H‚€Hˆ…'
                  imem[3]='K-‚'
                  imem[4]='      –…H€'
                  imem[5]='       ‘“Œ€'
                  @ 10+ml0, 2 clea to 24+ml0,78
                  @ 22+ml0, 1,24+ml0,79 box ram1
                  @  9+ml0, 1,24+ml0,79 box ram1

               if  timeb0='  :  :' ; store time() to timeb0 ; endif
                  dbedit(10, 2,21+ml0,78,fiel,"pfunk3",' ',imem,'Í','“')
                  set key -8 to
                  podr_0=28
                  save all like podr_0 to podred
                  podred()
                  open_kpar(loc0:=20)
      && !!!!! TUKA E PREHVARLYANETO OT KPAP V KPAR I SE OTIVA V SPDOK I SE
      && POPALVA ARHI I SE ZAVARSHVA PRODAGBATA
                  appe from kpap for (.not. kast=0)
                  sele 5
                  clos data
                  sele 1      //  arhi
                  restore screen from ekr1
                 return  // prodag
      ************ ®²°¥¡¨²¥«±ª  ´³­ª¶¨¿ **********
                function pfunk3
                parameters mode0,fld0
                cur0=fiel[fld0]
                set cursor off
         do case
            case mode0 < 4
               part0=0
               do case
                   case lastkey()=6
                    keyboard chr(19)
                  * col()=3 && par  no ne se e vkluchwala  v case proverkata
                  case  col()=8 && obap->name
                  if empty(obap->name)
                    if 0 < par
                  *   zvan()
                      @ 23+ml0, 2 say space(22)+'H¿¬ ²¥ ¢º¢¥¤¥­  ¯ °²¨¤  ± ²®§¨ ­®¬¥°'+space(19)
                      i0=inkey(3)
                    endif
                     keyboard chr(19)   // strelka nalqvo
                  else
                     set relation to part into obap
                     set filter to part=sch00
                     rec_lock()  &&!
                     repl kpap->otst with ra2
                     keyboard chr(4)  // strelka nadiasno
                     repl  kpap->zena with obap->zena
                     rec_unlock()  &&!
                  endif
                  case  col()=44  &&  kol
                  case  col()=55  && kpap->zena
                     if sc14='¤'  // Pri rabata s procenti w otdelen fail s otstapki na Kazakov
                 store  str(kpap->par,4) to part0
                 set cursor on
                 proze()
                 store  kpap->par to part0
                 sele 9
                 set relation to part into obap
                 set filter to part=sch00
                 rec_lock()
                 repl kpap->otst with ra2
                 rec_unlock()
                 set cursor off
                     endif
                        keyboard chr(4)
                        rec_lock()
                        repl  kpap->zena with obap->zena
                        if .not. otst=0
                           repl kpap->zena with round((kpap->zena/(1+d_s0)-(kpap->zena/(1+d_s0)*otst/100))*(1+d_s0),j4),otst with ra2
                        else
                           repl kpap->zena with obap->zena && ,otst with ra2
                        endif
                           repl partp with part, kast with kpap->kol*kpap->zena, kpap->mk with obap->mk,otst with ra2
                        store obap->mk to mk1
                        rec_unlock()
                        @ 10,48 say str(obap->kkol,9,3)
                        keyboard chr(19)
                      re0=recno()
                      go top
                      ksto0=0
                      do while .not.eof()
                          ksto0=ksto0+kast
                          if .not. eof() ; skip ; else ; exit ; endif
                      enddo
                      go re0
                      @ p0,43 say sch0
                      @ p0,60 say ksto0 pict "99999999999.99"
                  endcase
                        @ 10,48 say str(obap->kkol,9,3)
                        @  8,49 say '²±.'+str(kpap->otst,5,2)+'% '
                    *   ra2=kpap->otst
           if sc17='y'
               @ 23+ml0, 3 say 'ENTER ¯°®¬¿­  F3-¨§¤¨°¢  ¸¨´º° F9-H®¢ ¸¨´º° F11-®²±²º¯ª  Alt+F10-¡¥§ ´ ª²³° '
            else
               @ 23+ml0, 3 say 'ENTER ¯°®¬¿­  F3-¨§¤¨°¢  ¸¨´º° F9-H®¢ ¸¨´º° F11-®²±²º¯ª  Alt+F10- ± ´ ª²³°  '
            endif
               return 1
            case lastkey()=-2
             save screen to ekr2
              @  9, 1,17,79 box ram1 ; @ 18, 1 clea to  24,79
              store sch00 to sch0
              set cursor on
              @ 18,15 clea to 24,65
              spisk()
              @ 18, 2 clea to  18,78 ; @  9, 1,24,79 box ram1 ; @ 22, 1,24,79 box ram1
              restore screen from ekr2
              set cursor off
             open_obap(loc0:=20)
             open_kpap() ; set order to 0
             set relation to part into obap
             set filter to part=sch00
             go top
                  if lastkey()=27 ; return 1 ; endif
              locate for subs(part,4,4)='aaaa'
                 if .not. found()
                   appe blank
                   rec_lock()
                   repl nom with str(nom0,4), part with sch00+'aaaa', data with data0
                   rec_unlock()
                *  del() // original
                endif
                  if 0 < part0
                     rec_lock()
                     repl part with sch00+str(part0,4),partp with sch00+str(part0,4),par with part0, zena with zena1
                     rec_unlock()
                   endif
            case lastkey()=27
                  set dele off ; set filter to ; set relation to
                  podr_0=28
                  save all like podr_0 to podred
                  set curs off ; podred() ; set dele off
                   return 0
            case lastkey()=13
               do case    && lastkey()=13
                  case  col()=3 .and. (.not. str(par,4)='   0')
                    @ 23+ml0, 2 say space(23)+'K®°¥ª¶¨¿ ­  ¸¨´º°  ¥ ­¥¤®¯³±²¨¬a!'+space(21)
                    inkey(2)  ;  keyboard chr(4)
                  case col()=44 .and. str(par,4)='   0'
                    @ 23+ml0, 2 say space(22)+'Œ®«¿ ¢º¢¥¤¥²¥ ¸¨´º°  ­  ¯ °²¨¤ ² !'+space(21)
                    inkey(2) ;  keyboard chr(19)
                  other
                  set cursor on
            if col()=44 .and. empty(obap->name)
                    @ 23+ml0, 2 say space(7)+'°¨ ­³«¥¢¥  ¶¥­ , ª®«¨·¥±²¢  ¥ ­¥¤®¯³±²¨¬® ¤  ±¥ ¢º¢¥¦¤ ².'+space(12)
                    inkey(5)
            else
                  @ row(),col() get &cur0
            endif
                  @ 23+ml0, 2 say space(25)+'‚º¢¥¤¥²¥ ¦¥« ­¨²¥ ¯°®¬¥­¨'+space(27)
                        if (.not.kpap->kol=0)
                           sele 6   // obap
                           rec_lock()
                           repl obap->kkol with obap->kkol+kpap->kol
                           rec_unlock()
                           sele 9
                        endif
                        @ 10,48 say str(obap->kkol,9,3)
                  chet()

               if (.not. str(par,4)='   0')
                           rec_lock()
                  repl nom with str(nom0,4), part with sch00+str(par,4),otst with ra2;
                  ,mk with mk1, kast with kpap->kol*kpap->zena, data with data0
                           rec_unlock()
                  reca()
                endif
                           rec_lock()
             *  if kpap->kol=0 ;  del() ; else ;  reca() ; endif  // original
                           rec_unlock()
                     if (.not.kpap->kol=0)
                          sele 6
                           rec_lock()
                           repl obap->kkol with obap->kkol-kpap->kol
                           rec_unlock()
                          sele 9
                     endif
                  keyboard chr(4)
                  endcase  &&  lastkey()=13
                  set cursor off  ; set key 164 to ; set key 177 to
                  return 1
            case lastkey()=-8
              locate for subs(part,4,4)='aaaa'
                 if .not. found()
                   appe blank
                   rec_lock()
                   repl nom with str(nom0,4), part with sch00+'aaaa', data with data0
                   rec_unlock()
                   *  del()   // original
                   keyboard chr(19)
                endif
            case lastkey()=-39
                  if sc17='n'
                     sc17='y'
                     @ 23+ml0, 3 say +space(28)+' °®¤ ¦¡  ± ´ ª²°   '+space(28)
                  else
                     sc17='n'
                     @ 23+ml0, 3 say +space(28)+' °®¤ ¦¡  ¡¥§ ´ ª²° '+space(28)
                  endif
                        inkey(6)
           if sc17='y'
               @ 23+ml0, 3 say 'ENTER ¯°®¬¿­  F3-¨§¤¨°¢  ¸¨´º° F9-H®¢ ¸¨´º° F11-®²±²º¯ª  Alt+F10-¡¥§ ´ ª²³° '
            else
               @ 23+ml0, 3 say 'ENTER ¯°®¬¿­  F3-¨§¤¨°¢  ¸¨´º° F9-H®¢ ¸¨´º° F11-®²±²º¯ª  Alt+F10- ± ´ ª²³°  '
            endif

            case lastkey()=-40
                 set cursor on
                 store  str(kpap->par,4) to part0
                  proze()
                 sele 9
                 set relation to part into obap
                 set filter to part=sch00
                 rec_lock()
                 repl kpap->otst with ra2
                 rec_unlock()
                 set  key -40 to
                 set cursor off

              *  case lastkey()=304
              *  ll11='¤'
              *  save screen ; set filte to ; set relat to ; set cursor on
              *  fn1=substr(vid0,6,10)
              *  store ctod(substr(vid0,17,6)+subs(vek0,1,2)+substr(vid0,23,2) ) to ddat0,dati0
              *  fakt() ; vazkey() ;  restor screen
              *  set cursor off ; set dele off ; clos data
              *  open_obap(loc0:=21)
              *  open_kpap() ; set order to 0
              *  set relation to part into obap
              *  set filter to part=sch00
            case lastkey()=7
                  set dele on ; set filter to  ; set relation to
                  podr_0=28
                  save all like podr_0 to podred
                  podred()
                  set dele off ;  clos data
                  open_obap(loc0:=21)
                  open_kpap() ; set order to 0
                  set relation to part into obap
                  set filter to part=sch00
              locate for subs(part,4,4)='aaaa'
                 if .not. found()
                   appe blank
                   rec_lock()
                   repl nom with str(nom0,4), part with sch00+'aaaa', data with data0
                   rec_unlock()
                    *  del()   // original
                 endif
                  set cursor on ; keyboard chr(19) ; set cursor off
          endcase
                return 1    //  pfunk3
   ****************** °®¶¥¤³°  §  ®¡°º¹ ­¥ ¢ 304  ****************
                       proc obob
             save screen
             do ramka
             set key -37 to
             clea gets
             store nom0-1 to nom1
   do while .t.
             @  2,29 say '‚š‚…„…’… N H€ ‘ ' get nom1 pict '9999'
             chet()
                if  lastkey()=27 ;  return  ; endif
           dat0=subs(data0,4,2)+data0+str(nom1,4)
           l0='­' ; us_1='c:\s100\'
               sele 1
               use '&us_1'+'arhi' index '&us_1'+'nari','&us_1'+'faki','&us_1'+'vidi'
               find '&dat0'
           if found()
               zvan()
               @ 23+ml0,15 say space(51)
               @ 23+ml0,22 say ' ¯¥° ¶¨¿ N: '+str(nom1,4)+' ¢¥·¥ ¥ ¤®¡ ¢¥­  !'
               i0=inkey(0) ; loop
           else
               @ 23+ml0,15 say space(51)
               @ 23+ml0,23 say ' °®£° ¬ ²  ¤®¡ ¢¿ ®¯¥° ¶¨¿ '
               @ 23+ml0,55 say str(nom1,4)
               sele 1
               use '&us_1'+'arhi' index '&us_1'+'nari','&us_1'+'faki','&us_1'+'vidi'
               appe from '&us_0'+'arhi' for nom=str(nom1,4).and.data=data0
               open_kpap()
               podr_0=51  && zap
               save all like podr_0 to podred
               podred()
               open_kpap(loc0:=1)
              appe from '&us_0'+'dpar' for nom=str(nom1,4).and.data=data0
              repl all sch with '304',part with '304'+subs(part,4,4),partp with '304'+subs(part,4,4)   for .not.part='453'
              repl all sch with '453',dsto with dast for part='453'
              sum dast to dsto2 for nom=str(nom1,4).and.data=data0.and.(.not.part='453')
              clos data
              sele 4
              use '&us_1'+'dpar' index '&us_1'+'nadi','&us_1'+'dpdi','&us_1'+'di'
              appe from '&us_0'+'kpap'
              sele 2
              use '&us_1'+'dobo' index '&us_1'+'nsdi','&us_1'+'dsdi','&us_1'+'ds'
              appe blank
              repl nom with str(nom1,4), sch with '304',nvo with '   0', dsto with dsto2, data with data0
              appe from '&us_0'+'kpap' for sch='453'.and.nom=str(nom1,4).and.data=data0
              sele 3
              use '&us_1'+'kobo' index '&us_1'+'nski','&us_1'+'dski','&us_1'+'ks'
              appe from '&us_0'+'kobo' for nom=str(nom1,4).and.data=data0

              sele 5
              use '&us_1'+'kpar' index '&us_1'+'naki','&us_1'+'dpki','&us_1'+'ki'
              appe from '&us_0'+'kpar' for nom=str(nom1,4).and.data=data0
              clos all
              l0='­'  ;  store data0 to data1
           endif
         l0='­'
         ************  ¡°º¹  ± ¯°®¤ ¦­ ¨¶¥­¨  ***************
          l0='¬'
          store nom1 to nom2
          open_kpap(loc0:=19)
          podr_0=51 && zap
          save all like podr_0 to podred
          podred()
          open_kpap(loc0:=19)
          appe from dpar for data=data1.and.nom=str(nom1,4).and.(.not.part='453')
          go top
           store 0 to dsto1,dsto0
           do while .not.eof()
             part0=part
             open_obap(loc0:=19)
             find "&part0"
             zena0=zena
             sele 9
             rec_lock()
             repl  sch with subs(part0,1,3),zena with zena0, dast with round(kol*zena0,j1),dsto with round(kol*zena0,j1)
             rec_unlock()
             dsto0=dsto0+round(kol*zena0,j1)
                          if .not. eof() ; skip ; else ; exit ; endif
           enddo
           open_kpap(loc0:=19)  ; set order to 4
           total on sch field dsto to kpapt
                do markir
                do iztri
                open_dpar(loc0:=16)
                appe from kpap
                open_dobo(loc0:=16)
                appe from kpapt
                rec_unlock()
          open_kobo(loc0:=16)
          appe blank
          rec_lock()
          repl nom with str(nom1,4),sch with '777',nvo with '   0', ksto with dsto0, data with data0
          rec_unlock()
         ************  K° © ®¡°º¹  ± ¯°®¤ ¦­ ¨¶¥­¨  ***************
          open_arhi(loc0:=16)
          appe blank
          rec_lock()
   repl nom with str(nom1,4), papk with str(papk0,3), data with data0, vek with subs(vek0,1,2)
                 if sc11='¤'.and.dn1='147164000 '
                    repl dok with dok0
                 else
                    repl dok with '§ ¤º«¦¥­¨¥ '
                 endif
         store data0 to data1
          rec_unlock()
          nom1=nom1+1
         @ 23+ml0,15 say space(51)
   enddo
                restore screen
                set key -37 to obob
                @  3,42 get papk0  pict '999'
                 chet()
                       return

       **************** °®¶¥¤³°  §  § ¤º«¦¥­¨¿ ¯® ¬ £ §¨­¨ - ¤¨±¯¥·¥° **************
                              proc  zadalz
             do vazkey
             set key -3 to ; set key 176 to  ; clea gets
             ra2=0 ; par0=0 ; l6='¤' ; l2='­' ; p0=8
             open_dpar(loc0:=17)
             dn0=subs(data0,4,2)+data0+str(nom0,4)
             find "&dn0"
             if found()
                dn0=subs(data0,4,2)+data0+str(nom0,4)+'453   1'
                find "&dn0"
                if .not. found()  ; l2='¤' ; endif
                clos data
                podr_0=51
                save all like podr_0 to podred ; podred()
                open_kpap(loc0:=1) ; set order to 0
                appe from dpar for nom=str(nom0,4).and.data=data0
                repl all sch with subs(part,1,3),partp with '304'+subs(part,4,4),par with val(subs(part,4,4)), dsto with dast
                dele all for sch='453'
                clos data
                podr_0=28
                save all like podr_0 to podred
                podred()
                open_kpap() ; set order to 0
                go top
                par0=par ; sch00=sch ; ksto0=0
                      do while .not.eof()
                          ksto0=ksto0+dast
                          if .not. eof() ; skip ; else ; exit ; endif
                      enddo
                clos data
                l0='¬'
                store nom0 to nom1,nom2
                open_dobo(loc0:=18)
                mark()
                podr_0=22
                save all like podr_0 to podred ; podred()
                open_dpar(loc0:=18)
                mark()
                podr_0=24
                save all like podr_0 to podred
                podred()
                nom1=str(nom1,4)
             else
                podr_0=28
                save all like podr_0 to podred  ; podred()
                open_kpap() ; set order to 0
                locate for subs(data,4,2)+data+nom=dn0
              if found()
                 go bott
                 par0=par ; sch00=sch
              else
                podr_0=51
                save all like podr_0 to podred
                podred()
              endif
             endif
             save screen to ekr1
             open_obap(loc0:=22)
             open_kpap()
             set order to 0
           if l2='­'
             appe blank
             del()
             rec_lock()
             repl part with sch00+'aaaa'
             rec_unlock()
           endif
             set relation to part into obap
             go top
                  declare fiel[6]
                  fiel[1]='sch'
                  fiel[2]='par'
                  fiel[3]='obap->name'
                  fiel[4]='kol'
                  fiel[5]='kpap->zena'
                  fiel[6]='kpap->dast'
                  declare imem[6]
                  imem[1]='Œ€ƒ'
                  imem[2]='ˆ”.'
                  imem[3]='       H€ˆŒ…H‚€Hˆ…    '
                  imem[4]='K‹ˆ—…‘’‚'
                  imem[5]='–…H€  %'
                  imem[6]='     ‘’-‘’'
                  @ 21+ml0,14,24+ml0,66 box ram1
                  @  7, 0,15+ml0,79 box ram1
                  @  6,67 say ' ‘  “ŒH†…HˆE'
                  dbedit( 8, 1,14+ml0,78,fiel,"pfunk5",' ',imem,'Í','“')
                  set key -8 to
                  podr_0=28
                  save all like podr_0 to podred
                  podred()
                  open_kpap()
                  set order to 0 ; set filter to ;  set relation to
                  sum dsto to dsto2
                  store dsto2 to dsto1
                  clos data
                  open_dpar(loc0:=19)
                  appe from kpap
               if l2='­'.and.dr2='¤'.and.(sd2='±'.or.sd2='¢')
                  appe blank
                  rec_lock()
                  repl nom with str(nom0,4), part with '453   1' ,dast with round(dsto2*d_s0,j1),mk with '«¢',data with data0
                  rec_unlock()
                  store dsto1+round(dsto2*d_s0,j1) to dsto1
               endif
                  open_kpap()
                  rein
                  total on sch to kpapt field dsto
                  open_dobo(loc0:=19)
                  appe from kpapt
                  eras kpapt.dbf
               if l2='­'.and.dr2='¤'.and.(sd2='±'.or.sd2='¢')
                  appe blank
                  rec_lock()
                  repl nom with str(nom0,4),sch with '453', dsto with round(dsto2*d_s0,j1),data with data0
                  rec_unlock()
                  @ p0+1, 6 say '453'
               endif
                  ll11='¤'
                  l11='­'
                  l1='¤'
                  restore screen from ekr1
                  @  7,23 say dsto2 pict "99999999999.99"
                 return
      ************ ®²°¥¡¨²¥«±ª  ´³­ª¶¨¿ **********
                function pfunk5
                parameters mode0,fld0
                cur0=fiel[fld0]
                 do case
            case mode0 < 4
               part0=0
               set filter to par=par0
               do case
                  case  col()=1  &&  sch
                        rec_lock()
                        repl sch with sch00
                        rec_unlock()
                        keyboard chr(13)
                  case  col()=10  && ¯ °²¨¤ 
                     *  zena3=0
                        pt0='304'+subs(part,4,4)
                        pt1=part
                        re0=recno()
                        open_obap(loc0:=22)
                        find '&pt1'
                      * store obap->kkol to  kol1  &&  ¬¨¬¥²® ² ª  £® ¨±ª 
                        store kpap->kol to  kol1 ; store obap->zena to zena3
                        find '&pt0'
                        store obap->zena to zena0 ; store obap->zena to zena2
                     if (.not.found()).and.(.not.par0=0)
                        novpart()   && sav3
                        zena0=0
                      if l0='­'
                       sele 9
                       set relation to part into obap
                       go re0
                       sch00='   ' ; part0=0 ; par0=0
                       if l2='­'
                              rec_lock()
                          repl sch with sch00,part with sch00+str(part0,4), par with part0
                              rec_unlock()
                       endif
                      endif
                     endif
                        sele 9
                        set relation to part into obap
                        go re0
                      if l2='­'
                        ra2=otst
                              rec_lock()
                        repl kpap->zena with zena0, kpap->kol with kol1
                              rec_unlock()
                      endif
                        store obap->mk to mk1
                        keyboard chr(4)
                  case  col()=46 &&  ª®«¨·¥±²¢®
                      if l2='­'
                         ra2=otst
                         @  8,65 say str(ra2,5,2)
                         @  8,35 say str(obap->kkol,9,3)
                      endif
                  case  col()=57 &&  ¶¥­ 
                      if l2='­'
                         ra2=otst
                         @  8,65 say str(ra2,5,2)
                      endif
                  case  col()=68 &&  ±²®©­®±²
               if l2='­' &&
                  if zena0<>zena2.and.ra2=0    &&  0<zena2
                         zvan()
                         l0=1
                         @ 18, 3 say '‚HˆŒ€Hˆ… !'  color 'R+/B'
                         @ 18,14 say 'Œ…HŸ’… „‘’€‚H€ –…H€ ‘ H‚€'+str(zena0,10,j4)   && +'  ’‚š†„€‚€’… ‹ˆ '
                         i0=inkey(3)
                        if l0=2
                            keyboard chr(19)
                         else
                            store zena0 to zena2
                            pt0='304'+subs(part,4,4)
                            open_obap(loc0:=22)
                            find '&pt0'
                            if (.not.kol0=0).and.(.not.zena0=0).and.ra2=0
                              rec_lock()
                                 repl obap->zena with zena2
                              rec_unlock()
                            endif
                            sele 9
                            set relation to part into obap
                            go re0
                              rec_lock()
                            repl kpap->zena with zena2, dast with kpap->kol*kpap->zena         &&     ,kol with kol1
                              rec_unlock()
                         endif
                      ksto0=0 ; kol0=0 ; re0=recno()
                      go top
                      do while .not.eof()
                          ksto0=ksto0+dast
                          kol0=kol0+kpap->kol
                          if .not. eof() ; skip ; else ; exit ; endif
                      enddo
                      go re0
                      @ 16,22 say '™  ˜ˆ”š:  K-‚' ; @ 16,61 say '‘’-‘’'
                      @ 16,43 say kol0  pict "99999999.999"
                      @ 16,67 say ksto0 pict "999999999.99"
                  endif
               endif

                  if zena3 <= zena0
                         @ 18, 0 say space(80)
                         @ 18,27 say '‚HˆŒ€Hˆ… !'    color 'R+/B'
                         @ 18,38 say '„€†H€’€ –…H€ … '+str(zena3,10,j4)   && +'  ’‚š†„€‚€’… ‹ˆ '
                         i0=inkey(0)
                         @ 18, 0 say space(80)
                  endif
                           rec_lock()
                       if l6='¤'
                          repl dast with kpap->kol*kpap->zena, dsto with dast
                       else
                          repl  dsto with dast
                       endif
                          rec_unlock()
                              if kpap->kol=0.or.dsto=0
                                 del()
                               else
                                 reca()
                              endif
                  @ 18, 0 say space(80)
               endcase
               @ 22,15 say 'F3 - ¨§¤¨°¢  ¯ °²¨¤  F4 -°®¢¥°ª  F5 -‘/…‡ ³¬­®¦.'
               @ 23+ml0,15 say 'ENTER §  ¯°®¬¿­  ­  ¤ ­¨²¥, F9 - „®¡ ¢¿­¥ ­  ¸¨´º°'
               return 1
            case lastkey()=-2
              sch0='304'
              set cursor on
              @ 22,15 clea to 23,65
              spisk()
              set cursor off
              set dele off
              sele 9
              set relation to part into obap
              appe blank
              del()
              rec_lock()
              repl nom with str(nom0,4), data with data0
              repl sch with sch00,part with sch00+str(part0,4),partp with '304'+str(part0,4),par with part0
              rec_unlock()
              store part0 to par0
              keyboard chr(1)
              @ 18, 2 clea to  18,78
              sch0='   '
            case lastkey()=-3
                save screen
                podr_0=28
                save all like podr_0 to podred
                podred()
                open_obap(loc0:=25)
                open_kpap()
                set order to 2
                total on par to kpapt field kol,dast
                use kpapt
                ramka()
                @  2,29 say '™€‚€H… H€ €’ˆ„ˆ    '
                @  4, 4 say '€’ˆ„€          H€ˆŒ…H‚€Hˆ…                 K‹ˆ—…‘’‚       ‘’‰H‘’'
                izrab()
                 dsto0=0
                 do while .not. eof()
                   part0=part
                   sele 6
                   find '&part0'
                   name0=name
                   sele 9
                  ? space(4)+subs(part,4,4)+' '+name0+' '+str(kol,j2,j3)+ ' '+str(dast,j0,j1)
                  dsto0=dsto0+dast
                   skip
                 enddo
                  ? space(46)+'----------------------------'
                  ? space(37)+'‚‘ˆ—Š'+space(15)+str(dsto0,j0,j1)
                 pech()
                 dsto0=0
                 open_obap(loc0:=25)
                 open_kpap()
                 set order to 0
                 set relation to part into obap
                 eras kpapt.dbf
                 set curs on
                 set curs off
                 part0=par
                 restore screen
            case lastkey()=-4
                 if l6='­'
                    @  6,67 say ' ‘  “ŒH†…HˆE'
                    l6='¤'
                 else
                    @  6,67 say '…‡ “ŒH†…HˆE'
                    l6='­'
                 endif
            case lastkey()=27
                   return 0
            case lastkey()=13
                  reca()
                  if ra2=0
                     rec_lock()
                       repl kpap->zena with zena2
                     rec_unlock()
                  endif

                  set cursor on
                  @ row(),col() get &cur0
                  @ 22,15 say space(50)
                  @ 23+ml0,15 say '            ‚º¢¥¤¥²¥ ¦¥« ­¨²¥ ¯°®¬¥­¨              '
                  chet()
                  store kol to kol0
                  store sch to sch00
                  store kpap->par to par0,part0,part4
                  rec_lock()
                  repl nom with str(nom0,4),mk with mk1,part with sch00+str(par,4),partp with '304'+str(part0,4),data with data0,otst with ra2
              if ra2=0
                  store kpap->zena to zena0
              else
                  repl kpap->zena with (zena2-round(zena2*ra2/100,j4)) 
              endif
                   if l6='¤'
                       repl dast with kpap->kol*kpap->zena, dsto with dast
                   else
                       repl  dsto with dast
                   endif
                   rec_unlock()
                  set cursor off
                              if kpap->kol=0.or.dsto=0
                                 del()
                               else
                                 reca()
                              endif
                      ksto0=0
                      kol0=0
                 *    ra2=0   &&  §  ´« ©² ¥«
                      re0=recno()
                      go top
                      do while .not.eof()
                          ksto0=ksto0+dast
                          kol0=kol0+kpap->kol
                          if .not. eof() ; skip ; else ; exit ; endif
                      enddo
                      go re0
                      @ 16,22 say '™  ˜ˆ”š:  K-‚'
                      @ 16,61 say '‘’-‘’'
                      @ 16,43 say kol0  pict "99999999.999"
                      @ 16,67 say ksto0 pict "999999999.99"
                      @ 21,14,24,66 box ram1
                      @ 22,15 clea to 23,65
                  keyboard chr(4)
                  set key 164 to
                  set key 177 to
                  @ 22,15 say 'F3 - ¨§¤¨°¢  ¯ °²¨¤  F4 -°®¢¥°ª  F5 -‘/…‡ ³¬­®¦.'
                  @ 23+ml0,15 say 'ENTER §  ¯°®¬¿­  ­  ¤ ­¨²¥, F9 - „®¡ ¢¿­¥ ­  ¸¨´º°'
                  return 1
            case lastkey()=-8
              *   zena2=0  ; sch00=str(val(sch00)+1,3)
                  set dele off
                  appe blank
                  del()
                  re1=recno()
                  rec_lock()
                  repl nom with str(nom0,4), part with sch00+str(par0,4),partp with '304'+str(part0,4),par with par0, data with data0
                  rec_unlock()
                  keyboard chr(1)
            case lastkey()=-40
                 set cursor on
                 proze1()
                 @  8,65 say str(ra2,5,2)
                 set  key -40 to
                 set cursor off
                 go re0
            case lastkey()=419
                 open_kpap(loc0:=1)
                 dele all
                 open_kpap()
            otherwise
                  set dele off ; set filter to
                  podr_0=28
                  save all like podr_0 to podred ; podred()
                  set curs on ; set curs off ;  clos all
                  open_obap(loc0:=26)
                  open_kpap() ; set order to 0
                  set relation to part into obap
                  set filter to par=par0
                  appe blank
                  del()
                   return 1
          endcase
                return 1
      **********************  –…„“€’€ ‘Œ…HŸ  501 ‘ 411**************
                          proc klient
             open_obap(loc0:=26) ; set order to 1
             set filter to part='411' ; go top ; dn01=trim(dn00)
             locate for subs(name,27,9)='&dn01'
                if found() ; @ 23+ml0,15 say space(51) ; part0=part ; else
         @ 23+ml0,28 say 'H¿¬  ª«¨¥­² ± ²®§¨ ³«±² ²' ; inke(2) ; go bott
                 part0='411'+str(val(subs(part,4,4))+1,4)
                  rec_lock() ; appe blank
                  repl part with part0, name with vid4+'   '+subs(dn2,1,9) , mk with '«¢'
                  rec_unlock()
                endif
            open_dobo(loc0:=17) ; find '&dn0'
                rec_lock() ; repl sch with '411' ; dast1=dsto ; rec_unlock()
            open_dpar(loc0:=17) ; find '&dn0'
            if .not. found() ; appe blank ; rec_lock()
                repl  nom with str(nom2,4), part with part0,;
                mk with '«¢', dast with dast1, data with data0 ; rec_unlock()
            endif ; set filter to
            open_arhi(loc0:=17) ; find '&dn0'
            rec_lock() ; repl dok with subs(dok,1,39)+'' ; rec_unlock()
                          return
       *         °®¶¥¤³°  §  ±² °²¨° ­¥ ­  ª« ¢¨¸¨²¥
                              proc startkey
    set key -2 to izpis ; set key -3 to ddok ; set key -4 to prikdds  && sav7
    set key -5 to pr60  ; set key -6 to gr61 ; set key -7 to r7
    set key -8 to nnom  ; set key -9 to ddok ; set key -34 to zenisme
    * set key -36 to nepr                                         && sav3
    set key -37 to obob
    set key -38 to nootst ; set key -39 to ddsizv                 && pro1 / && pro1
    set key -46 to proze1 ;

    set key 286 to amort    && Alt+" "/« ²/ amortizacii
    set key 292 to tehnol   && Alt+²/j tehnologichna karta
    set key 304 to fkt      && Alt+”/v pechat na faktura
    set key 306 to ddok     && Alt+¯/m avtomatichna prihodna operaciq

    ***   dolnite dve proceduri da se izwedat ot fkt
    * set key 171 to protokol &&   Alt+¢/l  ¯-ª®« §  ±²°®¨². ±¯°¿­ "’Š‹ N"      171
    * set key 300 to pkorder  && Alt+¾/z  prihoden kasow order


               return
       *         °®¶¥¤³°  §  ¢º§±² ­®¢¿¢ ­¥ ­  ª« ¢¨¸¨²¥
                              proc vazkey
     set key -2 to  ; set key  -3 to ; set key -4 to   &&  F3       F4          F5
     set key -5 to  ; set key  -6 to ; set key -7 to   &&  F6       F7          F8
     set key -8 to  ; set key  -9 to ; set key -34 to  &&  F9       F10         Alt+F5
     set key -35 to ; set key -36 to                   &&  Alt+F6   Alt+F7
     set key -37 to ; set key -38 to                   &&  Alt+F8   Alt+F9
     set key -39 to ; set key -46 to                   &&  Alt+F10  Alt+F11
     set key 171 to  && lt+¢/l  ¯-ª®« §  ±²°®¨². "’Š‹ N"
     set key 176 to  && prodraz  ¨/r avtomatichna operaciq za razhodi
     set key 286 to  && amort Alt+  /« ²./
     set key 292 to  &&
     set key 300 to  && Alt+²/j tehnologichna karta
     set key 306 to  && Alt+¯/m avtomatichna prihodna operaciq11
           set dele off
                              return


