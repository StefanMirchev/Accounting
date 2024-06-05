   *FIS6.PRG  izch kalen nomenkl minosi prenom proz

                      @  3,23,21,56 box ram1
                      @  4,24 clea to 20,55
                      @  4,29 say 'K  О  Р  Е  K  Ц  И  И'
                      @  5,28 say '------------------------'
                      @  6,32 prompt '1. Реиндек▒а╢и┐'
                      @  8,32 prompt '2. Алго░и▓║м   '
                      @ 10,32 prompt '3. Б╛дже▓ни ▒ме▓ки'
                      @ 12,32 prompt '4. Пе╖а▓ на ▒▓░ани╢а'
                      @ 14,32 prompt '5. Hова година     '
                      @ 16,32 prompt '6. Фи╕ове          '
                      @ 18,32 prompt '7. Дан║╖на ▓абли╢а '
                      @ 20,32 prompt '8. Б░ой ░або▓ни дни'
         *            save screen
                          menu to v2
                       if lastkey()=27
                              return
                       endif
         tt0='60'
   do case
      case v2=1
               podr_0=30
               save all like podr_0 to podred
               podred()
      case v2=2
                  sele 3
                  use &disc_1\fish\nome inde &disc_1\fish\nosi
     dni0='▒'
     sch0=0
     hara0=space(25)
     algo0=space(75)
   do while .t.
     ramka()
               set key -2 to nomenkl
               @ 23,25 say 'F3 - ▒пи▒║к на номенкла▓│░и▓е'
     @ 2,17 say 'АЛГОРИТЪМ ЗА ИЗЧИСЛЯВАHЕ HА HОМЕHKЛАТУРИТЕ'
     @ 3,16 say '--------------------------------------------'
     @ 5,20 say 'В║веде▓е номенкла▓│░ни┐ номе░ ' get sch0 pict "999"
       read
               set key -2 to
        if lastkey()=27
           exit
        endif
            sch1=str(sch0,3)
        find "&sch1"
        if .not.found()
               l0=2
               @ 23,18 say 'Hомекл. номе░ е нов ╣е да добави▓е ли ?'
               @ 23,58 prompt 'ДА'
               @ 23,61 prompt 'HЕ'
               menu to l0
             if l0=1
               appe blank
               repl sch with sch1, dni with dni0
             else
               loop
             endif
        endif
                    dni0=dni
                    hara0=hara
      @ 7,24 say 'Ха░ак▓е░и▒▓ика на ╕и┤║░а' get dni0
      @ 9,17 say 'Hаименование на ╕и┤║░а' get hara0
                    algo0=algo
      @ 23,15 say space(51)
     do while .t.
        @ 11,34 say 'Алго░и▓║м'
        @ 12,22 get algo0
        prome()
        read
        repl hara with hara0,algo with algo0, bs with bs, bud with bud,dni with dni0
           if lastkey()=27
              exit
           endif
     enddo
   enddo
      case v2=3

                  sele 3
                  if file("nomk.dbf")
                     use nomk inde ski
                  else
                     use &disc_1\fish\nome inde &disc_1\fish\nosi
                  endif
    sch0=0
   do while .t.
     ramka()
               set key -2 to nomenkl
               @ 23,25 say 'F3 - ▒пи▒║к на номенкла▓│░и▓е'
     @ 2,22 say 'БАHKОВА СМЕТKА HА БЮДЖЕТHО ВЗЕМАHЕ'
     @ 3,21 say '------------------------------------'
     @ 6,22 say 'В║веде▓е номенкла▓│░ни┐ номе░ ' get sch0 pict "999"
       read
               set key -2 to
        if lastkey()=27
           exit
        endif
            sch1=str(sch0,3)
        find "&sch1"
        if .not.found()
               l0=2
               @ 23,18 say 'Hомекл. номе░ е нов ╣е го добави▓е ли ?'
               @ 23,58 prompt 'ДА'
               @ 23,61 prompt 'HЕ'
               menu to l0
             if l0=1
               appe blank
               repl sch with str(sch0,3)
               @ 8,16 say ' Hаименование на ╕и┤║░а ' get hara
               read
             else
               return
             endif
         endif
              bud0  =bud
              prom0 =prom
              parag0=parag
              bs0   =bs
              ba0   =ba
              gb0   =gb
              obia10 =obia1
              obia20 =obia2
        @ 8,16 say ' Hаименование на ╕и┤║░а ' get hara
        @ 23,15 say space(51)
        @ 11, 5 say '       Б╛дже▓на о░ганиза╢и┐               Па░аг░а┤         П░оменлива'
        @ 12, 6 get bud0
        @ 12,48 get parag0
        @ 12,66 get prom0
        @ 14, 5 say '         IBAN                       БАHКА                     KЛОH    '
        @ 15, 6 get bs0
        @ 15,32 get ba0
        @ 15,61 get gb0
        @ 17, 5 say '       О▒нование за пла╣ане                            '
        @ 18, 6 get obia10
        @ 20, 6 get obia20
        read
        repl bs with bs0, bud with bud0,prom with prom0, ba with ba0, gb with gb0,;
             parag with parag0, obia1 with obia10, obia2 with obia20
   enddo
      case v2=4

          set prin off
          store 0 to b31,b32
              b3=1
              if file("s9998.prn")
                  !del s9998.prn
              endif
              save_0='&us_0'+'s'+nulb3()+'.prn'
              do while b3 < 999
                if file ("&save_0")
                  memowrit('s9998.prn', memoread('s9998.prn')+'s'+nulb3()+;
                  '.prn'+chr(13)+chr(10))
                 endif
                b3=b3+1
                save_0='&us_0'+'s'+nulb3()+'.prn'
              enddo

             if file("s9999.prn")
                 memowrit('s9998.prn', memoread('s9998.prn')+'s9999.prn'+chr(13)+chr(10))
             endif
             ramka()
           do while .t.
             @  3, 2 clea to 21+ml0,78
             @ 18, 3 clea to 21+ml0,78
             @  3,68,21+ml0,78 box ram1
             save1=memoedit(memoread("s9998.prn"),4,69,20+ml0,77,.t.,"fdobav",9,40,1,0)
             @ 2,27 say 'ОТПЕЧАТВАHЕ HА СТРАHИЦА '
             @ 3,26 say '-------------------------'
             @  6,20 say 'О▓ ▒▓░ани╢а         До ▒▓░ани╢а'
             @  8,16 say 'ВСЯKА СТРАHИЦА  ПРЕЗ СТРАHИЦА  СЛЕТИ СТРАHИЦИ'
             @ 10,21 say 'ОБРАБОТКА С EDIT'
             @ 10,40 say 'ОБРАБОТКА С EDI'
             @ 12,32 say 'ПЕЧАТ ОПЕРАЦИИ'
             @  6,33 get b31 pict '9999'
             @  6,53 get b32 pict '9999'
             read
              store b31 to b3
              save_0='&us_0'+'s'+nulb3()+'.prn'
             @  8,16 prompt 'ВСЯKА СТРАHИЦА'
             @  8,32 prompt 'ПРЕЗ СТРАHИЦА'
             @  8,47 prompt 'СЛЕТИ СТРАHИЦА'
             @ 10,21 prompt 'ОБРАБОТКА С EDIT'
             @ 10,40 prompt 'ОБРАБОТКА С EDI'
             @ 12,32 prompt 'ПЕЧАТ ОПЕРАЦИИ'
             menu to l1
       if l1=3
              b1=0
              @ 10, 2 clea to 21+ml0,58
              @ 10,16 say 'Главна книга 7 Мемо░.о░де░ои 4 :' get b1 pict '99'
              @ 12,16 say 'Б░ой на ▒▓░ани╢и▓е не пове╖е о▓ 7 б░о┐.'
              read
       endif
       if l1=4
           save screen
         * ! &disc_1\exe\edit   '&save_0'
           ! &disc_1\nc\\wpview '&save_0'
         * ! &disc_1\nc\\ncedit '&save_0'
           restore screen
           loop
       endif
       if l1=5
           save screen
           save_0='s'+nulb3()+'.prn'
           ! &disc_1\exe\edi &save_0
           restore screen
           loop
       endif
       if l1=6
            for i0=b31 to b32 step 1
            set prin on
            set prin to s0001.prn  &&  да не ▒е п░омен┐
            set cons off
              ?
              ?  space(55)+str(i0,4)+'-'+data0
              copy file s0001.prn to  &disc_0\s0001.prn
              inkey(3)
            set prin off
            set prin to
            set cons off
            next
            loop
       endif

             store b31 to i0, b3
            if b32 < b31
               store b31 to b32
            endif
                   if lastkey()=27        &&        .or.b31=0
                      clos all
                      set cons on
                      set prin off
                      set prin to
                      exit
                   endif
                   if b31=0.or.b32=0
                      loop
                   endif
                 ekpr0=1
                 @  3,68 clea to 21+ml0,78
                 @ 18+ml0, 2 clea to 21+ml0,78
                 @ 22+ml0,14,24+ml0,66 box ram1
                 @ 18+ml0,66,21+ml0,78 box ram1
                 @ 23+ml0,15 say space(51)
                 @ 19+ml0,68 prompt 'Е K Р А H'
                 @ 20+ml0,68 prompt 'П Е Ч А Т'
                 menu to ekpr0
               if lastkey()=27
                  loop
               endif
       ll10='д'
       if l1=3
          l1=1
            dele file s9999.prn
            for i0=b31 to b32 step 1
                 b3=i0
                 save_0='s'+nulb3()+'.prn'
                 memowrit('s9999.prn',memoread("s9999.prn")+memoread("&save_0"))
                 for i1=1 to 6
                    memowrit('s9999.prn',memoread("s9999.prn")+chr(13)+chr(10))
                 next
            next
            b3=1
       endif
            if ekpr0=1
                if s0000='д'
                   store 'y' to t0
                   s0000='н'
                endif
                pech()
                if t0='y'
                   store 'y' to t0
                   s0000='д'
                endif
                loop
            endif
       if l1=1 .or. l1=2
            ll10='д'
              if b32=0
                 store b31 to b32
              endif
                if file("&pb_0:&disc_0\s*.prn")
                    !del &pb_0:&disc_0\s*.prn   &&  да не ▒е п░омен┐
                endif
            for i0=b31 to b32 step l1
            b3=i0
            save_0='s'+nulb3()+'.prn'
            if file("&save_0")       //nnnnnnnnnnnnnnnnn
                    *  if pake='CHEF'.and. file ("&disc_1\bat\zan.bat")
                    *        pechzan()
                    *  else
                            copy file &save_0 to  &disc_0\&save_0
                    *  endif
              @ 23+ml0,15 say space(50)
            else
               loop
            endif
            next
       endif
           enddo

      case v2=5
               store dt0 to dt1
               store str(val(dt0)+1,2) to dt0
                  do ramka
                  @  2,28 say 'ОТKРИВАHЕ HА HОВА ГОДИHА'
                  @  3,27 say '--------------------------'
                  @ 11,28 say ' РАБОТHИ ДHИ ПО МЕСЕЦИ  '
                  @ 13,18 say '01  02  03  04  05  06  07  08  09  10  11  12'
                  @  5,25 say 'По▒о╖е▓е ╕и┤║░а на ┤и░ма▓а' get go0
                  @  7,30 say 'В║веде▓е година▓а' get dt0
                  @ 14,18 get m_01 pict "99"
                  @ 14,22 get m_02 pict "99"
                  @ 14,26 get m_03 pict "99"
                  @ 14,30 get m_04 pict "99"
                  @ 14,34 get m_05 pict "99"
                  @ 14,38 get m_06 pict "99"
                  @ 14,42 get m_07 pict "99"
                  @ 14,46 get m_08 pict "99"
                  @ 14,50 get m_09 pict "99"
                  @ 14,54 get m_10 pict "99"
                  @ 14,58 get m_11 pict "99"
                  @ 14,62 get m_12 pict "99"
         @ 16,17 say 'П░ове░ка на ПNo->кой▓о е по░едн номе░ в'
         @ 17,17 say 'Минимален о▒иг│░и▓елен до╡од по о▒новни'
         @ 18,17 say 'номи╖е▒ки дейно▒▓и и квали┤ика╢ионни г░│пи'
         @ 19,17 say 'п░о┤е▒ии и да ▒е ко░еги░а &disc_1\fish\fhlp.dbf'
         @ 20,17 say 'П░ове░ка и на HКП_Д и HКИД'
         @ 21,17 say 'Hа в▒еки ▓░┐бва да п░обав┐ 0.6 в ╕и┤║░ 102'
                     read
              if dt1=dt0
         @ 11,15 clea to 21,65
         @ 11,35 say 'ВHИМАHИЕ!'  color 'R+/B'
         @ 14,15 say 'Hедоп│▒▓имо е о▓к░иване▓о на нова▓а година в ▓ек│╣а▓а!'
         inkey(10)
               store dt1 to dt0
               return
              endif
                  save all like m_* to &disc_1\fish\merd
                  us0='c'
                     if lastkey()=27.or.substr(go0,1,1)=' '
                       store dt1 to dt0
                       return
                     endif
                          if  file("&us0:\&go0&dt0\*.*")
                             @ 21,14,24,66 box ram1
                             @ 22,15 clea to 23,65
                             set bell on
                             ?? chr(7)
                             ?? chr(7)
                             set bell off
                             @ 22,23 say 'ВHИМАHИЕ!'  color 'R+/B'
                             @ 22,33 say 'Година▓а ве╖е е о▓к░и▓а'
                               l0='н'
                               @ 23,22 say 'По▓в║░ждава▓е ли о▓к░иване▓о д/н ?' get l0  valid  l0='д'.or.l0='н'.or.l0='d'
                               read
                                       if l0='н'
                                          store dt1 to dt0
                                          return
                                       endif
                          else
                             !md &us0:\&go0&dt0
                          endif
                @ 23,23  say 'П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е !'
                if us0='c'
                  clos all
                   copy file mese.dbf to &us0:\&go0&dt0\mese.dbf
                   copy file godn.dbf to &us0:\&go0&dt0\godn.dbf
                   copy file spis.dbf to &us0:\&go0&dt0\spis.dbf
                   copy file sdni.ntx to &us0:\&go0&dt0\sdni.ntx
                   copy file dannom.mem to &us0:\&go0&dt0\dannom.mem
                   copy file harved.mem to &us0:\&go0&dt0\harved.mem
                   copy file namhar.mem to &us0:\&go0&dt0\namhar.mem
                   copy file nulstoi.mem to &us0:\&go0&dt0\nulstoi.mem
                   copy file rabodni.mem to &us0:\&go0&dt0\rabodni.mem
                   !cd &us0:\&go0&dt0
                   podr_0=30
                   save all like podr_0 to podred
                   @  4, 4 clea to 20,65
                   podred()

                endif
      case v2=6
             save screen
             @  8,14,24,66 box ram1
             @  9,15 clea to 20,65
             @ 21,14,24,66 box ram1
             @ 22,15 clea to 23,65
                 l0=1
                 @  9,15 clea to 11,65
                 @  9,20 say 'Желае▓е п░овека за мин. о▒иг п░агове: HЕ ДА'
                 @  9,58 prompt 'HЕ'
                 @  9,61 prompt 'ДА'
                 menu to l0
                 @  9,15 clea to 20,65
                 @ 22,15 clea to 23,65
                     if lastkey()=27
                       return
                     endif


             sele 1
             use spis inde nomi
               if l3='м'
                     sele 2
                     use mese inde sdni,dnsi
                else
                     sele 4
                     use godn inde gsdni,gdnsi
                endif
          do messec
          sdn1=' 81'+vek0+data0
          find '&sdn1'     && ДАТА HА ИЗПЛАЩАHЕ HА Д.ВЗЕМАHИЯ
          if  found()
              if suma=0
              *   repl suma with round(8+(val(me1)/100),j1)
              endif
          endif
          sdn1=' 82'+vek0+data0
          find '&sdn1'     && ДАТА HА ИЗПЛАЩАHЕ HА P.ЗАПЛАТИ
          if  found()
              if suma=0
               *  repl suma with round(1+(val(me1)/100),j1)
              endif
          endif
             sele 1
             use spis inde nomi
             do while .not. eof()
             nom0=nom
             nom1=nom0
             @  9,15 say nom1+' '+name+rabo
             nam0=name
             datn0=datn
             datu0=datu
             td_0=td
             set cent on
             if td='Р'
                 td_0=td
             *   nkid0=nkid
                 nkp1=subs(nkp,1,1)
                 osig0=osig
                 oid0=oid
                 pd0=pd
                 dene0=day(date0)
                 mone0=month(date0)
                 yeae0=year(date0)
                 denn0=day(datn)
                 monn0=month(datn)
                 yean0=year(datn)
                 denu0=day(datu)
                 monu0=month(datu)
                 yeau0=year(datu)
                 //  ме▒.назна╖.        назн.   ▓ек│╣.       назн. ▓ек│╣
                 if (.not.monn0=0).and.(monn0 >mone0).and.(yean0=yeae0)
                 // да не ▒е в║в ведомо▒▓▓а кога▓о е назна╖ен в ▒ледва╣и┐▓ ме▒е╢
                        if l3='м'
                              sele 2
                         else
                              sele 4
                         endif
                      sdn0='  7'+vek0+data0+nom0
                      find '&sdn0'
                        if  found()
                              @ 12,33 say 'ВHИМАHИЕ !'  color 'R+/B'
                              @ 14,24 say 'Е HАЗHАЧЕH/А/ В СЛЕДВАЩ МЕСЕЦ'
                              @ 16,21 say 'HАЗHАЧЕH '+dtoc(datn0)+'  УВОЛHЕH '+dtoc(datu0)
                              @ 18,21 say 'ESC п░ек║▒ване         Enter п░од║лжение'
                              inkey(0)
                              @  9,19 clea to 18,60
                                    if lastkey()=27
                                       set cons on
                                       ekpr0=1
                                       return NIL
                                     endif
                        endif
                 endif
                 if (.not.monn0=0).and.(monn0<mone0.or.monn0=mone0).and.;
                    (monu0=mone0).and.(.not.denu0=1).and.(yean0=yeae0)
                 // │волнен в ▓ек. ме▒е╢ е п░оп│▒на▓ в║в ведомо▒▓▓а
                        if l3='м'
                              sele 2
                         else
                              sele 4
                         endif
                      sdn0='  7'+vek0+data0+nom0
                      find '&sdn0'
                     if .not. found()
                      @ 12,33 say 'ВHИМАHИЕ !' color 'R+/B'
                      @ 14,24 say 'HЕ Е ВKЛЮЧЕH/А/ В ТЕKУЩИЯТ МЕСЕЦ'
                      @ 16,21 say 'HАЗHАЧЕH '+dtoc(datn0)+'  УВОЛHЕH '+dtoc(datu0)
                *     pauza()
                      @ 18,21 say 'ESC п░ек║▒ване         Enter п░од║лжение'
                      inkey(0)
                      @  9,19 clea to 18,60
                                    if lastkey()=27
                                       set cons on
                                       ekpr0=1
                                       return NIL
                                     endif
                     endif
                 endif


                  if (.not.monu0=0).and.(monu0<mone0.or.monu0=mone0).and.(yeau0=yeae0)
                        if l3='м'
                              sele 2
                         else
                              sele 4
                         endif
                      sdn0='  7'+vek0+data0+nom0
                      find '&sdn0'
                     if found()
                      @ 12,33 say 'ВHИМАHИЕ !' color 'R+/B'
                      @ 14,30 say 'ВЕЧЕ Е УВОЛHЕH/А/'
                      @ 16,21 say 'HАЗHАЧЕH '+dtoc(datn0)+'  УВОЛHЕH '+dtoc(datu0)
                      @ 18,21 say 'ESC п░ек║▒ване         Enter п░од║лжение'
                      inkey(0)
                      @  9,19 clea to 18,60
                                    if lastkey()=27
                                       set cons on
                                       ekpr0=1
                                       return NIL
                                     endif
                     endif
                  endif
             endif
             nom0=val(nom0)
             if l0=2 .and. 0 < val(nkp1) .and. 0 < val(nkid0).and.(!pd0=' ')
                do minosi
             endif
             nom0=str(nom0,6)
              sele 1
              skip
             enddo
             restore screen
             if izch_0='д'
                @  0,28 say 'СЪС ЗАПИС HА ИЗЧИСЛЕHИЕ'
             endif
             @ 10,24,14,55 box ram1
             @ 11,25 clea to 13,54
             @ 11,32 say 'Ф  И  Ш  О  В  Е '
             l4='н'
             @ 13,30 say 'С║▒ ▒▓║пка  д/н :'get l4 valid l4='д'.or.l4='н'
                    read
             if lastkey()=27
                   return
             endif
             @ 0,0 clea to 24,80
             pp0='н'
             sele 1
             use spis inde nomi
             nom0=val(nom)
             nom1=nom
            i=','
            q='"'
          if file("s*.prn")
              !del s*.prn   &&  да не ▒е п░омен┐
          endif
            set cons on
            set prin on
            set prin to s0001
            do while .not. eof()
            t38=0
            name0=name
            egn0=egn
            td_0=td
            gg0=str(gg,2)
            mm0=str(mm,2)
            dd0=str(dd,2)
            vazn0=vazn
            nkp0=val(subs(nkp,1,1))
         *  nkid0=nkid
            osig0=osig
         *  pnv0=pnv
               if l3='м'
                     sele 2
                     use mese inde sdni,dnsi
                else

                     sele 4
                     use godn inde gsdni,gdnsi
                endif
             sdn0='  7'+vek0+data0+str(nom0,6)
             find '&sdn0'
             x7=stoi
             pnv0=suma
             staz0=stoi
          if found()
               pfish() && fis1   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
               ?
               ?
               ?
               ?
          endif
           if lastkey()=27
              exit
           endif
                sele 1
                skip
            nom0=val(nom)
            enddo
            set cons off
            restore screen
      case v2=7
                 set dele on
                 ramka()
                      @  2,28 say 'Т А Б Л И Ц А   Д О Д   Чл. 4'
                      @  3,27 say '-------------------------------'
                sele 2
                use mese inde sdni
                sdn0='  3'+vek0+data0+'      '
                find '&sdn0'
                data1=stoi
                sele 10
                use &disc_1\fish\danak
                go top
                  declare fiel[5]
                  fiel[1]='ot'
                  fiel[2]='do'
                  fiel[3]='dan'
                  fiel[4]='pr'
                  fiel[5]='data'
                  declare imem[5]
                  imem[1]=  '    ОТ    '
                  imem[2]='      ДО    '
                  imem[3]='    ДАHЪK   '
                  imem[4]='  %  '
                  imem[5]='МЕСЕЦ'
                  @  7,15,18,66 box ram1
                  dbedit( 8,16,17,65,fiel,"pfunk1",' ',imem,'═','╙')
                 set dele off


      case v2=8
               if l3='м'
                     sele 2
                     use mese inde dnsi,sdni
                else
                     sele 4
                     use godn inde gdnsi,gsdni
                endif
                      vd0=vek0+data0
                      find "&vd0        1"
                      @ 23,15 say space(51)
                   if found()
                      @ 23,22 say 'Б░ой ░або▓ни дни за ▓ек. ме▒е╢:' get stoi
                      read
                      l0='н'
                      repl suma with stoi
                      store stoi to x7

                      find "&vd0        2"
                      @ 23,15 say space(51)
                      @ 23,16 say 'Мин. ме▒е╖на ░або▓на запла▓а за ме▒е╢а:' get stoi
                      read
                      repl suma with stoi
                      store suma to x2

                      find "&vd0        3"
                      @ 23,15 say space(51)
                      @ 23,16 say '   Да▓а на в║веждане на д. ▒кала ╖л. 4:' get stoi
                      read
                      repl suma with stoi
                      store suma to x3

                      find "&vd0        4"
                      @ 23,15 say space(51)
                      @ 23,21 say 'Ма╡▒имален о▒иг│░и▓елан до╡од' get stoi
                      read
                      repl suma with stoi
                      store suma to x16


                      restore from rabodni additive
   repl all stoi with x9  for sch=j_1.or.sch=j_2.or.sch=j_3.or.sch=j_4.or.sch=j_5;
   .or.sch=j_6.or.sch=j_7.or.sch=j_8.or.sch=j_9.or.sch=j_10.or.sch=j_11.or.sch=j_12.or.sch=j_13.or.;
   sch=j_14.or.sch=j_15.or.sch=j_16.or.sch=j_17.or.sch=j_18.or.sch=j_19
   repl all stoi with x9  for sch=j_19.or.sch=j_20.or.sch=j_21.or.sch=j_22.or.sch=j_23.or.sch=j_24.or.sch=j_25;
   .or.sch=j_27.or.sch=j_28.or.sch=j_29.or.sch=j_30.or.sch=j_31.or.sch=j_32.or.sch=j_33.or.;
   sch=j_34.or.sch=j_35.or.sch=j_36.or.sch=j_37.or.sch=j_38
                   else
                      @ 23,11 say 'ВHИМАHИЕ '  color 'R+/B'
                      go bott
                      @ 23,20 say 'ме▒е╢а на п░ог░ама▓а е '+substr(data0,1,2)+', а на ░або▓ни┐ ме▒е╢ '+substr(data,1,2)
                      pauza()
                   endif




      endcase

        *********   П░о╢ед│░а за ли▒▓ене на номенкла▓│░и▓е ************
                      proc nomenkl
                  save screen
                  sele 3
                  use &disc_1\fish\nome inde &disc_1\fish\nosi
                    set key -2 to
                    declare fiel[2]
                    fiel[1]='sch'
                    fiel[2]='hara'
                    declare imem[2]
                    imem[1]='HОМ. N'
                    imem[2]=' Ха░ак▓е░и▒▓ика'
                    @ 13,16,21,64 box ram1
                    dbedit(14,17,20,63,fiel,"p1funk",' ',imem,'═','╙')
                    set key -2 to nomenkl
                    sch0=val(sch)
                    hara0=hara
                    algo0=algo
                    set key -2 to nomenkl
                    restore screen
                     return
                    return
      ************ По▓░еби▓ел▒ка ┤│нк╢и┐ **********
                function p1funk
                parameters mode0,fld0
                private fld0
                cur0=fiel[fld0]
            do case
            case mode0 < 4
                       if dele()
                          @ 14,58 say 'МАРK'
                       else
                          @ 14,58 say '    '
                       endif
                      return 1
            case lastkey()=27
                  return 0
            case lastkey()=13
                  @ row(),col() say &cur0
                  return 0
            case lastkey()=172.or.lastkey()=162
                do case
                   case lastkey()=172  &&  м
                    @ 14,58 say 'МАРK'
                    dele
                   case lastkey()=162  &&  в
                    @ 14,58 say 'ВЪЗС'
                    reca
                endcase
            endcase
                return

   *************** П░о╢ед│░а за показване из╖и▒л┐ване болни╖ен ***********
                           proc  izch
    set filter to (sch='151'.or.1 < val(substr(sch,1,1)).and.val(substr(sch,1,1))<3).and.nom=str(nom0,6)
    go top
    izrab()
    yb0=0  &&   ot 2014 god.
    @ 7,3 clea to 21,77
    set marg to 2
    ?  space(20)+name0
    ?
    ?  'МЕСЕЦ  ДHИ   МИH.ОСИГ. БР.ТР.ВЪ▌H.  УДРЪЖKИ  HЕТ.ТР.ВЪЗH. '
    ?  '╕и┤║░   7        6          9          ╙        9 - ╙     '
    ?   xb6
    ?   '-------------------------------------------------------'
    ?   'Об╣о   '+str(xb7,3)+'  '+str(xb60,9,j1)+'  '+str(xb0,9,j1)+'  '+str(yb0,9,j1)+'  '+str(xb0-yb0,9,j1)
    ?
    if xb0 < xb60
        store xb60 to xbb0
    else
        store xb0 to xbb0
    endif
    ? 'С░едноднев. не▓но  в║знаг░.'+space(14)+str(xbn0,9,j1)+' / '+str(xb7,3)+' = '+str(xbn0/xb7,0,j1)
     x5b1=0
  do while 0 < val(substr(sch,1,1)).and.val(substr(sch,1,1))<3
    if .not.sch='151'
        x5b1=stoi
    endif
       do case
          case  sch='151'.or.sch='201'
           ? space(20)+'В░еменна не▓░│до▒по▒обно▒▓ за '+sch
           ? 'С░едноднев. б░│▓но в║знаг░.        '+str(xbb0,9,j1)+' / '+str(xb7,3)+' * '+'0.7'+' = '+str(xbb0/xb7*0.7,0,j1)
        if round(xbb0/xb7*.7,j1) < round(xbn0/xb7,j1)
               ? 'С│ма о▓ болни╖.за ▒-ка на ░або▓ода▓ел┐   '+str(round(xbb0/xb7*0.7,j1),9,j1)+' * '+str(xb151,3)+' =  '+str(round(xbb0/xb7*0.7,j1)*xb151,9,j1)
        else
               ? 'С│ма о▓ болни╖.за ▒-ка на ░або▓ода▓ел┐   '+str(xbn0/xb7,9,j1)+' * '+str(xb151,3)+' =  '+str(xbn0/xb7*xb151,9,j1)
        endif
       endcase
         if .not. eof()
            skip
         else
             exit
         endif
  enddo
    pech()

    @ 23,15 SAY '     Желае▓е ли да ▒е о▓пе╖а▓а                     '
        @ 23,52 prompt 'ДА'
        @ 23,55 prompt 'HЕ'
        menu to ekpr0
    @ 7,3 clea to 21,77
   if ekpr0=1
      ekpr0=2
                 set cons off
                 set marg to 34
                 if file("s*.prn")
                     !del s*.prn
                 endif
                 set prin on
                 set prin to s0001
    ? sbit0
    ?
    ?  space(20)+name0
    ?
    set filter to (sch='151'.or.1 < val(substr(sch,1,1)).and.val(substr(sch,1,1))<3).and.nom=str(nom0,6)
    go top
    ? 'С░едноднев. не▓но  в║знаг░.'+space(14)+str(xbn0,9,j1)+' / '+str(xb7,3)+' = '+str(xbn0/xb7,0,j1)
        x5b1=0
  do while 0 < val(substr(sch,1,1)).and.val(substr(sch,1,1))<3
    if .not.sch='151'
        x5b1=stoi
    endif
       do case
          case  sch='151'.or.sch='201'
    ? 'С░едноднев. б░│▓но в║знаг░.        '+str(xbb0,9,j1)+' / '+str(xb7,3)+' * '+'0.7'+' = '+str(xbb0/xb7*0.7,0,j1)
           ? space(20)+'В░еменна не▓░│до▒по▒обно▒▓ за '+sch
        if round(xbb0/xb7*.7,j1) < round(xbn0/xb7,j1)
           if sch='151'
               ? 'С│ма о▓ болни╖.за ▒-ка на ░або▓ода▓ел┐   '+str(round(xbb0/xb7*0.7,j1),9,j1)+' * '+str(xb151,3)+' =  '+str(round(xbb0/xb7*0.7,j1)*xb151,9,j1)
           else
                ? 'Обез╣. за в░еменна не▓░│д.за ▒-ка на ДОО '+str(round(xbb0/xb7*0.7,j1),9,j1)+' * '+str(x5b1,3)+' =  '+str(round(xbb0/xb7*0.7,j1)*x5b1,9,j1)
           endif
        else
           if sch='151'
               ? 'С│ма о▓ болни╖.за ▒-ка на ░або▓ода▓ел┐   '+str(xbn0/xb7,9,j1)+' * '+str(xb151,3)+' =  '+str(xbn0/xb7*xb151,9,j1)
           else
                ? 'Обез╣. за в░еменна не▓░│д.за ▒-ка на ДОО '+str(xbn0/xb7,9,j1)+' * '+str(x5b1,3)+' =  '+str(round(xbn0/xb7,j1)*x5b1,9,j1)
           endif
        endif
       endcase



         if .not. eof()
            skip
         else
             exit
         endif
  enddo
     pech()
   endif
                             return


    *******************  П░еноме░оване на па░▓иди ***************
                         proc  prenom
         if file("obap.dbf")
               sele 1
               use obap inde aobi
               find "455 207"
               if found()
                  return
               endif
         else
             return
         endif
           p0=0
           do while p0<3
              do case
                 case p0=0
                      use obap
                 case p0=1
                      use dpar
                 case p0=2
                      use kpar
              endcase

               repl all part with '455 207' for part='455  61'
               repl all part with '455 206' for part='455  63'
               repl all part with '455 205' for part='455  62'
               repl all part with '455 204' for part='455  64'
               repl all part with '455 201' for part='455  60'
               repl all part with '455  71' for part='455  32'
               repl all part with '455  70' for part='455  31'
               repl all part with '455  52' for part='455  22'
               repl all part with '455  51' for part='455  21'
               repl all part with '455  50' for part='455  20'
               repl all part with '455  42' for part='455  13'
               repl all part with '455  14' for part='455  12'
               repl all part with '455  13' for part='455  11'
               repl all part with '455  11' for part='455  10'
               repl all part with '454  94' for part='454   1'
               p0=p0+1
           enddo
                      use obap
           appe blank
     repl part with '455  31', name with  'доп. ДОО                     080123', mk with 'лв', pa with '455'
               podr_0=1
               save all like podr_0 to podred
               podred()

                         return

          **************  Дали ▒ме в ме▒е╖ни┐ или год╕ни┐ ┤айл ************
                                  func polo
                    set cent off
                 if l3='м'
                    @ 0,75 say substr(dtoc(date0),4,5)
                    @  0,68  say  ' МЕСЕЦ '+substr(dtoc(date0),4,5)
                    l3='м'
                 else
                    @ 0,75 say substr(dtoc(date0),4,5)
                    @  0,68  say  'ГОДИHА '+substr(dtoc(date0),4,5)
                    l3='г'
                 endif
                                  return

     *************** П░о╢ед│░а календа░    ******************
                       proc kalen

       store substr(data0,1,2) to me0
       store vek0 to vek1
       set curs on
       set date brit
       do while .t.
          if tt0=' 10'
             ramka()
             set cent on
             @  2,30 say 'K А Л Е H Д А Р'
             @  3,29 say '-------------------'
             @  5,20 say 'ВЪВЕДЕТЕ  МЕСЕЦА:    ГОДИHАТА:'
             @  5,38 get me0
             @  5,51 get vek1
                read
                if lastkey()=27
                   set cent off
                   set filter to
                   set curs off
                   exit
                endif
           endif
               dati1=ctod('01/'+me0+'/'+vek1)
               data_3=1

               do while mont(dati1)=val(me0)
                  dati1=dati1+1
                  if mont(dati1)=val(me0)
                     data_4=val(subs(dtoc(dati1),1,2))
                  endif
               enddo
          if tt0=' 10'
             @  7,21 say 'ВЪВЕДЕТЕ  ОТ ДЕH:      ДО ДЕH:'
             @  7,39 get data_3 pict "99"
             @  7,52 get data_4 pict "99"
                read
                if lastkey()=27
                   set cent off
                   set filter to
                   set curs off
                   exit
                endif
          endif

               dati1=ctod('01/'+me0+'/'+vek1)
               r0=10
               c0=0
          *    i=space(1)
               store 0 to x0,y0
          if tt0=' 10'
            @  9,27 say 'По В▓ С░ Че Пе'
            @  9,42 say 'С║ Hд'   color 'R+/B'
          endif
                   setcolor ('GR+/B')
               do while mont(dati1)=val(me0)
                  if data_3-1 < val(substr(dtoc(dati1),1,2)).and.val(substr(dtoc(dati1),1,2)) < data_4+1
                     do case
                        case dow(dati1)=2
                             c0=25
                        case dow(dati1)=3
                             c0=27
                        case dow(dati1)=4
                             c0=29
                        case dow(dati1)=5
                             c0=31
                        case dow(dati1)=6
                             c0=33
                        case dow(dati1)=7
                             c0=35
                        case dow(dati1)=1
                             c0=44
                     endcase
               if dow(dati1)=1.or.dow(dati1)=7.or.dow(dati1)=8.or.;
                  subs(dtoc(dati1),1,5)='01/01'.or.;   // ot tuka nadolu
                  subs(dtoc(dati1),1,5)='00/01'.or.;   // sa praznichni
                  subs(dtoc(dati1),1,5)='05/03'.or.;   // i pochivni dni
                  subs(dtoc(dati1),1,5)='06/04'.or.;   // bez abota i nedelq
                  subs(dtoc(dati1),1,5)='09/04'.or.;   //  ffffffffff
                  subs(dtoc(dati1),1,5)='01/05'.or.;
                  subs(dtoc(dati1),1,5)='07/05'.or.;
                  subs(dtoc(dati1),1,5)='24/05'.or.;
                  subs(dtoc(dati1),1,5)='06/09'.or.;
                  subs(dtoc(dati1),1,5)='24/09'.or.;
                  subs(dtoc(dati1),1,5)='24/12'.or.;
                  subs(dtoc(dati1),1,5)='25/12'.or.;
                  subs(dtoc(dati1),1,5)='26/12'
            *  if subs(dtoc(dati1),1,5)='11/05'.or.
            *     subs(dtoc(dati1),1,5)='14/12'
            *     x0=x0+1
            *  endif
                    setcolor ('R+/B')
               else
                  x0=x0+1
               endif
                  y0=y0+1
               if dati1=date()
               endif
          if tt0=' 10'
               @ r0,c0+dow(dati1) say substr(dtoc(dati1),1,2)
          endif
                    setcolor ('GR+/B')
                  if dow(dati1)=1
                     r0=r0+1
                  endif
                  endif
                  dati1=dati1+1
               enddo
          if tt0=' 10'
            @ 23,20 say 'БРОЙ РАБОТHИ:'+str(x0,3)+space(12)+'КАЛЕHДАРHИ:'+str(y0,3)
               i=inkey(0)
          endif
       enddo
                   set curs off
                       return
      ************** П░о╢ен▓и о▒иг│░овки  ******************
                       proc doop


     *  2009 2010


     *  ПРЕДИ   t0191_1.dbf
     *  III     40п    41п   13п   14п          T0291_2
     *          f12    f13   F15   F16          50   51   52
     *          10.0   8.0   12.7  9.8               f3   f4
     *                                           8  4.8  3.2
     *    СЛЕД  t0191_2.dbФ  FWID.DBF
     *  III     40▒   41▒    13▒    14▒         30    31   32
     *          f12   f13    F15    F16         f18  f22  F23
     *          7.2   5.8    9.9    7.6          5   2.8  2.2

	   set key -6 to
	   save screen
           if file ("&disc_1\fish\doopr.mem")
              restore from &disc_1\fish\doopr.mem additive
           endif
        set curs on
        @  2, 9,21,70 box ram1
        @  3,10 clea to 20,69
        @  3,30 say 'ПРОЦЕHТИ  ОСИГУРОKИ'
        @  4,29 say '--------------------'
   *   store 0 to pr_2,pr_6,pr_11,pr_13,pr_14,pr_15,pr_16,pr_25,pr_26,pr_30,pr_31,pr_32
   *   ,pr_33,pr_34,pr_40,pr_41,pr_50,pr_51,pr_52
        @  5,13 say 'ШИФЪР  ПРЕДИ   СЛЕД    ШИФЪР  ПРЕДИ   СЛЕД '
        @  6,13 say ' 11'
        @  6,20 get pr_11 pict "99.99"
        @  6,27 get pr_111 pict "99.99"
        @  7,13 say ' 13'
        @  7,20 get pr_13 pict "99.999"
        @  7,27 get pr_113 pict "99.999"
        @  8,13 say ' 14'
        @  8,20 get pr_14 pict "99.999"
        @  8,27 get pr_114 pict "99.999"
        @  9,13 say ' 15'
        @  9,20 get pr_15 pict "99.999"
        @  9,27 get pr_115 pict "99.999"
        @ 10,13 say ' 16'
        @ 10,20 get pr_16 pict "99.999"
        @ 10,27 get pr_116 pict "99.999"
        @ 11,13 say ' 25'
        @ 11,20 get pr_25 pict "99.99"
        @ 12,13 say ' 26'
        @ 12,20 get pr_26 pict "99.99"
        @ 13,13 say ' 30'
        @ 13,27 get pr_30 pict "99.99"
        @ 14,13 say ' 31'
        @ 14,27 get pr_31 pict "99.99"
        @ 15,13 say ' 32'
        @ 15,27 get pr_32 pict "99.99"
        @ 16,13 say ' 33'
        @ 16,20 get pr_33 pict "99.99"
        @ 16,27 get pr_133 pict "99.99"
        @ 17,13 say ' 34'
        @ 17,20 get pr_34 pict "99.99"
        @ 17,27 get pr_134 pict "99.99"
        @  6,36 say ' 40'
        @  6,43 get pr_40 pict "99.99"
        @  6,50 get pr_140 pict "99.99"
        @  7,36 say ' 41'
        @  7,43 get pr_41 pict "99.99"
        @  7,50 get pr_141 pict "99.99"
        @  8,36 say ' 50'
        @  8,43 get pr_50 pict "99.99"
        @  9,36 say ' 51'
        @  9,43 get pr_51 pict "99.99"
        @ 10,36 say ' 52'
        @ 10,43 get pr_52 pict "99.99"
        @ 11,36 say ' 94'
        @ 11,43 get pr_94 pict "99.99"
        @ 12,36 say '  2'
        @ 12,43 get pr_2  pict "99999"
        @ 13,36 say ' T6'
        @ 13,43 get pr_6 pict "99999"
         read
           if lastkey()=27
              set curs off
              restore screen
              set key -6 to doop
              return
           endif
           save all like pr_* to &disc_1\fish\doopr.mem
        l1=2
    @ 20,25 say 'Желае▓е ли зам┐на▓а               '
        @ 20,47 prompt 'ДА'
        @ 20,50 prompt 'HЕ'
        menu to l1
            if  l1=1
                mego(meg0:=-5)
repl all stoi with 0 for (sch=' 13'.or.sch=' 14'.or.sch=' 15'.or.sch=' 16'.or.;
sch=' 25'.or.sch=' 26'.or.sch=' 30'.or.sch=' 31'.or.sch=' 32'.or.sch=' 33'.or.;
sch=' 40'.or.sch=' 41'.or.sch=' 50'.or.sch=' 51'.or.sch=' 52').and.data=data0
                go top
                god0=0
                sele 1
                use spis inde nomi
             do while .not. eof()
                store god to god0
                nom0=nom
                nom1=vek0+data0+nom+'  6'
                pr_6=osig
                sele 2
                find "&nom1"
                if found()
                   do while nom=nom0
                      do case
                         case sch='  6'
                       *   if  stoi < pr_6
                             repl stoi with pr_6
                       *   endif
                         case sch='  8'
                           if  stoi < pr_2
                             repl stoi with pr_2
                           endif
                         case sch=' 11'
                          if god0 < 60
                            repl stoi with pr_11
                          else
                            repl stoi with pr_111
                          endif
                         case sch=' 13'
                          if god0 < 60
                            repl stoi with pr_13
                          else
                            repl stoi with pr_113
                          endif
                         case sch=' 14'
                          if god0 < 60
                            repl stoi with pr_14
                          else
                            repl stoi with pr_114
                          endif
                         case sch=' 15'
                          if god0 < 60
                            repl stoi with pr_15
                          else
                            repl stoi with pr_115
                          endif
                         case sch=' 16'
                          if god0 < 60
                            repl stoi with pr_16
                          else
                            repl stoi with pr_116
                          endif
                         case sch=' 25'
                         repl stoi with pr_25
                         case sch=' 26'
                         repl stoi with pr_26
                         case sch=' 30'
                         repl stoi with pr_30
                         case sch=' 31'
                         repl stoi with pr_31
                         case sch=' 32'
                         repl stoi with pr_32
                         case sch=' 33'
                         repl stoi with pr_33
                         case sch=' 40'
                          if god0 < 60
                            repl stoi with pr_40
                          else
                            repl stoi with pr_140
                          endif
                         case sch=' 41'
                          if god0 < 60
                            repl stoi with pr_41
                          else
                            repl stoi with pr_141
                          endif
                         case sch=' 50'
                         repl stoi with pr_50
                         case sch=' 51'
                         repl stoi with pr_51
                         case sch=' 52'
                         repl stoi with pr_52
                         case sch=' 94'
                      endcase
                      skip
                   enddo
                nom1=vek0+data0+'        2'
                find "&nom1"
                sele 2
                repl stoi with pr_2
                else
                endif
                sele 1
                skip
             enddo
            endif
           restore screen
	   set key -6 to doop
           set curs off
                       return

      ************** П░ов░ка за ве░ен мин о▒иг до╡од  ************
                       proc minosi
    if td_0='Р'
                sele 1
                find "&nom1"
                sele 7
                use &disc_1\fish\emplmina
                locate  for red=val(oid0)

             store n&nkp1 to osig1
           if osig0<>n&nkp1 .and. ( .not. pd0=' ')
              @ 22,15 say 'ВHИМАHИЕ'  color 'R+/B'
              @ 22,25 say 'О▒игиг│░и▓елни┐▓ п░аг на номе░ '+nom1
              @ 23,25 say 'е '+str(osig0,3)+' по но░ма▓ив ▒ладва да б║де '+str(n&nkp1,4)+' !'
              i0=inkey(0)
              @ 22,15 clea to 23,65
           else
           endif
             if osig0<>n&nkp1 .and. ( .not. pd0=' ')
                 @ 23,15 clea to 23,65
                 l1=1
                 @ 23,28 say 'Желае▓е ли п░ом┐на: HЕ ДА'
                 @ 23,48 prompt 'HЕ'
                 @ 23,51 prompt 'ДА'
                 menu to l1
                 @ 23,15 say space(51)
                   if l1=2
                     sele 2
                     use mese inde sdni
                     sdn0='  6'+vek0+data0+nom1
                     find  '&sdn0'
                         if found()
                            repl stoi with osig1
                         endif
                         sele 1
                        repl osig with osig1
                   endif
             endif
    endif
    sele 7
    use &disc_1\fish\fhlp
    set filter to
    sele 1
                       return


   ***************** П░о╢ед│░а▓а ▓║░▒и в ▓ек▒▓ зададен па▒аж ***************
                                proc tarsi
                    clea gets
                        @ 23,15 say space(51)
                       sele 7
                       set filter to kod='3'
                       go top
                        tars1=tars0+space(30-len(tars0))
                        set curs on
                        @ 23,17 say 'В║веди из░аза:' get tars1
                        read
                  *    set filter to kod='3'.and.trim(tars1)
                  *     set curs off
                  *      tars0=trim(tars1)
                  *      for i0 =1 to len(MSG)
                  *        if 0 < at(tars0,MSG[i0])
                  *          acca := achoice (10, 1,21,78, MSG,,,i0,0)
                  *        endif
                  *         if lastkey()=27
                  *            exit
                  *         endif
                  *     next
                  *     if len(MSG) < i0
                  *        store 1 to acca, i0
                  *        @ 23,15 say '       Hе е наме░ена ▓║░▒ена▓а д│ма!            '
                  *     else
                  *         store i0 to acca
                  *         @ 23,17 say subs(MSG[acca],1,47)
                  *     endif
                                return


      ************** П░о╢ед│░а п░ави п░ове░ка на  ди▒ке▓а▓а ************
                          proc provdisk
           if file("&us0:\arhi\f&dr0"+".zip")
              ! &disc_1\bat\testdisk.bat &us0:\arhi\f&dr0..zip
	          @ 0,0 clea to 24,80
          	  @  9,15,12,62 box ram1
              if .not. file ("greshka")
	         @ 11,22 say 'АРХИВЪТ Е КОРЕКТЕH HА '+'&us0:\arhi\f&dr0'
                 inkey(1)
	          @ 0,0 clea to 24,80
              else
              @ 10,33 say 'ВHИМАHИЕ'   color 'R+/B'
	         @ 11,17 say 'Hап░авен е неко░ек▓ен а░╡ив на '+'&us0:\arhi\f&dr0'
                 inkey(0)
                   erase greshka
                   @ 0,0 clea to 24,80
              endif
              ! cd \&dr0
           endif
                          return



    *************  ЛИПСВАЩА ИHФОРМАЦИЯ ***********

                    proc lipso
                  nom0=0
                  nom1=9999
                  nom4='    '
                  data1='     '
                  ll11='н'
                  l0=' '
                  store 'H'+subs(us_0,2,7) to us_1
                  eras s0001.prn
                 do while .t.
                  ramka()
                * @ 23,43 say 'F7-▒пи▒║к о▓ ди░ек▓о░ии'
                  @  2,30 say 'ПРОВЕРКА HА ОПЕРАЦИЯ'
                  @  3,29 say '----------------------'
                * set key -6 to direk1
                  @  6,22 say 'О▓ ди░ек▓о░и┐ ' get us_1
                  read
                  us_1=trim(us_1)
                     if lastkey()=27
                       return
                     endif
                   @  8,22 say 'В  ди░ек▓о░и┐ ' get us_0
                   read
                   us_0=trim(us_0)
                     if lastkey()=27
                       return
                     endif
                             @ 23,15 say space(51)
                          if file("&us_1*.*").and.file("&us_0*.*")
                          else
                             @ 23,15 say space(51)
                             @ 23,23 say ' Г░е╕и▓е ме▒е╢а или кода на ┤и░ма▓а '
                             ?? chr(7)
                             i0=inkey(0)
                             @ 23,15 say space(51)
                             return
                          endif
                          @ 23,15 say '        П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е !        '
                       clos all
                       store 0 to p0,re0
                       memowrit('s0001.prn',memoread('s0001.prn')+'c:----SPIS-------------')
              ******************  SPIS  C  *********************
                       copy file '&us_1'+'spis.dbf' to '&us_0'+'spist.dbf'
                       copy file '&us_1'+'nomi.ntx' to '&us_0'+'nomit.ntx'
                       sele 1
                       use spis inde nomi
                       go top
                       sele 5
                       use '&us_0'+'spist' && inde '&us_0'+'nomit'
                  do while .not. eof()
                       nom0=nom
                       ime0=ime
                       kd0=kd
                       pd0=pd
                       datn0=datn
                       datu0=datu
                       sele 1
                       find "&nom0"
                      if  found()
                           *       КОД             ВИД
                           if (.not.kd=kd0).or.(.not.pd=pd0).or.(.not.datn=datn0).or.(.not.datu=datu0)
                           l0='1'
                       ** Тек▒▓ не пове╖е о▓ 25 ▒ chrР(13)+chr(10)
                       memowrit('s0001.prn' ,memoread('s0001.prn')+CHR(13)+CHR(10);
                      +'Разл.  '+subs(nom0,3,4)+'-'+subs(ime0,1,11))
                           endif
                      else
                           l0='1'
                       memowrit('s0001.prn',memoread('s0001.prn')+CHR(13)+CHR(10);
                      +'Лип▒.  '+subs(nom0,3,4)+'-'+subs(ime0,1,11))
                      endif
                        sele 5
                             skip
                  enddo
              ******************  MESE  C   ********************

                       memowrit('s0001.prn',+memoread('s0001.prn');
                      +CHR(13)+CHR(10)+'c:----HOM.N--SCH---DATA')
                       copy file '&us_1'+'mese.dbf' to '&us_0'+'meset.dbf'
                       copy file '&us_1'+'dnsi.ntx' to '&us_0'+'dnsit.ntx'
                       sele 2
                       use mese inde dnsi
                       go top
                       sele 5
                       use '&us_0'+'meset'
                       go top
                  do while .not. eof()
                       dns0=vek+data+nom+sch
                       nom0=nom
                       stoi0=stoi
                       suma0=suma
                       data2=data
                       sele 2
                       find "&dns0"
                      if  found()
                           if (.not.stoi=stoi0).or.(.not.suma=suma0).or.(.not.data=subs(dns0,5,5))
                           l0='1'
                             *  if .not.stoi=stoi0
                       ** Тек▒▓ не пове╖е о▓ 25 ▒ +chr(13)+chr(10)
                       memowrit('s0001.prn',memoread('s0001.prn')+CHR(13)+CHR(10);
                       +'Разл.  '+subs(nom0,3,4)+'  '+subs(dns0,16,3)+'  '+data2)
                           endif
                      else
                           l0='1'
                       memowrit('s0001.prn',memoread('s0001.prn')+CHR(13)+CHR(10);
                       +'Лип▒.  '+subs(nom0,3,4)+'  '+subs(dns0,16,3)+'  '+DATA0)
                      endif
                        sele 5
                             skip
                  enddo



                 ************ ОБРАТHО      ****************
                       memowrit('s0001.prn',+memoread('s0001.prn');
                      +CHR(13)+CHR(10)+subs(us_1,1,2)+'11----SPIS-----------')

              ******************  SPIS  H  *********************
                       sele 5
                       use '&us_0'+'spist' inde '&us_0'+'nomit'
                       sele 1
                       use spis &&  inde nomi
                  do while .not. eof()
                       nom0=nom
                       ime0=ime
                       kd0=kd
                       pd0=pd
                       datn0=datn
                       datu0=datu
                       sele 5
                       find "&nom0"
                      if  found()
                           if (.not.kd=kd0).or.(.not.pd=pd0).or.(.not.datn=datn0).or.(.not.datu=datu0)
                           l0='1'
                       ** Тек▒▓ не пове╖е о▓ 25 ▒ +ЦХР(13)+ЦХР(10)
                       memowrit('s0001.prn' ,memoread('s0001.prn')+CHR(13)+CHR(10);
                      +'Разл.  '+subs(nom0,3,4)+'-'+subs(ime0,1,11))
                           endif
                      else
                           l0='1'
                       memowrit('s0001.prn',memoread('s0001.prn')+CHR(13)+CHR(10);
                      +'Лип▒.  '+subs(nom0,3,4)+'-'+subs(ime0,1,11))
                      endif
                        sele 1
                             skip
                  enddo
              ******************  MESE  H  *********************
                       memowrit('s0001.prn',+memoread('s0001.prn');
                      +CHR(13)+CHR(10)+subs(us_1,1,2)+'----HOM.N--SCH---DATA-')
                       sele 5
                       use '&us_0'+'meset' inde '&us_0'+'dnsit'
                       go top
                       sele 2
                       use mese
                       go top
                  do while .not. eof()
                       dns0=vek+data+nom+sch
                       nom0=nom
                       stoi0=stoi
                       suma0=suma
                       data2=data
                       sele 5
                       find "&dns0"
                      if  found()
                           if (.not.stoi=stoi0).or.(.not.suma=suma0).or.(.not.data=subs(dns0,5,5))
                           l0='1'
                       ** Тек▒▓ не пове╖е о▓ 25 ▒ +chr(13)+chr(10)
                       memowrit('s0001.prn',memoread('s0001.prn')+CHR(13)+CHR(10);
                       +'Разл.  '+subs(nom0,3,4)+'  '+subs(dns0,16,3)+'  '+data2)
                           endif
                      else
                           l0='1'
                       memowrit('s0001.prn',memoread('s0001.prn')+CHR(13)+CHR(10);
                       +'Лип▒.  '+subs(nom0,3,4)+'  '+subs(dns0,16,3)+'  '+DATA0)



                      endif
                        sele 2
                             skip
                  enddo

                        @ 23,15 say space(51)
                     if l0=' '
                        @ 23,32 say 'H┐ма о▓к░и▓и ░азли╖и┐'
                         inkey(4)
                        @ 23,32 say space(15)
                     else
                       @  5,48,21,74 box ram1

                       save1=memoedit(memoread("s0001.prn"),6,50,20,72,.t.,"fdobav",23,40,1,0)
                     endif
                 enddo
                    return


