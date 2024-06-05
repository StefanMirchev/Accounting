   tt0='20'
     sele 1
     use hotel inde nomi,sthi
     sele 2
     use stai inde stii,snoi,schi
     sele 3
     use \hlp\job\uslu inde \hlp\job\ussh
     sele 4
     use stat inde dist,stdi
*  set dele on
   data0=substr(dtoc(date0),4,5)
   store 0 to v2
   @  4,17,20,63 box ram1
   @  5,18 clea to 19,62
   @  5,30 say '‘‹“†‚€H…  ‘’€ˆ'
   @  7,28 prompt '1. • ° ª²¥°¨±²¨ª  ­  ±² ¿'
   @  9,28 prompt '2. “±«³£¨ ¯® ±² ¨'
   @ 11,28 prompt '3. ²ª°¨¢ ­¥ ¯¥°¨®¤ ­  ±² ¿'
   @ 13,28 prompt '4. ¥§¥°¢ ¶¨¿ ­  ±² ¿'
   @ 15,28 prompt '5. ‘¢®¡®¤­¨ ±² ¨'
   @ 17,28 prompt '6. ‡ ¥²¨ ±² ¨'
   @ 19,28 prompt '7. ‘² ¨ §  § °¥¦¤ ­¥'
   read
     menu to v2
      if lastkey()=27
        clos all
        set dele off
      set key -2 to
        return
      endif
   do case
      case v2=1
   sele 1
   sch1='1'
   do while .t.
        stajo=0
        ramka()
        @  2,30 say '•€€K’…ˆ‘’ˆK€ H€ ‘’€Ÿ'
        @  3,29 say '------------------------'
        @  6,30 say 'HŒ… € ‘’€Ÿ: ' get staj0 pict '9999'
        read
           if lastkey()=27.or.staj0=0
              set filter to
              return
           endif
             st0=str(staj0,4)+'000'
             hara0 = '  ‚ˆ„‚… •€€K’…ˆ‘’ˆKˆ'
             save screen
             set key -8 to xarakt
             sele 2
             find "&st0"
               if .not. found()
             *
             *    appe blank
             *    repl staj with str(staj0,4), sch with '000'
               endif
             set relation to sch into uslu
             set filter to staj=str(staj0,4).and.subs(sch,1,1)=sch1
             go top
                  declare fiel[2]
                  fiel[1]='sch'
                  fiel[2]='uslu->hara'
                  declare imem[2]
                  imem[1]='HŒ. H€ ‘’€Ÿ'
                  imem[2]='  •€€K’…ˆ‘’ˆK€ H€ ‘’€Ÿ'
                  @ 11,13,20,67 box ram1
                  dbedit(12,14,19,66,fiel,"pfunk",' ',imem,'Í','Ó')
                  set key -8 to
                  sele 1
   enddo
      case v2=2
   set cent on
   sele 1
   sch1='2'
   do while .t.
        staj0=0
        ramka()
        @ 23,22 say 'F3 - ±¯¨±ºª ­  ³±«³£¨²¥ ­  ±² ¿² '
        set key -2 to spis2
        @  2,30 say '“  ‘  ‹  “  ƒ  ˆ '
        @  3,29 say '------------------'
        @  6,28 say 'HŒ… € ‘’€Ÿ: ' get staj0 pict '9999'
        read
           if lastkey()=27.or.staj0=0
              set key -3 to
              set filter to
              return
           endif
          set filter to staj=str(staj0,4)
          go bott
          pris0=pris
          zami0=zami
          nom0=nom
          name0=name
          prez0=prez
          prez0=prez
          fami0=fami
           if empt(subs(dtoc(pris0),1,2))
              @ 23,16 say  space(50)
              @ 23,26 say 'H¿¬  ³±«³£¨ ¯® ² §¨ ±² ¿'
              pauza()
              @ 23,24 say '                        '
              loop
           endif
       *  nom0=nom
        @ 23,22 say 'F3 - ±¯¨±ºª ­  ³±«³£¨²¥ ­  ±² ¿² '
        set key -2 to spis2
        @  8,16 say 'ˆ‘’ˆƒH€‹ H€:             ‡€ŒˆH€‹ H€:'
        @  8,32 get pris0
        @  8,56 get zami0
           read
                  *   re0=recno()
       hara0 = '     ‚ˆ„‚…  “‘‹“ƒˆ     '
             save screen
                  set key -8 to xarakt
             sele 2
             set relation to sch into uslu
          *  set filter to staj=str(staj0,4).and.subs(sch,1,1)=sch1.and.pris=pris0.and.zami=zami0
             set filter to staj=str(staj0,4).and.pris=pris0.and.zami=zami0
             go top
                  declare fiel[5]
                  fiel[1]='sch'
                  fiel[2]='uslu->hara'
                  fiel[3]='kol'
                  fiel[4]='zena'
                  fiel[5]='suma'
                  declare imem[5]
                  imem[1]='HŒ.'
                  imem[2]='    “‘‹“ƒˆ ‡€ ‘’€Ÿ'
                  imem[3]='ˆ'
                  imem[4]=' –…H€'
                  imem[5]='    ‘“Œ€'
                  @ 11,13,19,67 box ram1
                  @ 21,14,24,66 box ram1
                  @ 22,15 clea to 23,65
                  set key -3 to kvitan
                  @ 22,15 say '     F4 - ¯¥· ² ­  ª¢¨² ­¶¨¿                      '
                  dbedit(12,14,18,66,fiel,"pfunk",' ',imem,'Í','Ó')
                  set key -8 to
                  sele 1
   enddo
      case v2=3
   sele 4
   use stat inde stdi,dist
   sch1='3'
   do while .t.
        staj0=0
        dati1=ctod('01/01/'+subs(str(year(date0),4),1,4))
        dati2=ctod('31/12/'+subs(str(year(date0),4),1,4))
        ramka()
        set cent on
        @  2,30 say '’Kˆ‚€H… …ˆ„ € ‘’€Ÿ '
        @  3,29 say '--------------------------'
        @  6,30 say 'HŒ… € ‘’€Ÿ: ' get staj0 pict '9999'
        @  8,14 say 'H€—€‹ H€ …ˆ„:            K€‰ H€ …ˆ„:'
        @  8,31 get dati1
        @  8,58 get dati2
           read
           if lastkey()=27.or. staj0=0
              set cent off
              set filter to
              return
           endif
           store 0 to x0,sd0
           set date ansi
           do while dati1+x0 < dati2+1
              sd0=str(staj0,4)+dtoc(dati1+x0)
              find "&sd0"
              if .not. found()
                 appe blank
                 repl staj with str(staj0,4), dni with '±', dati with dati1+x0, dat with dtoc(dati)
              endif
              x0=x0+1
           enddo
           set date brit
   enddo
      case v2=4
       store date0 to dati1, dati2
       staj0=0
       do while .t.
       sd0=' '
       dni0='±'
        ramka()
        set cent on
        @  2,30 say '…‡…‚€–ˆˆ  ‘‚†„€‚€H…'
        @  3,29 say '---------------------------'
        @  6,33 say '‡  ±² ¿:' get staj0  pict "9999"
        @  8,16 say 'ˆ‘ˆƒ€ H€:              ‡€ŒˆH€‚€ H€: '
        @  8,29 get dati1
        @  8,55 get dati2
           read
           if lastkey()=27
              set cent off
              set filter to
              exit
           endif
            if staj0=0
              sele 4
              use stat inde dist
              set date ansi
              sd0=dtoc(dati1)
              set date brit
              find "&sd0"
             izrab()
             ? space(32)+'  … ‡ …  ‚ € – ˆ ˆ'
             ?
             ?
             ? space(18)+'„€’ˆ               …‡…‚ˆ€‹               ‘’€ˆ'
             ?
             do while dati < dati2+1
               if dni='°'
                 ? space(15)+dtoc(dati)+'       '+reze+'     '+ staj
               endif
                     if eof()
                       exit
                     else
                       skip
                     endif
             enddo
               pech()
               loop
            endif
       sele 4
       use stat inde stdi
              set date ansi
              sd0=str(staj0,4)+dtoc(dati1)
              find "&sd0"
              set date brit
         do while dati < dati2+1
              if dni='°'
                 dni0='°'
              endif
              if eof()
                exit
              else
                skip
              endif
         enddo
         save screen
           if dni0='°'
              set date ansi
              sd0=str(staj0,4)+dtoc(dati1)
              set date brit
              find "&sd0"
             izrab()
             ? space(35)+'‘’€Ÿ '+str(staj0,4)
             ?
             ?
             ? space(23)+'„€’ˆ               …‡…‚ˆ€‹'
             ?
             do while dati < dati2+1
               if dni='°'
                 ? space(15)+'     '+dtoc(dati)+'       '+reze
               endif
                     if eof()
                       exit
                     else
                       skip
                     endif
             enddo
               pech()
           endif
             dni0='°'
             reze0=space(25)
             restore screen
             @ 10,18 say '¥§¥°¢ ¶¨¿ "°" ¯°¥ª° ²¿¢ ­¥ °¥§¥°¢ ¶¨¿ "±" :' get dni0 valid dni0='±'.or.dni0='°'
             @ 12,24 say '¥§¥°¢ ¶¨¿ ®²:' get reze0
             read
               if lastkey()=27
                  loop
               endif
          store 0 to x0,sd0
              set date ansi
              sd0=str(staj0,4)+dtoc(dati1)
              set date brit
          find "&sd0"
       if found()
         dni1='±'
              set date ansi
              sd0=str(staj0,4)+dtoc(dati1)
              set date brit
         do while dati < dati2+1.and.staj=str(staj0,4)
                 if dni='§'.or.dni='¯'
                    dni1='§'
                    @ 23,25 say '‘² ¿²  ¥ § ¥²  ­  '+dtoc(dati)
                    pauza()
                 endif
              x0=x0+1
               if eof()
                 exit
               else
                 set date ansi
                 skip
                 set date brit
               endif
         enddo
          *   if dni1='§'
          *      loop
          *   endif
       else
         @ 23,25 say 'H¿¬ ²e ±² ¿ §  ²®§¨ ¯¥°¨®¤'
         pauza()
         loop
       endif
              set date ansi
              sd0=str(staj0,4)+dtoc(dati1)
              set date brit
              find "&sd0"
            if found()
              do while dati < dati2
                if dni0='°'
                  if dni='±'
                     repl dni with '°', reze with reze0
                  endif
                endif
                if dni0='±'
                  if dni='°'.or.dni='§'
                     repl dni with '±', reze with space(25)
                  endif
                endif
                     if eof()
                       exit
                     else
                       set date to ansi
                       skip
                       set date to brit
                     endif
             enddo
            endif
       enddo
      case v2=5
       sele 4
       use stat inde stdi
       store date0 to dati1, dati2
       do while .t.
        ramka()
        set cent on
        @  2,30 say '‘ ‚    „ H ˆ  ‘ ’ € ˆ'
        @  3,29 say '--------------------------'
        @  8,14 say 'H€—€‹ H€ …ˆ„:            K€‰ H€ …ˆ„:'
        @  8,31 get dati1
        @  8,58 get dati2
           read
           if lastkey()=27
              set cent off
              set filter to
              exit
           endif
         set filter to dati1-1 < dati .and. dati < dati2+1
         go top
          i=space(2)
          izrab()
          ? space(25)+'‘ ‚    „ H ˆ  ‘ ’ € ˆ'
          ?
          ?
          ? '  ‘’€ˆ                            „ € ’ ˆ'
          ?
          do while dati1-1 < dati .and. dati < dati2+1
                staj0=staj
                red0=i+staj0
                x0=0
             do while staj=staj0
                if dni='±'
                  set cent off
                  red0=red0+i+dtoc(dati)
                  x0=x0+1
                  if x0 = 7
                     ? red0
                     red0=space(6)
                     x0=0
                  endif
                endif
                     if eof()
                       exit
                     else
                   *   set date to ansi
                       skip
                   *   set date to brit
                     endif
                * skip
             enddo
             if .not.len(red0)=6
                ? red0
                ?
             endif
          enddo
          pech()
       enddo
      case v2=6
       sele 4
       use stat inde stdi
       store date0 to dati1, dati2
       do while .t.
        ramka()
        set cent on
        @  2,30 say '  ‡ € … ’ ˆ      ‘ ’ € ˆ'
        @  3,29 say '--------------------------'
        @  8,14 say 'H€—€‹ H€ …ˆ„:            K€‰ H€ …ˆ„:'
        @  8,31 get dati1
        @  8,58 get dati2
           read
           if lastkey()=27
              set cent off
              set filter to
              exit
           endif
         set filter to dati1-1 < dati .and. dati < dati2+1
         go top
          i=space(2)
          izrab()
          ? space(25)+'‡ € … ’ ˆ      ‘ ’ € ˆ      '
          ?
          ?
          ? '  ‘’€ˆ                            „ € ’ ˆ'
          ?
          do while dati1-1 < dati .and. dati < dati2+1
                staj0=staj
                red0=i+staj0
                x0=0
             do while staj=staj0
                if dni='§'.or.dni='¯'.or.dni='°'
                  set cent off
                  red0=red0+i+dtoc(dati)
                  set cent on
                  x0=x0+1
                  if x0 = 7
                     ? red0
                     red0=space(6)
                     x0=0
                  endif
                endif
                  skip
             enddo
             if .not.len(red0)=6
                ? red0
                ?
             endif
          enddo
          pech()
       enddo
      case v2=7
       sele 1
       use hotel inde sthi
       store date0 to dati1
       do while .t.
        ramka()
        set cent on
        @  2,33 say ' ‘’€ˆ ‡€ ‡€…†„€H…'
        @  3,33 say '--------------------'
        @  7,32 say '‡€ „€’€ :'get dati1
           read
           if lastkey()=27
              set cent off
              set filter to
              exit
           endif
         locate for zami = dati1
         if found()
            set filter to zami = dati1
         else
            @ 23,27 say 'H¿¬  § ¬¨­ ¢ ¹¨ ­  ² §¨ ¤ ² '
            pauza()
           loop
         endif
          i=space(2)
          izrab()
          ? space(24)+'‘ ’ € ˆ  ‡ €  ‡ €  … † „ € H E'
          ? space(30)+'H€ „€’€  '+dtoc(dati1)
          ?
          ?
          red0=i
          x0=0
          do while .not. eof()
                  store staj to staj0
                  red0=red0+i+staj
                  x0=x0+1
                  if x0 = 12
                     ? red0
                     ?
                     x0=0
                     red0=i
                  endif
                if eof()
                   exit
                else
                   skip
                endif
                do while staj=staj0.and.(.not.eof())
                  skip
                enddo
          enddo
          ? red0
            ?
            ?
            ?
            ?
            ?
            ?
            ?
            ?
            ?
            ?
            ?
            ?
            ?
            ?
            ?
            ?
            ?
          pech()
       enddo
   endcase


         *********** °®¶¥¤³°  §  ¢§¥¬ ­¥ ­  ­®¢  µ ° ª²¥°¨±²¨ª  ***********
                              proc xarakt
                  set key -8 to
                  set key -6 to vzemi
                  set key -9 to dobavi
                    save screen
                    @ 21,14,24,66 box ram1
                    @ 22,15 say 'F7- ‚§¥¬  ­®¢  µ ° ª²-ª  F10- „®¡ ¢¿ ­®¢  µ ° ª²-ª '
                    sele 3
                *   set filter to substr(sch,1,1)=sch1
                    go top
             *  if sch1=' '.or.sch1='1'
             *    declare fiel[2]
             *    fiel[1]='sch'
             *    fiel[2]='uslu->hara'
             *    declare imem[2]
             *    imem[1]='HŒ. N'
             *    imem[2]='&hara0'
             *  else
                  declare fiel[5]
                  fiel[1]='sch'
                  fiel[2]='uslu->hara'
                  fiel[3]='uslu->kol'
                  fiel[4]='uslu->zena'
                  fiel[5]='uslu->suma'
                  declare imem[5]
                  imem[1]='HŒ.'
                  imem[2]='&hara0'
                  imem[3]='ˆ'
                  imem[4]=' –…H€'
                  imem[5]='    ‘“Œ€'
              * endif
                    @ 11,13,20,67 box ram1
                    dbedit(12,14,19,66,fiel,"pfunk",' ',imem,'Í','Ó')
                    restore screen
                    keyboard chr(13)
                    i0=inkey(0)
                  set key -9 to
                  set key -6 to
                  set key -8 to xarakt
                  sele 2
                 go top
               return

         *********** °®¶¥¤³°  §  ¤®¡ ¢¿­¥ ­  § ¯¨± ¢ ­®¬¥­ª« ²³° ²  **********
                         proc dobavi
                          go bott
                          sch2=sch
                           appe blank
                           repl sch with str(val(sch2)+1,3)
                           sch2=sch
                           skip
                         keyboard chr(6)
                        return

         *********** °®¶¥¤³°  §  ¢§¥¬ ­¥ ­  µ ° ª²¥°¨±²¨ª   ***********
                         proc vzemi
                          sch2=sch
                          ss0=str(staj0)+sch2
                          zena0=zena
                           sele 2
                           find '&ss0'
                           appe blank
                           repl nom with nom0,staj with str(staj0,4), sch with sch2,zena with zena0, dni with '±',pris with pris0,zami with zami0, admi with admi0
                        sele 3
                        return

      ************ ®²°¥¡¨²¥«±ª  ´³­ª¶¨¿ **********
                function pfunk
                parameters mode0,fld0
                cur0=fiel[fld0]
                 do case
            case mode0 < 4
                      if l2='¤'
                       l2='­'
                      endif
                       if dele()
                          @ 12,61 say 'Œ€K  '
                       else
                         if sch1=' '.or.sch1=' '
                           @ 12,61 say '      '
                         else
                           if dni='±'
                               @ 12,61 say '‘“Œ€  '
                           endif
                           if dni='¯'
                               @ 12,61 say '‹€’…H'
                           endif
                         endif
                        if sch1=' '
                           store recno() to re1
                         endif
                       endif
                      @ 23,15 say '     ENTER §  ¯°®¬¿­  ­  ¤ ­¨²¥,  F9 - „®¡ ¢¿­¥   '
                      return 1
            case lastkey()=27
                          @ 11,12 clea to 20,68
                          go bott
                          return 0
            case lastkey()=13
                  l2='¤'
                  clear gets
                  set cursor on
                  set key -3 to
                  if .not. bof()
                     @ row(),col() get &cur0
                  endif
                  @ 23,17 say '          ‚º¢¥¤¥²¥ ¦¥« ­¨²¥ ¯°®¬¥­¨             '
                  read
                  re0=recno()
                  repl suma with kol*zena
                   if sch1='2'.and. sele()=2
                   set key -3 to kvitan
                      suma1=0
                      go top
                      do while staj=str(staj0,4)
                        if  datp=date0.and.dni='¯'.and.admi=admi0.and.staj=str(staj0,4)
                          suma1=suma1+suma
                        endif
                          if eof()
                             exit
                          else
                             skip
                          endif
                      enddo
                      go re0
                      @ 20,50 say '‚‘ˆ—K  '+str(suma1,9,2)
                      @ 21,14,24,66 box ram1
                      @ 22,15 clea to 23,65
                      @ 22,15 say '     F4 - ¯¥· ² ­  ª¢¨² ­¶¨¿                      '
                   endif
         *        keyboard chr(6)
                  set cursor off
                  set key 164 to
                  set key 177 to
                  @ 23,15 say '     ENTER §  ¯°®¬¿­  ­  ¤ ­¨²¥,  F9 - „®¡ ¢¿­¥   '
                  return 1
            case lastkey()=172.or.lastkey()=175.or.lastkey()=162
                do case
                   case lastkey()=172  &&  ¬
                    @ 12,61 say 'Œ€K'
                    dele
                   case lastkey()=162  &&  ¢
                          if sch1=' '.or.sch1='1'
                             @ 12,61 say '      '
                          else
                          endif
                   reca
                   case lastkey()=175  &&  ¯
                          if sch1=' '.or.sch1='1'
                             @ 12,61 say '      '
                          else
                             @ 12,61 say '‹€’…H'
                             set cent on
                               if  dni='±'
                                   repl dni with '¯',datp with date0, admi with admi0
                                   sele 5
                                   use \hlp\staik
                                   appe blank
                                   repl nom with nom0,staj with str(staj0,4), sch with sch2, pris with pris0,zami with zami0
                                   repl dni with '¯',datp with date0, admi with admi0
                                   sele 2
                               endif
                          endif
                             set cent off
                   reca
                endcase
                       if dele()
                             @ 12,61 say 'Œ€K  '
                       else
                          if sch1=' '.or.sch1='1'
                             @ 12,61 say '      '
                          else
                           if dni='±'
                             @ 12,61 say '‘“Œ€  '
                           else
                             @ 12,61 say '‹€’…H'
                           endif
                          endif
                       endif
            otherwise
                  return 1
          endcase
                return 1
  *********** K° © ­  ¯®²°¥¡¨²¥«±ª ²  ´³­ª¶¨¿ §  µ ° ª²¥°¨±²¨ª  ­  ±² ¿  ********

       *********** °®¶¥¤³°  §  ¯¨± ­¥ ­  ª¢¨² ­¶¨¿  ****************
                         proc kvitan
               set key -3 to
               save screen
        set filter to datp=date0.and.dni='¯'.and.admi=admi0.and.staj=str(staj0,4).and.pris=pris0.and.zami=zami0
        go top
        izrab()
           if ekpr0=2
              b1=37
              ll0='2'
              ?? norm0
           endif
        suma1=0
        set marg to 4
        ? space(18)+'•’…‹ "K€‹" ‘‹.Ÿƒ'
        ?
        ? space(20)+'K ‚ ˆ ’ € H – ˆ Ÿ'
        ?
        ? space(12)+'K‹ˆ…H’: '+trim(name0)+' '+trim(prez0)+' '+trim(fami0)
        ?
        ? space(9)+'‘’€Ÿ '+ltrim(str(staj0,6))+' ’ „€’€ '+dtoc(pris0)+ ' „ „€’€ '+dtoc(zami0)
        ?
        ? '  '+repli(chr(205),54)
        ? '  K„         “‘‹“ƒ€           ‰  …„.–…€    ‘“Œ€'
        ? '  '+repli(chr(205),54)
         do while datp=date0.and.dni='¯'.and.admi=admi0.and.staj=str(staj0,4).and.(.not.eof())
            ? '  '+sch+'  '+uslu->hara+' '+str(kol,2)+'   '+str(zena,6,2)+'  '+str(suma,10,2)
            suma1=suma1+suma
            spri()
               if eof()
                  exit
               else
                  skip
               endif
         enddo
            ? space(41)+'---------------'
            ? space(36)+'‚‘ˆ—K :  '+str(suma1,10,2)
            ?
            ?
            ? space(9)+'®¤¯¨±: ..................'
            ? space(15)+'/ '+trim(ime0)+' /'
            ?
          pech()
               restore screen
             set filter to staj=str(staj0,4).and.pris=pris0.and.zami=zami0
               go top
               set key -3 to kvitan
                         return


       ************** ‹¨±²¨ ±¯¨±ºª  ­   ¤°¥±­¨²¥ ª °²¨ **************
                           proc spis2
                save screen
                set key -2 to
                sele 1
                use hotel inde nomi
                sele 2
                use stai inde snoi
                set relation to nom into hotel
                go bott
                skip -6
                set cent off
                declare fiel[13]
                fiel[1]='nom'
                fiel[2]='staj'
                fiel[3]='sch'
                fiel[4]='kol'
                fiel[5]='zena'
                fiel[6]='suma'
                fiel[7]='dni'
                fiel[8]='datp'
                fiel[9]='pris'
                fiel[10]='zami'
                fiel[11]='admi'
                fiel[12]='hotel->name'
                fiel[13]='staj'
                declare imem[13]
                imem[1]='N. €K'
                imem[2]='‘’€Ÿ'
                imem[3]='˜ˆ”'
                imem[4]='K‹'
                imem[5]='–…H€'
                imem[6]='‘“Œ€'
                imem[7]='„'
                imem[8]='„€’€ H€ ‹'
                imem[9]='ˆ‘’ˆƒ€'
                imem[10]='‡€Œˆ€‚€'
                imem[11]='€'
                imem[12]='  ˆ Œ … '
                imem[13]='‘’€Ÿ'
                @ 11, 2,21,78 box ram1
                dbedit(12, 3,20,77,fiel,"",'',imem,'Í','Ó')
                set key -2 to spis2
                set cent on
                sele 1
                use hotel inde nomi,sthi
                sele 2
                use stai inde stii,snoi,schi
                restore screen
                           return


