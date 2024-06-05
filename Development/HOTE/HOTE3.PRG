       sele 4
       use stat inde stdi
       store date0-10 to dati1
       store date0+15 to dati2
       set date brit
       do while .t.
        ramka()
        set cent on
        @  2,30 say '‘ ’ € ’ “ ‘  H €  ‘ ’ € ˆ'
        @  3,29 say '---------------------------'
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
          i=space(1)
          izrab()
          x0=0
          store '' to red0,red1,red2,dt0
          set date brit
          do while x0 < dati2-dati1+1
             red0=red0+i+substr(dtoc(dati1+x0),1,2)
             if dt0=subs(dtoc(dati1+x0),4,2)
                do case
                   case dow(dati1+x0)=1
                        red2=red2+i+' H'
                   case dow(dati1+x0)=2
                        red2=red2+i+' '
                   case dow(dati1+x0)=3
                        red2=red2+i+' ‚'
                   case dow(dati1+x0)=4
                        red2=red2+i+'‘°'
                   case dow(dati1+x0)=5
                        red2=red2+i+' —'
                   case dow(dati1+x0)=6
                        red2=red2+i+' '
                   case dow(dati1+x0)=7
                        red2=red2+i+' ‘'
                endcase
             else
                red2=red2+i+substr(dtoc(dati1+x0),4,2)
             endif
             dt0=subs(dtoc(dati1+x0),4,2)
             x0=x0+1
          enddo
          ?? 'Œ…‘…–'+red2
          ?  ' „€’ˆ'+red0
          x1=' '
          x2=0
          do while dati1-1 < dati .and. dati < dati2+1
                staj0=staj
                ? i+staj0
                x0=0
             do while staj=staj0
                ?? i
                do case
                  case dni='±'
                      red1='ĞĞ'
                  case dni='§'
                      red1='ÜÜ'
                  case dni='°'
                      red1=' P'
                endcase
                       ?? red1
                  x0=x0+1
                  if x0 = 7
                     x0=0
                  endif
                     if .not.eof()
                       skip
                     else
                       exit
                     endif
             enddo
                  x2=x2+1
                  if x2=15
                      ? 'Œ…‘…–'+red2
                      ? ' „€’ˆ'+red0
                     x2=0
                  endif
          enddo
         set cons on
             @  2,63 say ' Ğ  ±¢®¡®¤­¨'
             @  3,63 say ' Ü  § ¥²¨ '
             @  4,63 say '   °¥§¥°¢¨° ­¨ '

         pech()
       enddo

