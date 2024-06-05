       sele 4
       use stat inde dist,stdi
       store date0 to dati1, dati2
       do while .t.
       sd0=' '
       dni0='±'
        ramka()
        set cent on
        @  2,30 say '…‡…‚€–ˆˆ  ‘‚†„€‚€H…'
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
              sd0=dtoc(dati1)
              find "&sd0"
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
              sd0=dtoc(dati1)
              find "&sd0"
             izrab()
             ? space(13)+'‘’€ˆ              „€’ˆ               …‡…‚ˆ€‹'
             ?
             do while dati < dati2+1
               if dni='°'
                 ? space(13)+staj+'           '+dtoc(dati)+'       '+reze
               endif
                     if eof()
                       exit
                     else
                       skip
                     endif
             enddo
               pech()
           endif
             staj0=0
             reze0=space(25)
             restore screen
             @ 10,18 say '¥§¥°¢ ¶¨¿ "°" ¯°¥ª° ²¿¢ ­¥ °¥§¥°¢ ¶¨¿ "±" :' get dni0
             @ 12,14 say '‡  ±² ¿:' get staj0  pict "9999"
             @ 12,30 say '§¥°¢ ¶¨¿ ®²:' get reze0
             read
               if lastkey()=27
                  loop
               endif
              sd0=dtoc(dati1)+str(staj0,4)
              find "&sd0"
           if found()
              do while dati < dati2+1
                if dni0='°'
                  if dni='±'
                     repl dni with '°', reze with reze0
                  endif
                endif
                if dni0='±'
                  if dni='°'
                     repl dni with '±', reze with space(25)
                  endif
                endif
                     if eof()
                       exit
                     else
                       skip
                     endif
              enddo
           endif
       enddo
