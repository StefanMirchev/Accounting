
      sele 1
      use hotel inde nomi, sthi
      store date0 to pris0,zami0,razd0,pdat0,dkpp0,dexpi0
   do while .t.
        go bott
        if empty(nom)
           dele
           pack
        endif
        nom0=val(nom)+1
     *  store ctod('') to razd0,pdat0,dkpp0
        store space(1) to plat0,kt0,v0,pol0
        store 0  to staj0
        store space(10) to kola0
        store space(13) to egn0
        store space(15) to darz0,pnom0
        store space(20) to grad0,obla0
        store space(18) to name0,prez0,fami0,lnam0,lpre0,lfam0,pmvr0,graz0
        zel0=' ’“ˆ‡šŒ'+space(16)
        store space(40) to adr0
        kpp0='‹…’ˆ™… “ƒ€‘'
        ramka()
        set cent on
        set date brit
       @ 21,14,24,66 box ram1
       @ 22,15 clea to 23,65
        @ 22,18 say 'F1-®¯°¥¤¥«¿ ¤º°¦ ¢  F2-¤ ²  ­  ¢ «¨¤­®±² ¯ ±¯.'
        @ 23,18 say 'F3-¢§¥¬  ¤ ­­¨²¥ ¯® ¢º¢¥¤¥­   ¤°¥±­  ª °²   F4'
    *   set key -1 to dtpas
        SETKEY (-1, {|_XOC1,_XOC2,_XOC3| HELP (_XOC1, _XOC2, _XOC3)})
        set key -2 to spis1
        set key -3 to vzemime &&   ¤®¡ ¢¿ ¢²®°  ª °² 
        @  2,30 say ' … ƒ ˆ ‘ ’  € – ˆ Ÿ '
        @  3,29 say '-----------------------'
        @  4, 2 say 'HŒ… € €„…‘H€ K€’€: '+str(nom0,6)
        @  4,34 say '‘’€Ÿ N:' get staj0 pict '9999'
        read
        set key -2 to
           if lastkey()=27
                set key -2 to
                exit
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
               exit
           endif
       store str(nom0,4) to nom1
       sele 4
       use stat inde stdi
          store 0 to x0,sd0
          set date ansi
          sd0=str(staj0,4)+dtoc(pris0+x0)
          find "&sd0"
       if found()
         dni0='±'
         @ 23,15 say space(50)
         do while dati < zami0+1
                 set date brit
                 if dni='§'.or.dni='¯'
                    dni0='§'
                    @ 23,25 say '‘² ¿²  ¥ § ¥²  ­  '+dtoc(dati)
                    pauza()
                 endif
                 if dni='°'
                    dni0='°'
                    @ 23,22 say '‘² ¿²  ¥ °¥§¥°¢¨° ­  ­  '+dtoc(dati)
                     pauza()
                 endif
              x0=x0+1
                 set date ansi
              skip
                 if lastkey()=27
                    exit
                 endif
         enddo
          @ 23,15 say space(50)
          @ 23,18 say 'F3 - ¢§¥¬  ¤ ­­¨²¥ ¯® ¢º¢¥¤¥­   ¤°¥±­  ª °² '
          set date brit
              if dni0='§'.or.dni0='¯'.or.dni0='°'
                 if lastkey()=27
                   sele 1
                   loop
                 endif
              endif
          store 0 to x0,sd0
          set date ansi
          sd0=str(staj0,4)+dtoc(pris0+x0)
          find "&sd0"
          if found()
             do while dati < zami0
                  repl dni with '§'
                  x0=x0+1
                  skip
             enddo
          endif
          set date brit
       else
         @ 23,25 say 'H¿¬ ²e ±² ¿ §  ²®§¨ ¯¥°¨®¤'
         pauza()
         sele 1
         loop
       endif
       sele 1
       appe blank
       repl nom with str(nom0,6), staj with str(staj0,4), egn with egn0, name with ;
       name0, prez with prez0,fami with fami0, lnam with lnam0, lpre with ;
       lpre0, lfam with lfam0, razd with razd0, grad with grad0, obla with obla0, darz with darz0
       repl pnom with pnom0, pdat with pdat0, pmvr with pmvr0,kt with kt0,;
       adr with adr0, graz with graz0, zel with zel0, dkpp with dkpp0,kpp with kpp0,;
       kpp with kpp0, kola with kola0, dexpi with dexpi0, pris with pris0, zami with zami0, admi with admi0,plat with plat0, v with v0,pol with pol0
         @ 23,16 say space(41)
       if empty(lnam)
          l0=1
       else
          l0=2
       endif
                 @ 23,20 say '…—€’ €„.K€’€'
                 @ 23,39 prompt 'š‹ƒ€ˆ'
                 @ 23,56 prompt '—“†„…H…–'
                 menu to l0
                 adrkart()
           set cent off
           if lastkey()=27
               loop
           endif
   enddo


       ************** ‹¨±²¨ ±¯¨±ºª  ­   ¤°¥±­¨²¥ ª °²¨ **************
                           proc spis1
                re0=recno()
                save screen
                set key -2 to
                sele 1
                use hotel inde nomi
                go bott
                skip -6
                declare fiel[6]
                fiel[1]='nom'
                fiel[2]='staj'
                fiel[3]='name'
                fiel[4]='fami'
                fiel[5]='pris'
                fiel[6]='zami'
                declare imem[6]
                imem[1]='K€. N'
                imem[2]='‘’€Ÿ'
                imem[3]='  ˆ Œ … '
                imem[4]=' ”€Œˆ‹ˆŸ '
                imem[5]='ˆ‘’ˆƒ€'
                imem[6]='‡€ŒˆH€‚€'
                @ 11, 6,21,73 box ram1
                dbedit(12, 7,20,72,fiel,"pfunk1",'',imem,'Í','Ó')
                egn0 =egn
                kt0=kt
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
                plat0=plat
                pol0=pol
                store val(nom) to nom2
                set key -2 to spis1
           *    go re0
           *    store val(nom) to nom2
                restore screen
                           return
       ************** „®¡ ¢¿ ª °²  **********************************
                       func vzemime
                       set key -3 to  &&   ¤®¡ ¢¿ ¢²®°  ª °² 
                            save screen
                            @  1,67, 3,79 box ram1
                            @  2,68 clea to  2,78
                            do case
                               case v0=' '
                                    @  2,69 say ' ‚‡…Œ€H…'
                                    i0=inkey(3)
                                    v0='1'
                                    restore screen
                                    @  2,78 say chr(253)
                               case v0='1'
                                    @  2,69 say '’K€‡‚€H…'
                                    i0=inkey(3)
                                    v0=' '
                                    restore screen
                                    @  2,78 say ' '
                            endcase
                       set key -3 to vzemime && ¤®¡ ¢¿ ¢²®°  ª °² 
                       return

       ************** „ ²  ­  ¢ «¨¤­®±² ­  ¯ ±¯®°²   ****************
        *                   proc dtpas
        *         *         set date ansi
        *               *   dexpi0=ctod((subs(dtoc(pdat0),1,6)+str(year(pdat0)+10,4))
        *               *   dexpi0=ctod(subs(dtoc(pdat0),1,6)+str(year(pdat0)+10,4))
        *           store ctod(subs(dtoc(pdat0),1,6)+str(year(pdat0)+10,4)) to dexpi0
        *                   set date brit
        *                   ?  dexpi0
        *                 wait '222222222222222222'
        *                   return
