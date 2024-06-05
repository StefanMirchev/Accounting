   *PRO6.PRG   
                parameters mode0,fld0
                private fld0
                cur0=fiel[fld0]
            do case
               case mode0 < 4
                       if dele()
                         @ 23+ml0,15 say '        Запи▒║▓ е ма░ки░ана за из▓░иване           '
                         i0=inkey(1)
                       endif
@  0,15  say 'cccc ' ; inkey(0) //kkk

                     *   @  4,24 say 'Кон▓и░овка '+dobo->sch+' / '+kobo->sch+str(kobo->ksto,j0,j1)
                        * if ll1='51'   // moge da e problem
                        *    @ 23+ml0,15 say '  Ма░ки░ане - "м" в║з▒▓анов┐ване - "в" кон▓░аген▓а '
                        * endif
                       *  do case
                       *     case l2='2'
                              re0=recno()
                              @ 17,15 say sald
                              @ 17,35 say dt
                        if .not.empty(iban)

@  0,15  say 'dddd ' ; inkey(0) //kkk


                           store iban to iban0
                           sele 6
                           locate for trim(iban)=trim(iban0)
                               if .not. found()
                                   @  3,70 say 'ДОБАВИ!'
                               else
                                   @  3,70 say part
                               endif
                               sele 13
                    *          open_bank(loc0:=0)
                     *      if l3='д'.or.l3='d'
                     *          set filter to subs(datb,4,3)+subs(datb,9,2)=data3
                     *      endif
                     *      go top
                     *      go re0
                     *        @ 17,15 say sald
                        else  

@  0,15  say 'eeee ' ; inkey(0) //kkk 
                              @ 17,15 say sald
                              @  3,70 say '       '
                        endif
                         @ 23+ml0,15 say '            F10 - добав┐ банкова ▒ме▓ка            '
                      *   endcase
                        return 1
             case lastkey()=27
  @  0,15  say 'fffff ' ; inkey(0) //kkk
                         return 0
             case lastkey()=13
  @  0,15  say 'gggg ' ; inkey(0) //kkk
                         set cursor on
                         rec_lock()
                         @ row(),col() get &cur0
                         @ 23+ml0,15 say '              В║веде▓е желани▓е п░омени            '
                         chet()
                         rec_unlock()
                         set cursor off
                    *     @ 23+ml0,15 say ' F7-╖е▓е док│мен▓а F8-код опе░а▓о░ да▓а на пла╣ане '
                    *     readinsert(.F.)
                    *     @ 0,60 say '   '
                    *     do case
                    *        case l2='2'
                    *     @ 23+ml0,15 say '             F10 - добав┐ банкова ▒ме▓ка           '
                    *        case tt0='50'
                    *   if sc9='н'
                    *     @ 23+ml0,15 say '  Ма░ки░ане - "м" в║з▒▓анов┐ване - "в" кон▓░аген▓а '
                    *   endif
                    *     endcase
                         return 1
             case lastkey()=172.or.lastkey()=162
                         do case
                           case lastkey()=172 .and. sc9='н' &&  м
                         @ 23+ml0,15 say '            Запи▒║▓ е ма░ки░ан за из▓░иване        '
                                 del()
                           case lastkey()=162  &&  в
                         @ 23+ml0,15 say '                 Запи▒║▓ е в║з▒▓ановен             '
                                reca()
                         endcase
                                 i0=inkey(1)
             case lastkey()=-9
                       if field(1)='DATB'
                         if 0 < val(dt)
                            sch0='411'
                         else
                            sch0='401'
                         endif
                         iban0=iban
                         re0=recno()
                         set cursor on
                        do while .t.
                         @ 17,30 say 'Сме▓ка▓а ' get sch0
                         spisk()
                          if lastkey()=13
                              if .not. eof()
                                 rec_lock()
                                    repl iban with iban0
                                 rec_unlock()
                                 @ 20,10 say part+' '+name get iban
                              endif
                          endif
                        if lastkey()=27
                           @ 17, 2 clea to 20,78
                           set cursor off
                           set filter to
                           open_bank(loc0:=0)
                           if l3='д'.or.l3='d'
                            set filter to subs(datb,4,3)+subs(datb,9,2)=data3
                           endif
                           go top
                           go re0
                           exit
                        endif
                        enddo
                       endif
           otherwise
                     return 1
           endcase
                return  1
