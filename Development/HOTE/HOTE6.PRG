     tt0='60'
        @  4,17,20,63 box ram1
        @  5,18 clea to 19,62
        @  5,28 say 'K      …  K  –  ˆ  ˆ'
        @  8,30 prompt '1. ¥¨­¤¥ª± ¶¨¿'
        @ 10,30 prompt '2. ¥£¨±²° ¶¨¿'
        @ 12,30 prompt '3. €¤°¥±­¨ ª °²¨'
        @ 14,30 prompt '4. °.'
        @ 16,30 prompt '5. ƒ°³¯®¢ ¯¥· ² ­   ¤°.ª °²¨'
         menu to v3
        do case
           case lastkey()=27
           return
           case v3=1
                l0=1
                @ 16,27,18,48 box ram1
                @ 17,29 say '¥¨­¤¥ª± ¶¨¿ '
                @ 17,42 prompt 'H…'
                @ 17,45 prompt '„€'
                menu to l0
                read
            if l0=2
               podr_0=40
               save all like podr_0 to podred
               podred()
            endif
           case v3=2
             sele 1
             use hotel inde nomi,sthi
   do while .t.
        nom0=0
        ramka()
        @ 23,19 say 'F3-¨§«¨±²¢  ­®¬¥° ²  ­   ¤°¥±­¨²¥ ª °²¨  F4'
        set key -2 to spis
        set key -3 to vzemime
        @  2,30 say ' … ƒ ˆ ‘ ’  € – ˆ Ÿ '
        @  3,29 say '-----------------------'
        @  4, 2 say 'HŒ… € €„…‘H€ K€’€:' get nom0 pict '999999'
        read
        set key -2 to
           if lastkey()=27
               set key -2 to
               set cent off
              return
           endif
        nom1=str(nom0,6)
        find "&nom1"
          if .not.found()
              @ 23,15 say space(50)
              @ 23,21 say '  ƒ°¥¸¨²¥ ­®¬¥°  ­   ¤°¥±­ ²  ª °²   '
              pauza()
              loop
          endif
         set cent on
         staj0=val(staj)
         egn0 =egn
         name0=name
         prez0=prez
         fami0=fami
         lnam0=lnam
         lpre0=lpre
         lfam0=lfam
         razd0=razd
         grad0=grad
         obla0=obla
         darz0=darz
         kola0=kola
        dexpi0=dexpi
         pnom0=pnom
         pdat0=pdat
         pmvr0=pmvr
         adr0 =adr
         graz0=graz
         zel0 =zel
         dkpp0=dkpp
         kpp0 =kpp
         pris0=pris
         pris1=pris
         zami0=zami
         zami1=zami
         plat0=plat
         pol0=pol
         kt0=kt
         v0=v
         set key 161 to
         set key 183 to
         if v0='1'
            @  2,78 say chr(253)
         endif

        @  4,34 say '‘’€Ÿ N:'
        @  4,49 say '’K” „/H'
        @  4,60 say '…ƒH:'
        @  8, 2 say '‹€’'
        @  6, 2 say 'ˆŒ…'
        @  6,25 say '…‡ˆŒ…'
        @  6,52 say '”€Œˆ‹ˆŸ'
        @ 10, 2 say '„…H H€'
        @ 10,22 say '‚ ƒ.‘.'
        @ 10,51 say '‹€‘’'
        @ 12, 2 say '„š†€‚€'
        @ 12,28 say '€‘’ N'
        @ 12,57 say 'ˆ‡„€„…H H€'
        @ 14, 2 say 'ˆ‡„€„…H ’'
        @ 14,32 say '‚€‹ˆ„…H „'
        @ 14,54 say '‚‹Ÿ‡š‹ H€ „€’€'
    *   @ 14,57 say 'N H€ K‹€'
        @ 16,33 say '€„…‘'
        @ 16, 2 say '‚‹Ÿ‡š‹ …‡ K'
        @ 18, 2 say 'ƒ€†„€H‘’‚'
        @ 18,33 say '–…‹ H€ …ˆ‚€‚€H…’'
        @ 20, 2 say '„€’€ H€ …ƒ.'
        @ 20,27 say '‡€ŒˆH€‚€ H€'
        @ 20,51 say '‹ Œ/†:'
        @ 20,64 say '‹€™€H… /‘:'
        @  4,42 get staj0 pict '9999'
        @  4,57 get kt0 valid kt0='„'.or.kt0=' '
        @  4,65 get egn0
        @  6, 6 get name0
        @  6,33 get prez0
        @  6,60 get fami0
        @  8, 6 get lnam0
        @  8,33 get lpre0
        @  8,60 get lfam0
        @ 10,11 get razd0
        @ 10,30 get grad0
        @ 10,58 get obla0
        @ 12,10 get darz0
        @ 12,38 get pnom0
        @ 12,68 get pdat0
        @ 14,13 get pmvr0
        @ 14,43 get dexpi0
        @ 14,68 get dkpp0
     *  @ 14,68 get kola0
        @ 16,18 get kpp0
        @ 16,38 get adr0
        @ 18,14 get graz0
        @ 18,54 get zel0
        @ 20,15 get pris0
        @ 20,39 get zami0
        @ 20,60 get pol0 valid pol0='Œ'.or.pol0='†'
        @ 20,77 get plat0 valid plat0=''.or.plat0='‘'
        read


           if lastkey()=27
           *  loop
           endif
       sele 4
       use stat inde stdi
          sd0=' '
          set date ansi
          sd0=str(staj0,4)+dtoc(pris1)
          set date brit
          find "&sd0"
       if found()
         do while staj=str(staj0,4).and.dati < zami1
              repl dni with '±'
              if .not.eof()
                 skip
              else
                 exit
              endif
         enddo
          *  @ 23,20 say space(46)
          *  set date brit
          *   if dni0='§'.or.dni0='¯'.or.dni0='°'
          *      if lastkey()=27
          *        sele 1
          *        loop
          *      endif
          *   endif
          set date ansi
          sd0=str(staj0,4)+dtoc(pris0)
          set date brit
          find "&sd0"
        if found()
         do while staj=str(staj0,4).and.dati < zami0
              repl dni with '§'
              if .not.eof()
                 skip
              else
                 exit
              endif
         enddo
        endif
       else
         @ 23,15 say space(50)
         @ 23,25 say 'H¿¬ ²e ±² ¿ §  ²®§¨ ¯¥°¨®¤'
         pauza()
         sele 1
         loop
       endif
       set cent on
       sele 2
       use stai inde stii
       set filter to nom=str(nom0,6)
       go top
       do while .not.eof().and.nom=str(nom0,6)
          if ((.not.pris=pris0).or.(.not.zami=zami0)).and.nom=str(nom0,6)
              repl  pris with pris0, zami with zami0  for nom=str(nom0,6).and.(.not.eof())
              if admi=' '
                 repl admi with admi0 for nom=str(nom0,6).and.(.not.eof())
              endif
          endif
              if .not.eof()
                 skip
              else
                 exit
              endif
       enddo
       set filter to
           sele 1
          if ((.not.pris=pris0).or.(.not.zami=zami0)).and.nom=str(nom0,6)
              repl admi with admi0
          endif
       sele 1
       repl staj with str(staj0,4), egn with egn0, name with ;
       name0, prez with prez0,fami with fami0, lnam with lnam0, lpre with ;
       lpre0, lfam with lfam0, razd with razd0, grad with grad0, obla with obla0, darz with darz0
       repl pnom with pnom0, pdat with pdat0, pmvr with pmvr0,;
       adr with adr0, graz with graz0, zel with zel0, dkpp with dkpp0, kt with kt0
       repl kola with kola0, dexpi with dexpi0,pris with pris0, zami with zami0,plat with plat0, v with v0,pol with pol0
       set cent off
       if empty(lnam)
          l0=1
       else
          l0=2
       endif
                 @ 23,15 say space(50)
                 @ 23,20 say '…—€’ €„.K€’€'
                 @ 23,39 prompt 'š‹ƒ€ˆ'
                 @ 23,56 prompt '—“†„…H…–'
                 menu to l0
                 adrkart()
           if lastkey()=27
                set cent off
                loop
           endif
       set cent off
   enddo
           case v3=3
          sele 2
          use stai inde snoi,stii,schi
        ramka()
    do while .t.
        @  2,25 say '…HŒ…‚€H… H€ €„…‘Hˆ K€’ˆ'
        @  3,24 say '-------------------------------'
        set filter to
        set rela to
        spis1()
        l0=2
        @ 23,28 say '†¥« ¥²¥ «¨ ¯°e­®¬¥°®¢ ­¥'
        @ 23,54 prompt '„€'
        @ 23,57 prompt 'H…'
        menu to l0

         if l0=1
            br0=1
            read
             if br0=0.or.lastkey()=27
                return
             endif
            sele 2
            use stai inde snoi,stii,schi
            sele 1
            use hotel inde nomi,sthi
           do while .not. eof()
               nom0=nom
               pris0=pris
               zami0=zami
               sele 2
               set filter to pris=pris0.and.zami=zami0
               repl all nom with nom0
               sele 1
               skip
               br0=br0+1
           enddo
         else
           return
         endif
    enddo
           case v3=4
            ramka()
        l0=2
        @  2,25 say '†…‹€…’… ‹ˆ €’K€          '
        @  3,24 say '-----------------------------'
        @  2,47 prompt '„€'
        @  2,50 prompt 'H…'
        menu to l0
              if l0=2
                 return
              endif
            !cd c:\hh00
            nom1=0
          dr0=go0+dt0
                sele 1
             *  use hotel inde sthi,nomi
                use c:\&dr0\hotel inde c:\&dr0\nomi,c:\&dr0\sthi
                set filter to v='1'
                go top
          do while v='1'
            re0=recno()
          * @ 11,25 say '‚º¢¥¤¥²¥         ­®¬¥° :' get nom1  pict '999999'
          * read
          *  if nom1=0.or.lastkey()=27
          *     return
          *  endif
          *    store str(nom1,6) to nom1
               nom1=nom
             *  sele 1
             *  use hotel inde sthi,nomi
             *  use c:\&dr0\hotel inde c:\&dr0\nomi,c:\&dr0\sthi
          *     find "&nom1"
          *     if found()



                    staj0 = staj
                    egn0  = egn
                    name0 = name
                    prez0 = prez
                    fami0 = fami
                    lnam0 = lnam
                    lpre0 = lpre
                    lfam0 = lfam
                    razd0 = razd
                    grad0 = grad
                    obla0 = obla
                    darz0 = darz
                    pnom0 = pnom
                    pdat0 = pdat
                    pmvr0 = pmvr
                    adr0  = adr
                    graz0 = graz
                    zel0  = zel
                    kpp0  = kpp
                    dkpp0 = dkpp
                    kola0 = kola
                   dexpi0 = dexpi
                    pris0 = pris
                    zami0 = zami
                    plat0 = plat
                    pol0 =  pol
                     tfk0 = kt
                    admi0 = admi
                    repl v with ' '
          *     else
          *     endif
                sele 1
                use hotel inde nomi,sthi
       set cent on
       sele 1
       go bott
       skip -300
       locate rest for noms=nom1
     if .not. found()
       go bott
       store str(val(nom)+1,6) to nom2
       appe blank
       repl noms with nom1, nom with nom2, staj with staj0, egn with egn0, name with ;
       name0, prez with prez0,fami with fami0, lnam with lnam0, lpre with ;
       lpre0, lfam with lfam0, razd with razd0, grad with grad0, obla with obla0, darz with darz0
       repl pnom with pnom0, pdat with pdat0, pmvr with pmvr0,;
       adr with adr0, graz with graz0, zel with zel0, dkpp with dkpp0,kpp with kpp0
       repl kola with kola0,dexpi with dexpi0,pris with pris0, zami with zami0,plat with plat0,kt with tfk0, admi with admi0,pol with pol0
       set cent off
     endif
     * store val(nom1) to nom1
                sele 1
                use c:\&dr0\hotel inde c:\&dr0\nomi,c:\&dr0\sthi
                set filter to v='1'
                go top
          go re0
          if .not. eof()
             skip
          else
              !cd c:\&dr0
              return
          endif
          enddo
              !cd c:\&dr0
           case v3=5
        store 0 to nom2,nom3
        l0=1
        ramka()
        @  2,26 say 'ƒ“‚ …—€’ H€ €„…‘Hˆ K€’ˆ'
        @  3,25 say '-------------------------------'
        @  6,22 say '’ HŒ… :' get nom2 pict '999999'
        @  6,42 say '„ HŒ… :' get nom3 pict '999999'
        spis1()
        read
                 menu to l1
             if nom2=0.or.nom3=0.or.lastkey()=27
                return
             endif
             sele 1
             use hotel inde nomi,sthi
        nom4=str(nom2,6)
        find "&nom4"
          if .not.found()
              @ 23,15 say space(50)
              @ 23,21 say '  ƒ°¥¸¨²¥ ­®¬¥°  ­   ¤°¥±­ ²  ª °²   '
              pauza()
              return
          endif
          izrab()
           if ekpr0=2
           *  sbit1='M'+sbit0
             ?? norm0
              set marg to 0
           endif
             set cent on
             do while nom2 <= val(nom).and.val(nom) <= nom3
         nom1=nom
         staj0=val(staj)
         egn0 =egn
         name0=name
         prez0=prez
         fami0=fami
         lnam0=lnam
         lpre0=lpre
         lfam0=lfam
         razd0=razd
         grad0=grad
         obla0=obla
         darz0=darz
         kola0=kola
        dexpi0=dexpi
         pnom0=pnom
         pdat0=pdat
         pmvr0=pmvr
         adr0 =adr
         graz0=graz
         zel0 =zel
         dkpp0=dkpp
         kpp0 =kpp
         pris0=pris
         pris1=pris
         zami0=zami
         zami1=zami
         plat0=plat
         pol0=pol
         kt0=kt
         v0=v
               if lnam0=space(18)

*     if ekpr0=2
*          ?? norm0
*           store '1' to  ll0,ll3
*          set marg to 2
*     endif
*   ?
*   ?
*   ?
*   ?
*   ? '                       •’…‹ "K€‹" ‘‹.Ÿƒ'                                                       +SPACE(49)+'                       •’…‹ "K€‹" ‘‹.Ÿƒ'
*   ?                                                                                                      +SPACE(18)
*   ? '                 €„…‘H€ K€’€ ‡€ ‡€ˆ‘‚€HE ‚ •’…‹  '+nom1                                         +SPACE(35)+'                 €„…‘H€ K€’€ ‡€ ‡€ˆ‘‚€HE ‚ •’…‹  '+nom1
* ? 'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÏ'                         +SPACE(18)+'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÏ'
* ? 'Ó      '+name0+'    '+prez0+'    '+fami0+'      Ó'                                                    +SPACE(18)+'Ó      '+name0+'    '+prez0+'    '+fami0+'      Ó'
* ? 'Ó             /¨¬¥/               /¯°¥§¨¬¥/             /´ ¬¨«¨¿/          Ó'                         +SPACE(18)+'Ó             /¨¬¥/               /¯°¥§¨¬¥/             /´ ¬¨«¨¿/          Ó'
* ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'                         +SPACE(18)+'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'
* ? 'Ó®¤¥­( ) ­  '+dtoc(razd0)+space(52)+'Ó'                                                              +SPACE(18)+'Ó®¤¥­( ) ­  '+dtoc(razd0)+space(52)+'Ó'
* ? 'Ó¢ £°.(±.) '+grad0+'                 ®¡« ±² '+obla0+'Ó'                                               +SPACE(18)+'Ó¢ £°.(±.) '+grad0+'                 ®¡« ±² '+obla0+'Ó'
* ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'                         +SPACE(18)+'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'
* ? 'Ó ±¯®°² N '+pnom0+'¨§¤ ¤¥­ ®² '+pmvr0+'­  ¤ ²  '+dtoc(pdat0)+'Ó'                          +SPACE(18)+'Ó ±¯®°² ‘ '+ps0+ ' N '+pnom0+'¨§¤ ¤¥­ ®² '+pmvr0+'­  ¤ ²  '+dtoc(pdat0)+'Ó'
* ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'                         +SPACE(18)+'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'
* ? 'Ó†¨¢³¹( ) ¢ £°.(±.) '+adr0+'               Ó'                                                         +SPACE(18)+'Ó†¨¢³¹( ) ¢ £°.(±.) '+adr0+'               Ó'
* ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'                         +SPACE(18)+'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'
* ? 'Ó•®²¥« '+'"K€‹"  ‘‹.Ÿƒ'+'       ±² ¿ '+str(staj0,4)+'        '+'…ƒH  '+egn0+'             Ó'      +SPACE(18)+'Ó•®²¥« '+'"K€‹"  ‘‹.Ÿƒ'+'       ±² ¿ '+str(staj0,4)+'        '+'…ƒH  '+egn0+'             Ó'
* ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'                         +SPACE(18)+'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'
* ? 'Ó                                                                          Ó'                         +SPACE(18)+'Ó                                                                          Ó'
* ? 'Ó„ ²  '+dtoc(pris0)+space(12)+'®¤¯¨± ­  °¥£¨±²° ²®°  ........................Ó'                      +SPACE(18)+'Ó„ ²  '+dtoc(pris0)+space(12)+'®¤¯¨± ­  °¥£¨±²° ²®°  ........................Ó'
* ? 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ'                         +SPACE(18)+'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ'
* ?

                  else
      if pol0='Œ'
         pol1='M'
      else
         pol1='F'
      endif

      if ekpr0=2
           b1=31
           ?? norm1
            store '1' to  ll0,ll3
           set marg to 2
      endif



   ?'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÏ'                +SPACE(10)+'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÏ'
   ? 'Ó€„…‘H€ K€’€ H€ —…†„…H…–: '+nom1+'Ó‹H—/…ƒH: '+egn0+'      Ó  ‹  Ó  SEX  Ó'               +SPACE(10)+ 'Ó€„…‘H€ K€’€ H€ —…†„…H…–: '+nom1+'Ó‹H—/…ƒH: '+egn0+'      Ó  ‹  Ó  SEX  Ó'
   ? 'ÓREGISTRATION CARD OF FOREIGNER   ÓPersonal number             Ó       Ó       Ó'               +SPACE(10)+ 'ÓREGISTRATION CARD OF FOREIGNER   ÓPersonal number             Ó       Ó       Ó'
   ? 'Óƒ° ¦¤ ­±²¢®                      ÓCitizen                     Ó   '+pol0+ '   Ó   '+pol1+'   Ó'+SPACE(10)+ 'Óƒ° ¦¤ ­±²¢®                      ÓCitizen                     Ó   '+pol0+ '   Ó   '+pol1+'   Ó'
   ? 'ÓNationaly: '+darz0+'       Ó                            Ó       Ó       Ó'                     +SPACE(10)+ 'ÓNationaly: '+darz0+'       Ó                            Ó       Ó       Ó'
   ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÔ'               +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÔ'
   ? 'Ó          '+name0+'    '+prez0+'    '+fami0+'      Ó'                                          +SPACE(10)+ 'Ó          '+name0+'    '+prez0+'    '+fami0+'      Ó'
   ? 'Ó          '+lnam0+'    '+lpre0+'    '+lfam0+'      Ó'                                          +SPACE(10)+ 'Ó          '+lnam0+'    '+lpre0+'    '+lfam0+'      Ó'
   ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'               +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'
   ? 'Ó®¤¥­( ) '+space(69)+'Ó'                                                                       +SPACE(10)+ 'Ó®¤¥­( ) '+space(69)+'Ó'
   ? 'ÓDate and place off birth: '+dtoc(razd0)+space(42)+'Ó'                                          +SPACE(10)+ 'ÓDate and place off birth: '+dtoc(razd0)+space(42)+'Ó'
   ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'               +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'
   ? 'Ó„®ª³¬¥­² §  '+space(37)+'ˆ§¤ ¤¥­ ­  '+space(18)+'Ó'                                            +SPACE(10)+ 'Ó„®ª³¬¥­² §  '+space(37)+'ˆ§¤ ¤¥­ ­  '+space(18)+'Ó'
   ? 'Ó§  ± ¬®«¨·­®±²'+space(35)+'Date of issue : '+dtoc(pdat0)+'   Ó'                                +SPACE(10)+ 'Ó§  ± ¬®«¨·­®±²'+space(35)+'Date of issue : '+dtoc(pdat0)+'   Ó'
   ? 'ÓIdentity document: '+pnom0+space(15)+'‚ «¨¤¥­ ¤®                   Ó'                          +SPACE(10)+ 'ÓIdentity document: '+pnom0+space(15)+'‚ «¨¤¥­ ¤®                   Ó'
   ? 'Ó'+space(49)+'Date of expiry: '+dtoc(dexpi0)+'   Ó'                                             +SPACE(10)+ 'Ó'+space(49)+'Date of expiry: '+dtoc(dexpi0)+'   Ó'
   ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'               +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'
   ? 'Ó–¥« ­  ¯°¨¡¨¢ ¢ ­¥²® '+space(57)+'Ó'                                                           +SPACE(10)+ 'Ó–¥« ­  ¯°¨¡¨¢ ¢ ­¥²® '+space(57)+'Ó'
   ? 'ÓPurpose of stay : '+zel0+space(36)+'Ó'                                                         +SPACE(10)+ 'ÓPurpose of stay : '+zel0+space(36)+'Ó'
   ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'               +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'
 * ? 'Ó€¤°¥± ¡« ±² '+space(36)+'Ó'+space(28)+'Ó'                                                     +SPACE(10)+ 'Ó€¤°¥± ¡« ±² '+space(36)+'Ó'+space(28)+'Ó'
 * ? 'ÓAddress Region: '+space(33)+'Ó'+space(28)+'Ó'                                                  +SPACE(10)+ 'ÓAddress Region: '+space(33)+'Ó'+space(28)+'Ó'
 * ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ                            Ó'               +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ                            Ó'
 * ? 'Ó¡¹¨­ '+space(43)+'Ó'+space(28)+'Ó'                                                            +SPACE(10)+ 'Ó¡¹¨­ '+space(43)+'Ó'+space(28)+'Ó'
 * ? 'ÓMunicipality: '+space(35)+'Ó'+space(28)+'Ó'                                                    +SPACE(10)+ 'ÓMunicipality: '+space(35)+'Ó'+space(28)+'Ó'
 * ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ                            Ó'               +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ                            Ó'
 * ? 'Óƒ°./±¥«®'+space(41)+'Ó'+space(28)+'Ó'                                                          +SPACE(10)+ 'Óƒ°./±¥«®'+space(41)+'Ó'+space(28)+'Ó'
 * ? 'ÓTown/Village: '+space(35)+'Ó'+space(28)+'Ó'                                                    +SPACE(10)+ 'ÓTown/Village: '+space(35)+'Ó'+space(28)+'Ó'
 * ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ                            Ó'               +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ                            Ó'
 * ? 'Ó†.ª.'+space(45)+'Ó'+space(28)+'Ó'                                                              +SPACE(10)+ 'Ó†.ª.'+space(45)+'Ó'+space(28)+'Ó'
 * ? 'ÓHousing estate: '+space(33)+'Ó'+space(28)+'Ó'                                                  +SPACE(10)+ 'ÓHousing estate: '+space(33)+'Ó'+space(28)+'Ó'
 * ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ                            Ó'               +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ                            Ó'
 * ? 'Ó«®ª'+ space(45)+'Ó'+space(28)+'Ó'                                                             +SPACE(10)+ 'Ó«®ª'+ space(45)+'Ó'+space(28)+'Ó'
 * ? 'ÓHousing estate: '+space(33)+'Ó'+space(28)+'Ó'                                                  +SPACE(10)+ 'ÓHousing estate: '+space(33)+'Ó'+space(28)+'Ó'
 * ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ                            Ó'               +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ                            Ó'
 * ? 'Ó‚µ.                E².           €¯.             Ó'+space(28)+'Ó'                              +SPACE(10)+ 'Ó‚µ.                E².           €¯.             Ó'+space(28)+'Ó'
 * ? 'ÓEntrance           Floor:        Flat:           Ó'+space(28)+'Ó'                              +SPACE(10)+ 'ÓEntrance           Floor:        Flat:           Ó'+space(28)+'Ó'
 * ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'+space(28)+'Ó'                              +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'+space(28)+'Ó'
 * ? 'Ó®¤¯¨± ­  ·³¦¤¥­¥¶ '+space(30)+'Ó'+space(28)+'Ó'                                               +SPACE(10)+ 'Ó®¤¯¨± ­  ·³¦¤¥­¥¶ '+space(30)+'Ó'+space(28)+'Ó'
 * ? 'ÓForeigner`s signature '+space(27)+'Ó'+space(28)+'Ó'                                            +SPACE(10)+ 'ÓForeigner`s signature '+space(27)+'Ó'+space(28)+'Ó'
 * ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ                            Ó'               +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ                            Ó'
 * ? 'Ó„®¬ ª¨­'+space(42)+'Ó'+space(28)+'Ó'                                                           +SPACE(10)+ 'Ó„®¬ ª¨­'+space(42)+'Ó'+space(28)+'Ó'
 * ? 'Ó(¨¬¥­ ): '+space(40)+'Ó'+space(28)+'Ó'                                                         +SPACE(10)+ 'Ó(¨¬¥­ ): '+space(40)+'Ó'+space(28)+'Ó'
 * ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'               +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'
   ? 'Ó Ó Œ Ó † Ó …ƒH/‹H— '+space(30)+'Ó „ ²  ƒK   '+dtoc(dkpp0)+'     Ó'                           +SPACE(10)+ 'Ó Ó Œ Ó † Ó …ƒH/‹H— '+space(30)+'Ó „ ²  ƒK   '+dtoc(dkpp0)+'     Ó'
   ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'+' ƒK '+kpp0+'       Ó'                   +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'+' ƒK '+kpp0+'       Ó'
   ? 'Ó®¤¯¨±             '+space(30)+'Ó °¨±²¨£­ «  '+dtoc(pris0)+'     Ó'                           +SPACE(10)+ 'Ó®¤¯¨±             '+space(30)+'Ó °¨±²¨£­ «  '+dtoc(pris0)+'     Ó'
   ? 'Ó­  ¤®¬ ª¨­            '+space(27)+'Ó °¥±²®© '+str(zami0-pris0,5)+'  ¤­¨         Ó'            +SPACE(10)+ 'Ó­  ¤®¬ ª¨­            '+space(27)+'Ó °¥±²®© '+str(zami0-pris0,5)+'  ¤­¨         Ó'
   ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ ‡ ¬¨­ ¢     '+dtoc(zami0)+'     Ó'          +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ ‡ ¬¨­ ¢     '+dtoc(zami0)+'     Ó'
   ? 'Ó•®²¥«,             '+space(30)+'Ó'+space(28)+'Ó'                                               +SPACE(10)+ 'Ó•®²¥«,             '+space(30)+'Ó'+space(28)+'Ó'
   ? 'Ó¬¿±²® §  ¯®¤±«®­:  "K€‹"'+'       ‘² ¿ '+str(staj0,4)+'       Ó'+space(28)+'Ó'               +SPACE(10)+ 'Ó¬¿±²® §  ¯®¤±«®­:  "K€‹"'+'       ‘² ¿ '+str(staj0,4)+'       Ó'+space(28)+'Ó'
   ? 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'               +SPACE(10)+ 'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÔ'
   ? 'Ó®¤¯¨±             '+space(30)+'Ó'+space(28)+'Ó'                                               +SPACE(10)+ 'Ó®¤¯¨±             '+space(30)+'Ó'+space(28)+'Ó'
   ? 'Ó­  °¥£¨±²° ²®° :   '+space(30)+'Ó'+space(28)+'Ó'                                               +SPACE(10)+ 'Ó­  °¥£¨±²° ²®° :   '+space(30)+'Ó'+space(28)+'Ó'
   ? 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ'               +SPACE(10)+ 'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ'
   ? ''
    b0=31
    do spri
               endif
          if .not. eof()
             skip
          else
              !cd c:\&dr0
              return
          endif

             enddo
   pech()
             set cent off
           endcase

       ************** ‹¨±²¨ ±¯¨±ºª  ­   ¤°¥±­¨²¥ ª °²¨ **************
                           proc spis
                save screen
                set key -2 to
                sele 1
                use hotel inde sthi,nomi
                set filte to date0-25 < pris .and.  zami < date0+25
                go bott
                skip -6
                declare fiel[5]
                fiel[1]='nom'
                fiel[2]='staj'
                fiel[3]='pris'
                fiel[4]='zami'
                fiel[5]='admi'
                declare imem[5]
                imem[1]='HŒ…'
                imem[2]='‘’€Ÿ '
                imem[3]='ˆ‘’ˆƒ€ '
                imem[4]='‡€ŒˆH€‚€ '
                imem[5]='€„Œ.'
                @ 11,19,21,60 box ram1
                dbedit(12,20,20,59,fiel,"",'',imem,'Í','Ó')
                nom0=val(nom)
                set key -2 to spis
                set filter to
                use hotel inde nomi,sthi
                restore screen
                           return

