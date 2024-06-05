
          podr_0=41
          save all like podr_0 to podred
          podred()

*        * EXTERNAL RAMKA,PECH
*        @  4,22,19,58 box ram1
*        @  5,23 clea to 18,57
*        @  5,32 say 'И З Т Р И В А H Е'
*        @  8,30 prompt '1. Ад░е▒на ка░▓а'
*        @ 10,30 prompt '2. У▒л│ги       '
*        @ 12,30 prompt '3. Пе░иод за ▒▓а┐'
*        @ 18,30 prompt 'ESC - Из╡од о▓ мен╛'
*            menu to v2
*        read
*    do case
*       case lastkey()=27
*       return
*       case v2=1
*       sele 1
*       use hotel inde nomi,sthi
*        store 0 to nom1,nom2
*      do while .t.
*        sele 1
*        ramka()
*        @  2,24 say 'ИЗТРИВАHЕ HА АДРЕСНИ КАРТИ'
*        @  3,23 say '----------------------------------'
*        @  9,25 say 'В║веде▓е ОТ номе░а на АД ' get nom1 pict '9999'
*        @ 11,25 say 'В║веде▓е ДО номе░а на АД ' get nom2 pict '9999'
*        read
*        if lastkey()=27.or.nom2=0
*            l0='н'
*            @ 23,22 say '                                        '
*            @ 23,29 say 'Желае▓е ли из▓░иване д/н' get l0 valid l0='д'.or.l0='н'
*          read
*           if l0='д'
*              @ 23,23 say 'П░ог░ама▓а из▓░ива, мол┐ по╖акай▓е !'
*              podr_0=41
*              save all like podr_0 to podred
*              podred()
*           endif
*          exit
*        endif
*          l0=' '
*          @ 23,22 say '                                        '
*          @ 23,22 say 'Ма░ки░ане - "м" в║з▒▓анов┐ване - "в"' get l0 valid l0=' '.or.l0='м'.or.l0='в'
*          read
*          @ 23,22 say '                                        '
*              if l0=' '
*                 loop
*              endif
*                         if l0='м'
*             @ 23,23 say 'П░ог░ама▓а ма░ки░а, мол┐ по╖акай▓е !'
*                         else
*             @ 23,23 say 'П░ог░ама▓а в║з▒▓ан, мол┐ по╖акай▓е !'
*                         endif
*               set filter to nom1-1 < val(nom).and. val(nom) < nom2+1
*               go top
*                        do while .not.eof()
*                         if l0='м'
*                             dele
*                         else
*                             recall
*                         endif
*                           if .not. eof()
*                              skip
*                           endif
*                        enddo
*
*               sele 2
*               use stai inde snoi,stii,schi
*                set filter to nom1-1 < val(nom).and. val(nom) < nom2+1
*                go top
*                        do while .not.eof()
*                         if l0='м'
*                             dele
*                         else
*                             recall
*                         endif
*                           if .not. eof()
*                              skip
*                           endif
*                        enddo
*      enddo
*       case v2=2
*        set cent on
*        store date0-45 to dati2
*      do while .t.
*        sele 2
*        use stai inde stii,snoi,schi
*        ramka()
*        @  2,35 say 'У С Л У Г И '
*        @  3,34 say '--------------'
*        @  8,28 say 'Из▓░ива до да▓а' get  dati2
*        read
*        if lastkey()=27
*            set cent off
*            l0='н'
*            @ 23,22 say '                                        '
*            @ 23,29 say 'Желае▓е ли из▓░иване д/н' get l0 valid l0='д'.or.l0='н'
*          read
*           if l0='д'
*              @ 23,23 say 'П░ог░ама▓а из▓░ива, мол┐ по╖акай▓е !'
*               podr_0=41
*               save all like podr_0 to podred
*               podred()
*           endif
*          exit
*        endif
*          l0=' '
*          @ 23,22 say '                                        '
*          @ 23,22 say 'Ма░ки░ане - "м" в║з▒▓анов┐ване - "в"' get l0 valid l0=' '.or.l0='м'.or.l0='в'
*          read
*          @ 23,22 say '                                        '
*              if l0=' '
*                 loop
*              endif
*                         if l0='м'
*             @ 23,23 say 'П░ог░ама▓а ма░ки░а, мол┐ по╖акай▓е !'
*                          dele all for zami < dati2+1
*                         else
*             @ 23,23 say 'П░ог░ама▓а в║з▒▓ан, мол┐ по╖акай▓е !'
*                          recal all for zami < dati2+1
*                         endif
*      enddo
*       case v2=3
*        set cent on
*        sele 4
*        use stat inde dist,stdi
*        store date0-45 to dati2
*      do while .t.
*        ramka()
*        @  2,34 say 'ПЕРИОД HА СТАЯ'
*        @  3,33 say '---------------'
*        @  8,26 say 'Из▓░ива до да▓а' get  dati2
*        read
*        if lastkey()=27
*        set cent off
*            l0='н'
*            @ 23,22 say '                                        '
*            @ 23,29 say 'Желае▓е ли из▓░иване д/н' get l0 valid l0='д'.or.l0='н'
*          read
*           if l0='д'
*              @ 23,23 say 'П░ог░ама▓а из▓░ива, мол┐ по╖акай▓е !'
*               podr_0=41
*               save all like podr_0 to podred
*               podred()
*           endif
*          exit
*        endif
*          l0=' '
*          @ 23,22 say '                                        '
*          @ 23,22 say 'Ма░ки░ане - "м" в║з▒▓анов┐ване - "в"' get l0 valid l0=' '.or.l0='м'.or.l0='в'
*          read
*          @ 23,22 say '                                        '
*              if l0=' '
*                 loop
*              endif
*             set date  ansi
*                         if l0='м'
*             @ 23,23 say 'П░ог░ама▓а ма░ки░а, мол┐ по╖акай▓е !'
*                          dele all for dati < dati2+1
*                         else
*             @ 23,23 say 'П░ог░ама▓а в║з▒▓ан, мол┐ по╖акай▓е !'
*                          recal all for dati < dati2+1
*                         endif
*             set date brit
*      enddo
*    endcase
