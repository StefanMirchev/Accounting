   *SAV7.PRG  amort del dnspis dspis gr61 izpis iztri  mark markir nadc no prik pr60 prikdds R7 reca
          set dele off ; v2=0 ; tt0='70'
          @  4,22,19,58 box ram1  ; @  5,23 clea to 18,57
          @  5,32 say 'à á í ê à Ç Ä H Ö'
          @  8,30 prompt '1. ë∑•≤Æ¢Æ§≠† ÆØ•∞†∂®ø'
          @ 10,30 prompt '2. Ñ∞≥£® ®ß≤∞®¢†≠®ø  '
          @ 12,30 prompt '3. ë∑•≤Æ¢Æ§≠† ±¨•≤™†'
          @ 14,30 prompt '4. H†≤∞≥Ø†≠® Æ°Æ∞Æ≤®'
          @ 16,30 prompt '5. É∞≥Ø† Æ≤ ÆØ•∞†∂®®'
          @ 18,30 prompt '6. ë≤†∞≤. Ø†™•≤. s0000'
              menu to v2
          chet()
     do case
        case lastkey()=27
        return
        case v2=1
         nom1=0
       do while .t.
         ramka()
         nom2=0
         data3='  /'+substr(dtoc(date0),7,2)

       *  nom1=7005
       *  data3='03/20'

         set cons on
         @  5,48,20,73 box ram1
         @  6,49 say "éØ•∞. åÄêä. ß† ®ß≤∞®¢†≠•"
         @  7,49 say repl ("=",24)
         @  2,24 say 'àáíêàÇÄHÖ HÄ ëóÖíéÇéÑHÄ éèÖêÄñàü'
         @  3,23 say '----------------------------------'
         @  9,24 say 'éí ≠Æ¨•∞ ' get nom1 pict '9999'
         @ 11,24 say 'Ñé ≠Æ¨•∞ ' get nom2 pict '9999'
         @ 13,24 say 'é≤ ¨•±•∂ ' get data3  pict '99/99'
        save1=memoedit(memoread("oper.prn"),8,50,19,72,.t.,"fdobav",22,40,1,0)
        memowrit('oper.prn',save1,.f.)

         chet() && read
         store data3 to data1
             if nom2=0
                store nom1 to nom2
             endif
         if nom1=0.or.lastkey()=27
            if file("chop")
           *   zvan()
              @ 23+ml0,15 say 'ÇHàåÄHàÖ !'  color 'R+/B'
              @ 23+ml0,26 say 'àåÄ åÄêä. óÄëí éí éèÖêÄñàü  áÄ àáíêàÇÄHÖ'
              i0=inkey(0)
              @ 23+ml0,15 say space(51)
            endif
           l0='≠'
           @ 23+ml0,15 say space(51)
           @ 23+ml0,29 say 'Ü•´†•≤• ´® ®ß≤∞®¢†≠• §/≠' get l0 valid l0='§'.or.l0='≠'.or.l0='d'.or.l0='n'
           chet() && read
            if l0='§'.or.l0='d'
                   if file("*.m")
                        zvan()
                        @ 23+ml0,15 say 'ÇHàåÄHàÖ!'  color 'R+/B'
                        @ 23+ml0,25 say 'àåÄíÖ åÄêä. åÖëÖñ HÖÑéèìëíàåé Ö àáíêàÇÄHÖ'
                        i0=inkey(0)
                        loop
                   endif
                   if file("grup")
                        zvan()
                        @ 23+ml0,15 say 'ÇHàåÄHàÖ!'   color 'R+/B'
                        @ 23+ml0,24 say 'åÄêä.Ö ÉêìèÄ éí ëé HÖÑéèìëíàåé Ö àáíêàÇÄHÖ'
                        i0=inkey(0)
                        loop
                   endif
                   if file("chop")
                     eras chop
                   endif
                      if file("*.o")
                       *  !del *.o
                      endif

              @ 23+ml0,15 say '          è∞Æ£∞†¨†≤† ®ß≤∞®¢†, ¨Æ´ø ®ß∑†™†©≤•       '
              l0='§'
              iztri()
            endif
           exit
         endif
        l0=' '
           @ 23+ml0,15 say space(51)
           @ 23+ml0,22 say 'å†∞™®∞†≠• - "¨" ¢∫ß±≤†≠Æ¢ø¢†≠• - "¢"' get l0 valid l0=' '.or.l0='¨'.or.l0='¢'.or.l0='m'.or.l0='W'
           chet() && read
           @ 23+ml0,15 say space(51)
               if l0=' '
                  loop
               endif
         dn0=subs(data3,4,2)+data3+str(nom1,4)
         open_arhi(loc0:=59)
         find '&dn0'
         @ 23+ml0,23 say 'è∞Æ£∞†¨†≤† ∞†°Æ≤®, ¨Æ´ø ®ß∑†™†©≤• !'
       papk0=val(papk)
                          if l0='¨'.or.l0='m'
                             oper=memoread('oper.prn')
                             oper0=str(nom1,4)+'-'+data3
                             memowrit('oper.prn',oper0+' ≠† '+dtoc(date())+chr(13)+chr(10)+oper, .F.)
                          else
                             dd0=ltrim(str(nom1,4))+'-'+substr(data3,1,2)+'.o'
                                 if file("&dd0")
                                    eras  &dd0
                                 endif
                          endif
       markir()
       enddo
        case v2=2
         @  8,20,14,60 box ram1
         @  9,21 clea to 13,59
         @  9,25 say 'Ñ ê ì É à  à á í ê à Ç Ä H à ü '
         @ 10,24 say '---------------------------------'
         @ 13,23 say 'è∞Æ£∞†¨†≤† ∞†°Æ≤®, ¨Æ´ø ®ß∑†™†©≤• !'
          podr_0=18
          save all like podr_0 to podred
          podred()
          podr_0=19
          save all like podr_0 to podred
          podred()
          podr_0=20
          save all like podr_0 to podred
          podred()
        case v2=3
         ramka()
         open_obap(loc0:=80)
         open_obve(loc0:=38)
       @  2,31 say 'àáíêàÇÄHÖ HÄ ëåÖíäÄ'
       @  3,30 say '---------------------'
      do while .t.
      sch0='   '
     @  6,30 say 'ò®¥∫∞ ≠† ±¨•≤™†≤†' get sch0
       chet()
                          if sch0='   '.or.lastkey()=27
           l0='≠'
           @ 23+ml0,15 say space(51)
           @ 23+ml0,29 say 'Ü•´†•≤• ´® ®ß≤∞®¢†≠• §/≠' get l0 valid l0='§'.or.l0='≠'.or.l0='d'.or.l0='n'
           chet()
           @ 23+ml0,15 say space(51)
         if l0='§'.or.l0='d'
           @ 23+ml0,23 say 'è∞Æ£∞†¨†≤† ®ß≤∞®¢†, ¨Æ´ø ®ß∑†™†©≤• !'
                          podr_0=20
                          save all like podr_0 to podred
                          podred()
         endif
                             exit
                          endif
                          if substr(sch0,1,1)='*'
                             if .not.eof()
                                skip
                                loop
                             else
                                @ 23+ml0,15 say '     ä∞†© ≠† ±¨•≤™®≤• ± †≠†´®≤®∑≠® Ø†∞≤®§®      '
                                   i0=inkey(0)
                                exit
                             endif
                             loop
                          endif
      find '&sch0'
                if .not. found()
                     @ 23+ml0,15 say '             Hø¨† ±¨•≤™† ± ≤†™∫¢ ∏®¥∫∞             '
                          i0=inkey(0)
                     @ 23+ml0,15 say space(51)
                     sele 7
                     ds0=sch0
                     find '&ds0'
                       if  found()
                               do while sch=sch0
                                  if .not. eof() ; del() ; skip ; else ; exit ; endif
                               enddo
                       endif
                     sch0=sch
                     loop
                endif
      name0=name
      do case
         case t='†'
              t0='†™≤®¢≠†'
         case t='Ø'
              t0='Ø†±®¢≠†'
         case t=' '
              t0='†™≤®¢≠Æ-Ø†±®¢≠†'
      endcase
      do case
         case a='§'
              a0=' ± †≠†´®≤®∑≠® Ø†∞≤®§®'
              a1='§'
         case a='≠'
              a0=' °•ß †≠†´®≤®∑≠® Ø†∞≤®§®'
      endcase
      @  8,15 say 'Ç®§† ≠† ±¨•≤™†≤† • '+ t0 +a0
      @ 10,11 say 'åÆ¶•≤• ±†¨Æ §† ™Æ∞®£®∞†≤• ≠†®¨•≠Æ¢†≠®•≤Æ ≠† ±¨•≤™†≤† ®´®'
      @ 11,25 say '± "*" §† ø ¨†∞™®∞†≤• ß† ®ß≤∞®¢†≠•'
      @ 13,24 get name0
      chet()
    rec_lock()
    repl name with name0
    rec_unlock()
         if substr(name0,1,1)='*'
              @ 15,37 say 'ÇHàåÄHàÖ !'  color 'R+/B'
              @ 17,19 say 'àáíêàÇÄíÖ ëåÖíäÄ éí ëåÖíäéèãÄHÄ ìÇÖêÖH ãà ëíÖ ?'
         if a1='§'
              @ 19,24 say 'ëåÖíäÄíÄ Ö à ë ÄHÄãàíàóHà èÄêíàÑà !'
         endif
           l0='≠'
           @ 23+ml0,23 say 'èÆ≤¢∫∞¶§†¢†≤• ´® ®ß≤∞®¢†≠•≤Æ §/≠ ?' get l0 valid l0='§'.or.l0='≠'.or.l0='d'.or.l0='n'
           chet()
           @ 13,23 say '                                        '
      @ 14,18 clea to 20,67
      if l0='§'.or.l0='d'
             raboti()
             del()
             sele 7
             ds0=sch0
             find '&ds0'
              if  found()
                 do while sch=sch0
                    if .not. eof() ; del() ; skip ; else ; exit ; endif
                 enddo
              endif
             sele 6
                   find '&ds0'
             if  found()
                       @ 16,21  say 'è∞Æ£∞†¨†≤† ∞†°Æ≤® ØÆ †≠†´. Ø-§† :'
                 do while substr(part,1,3)=sch0
                       @ 16,55 say substr(part,4,4)
                    if .not. eof() ; del() ; skip ; else ; exit ; endif
                 enddo
             else
             endif
              sele 7
           zvan()
           @ 16,20 say '                                          '
           @ 23+ml0,15 say '                è∞Æ£∞†¨†≤† Ø∞®™´æ∑®                '
      i0=inkey(0)
      else
      endif
         else
             raboti()
             sele 7
             ds0=sch0
             find '&ds0'
                 if  found()
                      reca()
                 else
                 endif
             sele 6
                   find '&ds0'
             if  found()
                       @ 16,21  say 'è∞Æ£∞†¨†≤† ∞†°Æ≤® ØÆ †≠†´. Ø-§† :'
                 do while substr(part,1,3)=sch0
                       @ 16,55 say substr(part,4,4)
                    if .not. eof() ; reca() ; skip ; else ; exit ; endif
                 enddo
             else
             endif
              sele 7
             reca()
           zvan()
       @ 16,21 say '                                          '
       @ 23+ml0,15 say '             è∞Æ£∞†¨†≤† Ø∞®™´æ∑®               '
      i0=inkey(0)
         endif
    if .not. eof()
      skip
    else
      @ 23+ml0,15  say '       ä∞†© ≠† ±¨•≤™®≤• ± †≠†´®≤®∑≠® Ø†∞≤®§®   '
      i0=inkey(0)
      exit
    endif
      enddo
        case v2=4
          set dele off
          do while .t.
             ramka()
                 data3='  /'+substr(dtoc(date0),7,2)
                 @  2,17 say 'àáíêàÇÄHÖ HÄ åÖëÖóHà éÅéêéíà Ç HÄíêìèÇÄôàü îÄâã'
                 @  3,16 say '-------------------------------------------------'
            if file("chop")
              zvan()
              @ 23+ml0,15 say 'ÇHàåÄHàÖ !'  color 'R+/B'
              @ 23+ml0,26 say 'àåÄ åÄêä.óÄëí éí ëé áÄ àáíê. èêÄÇà-> 7/1'
              i0=inkey(0)
              @ 23+ml0,15 say space(51)
              return
            endif
                 store '  ' to ms0,ms1
                 store subs(data3,4,2) to god0
                 @  9,17 say 'é≤ ¨•±•∂ : 01  §Æ ¨•±•∂ : 01  ß† £Æ§®≠† : 06' 
                 @  9,28 get ms0
                 @  9,43 get ms1
                 @  9,59 get god0
                 chet()
                 if ms0=' '.or.lastkey()=27
        l0=' '
           @ 23+ml0,29 say 'Ü•´†•≤• ´® ®ß≤∞®¢†≠• §/≠' get l0 valid l0='§'.or.l0='≠'.or.l0='d'.or.l0='n'
           read
         if l0='§'.or.l0='d'
                   if file("grup")
                        zvan()
                        @ 23+ml0,15 say 'ÇHàåÄHàÖ!'   color 'R+/B'
                        @ 23+ml0,24 say 'åÄêä.Ö ÉêìèÄ éí ëé HÖÑéèìëíàåé Ö àáíêàÇÄHÖ'
                        i0=inkey(0)
                        loop
                   endif
              @ 23+ml0,15 say '         è∞Æ£∞†¨†≤† ®ß≤∞®¢†, ¨Æ´ø ®ß∑†™†©≤•        '
                      if file("*.m")
                          !del *.m
                      endif
                   if file("chop")
                     eras chop
                   endif
                           podr_0=21
                           save all like podr_0 to podred
                           podred()
                           podr_0=22
                           save all like podr_0 to podred
                           podred()
                           podr_0=23
                           save all like podr_0 to podred
                           podred()
                           podr_0=24
                           save all like podr_0 to podred
                           podred()
                           podr_0=25
                           save all like podr_0 to podred
                           podred()
                           podr_0=26
                           save all like podr_0 to podred
                           podred()
         endif
                   return
                 endif
           l0=' '
           @ 23+ml0,15 say space(51)
           @ 23+ml0,22 say 'å†∞™®∞†≠• - "¨" ¢∫ß±≤†≠Æ¢ø¢†≠• - "¢"' get l0 valid l0=' '.or.l0='¨'.or.l0='¢'.or.l0='m'.or.l0='w'
           chet()
           @ 23+ml0,15 say space(51)
               if l0=' '
                   loop
               endif
        if l0='¨'.or.l0='m'
   @ 15,12 say 'è∞Æ£∞†¨†≤† ¨†∞™®∞† Æ°Æ∞Æ≤®≤• ≠† ¨•±•∂ - '+ms0+' ØÆ ¥†©´ '
        else
   @ 15,12 say 'è∞Æ£∞†¨†≤† ¢∫ß±≤†≠.Æ°Æ∞Æ≤®≤• ≠† ¨•±•∂ - '+ms0+' ØÆ ¥†©´ '
        endif
                raboti()

                         if l0='¨'.or.l0='m'
                             dd0=ms0+'-'+god0+'.m'
                             han0=fcreate("&dd0")
                             fclose(han0)
                          else
                             dd0=ms0+'-'+ms1+'.m'
                                 if file("*.m")
                                    !del *.m
                                 endif
                          endif
                @ 15,66 say 'ARHI'
                open_arhi(loc0:=1)
                set filter to val(ms0) <= val(substr(data,1,2)).and.;
                val(substr(data,1,2)) <= val(ms1).and.(substr(data,4,2)=god0)
                go top
                          if l0='¨'.or.l0='m'
                              dele rest
                          else
                              recall rest
                                 if file("*.m")
                                    !del *.m
                                 endif
                          endif
                clos data
                open_dobo(loc0:=1)
                @ 15,66 say 'DOBO'
                set filter to val(ms0) <= val(substr(data,1,2)).and.;
                val(substr(data,1,2)) <= val(ms1).and.(substr(data,4,2)=god0)
                go top                                                                                                  
                          if l0='¨'.or.l0='m'
                              dele rest
                          else
                              recall rest
                          endif
                clos data
                open_kobo(loc0:=1)
                @ 15,66 say 'KOBO'
                set filter to val(ms0) <= val(substr(data,1,2)).and.;
                val(substr(data,1,2)) <= val(ms1).and.(substr(data,4,2)=god0)
                go top
                          if l0='¨'.or.l0='m'
                              dele rest
                          else
                              recall rest
                          endif
                clos data
                open_dpar(loc0:=1)
                @ 15,66 say 'DPAR'
                set filter to val(ms0) <= val(substr(data,1,2)).and.;
                val(substr(data,1,2)) <= val(ms1).and.(substr(data,4,2)=god0)
                go top
                          if l0='¨'.or.l0='m'
                              dele rest
                          else
                              recall rest
                          endif
                clos data
                open_kpar(loc0:=1)
                @ 15,66 say 'KPAR'
                set filter to val(ms0) <= val(substr(data,1,2)).and.;
                val(substr(data,1,2)) <= val(ms1).and.(substr(data,4,2)=god0)
                go top
                          if l0='¨'.or.l0='m'
                              dele rest
                          else
                              recall rest
                          endif
                clos data
            @ 23+ml0,15 say '                 è∞Æ£∞†¨†≤† Ø∞®™´æ∑®               '
           i0=inkey(0)
          enddo
        case v2=5
       do while .t.
         ramka()
         nom0='  '
         @  2,25 say 'àáíêàÇÄHÖ HÄ ÉêìèÄ éí éèÖêÄñàü'
         @  3,24 say '--------------------------------'
         @ 12,24 say 'Ç∫¢•§•≤• £∞≥Ø†≤† Æ≤ ÆØ•∞†∂®ø≤†' get nom0
         chet()
         if lastkey()=27.or.nom0='µ'
           exit
         endif
        l0=' '
           @ 23+ml0,15 say space(51)
           @ 23+ml0,22 say 'å†∞™®∞†≠• - "¨" ¢∫ß±≤†≠Æ¢ø¢†≠• - "¢"' get l0 valid l0=' '.or.l0='¨'.or.l0='¢'.or.l0='m'.or.l0='W'
           chet()
           @ 23+ml0,15 say space(15)
         if l0=' '
           loop
         endif

         @ 23+ml0,23 say '                                      '
         @ 23+ml0,23 say 'è∞Æ£∞†¨†≤† ∞†°Æ≤®, ¨Æ´ø ®ß∑†™†©≤• !'
          open_arhi(loc0:=1)
         nom0=trim(nom0)
         if l0='¨'.or.l0='m'
                             han0=fcreate("grup")
                             fclose(han0)
            dele all for nom=nom0 .and.(.not.papk='k')
         else
                                 if file("grup")
                                    eras  grup
                                 endif
            recal all
         endif
         clos data
         open_dobo(loc0:=1)
         if l0='¨'.or.l0='m'
         *  dele all for substr(nom,1,1)=nom0
            dele all for nom=nom0
         else
            recal all
         endif
         clos data
         open_kobo(loc0:=1)
         if l0='¨'.or.l0='m'
            dele all for nom=nom0
         else
            recal all
         endif
         clos data
         open_dpar(loc0:=1)
         if l0='¨'.or.l0='m'
            dele all for nom=nom0
         else
            recal all
         endif
         clos data
         open_kpar(loc0:=1)
         if l0='¨'.or.l0='m'
            dele all for nom=nom0
         else
            recal all
         endif
         clos data
                        zvan()
            @ 23+ml0,15 say '              è∞Æ£∞†¨†≤† Ø∞®™´æ∑®          '
                       i0=inkey(0)
            @ 23+ml0,24 say space(51)
       enddo
        case v2=6
                   keyboard chr(-33)
                   ddok()
             *     exit

     endcase

      ************** è∞Æ∂•§≥∞† ß† ß† ®ß´®±≤¢†≠• ≠† OBAP ØÆ ®™. •´•¨•≠≤® ****
                      proc no
                save screen
                set filter to substr(part,1,3)='   '
                declare fiel[2]
                fiel[1]='part'
                fiel[2]='name'
                declare imem[2]
                imem[1]='òàîöê'
                imem[2]='           HÄàåÖHéÇÄHàÖ'
                 dbedit(20,23,23+ml0,63,fiel," ",'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',imem,'-','”')
                 nvo0=val(substr(part,4,4))
                restore screen
                @ 22,25 say name
                set filter to
                      return


      ************** è∞®™´æ∑¢†≠• ≠† ±¨•≤™†   *************
                       proc prik
           set cons on
           set key -4 to

      if a0='≠'
          open_obve(loc0:=39)
          dsto0=0
          ksto0=0
              find '&sch0'
          store kdso+kkso to dsto0, ksto0
                    return
      endif
          dsto0=0
          ksto0=0
        do while .t.
           clear gets
           zena1=0
           pr1=1
           pr2=9999
           pr0=100
           l0='≠'
           l1='≠'
           l2='≠'
           ll2='Ø'
           save screen to ek1
           @  9,21,16,58 box ram1
           @ 10,22 clea to 15,57
           set key - 6 to ddok
           @ 23+ml0,20 say 'F7 - ÆØ∞•§•´ø ØÆ§∞•§•≠Æ±≤≤† ≠† †≠†´. Ø-§®'
                     @ 10,24 say 'èêéñÖÑìêÄíÄ HÄíêìèÇÄ äê. ëà ëÄãÑÄ'
                     @ 11,23 say 'é≤ Ø†∞≤®§†:' get pr1 pict'9999'
                     @ 11,41 say 'ÑÆ Ø†∞≤®§†:' get pr2 pict'9999'
                     @ 12,23 say 'è∞Æ∂•≠≤: ' get pr0 pict'999.99'
                     @ 12,41 say 'ë •§.∂•≠† §/≠:' get l0 valid l0='§'.or.l0='≠'.or.l0='d'.or.l0='n'
                     @ 13,23 say 'ë ¢†´≥≤•≠ ™≥∞±: ' get zena1 pict'999999.999999'
                     @ 14,23 say 'Ü•´†•≤• ´® ≠≥´®∞†≠• §/≠ ?' get l1 valid l1='§'.or.l1='≠'
                     @ 15,23 say 'ë†¨Æ ß† Æ≤∞®∂ ±≤Æ©≠Æ±≤® §/≠ ?' get l2 valid l2='§'.or.l2='≠'
                     chet()
                     restore screen  from ek1
                        if lastkey()=27
                            set key -4 to prik
                            restore screen  from ek1
                            return
                        endif
          set key - 6 to
          if 0 < zena1
             l0='≠'
          endif
            open_obap(loc0:=81)
             do case
                case ll2='Ø'
                     set order to 1
                case ll2='≠'
                     set order to 3
             endcase
              ds0=sch0
              find '&ds0'
           if found()
              do while substr(part,1,3)=sch0
                 if val(substr(part,4,4))<pr1.or.val(substr(part,4,4))>pr2
                          if .not. eof() ; skip ; loop ; else ; exit ; endif
                  endif
                 if l2='§'.and. 0 < ksal
                          if .not. eof() ; skip ; loop ; else ; exit ; endif
                  endif
                  part1=part
                  mk0=mk
                  zena0=round(zena,j4)
             *    kol0=kkol
             *  if pr0 <> 100
                  if mk0='°∞'
                     kol0=round((kkol*pr0)/100,0) && ≥≤Æ∑≠•≠Æ
                  else
                     kol0=round((kkol*pr0)/100,j3) && ≥≤Æ∑≠•≠Æ
                  endif
             *  endif
                  ksal1=ksal

           if ksal > 10.and.kkol > 0
              if l0='≠'.or.l0='n'
                if zena1=0
                  ksal0=round((ksal*pr0)/100,j1)
                else
                  ksal0=round(abs(kol0*zena1-ksal1),j1)
                endif
              else
                  ksal0=round((kol0*zena0),j1)
              endif
           *      if mk0='°∞'
           *         kol0=round(ksal0/zena0,0) && ≥≤Æ∑≠•≠Æ
           *      else
           *         kol0=round(ksal0/zena0,1) && ≥≤Æ∑≠•≠Æ
           *      endif
           *    endif
           else
                  ksal0=ksal
                  kol0=kkol
           endif
               if l1='§'
                  ll12='§'
                  store 0 to kol0,ksal0
                  ap0='0=0' &&   ≤.•. ≠ø¨† ≥±´Æ¢®•
               else
                  ap0='(.not.kol0=0).or.(.not.ksal0=0)'
               endif
                   if &ap0
     if 0 < zena1
       kol0=0
     endif
   if -2 < ksal0-ksal.and.ksal0-ksal < 0.and.kkol-kol0=0
     store ksal to ksal0
   endif
   if  0 < ksal0-ksal.and.ksal0-ksal < 2.and.kkol-kol0=0
     store ksal to ksal0
   endif
               if l1='§'
                  store 0 to kol0,ksal0
               endif


     if dk1='d'  && d0
        open_dpar(loc0:=47)
               appe blank
        rec_lock()
        repl  nom with str(nom0,4), part with part1,mk with mk0,;
        kol with kol0, dast with ksal0, data with data0
              if l0='§'.or.l0='d'
                 repl zena with zena0
              endif
          rec_unlock()
          dsto0=dsto0+ksal0
      @ p0,23 say dsto0 pict "99999999999.99"
     else
       open_kpar(loc0:=48)
               appe blank
       rec_lock()
       repl  nom with str(nom0,4), part with part1, mk with mk0,;
       kol with kol0, kast with ksal0, data with data0
              if l0='§'.or.l0='d'
                 repl zena with zena0
              endif
      rec_unlock()
          ksto0=ksto0+ksal0
      @ p0,60 say ksto0 pict "99999999999.99"
     endif
                   endif
              sele 6
                if .not. eof() ; skip ; else ; exit ; endif
              enddo
           endif
            @ 23+ml0,15 say '               è∞Æ£∞†¨†≤† Ø∞®™´æ∑®          '
                       i0=inkey(0)
            @ 23+ml0,15 say space(51)
        enddo
           set key -4 to prik
                         return


      ************** è∞Æ∂•§≥∞† ß† Ø∞®™´æ∑¢†≠• ≠† £∞ 60 *****************
                            func pr60
           save screen
           set key -5 to
           clear gets
           @ 11,21,15,59 box ram1
           @ 12,22 clea to 14,58
          pt1=1
          pt2=9999
          part0=0
          sch1='   '
          @ 12,27 say 'èêéñÖÑìêÄíÄ èêàäãûóÇÄ Éê.60'
          @ 13,22 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† ∞-§≠†≤† ±-™†: ' get sch1
          @ 14,22 say 'é≤ Ø†∞≤®§† :' get pt1  pict '9999'
          @ 14,42 say 'ÑÆ Ø†∞≤®§† :' get pt2  pict '9999'
                     chet()
                        if lastkey()=27 .or. sch1='   '
                            set key -5 to  pr60
                            restore screen
                            @  3,73 get papk0  pict '99'
                            chet()
                            return
                        endif
            dsp0=sch1
            open_obap(loc0:=82)  &&  aobi
                  find '&dsp0'
                     if .not. found()
                       @ 18,26 say 'Hø¨†≤• §¢®¶•≠® ØÆ ≤†ß® ±¨•≤™† '
                       i0=inkey(0)
                       restore screen
                       @  3,73 get papk0  pict '99'
                       chet()
                       return
                     endif
          restore screen
            iz0='1'
             p0=9
             store 0 to  ksto2,ksto31,ksto32,ksto33,ksto34,ksto35,ksto36,ksto39
     do while substr(part,1,3)=sch1
          if   val(substr(part,4,4))<pt1 .or. val(substr(part,4,4))>pt2
             if .not. eof() ; skip ; loop ; else ; exit ; endif
          endif
            iz0='1'
            part0=val(substr(part,4,4))
            dsp0=sch1+str(part0,4)
            ksto1=0
        do while .t.
         do case
            case iz0='1'
                 dsp1='601'+str(part0,4)
                 sch0='601'
                 part4='601'+str(part0,4)
                 iz0='2'
            case iz0='2'
                 dsp1='602'+str(part0,4)
                 sch0='602'
                 part4='602'+str(part0,4)
                 iz0='3'
            case iz0='3'
                 dsp1='603'+str(part0,4)
                 sch0='603'
                 part4='603'+str(part0,4)
                 iz0='4'
            case iz0='4'
                 dsp1='604'+str(part0,4)
                 sch0='604'
                 part4='604'+str(part0,4)
                 iz0='5'
            case iz0='5'
                 dsp1='605'+str(part0,4)
                 sch0='605'
                 part4='605'+str(part0,4)
                 iz0='6'
            case iz0='6'
                 dsp1='606'+str(part0,4)
                 sch0='606'
                 part4='606'+str(part0,4)
                 iz0='7'
            case iz0='7'
                 dsp1='609'+str(part0,4)
                 sch0='609'
                 part4='609'+str(part0,4)
                 iz0='8'
            case iz0='8'
                   ksto2=ksto2+ksto1
              if .not. ksto2=0
                   @  7, 6 say sch1
                   @  7,23 say ksto2 pict "99999999999.99"
              endif
   if .not. ksto1=0
       open_dpar(loc0:=48)
       appe blank
       rec_lock()
       repl  nom with str(nom0,4), part with sch1+str(part0,4),mk with '´¢',;
       dast with ksto1, data with data0
       rec_unlock()
   endif
         exit
         endcase
              sele 6
              find '&dsp1'
                  ksto0=ksal
                  kast1=ksal
              if found() .and. (.not.ksal=0)
       open_kpar(loc0:=49)
               appe blank
       rec_lock()
       repl  nom with str(nom0,4), part with part4, mk with '´¢',;
       kast with kast1, data with data0
       rec_unlock()
          ksto1=ksto1+kast
         do case
            case sch0='601'
                  ksto31=ksto31+kast
            case sch0='602'
                  ksto32=ksto32+kast
            case sch0='603'
                  ksto33=ksto33+kast
            case sch0='604'
                  ksto34=ksto34+kast
            case sch0='605'
                  ksto35=ksto35+kast
            case sch0='606'
                  ksto36=ksto36+kast
            case sch0='609'
                  ksto39=ksto39+kast
         endcase
              endif

          if .not. ksto31=0
      @  8,43 say '601'
      @  8,60 say  ksto31 pict "99999999999.99"
          endif
          if .not. ksto32=0
      @  9,43 say '602'
      @  9,60 say  ksto32 pict "99999999999.99"
          endif
          if .not. ksto33=0
      @ 10,43 say '603'
      @ 10,60 say  ksto33 pict "99999999999.99"
          endif
          if .not. ksto34=0
      @ 11,43 say '604'
      @ 11,60 say  ksto34 pict "99999999999.99"
          endif
          if .not. ksto35=0
      @ 12,43 say '605'
      @ 12,60 say  ksto35 pict "99999999999.99"
          endif
          if .not. ksto36=0
      @ 13,43 say '606'
      @ 13,60 say  ksto36 pict "99999999999.99"
          endif
          if .not. ksto39=0
      @ 14,43 say '609'
      @ 14,60 say  ksto39 pict "99999999999.99"
          endif
        enddo
              sele 6
                  find '&dsp0'
                 if .not. eof() ; skip ; else ; exit ; endif
     enddo
    if .not. ksto2=0
        open_dobo(loc0:=57)
        appe blank
        rec_lock()
        repl nom with str(nom0,4), sch with sch1, dsto with ksto2, data with data0
        rec_unlock()
    endif
        open_kobo(loc0:=53)
    if .not. ksto31=0
        appe blank
        rec_lock()
        repl nom with str(nom0,4), sch with '601', ksto with ksto31,;
        data with data0
        rec_unlock()
    endif
    if .not. ksto32=0
        appe blank
        rec_lock()
        repl nom with str(nom0,4), sch with '602', ksto with ksto32,;
        data with data0
        rec_unlock()
    endif
    if .not. ksto33=0
        appe blank
        rec_lock()
        repl nom with str(nom0,4), sch with '603', ksto with ksto33,;
        data with data0
        rec_unlock()
    endif
    if .not. ksto34=0
        appe blank
        rec_lock()
        repl nom with str(nom0,4), sch with '604', ksto with ksto34,;
        data with data0
        rec_unlock()
    endif
    if .not. ksto35=0
        appe blank
        rec_lock()
        repl nom with str(nom0,4), sch with '605', ksto with ksto35,;
        data with data0
        rec_unlock()
    endif
    if .not. ksto36=0
        appe blank
        rec_lock()
        repl nom with str(nom0,4), sch with '606', ksto with ksto36,;
        data with data0
        rec_unlock()
    endif
    if .not. ksto39=0
        appe blank
        rec_lock()
        repl nom with str(nom0,4), sch with '609', ksto with ksto39,;
        data with data0
        rec_unlock()
    endif
       open_arhi(loc0:=62)
       appe blank
        rec_lock()
       repl nom with str(nom0,4), papk with str(papk0,3),dok with 'Ø∞®™´æ∑¢†≠• ≠† £∞.60 ØÆ ±-™† '+sch1,;
       data with data0, vek with subs(vek0,1,2), reg with dtoc(date())
        rec_unlock()
            zvan()
            @ 23+ml0,15 say '                  è∞Æ£∞†¨†≤† Ø∞®™´æ∑®              '
            i0=inkey(0)
            @ 23+ml0,15 say space(51)
    if .not. ksto2=0
      nom0=nom0+1
    endif
                   set key -5 to  pr60
   @  3,17 say str(nom0,5)+'-'+data0
   @  6, 0 clea to 17,36
   @  6,43 clea to 17,75
   @  3,73 get papk0  pict '99'
        chet()
                         return


******************* è∞®™´æ∑¢†≠• ≠† £∞.61 **********************

                       proc gr61
           save screen
           set key -6 to
           clear gets
          sch1='   '
          sch2='   '
          pat1=0
          ksto1=0
      do while .t.
          mk0='´¢'
          pt1=1
          pt2=9999
          save screen
           @ 11,21,17,59 box ram1
           @ 12,22 clea to 16,58
@ 12,24 say 'èêéñÖÑìêÄíÄ èêàäãûóÇÄ Éê.61,62,66'
@ 13,22 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† ∞-§≠†≤† ±-™†: ' get sch2
@ 14,22 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† Ø-§≠†≤† ±-™†: ' get sch1
@ 15,22 say 'é≤ Ø†∞≤®§† :' get pt1  pict '9999'
@ 15,42 say 'ÑÆ Ø†∞≤®§† :' get pt2  pict '9999'
   chet()
      if sch1='303'
@ 16,22 say 'Ç∫¢•§•≤• ≠Æ¨. ≠† Ø-§†≤† ØÆ 303 :' get pat1 pict '9999'
   chet()
      store str(pat1,4) to part1
      mk0='´¢'
      endif
                      if lastkey()=27 .or. sch1='   '
                            set key -6 to gr61
                            restore screen
                            exit
                      endif
   if  .not. (substr(sch1,1,2)='70'.or.substr(sch1,1,2)='12'.or.sch1='303')
                       @ 18,14 say 'è∞-∞†≤† Ø∞•µ¢∫∞´ø ∞-§® ±†¨Æ ØÆ £∞.70, 12 ®´® ±-™† 303'
                       i0=inkey(0)
                       restore screen
                       @  3,73 get papk0  pict '99'
                       chet()
                       return
   endif
            dsp0=sch1
            open_obap(loc0:=83) && aobi
                  find '&dsp0'
                     if .not. found()
                       @ 18,26 say 'Hø¨†≤• §¢®¶•≠® ØÆ ≤†ß® ±¨•≤™†'
                       i0=inkey(0)
                       restore screen
                       @  3,73 get papk0  pict '99'
                       chet()
                       return
                     endif
          restore screen
        if pat1 = 0
            ksto1=0
        endif
        do while substr(part,1,3)=sch1
          if   val(substr(part,4,4))<pt1 .or. val(substr(part,4,4))>pt2
              if .not. eof() ; skip ; loop ; else ; exit ; endif
          endif
            if  pat1 > 0
                  part0=substr(part,4,4)
            else
                  part0=substr(part,4,4)
                  part1=substr(part,4,4)
            endif
                  dsp1=sch2+part0
                  dsp0=sch1+part1
                  find '&dsp1'
                  store ksal to dast0,kast0
              if found() .and. (.not.kast0=0)
                     ksto1=ksto1+kast0
      @  7, 6 say sch1
      @  7,23 say ksto1 pict "99999999999.99"
      open_dpar(loc0:=49)
              appe blank
      rec_lock()
      repl  nom with str(nom0,4), part with sch1+part1,mk with mk0 ,;
      dast with dast0, data with data0
      rec_unlock()
      @  8,43 say sch2
      @  8,60 say ksto1 pict "99999999999.99"
      open_kpar(loc0:=50)
               appe blank
      rec_lock()
      repl  nom with str(nom0,4), part with sch2+part0, mk with '´¢',;
      kast with kast0, data with data0
      rec_unlock()
              endif
              sele 6
                  find '&dsp0'
                if .not. eof() ; skip ; else ; exit ; endif
                        if pat1 > 0
                             exit
                        endif
        enddo
     enddo

              if .not.ksto1=0
    open_dobo(loc0:=58)
    appe blank
    rec_lock()
    repl nom with str(nom0,4), sch with sch1, dsto with ksto1, data with data0
    rec_unlock()
    open_kobo(loc0:=54)
    appe blank
    rec_lock()
    repl nom with str(nom0,4), sch with sch2, ksto with ksto1,;
    data with data0
    rec_unlock()
    open_arhi(loc0:=63)
    appe blank
    rec_lock()
    repl nom with str(nom0,4), papk with str(papk0,3),dok with 'Ø∞®™´æ∑¢†≠• ≠† ±-™† '+sch2,;
    data with data0, vek with subs(vek0,1,2)
    if field(14)='REG'
       repl reg with dtoc(date())
    endif
    rec_unlock()
      @ 18,29 say 'H†≤®±≠•≤• ™Æ© §† • ™´†¢®∏'
               i0=inkey(0)
               @ 18,27 say '                               '
   @  6, 0 clea to 17,36
   @  6,43 clea to 17,75
    nom0=nom0+1
              endif
           set key -6 to gr61
    @  3,17 say str(nom0,5)+'-'+data0
    @  3,73 get papk0  pict '99'
        chet()
                       return



******************* èØ∞®™´æ∑¢†≠• £∞ ∞7 *******************
                       proc r7
           save screen
            set key -7 to
           clear gets
           @ 11,21,15,59 box ram1
           @ 12,22 clea to 14,58
          pt1=1
          pt2=9999
          sch1='123'
          sch2='   '
          @ 12,28 say 'èêéñÖÑìêÄíÄ èêàäãûóÇÄ ê.7'
          @ 13,22 say 'Ç∫¢•§•≤• ∏®¥∫∞† ≠† Ø-§≠†≤† ±-™†: ' get sch2
          @ 14,22 say 'é≤ Ø†∞≤®§† :' get pt1  pict '9999'
          @ 14,42 say 'ÑÆ Ø†∞≤®§† :' get pt2  pict '9999'
                     chet()
                      if lastkey()=27 .or. sch2='   '
                            set key -7 to  r7
                            restore screen
                            @  3,73 get papk0  pict '99'
                            chet()
                            return
                      endif
   if  .not. (substr(sch2,1,1)='7')
                       @ 18,24 say 'í†ß® Ø∞Æ∂•§≥∞† Ø∞®™´æ∑¢† ±†¨Æ ∞.7'
                       i0=inkey(0)
                       restore screen
                       @  3,73 get papk0  pict '99'
                       chet()
                       return
   endif
            dsp0=sch1
            open_obap(loc0:=84)  &&  aobi
                  find '&dsp0'
                     if .not. found()
                       @ 18,26 say 'Hø¨†≤• §¢®¶•≠® ØÆ ≤†ß® ±¨•≤™†'
                       i0=inkey(0)
                       restore screen
                       @  3,73 get papk0  pict '99'
                       chet()
                       return
                     endif
          restore screen
            ksto1=0
        do while substr(part,1,3)=sch1
          if   val(substr(part,4,4))<pt1 .or. val(substr(part,4,4))>pt2
             if .not. eof() ; skip ; loop ; else ; exit ; endif
          endif
                  part0=substr(part,4,4)
                  dsp1=sch2+part0
                  dsp0=sch1+part0
                  find '&dsp1'
                  store ksal to dast0,kast0
                  kol0=kkol
                  mk0=mk
              if found() .and. (.not.kast0=0)
                     ksto1=ksto1+kast0
      @  7, 6 say sch2
      @  7,23 say ksto1 pict "99999999999.99"
      open_kpar(loc0:=51)
         appe blank
      rec_lock()
      repl  nom with str(nom0,4), part with sch1+part0, mk with '´¢',;
      kast with kast0, data with data0
      rec_unlock()
      @  8,43 say sch1
      @  8,60 say ksto1 pict "99999999999.99"
      open_dpar(loc0:=50)
      appe blank
      rec_lock()
      repl  nom with str(nom0,4), part with sch2+part0,mk with mk0,;
      kol with kol0, dast with dast0, data with data0
      rec_unlock()
              endif
              sele 6
                  find '&dsp0'
                if .not. eof() ; skip ; else ; exit ; endif
        enddo
              if .not.ksto1=0
    open_dobo(loc0:=59)
    appe blank
    rec_lock()
    repl nom with str(nom0,4), sch with sch2, dsto with ksto1, data with data0
    rec_unlock()
    open_kobo(loc0:=55)
    appe blank
    rec_lock()
    repl nom with str(nom0,4), sch with sch1, ksto with ksto1,;
    data with data0
    rec_unlock()
    open_arhi(loc0:=64)
    appe blank
    rec_lock()
    repl nom with str(nom0,4), papk with str(papk0,3),dok with 'Ø∞®™´æ∑¢†≠• ≠† ±-™† '+sch2,;
    data with data0, vek with subs(vek0,1,2)
    if field(14)='REG'
       repl reg with dtoc(date())
    endif
    rec_unlock()
      @ 18,29 say 'H†≤®±≠•≤• ™Æ© §† • ™´†¢®∏'
               i0=inkey(0)
               @ 18,27 say '                               '
   @  6, 0 clea to 17,36
   @  6,43 clea to 17,75
    nom0=nom0+1
              endif
            set key -7 to  r7
    @  3,17 say str(nom0,5)+'-'+data0
    @  3,73 get papk0  pict '99'
        chet()
                       return

      ************** è∞Æ∂•§≥∞† ß† ®ßØ®±¢†≠• ≠† ±≤Æ™† **********
                         proc izpis
   save screen
   set key -2 to
   pr1=1
   pr2=9999
   sch1='702'
   set dele on
           save screen
           clear gets
           @ 10,22,14,59 box ram1
           @ 11,23 clea to 13,58
                     @ 11,31 say 'àáèàëÇÄôÄ èêéñÖÑìêÄ'
                     @ 12,28 say 'Ç∫¢•§•≤• ≠† ±¨•≤™†≤†:' get sch1
                     @ 13,24 say 'é≤ Ø†∞≤®§†:' get pr1 pict'9999'
                     @ 13,42 say 'ÑÆ Ø†∞≤®§†:' get pr2 pict'9999'
                     chet()

                        if lastkey()=27 .or. sch1='   '
                            set key -2 to izpis
                            restore screen
                            @  3,73 get papk0  pict '99'
                            chet()
                            set dele off
                            return
                        endif
          restore screen
    dok1='®ßØ®±¢†π† ÆØ•∞†∂®ø ØÆ '+sch1+' ß† ¨•±•∂ '+data0
    @ 18,20 say '     è∞Æ£∞†¨†≤† ∞†°Æ≤®, ¨Æ´ø ®ß∑†™†©≤•   '
    open_dpar(loc0:=51)
    open_kpar(loc0:=52)
    open_obap(loc0:=85) && aobi
    find '&sch1'
         if .not.(subs(sch1,1,1)='7')
              @ 18,20 say    'è∞Æ£∞†¨†≤• ≠• ®ßØ®±¢† ØÆ ≤†ß® ±¨•≤™†  '
              i0=inkey(0)
              @ 18, 0 say space(80)
                  restore screen
                  @  3,73 get papk0  pict '99'
                      chet()
              return
         endif
     stok1()
  store 0 to dsto0,dast0,kkol0,ksal0
  do while substr(part,1,3)=sch1
                 if val(substr(part,4,4))<pr1.or.val(substr(part,4,4))>pr2
                    if .not. eof() ; skip ; loop ; else ; exit ; endif
                 endif
   part1=part
      if kkol>0
   kol0=kkol
   part0=sch2+substr(part,4,4)
     else
        if .not. eof() ; skip ; loop ; else ; exit ; endif
     endif
     sele 6
     find '&part0'
      dast0=round(kol0*zena,j1)
      mk0=mk
      zena0=zena
      kkol0=kkol
      ksal0=ksal
   if -2 < ksal0-dast0.and.ksal0-dast0 < 0.and.kkol0-kol0=0
     store ksal0 to dast0
   endif
   if  0 < ksal0-dast0.and.ksal0-dast0 < 2.and.kkol0-kol0=0
     store ksal0 to dast0
   endif
    sele 4
      appe blank
      rec_lock()
      repl nom with str(nom0,4),part with sch1+substr(part0,4,4),mk with mk0,zena with zena0,;
      kol with kol0,dast with dast0,data with data0
      rec_unlock()
      dsto0=dsto0+dast
    sele 5
      appe blank
      rec_lock()
      repl nom with str(nom0,4),part with part0,mk with mk0,zena with zena0,;
      kol with kol0,kast with dast0,data with data0
      rec_unlock()
       sele 6
        find '&part1'
        if .not. eof() ; skip ; else ; exit ; endif
  enddo
   if 0 <> dsto0
      open_dobo(loc0:=60)
      appe blank
      rec_lock()
      repl nom with str(nom0,4),sch with sch1,dsto with dsto0,;
           data with data0
      rec_unlock()
      open_kobo(loc0:=56)
      appe blank
      rec_lock()
      repl nom with str(nom0,4),sch with sch2,ksto with dsto0,;
           data with data0
      rec_unlock()
      open_arhi(loc0:=65)
      appe blank
      rec_lock()
      repl papk with str(papk0,3),data with data0, vek with subs(vek0,1,2), nom with str(nom0,4), dok with dok1
      if field(14)='REG'
         repl reg with dtoc(date())
      endif
      rec_unlock()
    @ 18,20 say 'ë≤Æ©≠Æ±≤≤† ≠† ÆØ•∞†∂®ø≤† • :'+str(dsto0,j0,j1)
              i0=inkey(0)
    @ 18, 0 say space(80)
    set key -2 to izpis
    nom0=nom0+1
   endif
    @  3,17 say str(nom0,5)+'-'+data0
    @  3,73 get papk0  pict '99'
        chet()
                         set dele off
                         return

      ************** è∞Æ∂•§≥∞† ß† Ø∞®™´æ∑¢†≠•≠† ÑÑë  **********
                         proc prikdds
           save screen
           set key -4 to
           @ 11,21,13,59 box ram1
           @ 12,22 clea to 12,58
           @ 12,28 say 'èêéñÖÑìêÄíÄ èêàäãûóÇÄ ÑÑë'
           i0=inkey(0)
           restor screen
                      if lastkey()=27
                            set key -4 to prikdds
                            restore screen
                            @  3,73 get papk0  pict '99'
                            chet()
                            return
                      endif
            store 0 to dsto1,ksto1
            open_dpar(loc0:=52)
            set order to 2
            dn0='453   1'+subs(data0,4,2)+data0
            find &dn0
            if found()
               do while part+subs(data,4,2)+data=dn0
                 ksto1=ksto1+dast

                             if .not.eof()
                                skip
                                loop
                             else
                                exit
                             endif
               enddo
            endif
            open_kpar(loc0:=52)
            set order to 2
            dn0='453   2'+subs(data0,4,2)+data0
            find &dn0
            if found()
               do while part+subs(data0,4,2)+data=dn0
                 dsto1=dsto1+kast
                             if .not.eof()
                                skip
                                loop
                             else
                                exit
                             endif
               enddo
            endif

              if (.not.dsto1=0).or.(.not.ksto1=0)
      open_dpar(loc0:=52)
      appe blank
      rec_lock()
      repl  nom with str(nom0,4), part with '453   2',mk with '´¢',;
      dast with dsto1, data with data0
      if dsto1 < ksto1
         appe blank
         repl  nom with str(nom0,4), part with '453   8',mk with '´¢',;
         dast with ksto1-dsto1, data with data0
      endif
      rec_unlock()
      open_kpar(loc0:=53)
      appe blank
      rec_lock()
      repl  nom with str(nom0,4), part with '453   1', mk with '´¢',;
      kast with ksto1, data with data0
      if ksto1 < dsto1
         appe blank
         repl  nom with str(nom0,4), part with '453   9',mk with '´¢',;
         kast with dsto1-ksto1, data with data0
      endif
      rec_unlock()
      @  7, 6 say '453'
      @  8,43 say '453'
      if ksto1 < dsto1
         store dsto1 to ksto1
      else
         store ksto1 to dsto1
      endif
         @  7,23 say dsto1 pict "99999999999.99"
         @  8,60 say ksto1 pict "99999999999.99"
      open_dobo(loc0:=61)
      appe blank
      rec_lock()
      repl nom with str(nom0,4), sch with '453', dsto with dsto1, data with data0
      rec_unlock()
      open_kobo(loc0:=57)
      appe blank
      rec_lock()
      repl nom with str(nom0,4), sch with '453', ksto with ksto1, data with data0
      rec_unlock()
              endif
      open_arhi(loc0:=66)
      appe blank
      rec_lock()
      repl nom with str(nom0,4), papk with str(papk0,3),dok with 'Ø∞®™´æ∑.  .dds......'+data0,;
      data with data0, vek with subs(vek0,1,2)
      if field(14)='REG'
         repl reg with dtoc(date())
      endif
      rec_unlock()
      @ 18,29 say 'H†≤®±≠•≤• ™Æ© §† • ™´†¢®∏'
               i0=inkey(0)
      @ 18, 0 say space(80)
   @  6, 0 clea to 17,36
   @  6,43 clea to 17,75
    nom0=nom0+1
      *       endif
            set key -4 to  prikdds
    @  3,17 say str(nom0,5)+'-'+data0
*   @  3,73 get papk0  pict '99'
       @  3,73 get papk0 pict '99' valid papk0=0.or.papk0=1.or.papk0=2
        chet()
                         return
      ************** àß∑®±´ø¢†≠• ≠† †¨Æ∞≤®ß†∂®®   ********
                       proc amort
           set key 286 to
           save screen
           clear gets
           sch0='241'
           part2=1
           bm0=0
           pr1=1
           pr2=9999
           @  9,21,14,58 box ram1
           @ 10,22 clea to 13,57
               @ 10,24 say 'èêéñÖÑìêÄíÄ àáóàëãüÇÄ ÄåéêíàáÄñàà'
               @ 11,24 say 'èÆ±Æ∑•≤• Ø†∞≤®§†≤† ØÆ 603 : ' get part2 pict '9999'
               @ 12,24 say 'Å∞Æ© ≠† ¨•±•∂®≤• ≠† †¨Æ∞≤ :   'get bm0 pict '99'  message 'ÇHàåHàÖ'
               @ 13,24 say 'é≤ Ø†∞≤®§†:' get pr1 pict'9999'
               @ 13,41 say 'ÑÆ Ø†∞≤®§†:' get pr2 pict'9999'
               chet()  &&   msg at 23,15,65
                        if lastkey()=27 .or. nom0=0
                            set key 286 to amort
                            restore screen
                            return
                        endif
          restore screen
          dsto0=0
          ksto0=0
            open_obap(loc0:=87) && aobi
              ds0=sch0
              find '&ds0'
           if found()
               do while substr(part,1,3)=sch0
                store 0 to ksal0,ksal1
                 if val(substr(part,4,4))<pr1.or.val(substr(part,4,4))>pr2
                          if .not. eof() ; skip ; loop ; else ; exit ; endif
                 endif
                  part1=part
                  mk0='°∞'
                  ksal0=ksal
                  zena0=zena
                  re0=recno()
        if subs(dnev,7,4)=vek0 .and.bm0=12  && é£∞†≠®∑†¢† ≠†∑•±´•≠†≤† †¨Æ∞≤®ß†∂®ø
           bm1=val(subs(dnev,4,2))   &&   ß† ¢∫¢•§•≠ ÑåÄ Ø∞•ß £Æ§®≠†≤†. à¨†
        else                         &&   ±¨®±∫´ ™Æ£†≤Æ ±• ≠†∑®±´ø¢† Ø∞®¨•∞≠Æ
           bm1=0                     &&   ß† 12 ¨•±•∂†.
        endif                        &&
           if bm0-bm1 < 0            &&   ì±´Æ¢®•≤Æ Æ≤±≤∞ø≠ø¢† §•©±≤¢®•≤Æ ≠†
              bm1=0                  &&  £Æ∞≠Æ≤Æ ≥±´Æ¢® ™Æ£†≤Æ ±• ®ß∑®±´ø¢†
           endif                     &&  ¨•±•∂ ß† ¨•±•∂
                  ds0='20'+substr(part1,4,1)+substr(part1,4,4)
                  find "&ds0"
                  ksal1=ksal
        if  .not. ksal0=ksal1
   if .not.zena0=0
       open_kpar(loc0:=54)
             appe blank
        if  ksal1-(ksal0+round(zena0*(bm0-bm1),2)) < zena0
            kast0=ksal1-ksal0
        else
            kast0=round(zena0*(bm0-bm1),2)
        endif
    rec_lock()
    repl  nom with str(nom0,4), part with part1, mk with mk0,kol with bm0-bm1,zena;
    with zena0, kast with kast0, data with data0
    rec_unlock()
          ksto0=ksto0+kast
   endif
      @  8,43 say sch0
      @  8,60 say ksto0 pict "99999999999.99"
        endif
              sele 6
              go re0
                if .not. eof() ; skip ; else ; exit ; endif
              enddo
           endif
   if .not.ksto0=0
      open_kobo(loc0:=58)
      appe blank
      rec_lock()
      repl nom with str(nom0,4), sch with sch0, ksto with ksto0,;
      data with data0
      rec_unlock()
      open_dpar(loc0:=53)
      appe blank
      rec_lock()
      repl  nom with str(nom0,4), part with '603'+str(part2,4),mk with mk0,;
      kol with kol0, dast with ksto0, data with data0
      rec_unlock()
      open_dobo(loc0:=62)
      appe blank
      rec_lock()
      repl nom with str(nom0,4), sch with '603', dsto with ksto0, data with data0
      rec_unlock()
      @  7, 6 say '603'
      @  7,23 say ksto0 pict "99999999999.99"
      open_arhi(loc0:=67)
      appe blank
      rec_lock()
      repl nom with str(nom0,4), papk with str(papk0,3),dok with '≠†∑®±≠†´• †¨Æ∞≤®ß†∂®ø',;
      data with data0, vek with subs(vek0,1,2)
      if field(14)='REG'
         repl reg with dtoc(date())
      endif
      rec_unlock()
                        zvan()
            @ 23+ml0,15 say '                  è∞Æ£∞†¨†≤† Ø∞®™´æ∑®              '
                       i0=inkey(0)
            @ 23+ml0,15 say space(51)
           set key 286 to amort
      nom0=nom0+1
   endif
   @  3,17 say str(nom0,5)+'-'+data0
   @  6, 0 clea to 17,36
   @  6,43 clea to 17,75
   @  3,73 get papk0  pict '99'
        chet()
                         return


      ************** è∞Æ∂•§≥∞† ß† ≤∫∞±•≠• ≠† §†≠∫∑≠®≤• ≠Æ¨•∞†  **************
                      proc dspis
                      set key -2 to
                      open_arhi(loc0:=13)
                      go re_0
                      dn2=dn
                      vid4=substr(vid,26,23)
                      set key -2 to  dspis
                      return
      ************** è∞Æ∂•§≥∞† ß† ≤∫∞±•≠• ≠† §†≠∫∑≠®≤• ≠Æ¨•∞†  **************
                      proc dnspis
                      re0=recno()
                      save screen
                      set key -3 to
                          open_regl(loc0:=13)
                          go top
                               if type(trim(dn2))='N'
                                   set order to 1
                                   set filter to
                                   dn20=trim(dn2)
                                   find "&dn20"
                               else
                                   set order to 2
                                   tars0=trim(dn2)
                                   locate for  0 < at(tars0,vvid)
                                 if .not.empty(tars0)
                                    set filter to 0 < at(tars0,vvid)
                                 endif
                               endif
           if tt0='20'.or.tt0='40'
                    if found()
              if tt0='40'
                @ 20,14,24,66 box ram1
                @ 21,15 clea to 23,65
              endif
                declare fiel[2]
                fiel[1]='dn'
                fiel[2]='vvid'
                 dbedit(21,23,22,60,fiel,"",'','',' ',' ')
            * endif
            *   declare fiel[2]
            *   fiel[1]='dn'
            *   fiel[2]='vvid'
            *    dbedit(21,23,22,60,fiel,"",'','',' ',' ')
            * endif
                 re3=recno()
                 bud0=ba
                 bin0=gb
                 re3=recno()
                 dn2=dn
              *  vid1='¥-∞†'
                 gr0=subs(gr,1,15)
                 vid5=vid
                 vid4=vvid
                 if field(8)='BF'
                    bf0=bf
                 endif
                 if field(9)='BA'
                    ba0=ba
                 endif
                 if field(10)='GB'
                    gb0=gb
                 endif

                @  21, 3 say space(61)
                    else
                @  23,15 say '     Hø¨† ¢∫¢•§•≠† ¥®∞¨† ± ≤Æß® §†≠∫∑•≠ ≠Æ¨•∞      '
                       i0=inkey(0)
                @  23,15 say space(57)
                    endif
                @  21,36 say space(49)
                      set key -3 to dnspis
                open_arhi(loc0:=68)
                go re0
            endif
            if tt0='50'
                     @ 23+ml0,15 say '  å†∞™®∞†≠• - "¨" ¢∫ß±≤†≠Æ¢ø¢†≠• - "¢" ™Æ≠≤∞†£•≠≤† '
                     ll1='51'
                     @ 19,14 clea to 24,66
                     @ 22,14,24,66 box ram1
                clea gets
                @ 10,26 say 'Ç∫¢•§® ®ß∞†ß†:' get tars1
                read
                if empty(tars1)
                    set filter to
                    set order to
                    go bott
                else
                    if type(trim(tars1))='N'
                       set order to 1
                       set filter to
                       dn20=trim(tars1)
                       find "&dn20"
                       if .not. found()
                          return
                       endif
                    else
                       set order to 2
                       tars0=trim(tars1)
                       locate for  0 < at(tars0,vvid)
                       if .not.empty(tars0)
                          set filter to 0 < at(tars0,vvid)
                       endif
                    endif
                endif
                declare fiel[3]
                fiel[1]='dn'
                fiel[2]='vvid'
                fiel[3]='br'
                declare imem[3]
                imem[1]='àÑÖHí. HéåÖê'
                imem[2]='H Ä à å Ö H é Ç Ä H à Ö'
                imem[3]=' Åê'
                @ 15,17,20+ml0,63 box ram1
                dbedit(16,18,19+ml0,62,fiel,"pfunk1",'',imem,'Õ','”')
                restore screen
                @ 10,26 say 'Ç∫¢•§® ®ß∞†ß†:' get tars1
                read
            endif

                restore screen
                      return
      ************** è∞Æ∂•§≥∞† ß† ®ß∑®±´ø¢†≠• ≠† ≠†§∂•≠™†   ***********
                          proc nadc
           save screen
           set key -41 to
           clear gets
           ll9='§'
           if sc6='≠'
              ra1=0
           endif
           @ 13,22,15,59 box ram1
           @ 14,23 clea to 14,58
                     @ 14,24 say 'Ç∫¢•§•≤• % ≠† ≠†§∂•≠™†≤† : ' get ra1 pict'999.99'
                     chet()
                        if lastkey()=27 .or. nom0=0
                            set key -41 to nadc
                            restore screen
                            return
                        endif
                            restore screen
                          return
      **************** å™®∞†≠•/∞†ß¨†∞™®∞†≠• ≠† ÆØ•∞†∂®ø  *************
                       proc mark
                       set filter to nom1 <= val(nom) .and. val(nom) <= nom2 .and.data=data3
                       go top
                         do while nom1 <= val(nom) .and. val(nom) <= nom2 .and.data=data3
                          if l0='¨'.or.l0='m'
                                del()
                          else
                              reca()
                          endif
                            if .not. eof() ; skip ; else ; exit ; endif
                         enddo
                      return
      ************** è∞Æ∂•§≥∞† ß† ®ß∑®±´ø¢†≠• ≠† ≠†§∂•≠™†   ***********
                          func markir
      *  clos all
         clos data
         papk0=0
         open_arhi(loc0:=69)
                  mark()
         clos data
         open_dobo(loc0:=63)
                  mark()
         clos data
         open_kobo(loc0:=59)
                   mark()
         clos data
         open_dpar(loc0:=54)
                  mark()
         clos data
         open_kpar(loc0:=55)
                  mark()
       if sc5='§'
         open_lihva()
                  mark()
       endif
       clos all
                           return


      ************** è∞Æ∂•§≥∞† ß† ®ß≤∞®¢†≠•    ***********
                          func iztri
                           podr_0=18
                           save all like podr_0 to podred
                           podred()
                           podr_0=21
                           save all like podr_0 to podred
                           podred()
                           podr_0=22
                           save all like podr_0 to podred
                           podred()
                           podr_0=23
                           save all like podr_0 to podred
                           podred()
                           podr_0=24
                           save all like podr_0 to podred
                           podred()
                           podr_0=25
                           save all like podr_0 to podred
                           podred()
                           podr_0=26
                           save all like podr_0 to podred
                           podred()
                          return


       FUNCTION  del()
                          rec_lock()
                             dele
                          rec_unlock()
      return
       FUNCTION  reca()
                          rec_lock()
                             recall
                          rec_unlock()
      return

