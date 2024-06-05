     *SAV6.PRG
     * EXTERNAL
     *   @  0,15  say 'bbbb ' ; inkey(0) //kkk
     **  aktdis ddsdob nnom otvo pfunk7
     do pro6 ; v3=0 ; tt0='60'
                    if sc9='д'
        @  7,17,17,64 box ram1
        @  8,18 clea to 16,63
        @  8,28 say 'K  О  Р  Е  K  Ц  И  И'
        @  9,27 say '-----------------------'
        @ 11,24 prompt '1. Реиндек▒а╢и┐'
        @ 13,24 prompt '2. О▓к░иване на нова година и нов ме▒е╢'
        @ 15,24 prompt '3. С╖е▓оводна опе░а╢и┐'  &&  SPRI TOVA
                    else
        @  2, 8,21,72 box ram1
        @  3, 9 clea to 20,71
        @  3,28 say 'K  О  Р  Е  K  Ц  И  И'
        @  5,24 prompt '1. Реиндек▒а╢и┐'
        @  7,24 prompt '2. С╖е▓оводна опе░а╢и┐'
        @  9,24 prompt '3. Добав┐не на обо░о▓и▓е по ме▒е╢и'
        @ 11,24 prompt '4. О▓пе╖а▓ване на ▒▓░ани╢а '
        @ 13,24 prompt '5. О▓к░иване на нова година и нов ме▒е╢'
        @ 15,24 prompt '6. Kо░ек╢и┐ на ик. елемн▓и'
        @ 17,24 prompt '7. П░е╡в║л┐не на ▒алда о▓ п░ед╡оден ме▒е╢'
        @ 19,24 prompt '8. Амо░▓иза╢ионен план'
                    endif
         menu to v3
                    if sc9='д' .and. v3=2 ; v3=5 ; endif
                    if sc9='д' .and. v3=3 ; v3=2 ; endif
        do case
           case lastkey()=27
           return
           case v3=1
                @  5,46,7,67 box ram1
                l0=1
                @ 6 ,48 say 'Реиндек▒а╢и┐ '
                @  6,61 prompt 'HЕ'
                @  6,64 prompt 'ДА'
                menu to l0
                chet()
            if l0=2
               podr_0=1
               save all like podr_0 to podred
               podred()
             iztri()
            endif
           case v3=2
              store 0 to br0,br1 ; timeb0='  :  :' ; l1='н' ; k1=' ' ; tt0='20'
              ksto11=0
              gkor()   //  sav2
              clos all
           case v3=3
             store data0 to data1
             store us_0 to us_1
         do while .t.
             ramka()
              @ 11,23 say 'ВHИМАHИЕ!'   color 'R+/B'
              @ 11,33 say 'ПРОЦЕДУРАТА Е В ИЗГРАЖДАHЕ'
               inkey(5)
               return
             @ 23+ml0,20 say '      F7 - ▒пи▒║к о▓ ди░ек▓о░ии        '
             @  2,25 say 'ДОБАВЯHЕ HА ОБОРОТИ ПО МЕСЕЦИ'
             @  3,24 say '-------------------------------'
        *        set key -6 to direk1
             @  6,27 say 'О▓ ди░ек▓о░и┐ ' get us_1 pict "N:\NNNN\"  valid 64<asc(us_1).and.asc(us_1)<123
             chet() && read
             if lastkey()=27
                 return
              endif
              us_1=trim(us_1)
           if 8 < len(us_1)
              do case
                 case subs(us_1,9,4)='JANU'
                      data1='01/'+subs(us_1,6,2)
                 case subs(us_1,9,4)='FEBR'
                      data1='02/'+subs(us_1,6,2)
                 case subs(us_1,9,4)='MARC'
                      data1='03/'+subs(us_1,6,2)
                 case subs(us_1,9,4)='APRI'
                      data1='04/'+subs(us_1,6,2)
                 case subs(us_1,9,4)='MAY'
                      data1='05/'+subs(us_1,6,2)
                 case subs(us_1,9,4)='JUNE'
                      data1='06/'+subs(us_1,6,2)
                 case subs(us_1,9,4)='JULY'
                      data1='07/'+subs(us_1,6,2)
                 case subs(us_1,9,4)='AUGU'
                      data1='08/'+subs(us_1,6,2)
                 case subs(us_1,9,4)='SEPT'
                      data1='09/'+subs(us_1,6,2)
                 case subs(us_1,9,4)='OCTO'
                      data1='10/'+subs(us_1,6,2)
                 case subs(us_1,9,4)='NOVE'
                      data1='11/'+subs(us_1,6,2)
                 case subs(us_1,9,4)='DECE'
                      data1='12/'+subs(us_1,6,2)
              endcase
           endif

              @ 23+ml0,20 say '      F7 - ▒пи▒║к о▓ ди░ек▓о░ии        '
              set key -6 to direk0
              @  8,27 say 'В  ди░ек▓о░и┐ ' get us_0 pict "N:\NNNN\" valid 64<asc(us_0).and.asc(us_0)<123
              chet() && read
             if lastkey()=27
                 return
              endif
              raboti()
              us_0=trim(us_0)
                          dn0=subs(data1,4,2)+data1
                          (loc0:=52)
                          find '&dn0'
                             if found()
                               zvan()
                               @ 23+ml0,20  say 'Ве╖е има добавени обо░о▓и за ▓ози ме▒е╢ !'
                               i0=inkey(4)
                               @ 23+ml0,20 say space(51)
                               loop
                             endif
                          if .not. file("&us_1\*.*")
                              @ 23+ml0,22 say '          Г░е╕и▓е ма▒е╢а !          '
                              i0=inkey(0)
                              loop
                          endif

                          dw0='subs(data,4,2)=subs(data1,4,2)'

                          appe from '&us_1'+'arhi' for  &dw0
                          open_dobo(loc0:=49)
                          appe from '&us_1'+'dobo' for  &dw0
                          open_kobo(loc0:=48)
                          appe from '&us_1'+'kobo' for  &dw0
                          open_dpar(loc0:=42)
                          appe from '&us_1'+'dpar' for  &dw0
                          open_kpar(loc0:=42)
                          appe from '&us_1'+'kpar' for  &dw0
                podr_0=1
                save all like podr_0 to podred
                podred()
         enddo
   ********************************************************************
           case v3=4
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
              chet() && read
       endif
       if l1=4
           save screen
         
           ! &disc_1\nc\wpview '&save_0'
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
              copy file s0001.prn to &disc_0\s0001.prn
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
             *   set key -2 to ddok1  //  nay-veroqtno tryabva da  se iztriqt
             *   set key -3 to ddok1
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
                pech()
           if s0000='д' .and. b31=99
*  @  0,15  say 'kkkk ' ; inkey(0) //kkk
               copy file s0099.prn to &disc_0\s0000
           endif

                loop
            endif

       if l1=1 .or. l1=2
            ll10='д'
              if b32=0
                 store b31 to b32
              endif
             *  if file("&pb_0:&disc_0\s*.prn")
             *      !del &pb_0:&disc_0\s*.prn   &&  да не ▒е п░омен┐
             *  endif
            for i0=b31 to b32 step l1
            b3=i0
            save_0='s'+nulb3()+'.prn'
            if file("&save_0")
                  copy file &save_0 to &disc_0\&save_0
              @ 23+ml0,15 say space(50)
            else
               loop
            endif
            next
       endif
           enddo
         ***********************************************************************
           case v3=5
            store us_0 to us_1
          do while .t.
            v4=0
            @  7,17,17,64 box ram1
            @  8,18 clea to 16,63
            @  8,23 say 'ОТKРИВАHЕ HА HОВА ГОДИHА И HОВ МЕСЕЦ'
            @ 11,28 prompt '1.О▓к░иване на нова година'
            @ 13,28 prompt '2.О▓к░иване на нов ме▒е╢'
          if !sc9='д'
            @ 15,28 prompt '3.Добав┐не на опе░а╢и┐'
          endif
                menu to v4
            chet()
            do case
               case lastkey()=27
                     exit
               case v4=1
              do while .t.
                  ramka()
                         if subs(data0,1,2)='12'
                            dt1= str(val(dt0)+1,2)
                         else
                             store dt0 to dt1
                         endif
                  @  2,28 say 'ОТKРИВАHЕ HА HОВА ГОДИHА'
                  @  3,27 say '--------------------------'
                  @  8,25 say 'По▒о╖е▓е ╕и┤║░а на ┤и░ма▓а' get go0 valid 64<asc(go0).and.asc(go0)<123
                  @ 11,30 say 'В║веде▓е година▓а' get dt1
                      chet()
                  go0=upper(go0)
                  us0=subs(us_0,1,1)
                               l0='н'
                               @ 23+ml0,28 say 'Желае▓е ли по ме▒е╢и д/н' get l0 valid l0='д'.or.l0='н'
                               chet()

                     if lastkey()=27.or.substr(go0,1,1)=' '
                       return
                     endif
                          if  file("&us0:\&go0&dt1\janu\*.*")
                               @ 23+ml0,20  say 'Ди░ек▓о░и┐▓а ве╖е ▒║╣е▒▓в│ва на │-во "&us0" !'
                                        i0=inkey(0)
                                exit
                          else
                                exit
                          endif
              enddo
                  raboti()
       iif ( .not. file("&us0:\&go0&dt1\*.*"), makedir("&us0:\&go0&dt1"),)
             if l0='д'
                  !md &us0:\&go0&dt1\janu
                  !md &us0:\&go0&dt1\febr
                  !md &us0:\&go0&dt1\marc
                  !md &us0:\&go0&dt1\apri
                  !md &us0:\&go0&dt1\may
                  !md &us0:\&go0&dt1\june
                  !md &us0:\&go0&dt1\july
                  !md &us0:\&go0&dt1\augu
                  !md &us0:\&go0&dt1\sept
                  !md &us0:\&go0&dt1\octo
                  !md &us0:\&go0&dt1\nove
                  !md &us0:\&go0&dt1\dece
             endif
                 memowrit('&us0:\&go0&dt1\a','')

             if l0='д'
             han0=fcreate("&us0:\&go0&dt1\janu\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt1\febr\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt1\marc\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt1\apri\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt1\may\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt1\june\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt1\july\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt1\augu\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt1\sept\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt1\octo\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt1\nove\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt1\dece\a")
                 fclose(han0)
             endif
                          if  file(" \treeinfo.ncd")
                              erase \treeinfo.ncd
                          endif
                  return
               case v4=2
                  l1='н'
                  l0=''
                  ramka()
                  open_arhi(loc0:=53)
                  go bott
                  data2=data
             do while .t.
               *  @ 23+ml0,20 say '        F7 - ▒пи▒║к о▓ ди░ек▓о░ии        '
                  @  2,30 say 'ОТKРИВАHЕ HА HОВ МЕСЕЦ'
                  @  3,29 say '------------------------'
              *       set key -6 to direk1
                  @  6,29 say 'О▓ ди░ек▓о░и┐ ' get us_1 pict "N:\NNNN\" valid 64<asc(us_1).and.asc(us_1)<123
                  chet() && read
                  us_1=trim(us_1)
                      set key -6 to direk0
                       if subs(data2,1,2)='12'
                          us_0=subs(us_0,1,5)+str(val(subs(data2,4,2))+1,2)+'\'
                       endif
                  @  8,29 say 'В  ди░ек▓о░и┐ ' get us_0 pict "N:\NNNN\" valid  64<asc(us_0).and.asc(us_0)<123
                  chet()
                    set key -6 to direk0
                 if us_0=us_1 ; l0='д' ; else ; l0='н' ; endif
       *   @ 10+ml0,23 say 'Желае▓е ли в на▓░│пва╣а ди░ек▓о░и┐' get l0 valid l0='д'.or.l0='н'
       *   chet()

        if  l0='н' .and. !sc9='д'
           @ 12,28 say 'Желае▓е ли н│ли░ане д/н:' get l1  valid l1='д'.or.l1='н'
           chet()
           @ 23+ml0,15 say space(50)
        endif
               if lastkey()=27
    if subs(data2,1,2)='12' ; us_0=subs(us_0,1,5)+subs(data2,4,2)+'\' ; endif
                  return
               endif
                  us_0=trim(us_0)  ; store trim(us_0)  to us_0,us__0
                   if 8 < len(us__0)
                     if len(us__0)=12
                         us__0=subs(us_0,1,11)
                     else
                         us__0=subs(us_0,1,12)
                     endif
                   else
                     us__0=subs(us_0,1,7)
                   endif
                     if l0='д'  // nachalo v natrupvashtav natrupvashta
                          open_arhi(loc0:=53)
                          set filter to papk='k'
                          go bott
         if val(subs(data,1,2)) < 12
            data2=data
            data0=repl('0',2-len(ltrim(str(val(subs(data,1,2))+1))))+ltrim( str(val(subs(data,1,2))+1))+subs(data0,3,3)
         endif

                          go top
                           locate for data=data0.and.papk='k'
                            if found()
                               l0='н'
                             save  screen
                             @ 21,14,24,66 box ram1
                             @ 22,15 clea to 23,65
                             zvan()
                               @ 22,22 say 'ВHИМАHИЕ'  color 'R+/B'
                               @ 22,32 say ' има▓е  о▓к░и▓  ме▒е╢ '+data0
                               inkey(3)
                               return
                            endif
                         raboti()
                         restore screen
                         copy stru to ar
                         open_ar(loc0:=1)
                         open_arhi(loc0:=54)
                         set filter to substr(papk,1,3)='k'.and.data=data2
                         go top
                          do while substr(papk,1,3)='k'.and.data=data2
                             nom0 = nom
                            papk0 = papk
                             dok0 = dok
                               f0 = f
                            fakt0 = fakt
                             vek0 = vek
                            sele 8
                            appe blank
          repl nom with nom0, papk with papk0, dok with dok0, vek with vek0  && f with f0, fakt with fakt0
                            sele 1
                                 if .not. eof() ; skip ; else ; exit ; endif
                          enddo
                        save all like date0 to date
               sele 8
               go top
                       do while .not. eof()
                             nom0 = nom
                            papk0 = papk
                             dok0 = dok
                               f0 = f
                            fakt0 = fakt
                             vek0 = vek
                            sele 1
                            appe blank
          repl nom with nom0, papk with papk0, dok with dok0, f with f0, ;
               fakt with fakt0, data with data0, vek with vek0
                             sele 8
                                 if .not. eof() ; skip ; else ; exit ; endif
                       enddo
            date0=ctod(subs(data0,1,2)+'/'+subs(data0,1,2)+'/'+vek0+subs(data0,4,2))

                        save all like date0 to date
            set cent off
                         clos data
                         eras ar.dbf
                               return
                     endif   // kray v natrupvashta

                          save  screen
                     if  us_0 = us_1
			  zvan()
                          @ 13,35 say 'ВHИМАHИЕ'   color 'R+/B'
                          @ 15,13 say 'Hев║зможно о▓к░иване на нова ди░. ▒║▒ ▒║╣и▓е ини╢иали!'
				   i0=inkey(0)
                          @ 13,13 clea to 15,73
                          loop
                     endif
                     if (.not.file("&us_0\*.*")) .or. (.not.file("&us_1\*.*"))
       			  zvan()
                          @ 23+ml0,23 say ' Г░е╕и▓е ме▒е╢а или кода на ┤и░ма▓а '
       				   i0=inkey(0)
       		       loop  && return
                     else
                        exit
                     endif
             enddo
                if len(us_1)=8.and.len(us_0)=8
                    if l0='н'.and.(.not.subs(data2,1,2)='12')
                               @  3,15 clea to 20,65
                               @  7,12 say 'ВHИМАHИЕ!'   color 'R+/B'
                               @  7,22 say 'За да о▓к░ие▓е нова година да▓а▓а на'
                               @  8,22 say '▓ек│╣а▓а ▓░┐бва да е ▒ ме▒е╢ декемв░и.'
                               @  9,22 say 'в главно мен╛ ▒ F8 п░омене▓е ░або▓на▓а да▓а.'
                               inkey(0)
                         return
                    endif

                   use "&us_1\arhi.dbf"
                   locate for subs(data,1,2)='12'.and.subs(papk,1,1)='k'
                   if .not.found()
                              @  3,15 clea to 20,65
                               @  6,35 say 'ВHИМАHИЕ!'   color 'R+/B'
                               @  9,20 say 'За да о▓к░ие▓е нова▓а година е необ╡одимо'
                               @ 10,20 say 'да е о▓к░и▓ декемв░и ме▒е╢ в ▓ек│╣а▓а!'
                               inkey(0)
                               return
                   endif
                    use "&us_1\arhi.dbf" inde "&us_1\faki.ntx"
                    set filter to f='к'
                    go bott
                    vid2=fakt
                endif

                          if  file("&us_0\arhi.dbf")
                             @ 21,14,24,66 box ram1
                             @ 22,15 clea to 23,65
                             zvan()
                             @ 22,24 say 'ВHИМАHИЕ'    color 'R+/B'
                             @ 22,32 say 'о▓к░и▓а е година▓а '+subs(us_0,4,4)
                               l0='н'
                               @ 23+ml0,22 say 'По▓в║░ждава▓е ли1о▓к░иване▓о д/н ?' get l0  valid  l0='д'.or.l0='н'
                               chet()
                                       if l0='н'
                                          return
                                       endif
                               restore screen
                          endif
                          raboti()
                clos all
                copy file '&us_1'+'arhi.dbf' to '&us_0'+'arhi.dbf'
                copy file '&us_1'+'dobo.dbf' to '&us_0'+'dobo.dbf'
                copy file '&us_1'+'kobo.dbf' to '&us_0'+'kobo.dbf'
                copy file '&us_1'+'dpar.dbf' to '&us_0'+'dpar.dbf'
                copy file '&us_1'+'kpar.dbf' to '&us_0'+'kpar.dbf'
                copy file '&us_1'+'obve.dbf' to '&us_0'+'obve.dbf'
                copy file '&us_1'+'dds.dbf' to '&us_0'+'dds.dbf'
                copy file '&us_1'+'kobp.dbf' to '&us_0'+'kobp.dbf'
                copy file '&us_1'+'kpap.dbf' to '&us_0'+'kpap.dbf'
                copy file '&us_1'+'obap.dbf' to '&us_0'+'obap.dbf'
                copy file '&us_1'+'dannom.mem' to '&us_0'+'dannom.mem'
                copy file '&us_1'+'date.mem' to '&us_0'+'date.mem'
                    if file  ("&us_1\bank.dbf")
                        copy file '&us_1'+'bank.dbf' to '&us_0'+'bank.dbf'
                    endif
                    if file  ("&us_1\bank.mem")
                        copy file '&us_1'+'bank.mem' to '&us_0'+'bank.mem'
                    endif
                  * if file  ("&us_1\fn_0.mem")
                  *     copy file '&us_1'+'fn_0.mem' to '&us_0'+'fn_0.mem'
                  * endif
                  * if file  ("&us_1\mb_0.mem")
                  *     copy file '&us_1'+'mb_0.mem' to '&us_0'+'mb_0.mem'
                  * endif
                    if file  ("&us_1\ddse.mem")
                        copy file '&us_1'+'ddse.mem' to '&us_0'+'ddse.mem'
                    endif
                    if file  ("&us_1\mol.mem")
                        copy file '&us_1'+'mol.mem' to '&us_0'+'mol.mem'
                    endif

                    if file  ("&us_1\sc1")
                        copy file '&us_1'+'sc1' to '&us_0'+'sc1.'
                    endif
                    if file  ("&us_1\sc2.")
                        copy file '&us_1'+'sc2.' to '&us_0'+'sc2.'
                    endif
                    if file  ("&us_1\sc3.")
                        copy file '&us_1'+'sc3.' to '&us_0'+'sc3.'
                    endif
                    if file  ("&us_1\sc4.")
                        copy file '&us_1'+'sc4.' to '&us_0'+'sc4.'
                    endif
                    if file  ("&us_1\sc5.")
                        copy file '&us_1'+'sc5.' to '&us_0'+'sc5.'
                    endif
                    if file  ("&us_1\sc6.")
                        copy file '&us_1'+'sc6.' to '&us_0'+'sc6.'
                    endif
                    if file  ("&us_1\sc7.")
                        copy file '&us_1'+'sc7.' to '&us_0'+'sc7.'
                    endif
                    if file  ("&us_1\sc8.")
                        copy file '&us_1'+'sc8.' to '&us_0'+'sc8.'
                    endif
                    if file  ("&us_1\sc9.")
                        copy file '&us_1'+'sc9.' to '&us_0'+'sc9.'
                        erase '&us_1'+'sc9.'
                    endif
                    if file  ("&us_1\sc10.")
                        copy file '&us_1'+'sc10.' to '&us_0'+'sc10.'
                    endif
                    if file  ("&us_1\sc11.")
                        copy file '&us_1'+'sc11.' to '&us_0'+'sc11.'
                        erase '&us_1'+'sc11.'
                    endif
                    if file  ("&us_1\sc12.")
                        copy file '&us_1'+'sc12.' to '&us_0'+'sc12.'
                    endif
                    if file  ("&us_1\sc13.")
                        copy file '&us_1'+'sc13.' to '&us_0'+'sc13.'
                    endif
                    if file  ("&us_1\sc14.")
                        copy file '&us_1'+'sc14.' to '&us_0'+'sc14.'
                    endif
                    if file  ("&us_1\sc15.")
                        copy file '&us_1'+'sc15.' to '&us_0'+'sc15.'
                    endif
                    if file  ("&us_1\sc16.")
                        copy file '&us_1'+'sc16.' to '&us_0'+'sc16.'
                    endif
                    if file  ("&us_1\sc17.")
                        copy file '&us_1'+'sc17.' to '&us_0'+'sc17.'
                    endif
                    if file  ("&us_1\tehno.dbf")
                        copy file '&us_1'+'tehno.dbf' to '&us_0'+'tehno.dbf'
                    endif
                    if file  ("&us_1\prot.dbf")
                        copy file '&us_1'+'prot.dbf' to '&us_0'+'prot.dbf'
                    endif
                    if file  ("&us_1\zame.dbf")
                        copy file '&us_1'+'zame.dbf' to '&us_0'+'zame.dbf'
                    endif
                    if file  ("&us_1\unpr.dbf")
                        copy file '&us_1'+'unpr.dbf' to '&us_0'+'unpr.dbf'
                    endif
                    if file  ("&us_1\cal1.dbf")
                        copy file '&us_1'+'cal1.dbf' to '&us_0'+'cal1.dbf'
                    endif
                    if file  ("&us_1\harsmet.mem")
                        copy file '&us_1'+'harsmet.mem' to '&us_0'+'harsmet.mem'
                    endif
                save all like us_0 to '&us_0'+'us_0'

                dirchange("&us__0")

                 if subs(data2,1,2)='12'
                    dt0=str(val(dt0)+1,2)
                    vek0=str(val(vek0)+1,4)
                    date0=ctod('01/01/'+subs(vek0,1,2)+dt0)
                    data0='01/'+dt0
                 endif
                    save all like date0 to date
                open_arhi(loc0:=1)
                set order to 2
                go bott
                dele all for .not.( papk='k'.and.data=data2)
                podr_0=21
                save all like podr_0 to podred
                podred()
                store  subs(dtoc(date0),4,5) to data0
                open_arhi(loc0:=1)
                set order to
                go top
               repl all data with data0
                go bott
                if 1 < recno()
                   repl fakt with vid2, f with 'к'
                endif
                @ 0,0 say curdir("us_0")
            *   save all like date0 to date
                clos all
                open_dobo(loc0:=1)
                dele all
                podr_0=22
                save all like podr_0 to podred
                podred()
                clos all
                open_kobo(loc0:=1)
                dele all
                podr_0=23
                save all like podr_0 to podred
                podred()
                clos all
                open_dpar(loc0:=1)
                dele all
                podr_0=24
                save all like podr_0 to podred
                podred()
                clos all
                open_kpar(loc0:=1)
                dele all
                podr_0=25
                save all like podr_0 to podred
                podred()
                clos all
                open_tehno(loc0:=1)
                if field(5)='OKOL'
                  repl all okol with 0
                endif
                   save  screen
                   podr_0=1
                   save all like podr_0 to podred
                   podred()
                   restore screen
                  open_obap(loc0:=1)
                  set order to 0
                  if l1='н'
                      repl all kol with kkol, asal with ksal, t with ts
                  else
                      repl all kol with 0, asal with 0
                  endif
                   clos data
                   open_obve(loc0:=1)
                   set order to 0
                   if l1='н'
                       repl all ndso with kdso, nkso with kkso
                   else
                       repl all ndso with 0, nkso with 0
                   endif
                   clos data
                   open_dds(loc0:=1)
                   set order to 0
                   if l1='д'
                       dele all
                       podr_0=60
                       save all like podr_0 to podred
                       podred()
                   endif

                     return


               case v4=3
                  nom0=0
                  nom1=9999
                  nom4='    '
                  data3='  /'+dt0
                  data1='     '
                  ll11='н'
                if sc11='д'
                     store 'C'+subs(us_0,2,7) to us_1
                else
                  if  pake='HOME'
                      store 'C:\M1'+subs(us_0,6,4) to us_1
                  else
                      store 'D'+subs(us_0,2,7) to us_1
                  endif
                endif
                 do while .t.
                  ramka()
                  @ 23+ml0,15 say 'F6-ак▓│ализа╢и┐ на па░▓иди'
                  @ 23+ml0,43 say 'F7-▒пи▒║к о▓ ди░ек▓о░ии'
                  @  2,30 say 'ДОБАВЯHЕ HА ОПЕРАЦИЯ'
                  @  3,29 say '----------------------'
                     set key -5 to aktdis
                     set key -6 to direk1
                  if subs(memoread("s0001.prn"),1,7)='Лип▒ва '.or.subs(memoread("s0001.prn"),1,7)='Разлика'.or.subs(memoread("s0001.prn"),1,9)='---------'
                     @  5,48,21+ml0,74 box ram1
                     save1=memoedit(memoread("s0001.prn"),6,50,20+ml0,72,.t.,"fdobav",23,40,1,0)
                     memowrit('s0001.prn',save1)
                  endif
                  @  6,13 say 'О▓ ди░ек▓о░и┐ ' get us_1 pict "N:\NNNN\" valid 64<asc(us_1).and.asc(us_1)<123
                  chet() && read
                  us_1=trim(us_1)
                     if lastkey()=27
                       return
                     endif
                       set key -6 to direk0
                  @  8,13 say 'В  ди░ек▓о░и┐ ' get us_0 pict "N:\NNNN\"  valid 64<asc(us_0).and.asc(us_0)<123
                  chet() && read
                  us_0=trim(us_0)
                  @ 10,13 say 'В║веде▓е о▓ номе░ СО : ' get nom2  pict '9999'
                  @ 12,13 say 'В║веде▓е до номе░ СО : ' get nom3  pict '9999'
                  @ 14,13 say 'В║веде▓е ме▒е╢а на СО :' get data3 pict '99/99'
                  @ 16,13 say 'Замене▓е ▒ номе░      и да▓а'
                  @ 16,30 get nom4
                  @ 16,42 get data1
                  chet() && read
                     if lastkey()=27
                       return
                     endif

                   set key -6 to
                  oper() && pro0
                 enddo
            endcase
          enddo
           case v3=6
             ramka()
             @  2,30 say 'KОРЕKЦИЯ HА ИK. ЕЛЕМЕHТИ'
             @  3,29 say '--------------------------'
            open_obap(loc0:=75)
           do while .t.
             set  key -2 to nov
           @ 23+ml0,24 say 'F3 - изди░ва желана▓а ╡а░ак▓е░и▒▓ика'
           @  8,22 say 'В║веде▓е ╕и┤║░а на ик. елемен▓:' get nvo0 picture "9999"
           chet()
           @ 23+ml0,23 say '                                     '
                             if lastkey()=27
                                 set  key -2 to
                                 return
                             endif
           dnvo0='   '+str(nvo0,4)
               find '&dnvo0'
                  if  found()
                       @ 11, 6 say 'В║веде▓е наимен. на ик. елемен▓:' get name
                       chet()
                  else

                       @ 11, 6 say 'В║веде▓е наимен. на ик. елемен▓:' get name0
                       chet()
                             if lastkey()=27
                                 set  key -2 to
                                 return
                             endif
                       appe blank
                       rec_lock()
                       repl part with '   '+str(nvo0,4),name with name0
                       rec_unlock()
                  endif
                            if substr(name,1,1)='*'
                                del()
                            else
                                reca()
                            endif
           enddo
               return
           case v3=7
                   ramka()
                   set safety off
                   @  4,34 say 'ВHИМАHИЕ !'   color 'R+/B'
                   @ 10,14 say 'ЗАДЪЛЖИТЕЛHО Е ИЗРАБОТВАHЕ HА ОБОРОТHА ВЕДОМОСТ'
                   @ 12,16 say 'ОТ ПРЕДХОДHИЯ МЕСЕЦ ПО СИHТЕТИЧHИТЕ СМЕТKИ И'
                   @ 14,28 say 'АHАЛИТИЧHИТЕ ПАРТИДИ'
                   @ 23+ml0,26 say 'Hа▓и▒не▓е кой да е клави╕'
                   i0=inkey(0)
                   @ 23+ml0,26 say '                         '
                   @ 4,14 clea  to 14,70
                   store subs(us_0,1,5)+str(val(subs(us_0,6,2))-1,2)+'\' to us_1
              do while .t.
                  ramka()
                  @  2,21 say 'ПРЕХВЪЛЯHЕ HА САЛДА ОТ ПРЕДХОДЕH МЕСЕЦ'
                  @  3,20 say '----------------------------------------'
                      set key -6 to direk1
                  @  6,25 say 'О▓ ди░ек▓о░и┐ ' get us_1 pict "N:\NNNN\"  valid 64<asc(us_1).and.asc(us_1)<123
                  read
                     if lastkey()=27
                       return
                     endif
                      set key -6 to direk0
                  @  8,25 say 'В  ди░ек▓о░и┐ ' get us_0 pict "N:\NNNN\"  valid 64<asc(us_0).and.asc(us_0)<123
                  read
                     if lastkey()=27
                       return
                     endif
                l0=1
                @ 10,16 say 'Желае▓е ли п░е╡в║░л┐не на ДДС ▓абли╢а'
                @ 10,54 prompt 'HЕ'
                @ 10,57 prompt 'ДА'
                menu to l0
                    raboti()
                          if (.not.file("&us_1*.*")).or.(.not.file("&us_0*.*")).or.us_0=us_1
                             @ 23+ml0,15 say space(50)
                             @ 23+ml0,23 say ' Г░е╕и▓е ме▒е╢а или кода на ┤и░ма▓а '
                             zvan()
                             i0=inkey(0)
                             @ 23+ml0,15 say space(50)
                             return
                          endif

                   if file  ("&us_1\tehno.dbf")
                        copy file '&us_1'+'tehno.dbf' to '&us_0'+'tehno.dbf'
                   endif
                   if l0=2
                        copy file '&us_1'+'dds.dbf' to '&us_0'+'dds.dbf'
                   endif
                       sele 6
                       use
                       sele 14
                       rename '&us_1'+'obap.dbf' to '&us_1'+'obapr.dbf'
                       use '&us_1'+'obapr' index '&us_1'+'aobi', '&us_1'+'nami', '&us_1'+'pai'
                       open_obap()
                    do while .not. eof()
                         part0=part
                             sele 14
                             find '&part0'
                                 if found()
                                   ts0=ts
                                   kkol0=kkol
                                   ksal0=ksal
                                   proa0=proa
                                   sele 6
                                   rec_lock()
              *          if subs(part,1,3)='401'  &&  prehwyrlqne saldata samo na edna smetka
                                   repl t with ts0,kol with kkol0,asal with ksal0,proa with proa0
              *          endif   &&  prehwyrlqne saldata samo na edna smetka
                                   rec_unlock()
                                 else
                                   sele 6
                                   rec_lock()
              *          if subs(part,1,3)='401'  &&  prehwyrlqne saldata samo na edna smetka
                                   repl kol with 0, asal with 0
              *          endif   &&  prehwyrlqne saldata samo na edna smetka
                                   rec_unlock()
                                 endif
                             if .not.eof()
                                  skip
                              else
                                   exit
                              endif
                    enddo
                       sele 14
                       use
                       rename '&us_1'+'obapr.dbf' to '&us_1'+'obap.dbf'
                       sele 7
                       use
                       sele 14
                       use
                       rename '&us_1'+'obve.dbf' to '&us_1'+'obver.dbf'
                       use '&us_1'+'obver' index '&us_1'+'sobi'
                       open_obve()
                    do while .not. eof()
                         sch0=sch
                         sele 14
                             find '&sch0'
                                 if found()
                                   kdso0=kdso
                                   kkso0=kkso
                                   sele 7
                                   rec_lock()
                                   repl ndso with kdso0, nkso with kkso0
                                   rec_unlock()
                                 else
                                   sele 7
                                   rec_lock()
                                   repl ndso with 0, nkso with 0
                                   rec_unlock()
                                 endif
                             if .not.eof()
                                  skip
                              else
                                   exit
                              endif
                    enddo
                       sele 14
                       use
                       rename '&us_1'+'obver.dbf' to '&us_1'+'obve.dbf'
               save screen
               podr_0=1
               save all like podr_0 to podred
               podred()
               restore screen
                zvan()
                raboti()
                @ 23+ml0,15 say '                 П░ог░ама▓а п░икл╛╖и               '
                i0=inkey(0)
              enddo
           case v3=8
       do while .t.
            ramka()
            open_obap(loc0:=76) && aobi
            part0=space(3)
            store 0 to ksal0,pr1,pr2
             @  2,30 say 'АМОРТИЗАЦИОHЕH ПЛАH'
             @  3,29 say '---------------------'

             @ 10,22 say 'В║веде▓е па░▓идни┐▓ номе░ ' get part0
             chet()
                       if lastkey()=27.or.part0=space(3)
                          set dele off
                          exit
                       endif
             find '&part0'
                   set cons on
              if found()
                     save screen
                     set filter to substr(part,1,3)=part0
                     declare fiel[3]
                     fiel[1]='part'
                     fiel[2]='name'
                     fiel[3]='proa'
                     declare imem[3]
                     imem[1]='ШИФЪР'
                     imem[2]='           HАИМЕHОВАHИЕ'
                     imem[3]='АМОРТ.%'
                     @  5,14,21+ml0,66 box ram1
                     dbedit( 6,15,20+ml0,65,fiel,"pfunk7",'',imem,'-','╙')
                     nvo0=val(substr(part,4,4))
                     restore screen
                     set filter to
                       if lastkey()=27
                          set dele off
                          exit
                       endif
              else
                 @ 23+ml0,27 say 'H┐ма па░▓ида ▒ ▓ози номе░'
                 i0=inkey(0)
                 loop
              endif
       enddo
                l0=1
                @ 12,15 clea to 14,60
                @ 12,15 say 'Желае▓е ли из╖и▒л┐ване на ме▒е╖на амо░▓.кво▓а'
                @ 12,61 prompt 'HЕ'
                @ 12,64 prompt 'ДА'
                menu to l0
                if l0=2
                     @ 14,28 say 'О▓ па░▓ида      :  ' get pr1 pict'9999'
                     @ 16,28 say 'До па░▓ида      :  ' get pr2 pict'9999'
                    chet()
                    @ 14,15 clea to 16,70
                endif
    izrab()
                       if lastkey()=27
                          set dele off
                          return
                       endif
           if ekpr0=2
              ll0='2'
              set marg to 10
              b0=7
              b1=54
              @ 14,19 say 'В║веде▓е б░о┐ на ░едове▓е на ▒▓░ани╢а' get b1 pict "999"
              chet()
           endif
              ?? sbit0
              prn0=sbit0
  find '20'
 ? space(48)+'А М О Р Т И З А Ц И О H Е H   П Л А H'
 ? space(46)+fir
 ? space(63)+str(year(date0),4)+'г.'
 ?
 ? repli('_',128)
 ? ' ПАРТ.                HАИМЕHОВАHИЕ           ДАТА HА    ПОЛЕЗЕH    ОТЧЕТHА    АМОРТИЗАЦИЯ   ОСТАТЪЧHА   МЕТОД   АМОРТ.      ГОД.'
 ? '  N                                          ВЪВЕЖД.      СРОК       СТ-СТ                     СТ-СТ      HА    HОРМА     АМОРТ.'
 ? '                                                          Г.  М.            МЕС.      СУМА              АМОРТ.            KВОТА '
 ? repli('_',128)
          store 0 to ksal2,ksal3,ksal4,ksal20,ksal30,ksal40
          part0=subs(part,1,4)
    *     do while (part='20'.or.part='21').and.(.not.part='207') && ▒║к░а▓ен
          do while (part='20'.or.part='21') &&   ░аз╕и░ен
               if 0 < pr1.and.0 < pr2
                 if  val(substr(part,4,4))<pr1.or.val(substr(part,4,4))>pr2
                          if .not. eof() ; skip ; loop ; endif
                 endif
               endif
                 if part='207'
                          if .not. eof() ; skip ; loop ; endif
                 endif
          re0=recno()
          ksal1=ksal
       if part='20'
          ds0='241'+substr(part,4,4)
       else
          ds0='242'+substr(part,4,4)
       endif
          find '&ds0'
          proa0=''
       if found()
          ksal0=ksal
          kol0=kkol
          zena0=zena
          dnev0=dnev
          proa0=proa
          if ksal1-ksal0=0
          else
            if 0 < val(proa)
              rec_lock()
              repl zena with ksal1*val(proa)/100/12,kol with round(asal/zena,0)
              rec_unlock()
            endif
          endif
       else
         dnev0='н┐ма в 241'
       endif
          go re0
       if .not.part0=subs(part,1,4)
       *  ▒║к░а▓ен п│▒на▓о
       *  ? part0+space(60)+str(ksal20,11,j1)+'     '+str(ksal20-ksal30,11,j1)+' '+str(ksal30,11,j1)+'               '+str(ksal40,10,j1)
          store 0 to ksal20,ksal30,ksal40
       endif
          ksal20=ksal20+ksal
          ksal30=ksal30+(ksal-ksal0)
          ksal40=ksal40+(zena0*12)
          part0=subs(part,1,4)
    spri()
        if  b0=0.and.ekpr0=2
              ? sbit0
        endif
 * ?  part+' '+name+' '+dnev0+' '+str(kkol,2)+' '+str(round(100/val(proa0),j1),2)+' '+str(100/val(proa0)*12,3)+' '+str(ksal,11,j1)+' '+str(kol0,2)+;
   ?  part+' '+name+' '+dnev0+'  '+str(round(100/val(proa0),j1),3)+' '+str(100/val(proa0)*12,3)+' '+str(ksal,11,j1)+' '+str(kol0,3)+;
   ' '+str(ksal0,11,j1)+' '+str(ksal-ksal0,11,j1)+'  линеен   '+proa0+'  '+str(round(zena0*12,j1),10,j1)
       ksal2=ksal2+ksal
       ksal3=ksal3+(ksal-ksal0)
       ksal4=ksal4+(zena0*12)
                             if .not.eof()
                                  skip
                              else
                                   exit
                              endif
          enddo
   *    ▒║к░а▓ен п│▒на▓о
   *   ? part0+space(60)+str(ksal20,11,j1)+'     '+str(ksal20-ksal30,11,j1)+' '+str(ksal30,11,j1)+'               '+str(ksal40,10,j1)  &&
       ? space(55)+'          ----------      ----------  ----------                ---------'
       ? space(45)+'В▒и╖ко             '+str(ksal2,11,j1)+'     '+str(ksal2-ksal3,11,j1)+' '+str(ksal3,11,j1)+'               '+str(ksal4,10,j1)

     pech()
        endcase
           ************** Ф│нк╢и┐ к║м амо░▓иза╢ионен план ******************
                function pfunk7
                parameters mode0,fld0
                private fld0
                cur0=fiel[fld0]
                 do case
                   case mode0 < 4
       @ 23+ml0,19 say '  Избо░ на поле-колона ▒▓░елки - '+'-'+chr(26)+' '+chr(25)+' '+chr(24)+' '+chr(27)+'- '
                        return 1
                   case lastkey()=27
                         return 0
                   case lastkey()=13
                         set cursor on
                         kol0=kol
                         @ row(),col() get &cur0
                         @ 23+ml0,21 say '        В║веде▓е желани▓е п░омени           '
                         chet()
                         set cursor off
                         @ 23+ml0,19 say '  Избо░ на поле-колона ▒▓░елки - '+'-'+chr(26)+' '+chr(25)+' '+chr(24)+' '+chr(27)+'- '
                         return 1
                 endcase
                return 1
           ************** П░о╢ед│░а за за изли▒▓ване на OBAP Ппо ик. елемен▓и ****
                           proc nov
                     save screen
                     set filter to substr(part,1,3)='   '
                     declare fiel[2]
                     fiel[1]='part'
                     fiel[2]='name'
                     declare imem[2]
                     imem[1]='ШИФЪР'
                     imem[2]='           HАИМЕHОВАHИЕ'
                     @ 15,19,21+ml0,61 box ram1
                     dbedit(16,20,20+ml0,60,fiel," ",'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',imem,'-','╙')
                     nvo0=val(substr(part,4,4))
                     restore screen
                     set filter to
                           return
           ************** П░икл╛╖ване ▒м┐на на номе░а на опе░а╢и┐ ************
                            proc nnom
                set key -8 to
                save screen
                clear gets
                store 0 to nom2,nom3
                store data0 to data2,data3
             do while .t.
                @ 11,21,15,58 box ram1
                @ 12,22 clea to 14,57
                          @ 12,25 say 'ПРОЦЕДУРАТА СМЕHЯ HОМЕРА HА СО'
                          @ 13,23 say 'Hоме░ на СО' get nom2 pict'9999'
                          @ 14,23 say 'О▓ да▓а   ' get data2 pict'99999'
                          @ 13,42 say 'Заменен ▒ :' get nom3 pict'9999'
                          @ 14,42 say 'О▓ да▓а  :' get data3 pict'99999'
                          chet()
              if lastkey()=27 .or. nom2=0 .or. nom3=0
                  return
              endif
                         dn2=subs(data2,4,2)+data2+str(nom2,4)
                         dn3=subs(data3,4,2)+data3+str(nom3,4)
            open_arhi(loc0:=57)   && nari
            find '&dn3'
                     if  found()
                        @ 14,22 say '   Има опе░а╢и┐ ▒ ▓ози номе░    '+str(nom3,4)
                        i0=inkey(0)
                        loop
                     endif
            find '&dn2'
                     if .not. found()
                        @ 14,22 say '   H┐ма опе░а╢и┐ ▒ ▓ози номе░   '+str(nom2,4)
                        i0=inkey(0)
                        loop
                     endif
             do while .t.
                find '&dn2'
                if found()
                    rec_lock()
                    repl nom with str(nom3,4),data with data3
                    rec_unlock()
                else
                    exit
                endif
             enddo
             open_dobo(loc0:=50)
             do while .t.
                find '&dn2'
                if found()
                    rec_lock()
                    repl nom with str(nom3,4),data with data3
                    rec_unlock()
                else
                    exit
                endif
             enddo
             open_kobo(loc0:=49)
             do while .t.
                find '&dn2'
                if found()
                    rec_lock()
                    repl nom with str(nom3,4),data with data3
                    rec_unlock()
                else
                    exit
                endif
             enddo
             open_dpar(loc0:=43)
             do while .t.
                find '&dn2'
                if found()
                    rec_lock()
                    repl nom with str(nom3,4),data with data3
                    rec_unlock()
                else
                    exit
                endif
             enddo
             open_kpar(loc0:=43)
             do while .t.
                find '&dn2'
                if found()
                    rec_lock()
                    repl nom with str(nom3,4),data with data3
                    rec_unlock()
                else
                    exit
                endif
             enddo
             enddo
                       return

        ******************* Уп░авление ЗАПИСИ ******************
       function rec_lock   &&  rec_lock
                          rlock()
                 do while .t.
                      if  rlock()
                          return  &&  (.t.)
                          unlock
                        loop
                      endif
                 enddo
       return
       function  rec_unlock  && REC_UNLOCK
                          unlock
                   return   &&  (.f.)

        ******************* Otvaryane na dbf faylove *****************
                            func open_arhi  && ARHI
                                 sele 1
                                 filee='&us_0'+'arhi'
                                 file_lock ()
                                 if .not. field(7)='DN3'.and.(.not.sc11='д')
                                   copy file &disc_1\save\arh.dbf to '&us_0'+'arh.dbf'
                clos data
                sele 8
                use '&us_0'+'arh'
                sele 6
                use '&us_0'+'arhi'
                store '' to bg_0, reg9
                do while .not. eof()
                 sele 6
                 nom9 = nom
                 papk9= papk
                 dok9 = dok
                 vid9 = vid
                 dn9  = dn
                 dr9  = dr
                 vd9  = vd
                 sd9  = sd
                 vi9  = vi
                  f9  = f
                fakt9 = fakt
                 data9= data

         *   if field(5)='BG'
         *      rec_lock
         *      repl bg with bg_0
         *      rec_unlock
         *   endif
       sele 8
       appe blank
   repl nom with nom9, papk with papk9,dok with dok9,vid with vid9,;
   dn with dn9,dr with dr9,vd with vd9, sd with sd9, vi with vi9, f with f9,;
   fakt with fakt9, data with data9, vek with subs(str(year(date0),4),1,2), reg with reg9
       sele 6
           if .not. eof() ; skip ; else ; exit ; endif
                enddo
               clos all
               eras '&us_0'+'arhi.dbf'
               rename '&us_0'+'arh.dbf' to '&us_0'+'arhi.dbf'
               podr_0=1
               save all like podr_0 to podred
               podred()
               filee='&us_0'+'arhi'
               file_lock ()
                                 endif
                                 if file("&us_0\nari.ntx")
                                      set inde to '&us_0'+'nari','&us_0'+'faki','&us_0'+'vidi'
                                 endif
                           return

                            func open_regl  && REGL
                                 sele 1
                                 filee="&in_0\regl"
                                 file_lock ()
                                 if file("&in_0\dni.ntx")
                                   set inde to '&in_0'+'\dni','&in_0'+'\vvidi'
                                 endif
                           return
                            func open_info  && INFO
                                 sele 1
                                 filee="&in_0\info"
                                 file_lock ()
                           return
                            func open_dds  && DDS
                                 sele 1
                                 filee='&us_0'+'dds'
                                 file_lock ()
                                 if file("&us_0\dati.ntx")
                                    set inde to '&us_0'+'dati'
                                 endif
                           return
                            func open_dobo  && DOBO
                                 sele 2
                                 filee='&us_0'+'dobo'
                                 file_lock ()
                                 if file("&us_0\nsdi.ntx")
                                   set inde to '&us_0'+'nsdi','&us_0'+'dsdi','&us_0'+'ds'
                                 endif
                           return
                            func open_dobot  && DOBOT
                                 sele 2
                                 filee='dobot'
                                 file_lock ()
                              if file("&us_0\dsdit.ntx")
                                 set inde to '&us_0'+'dsdit'
                              endif
                           return
                            func open_kobo  && KOBO
                                 sele 3
                                 filee='&us_0'+'kobo'
                                 file_lock ()
                                 if file("&us_0\nski.ntx")
                                    set inde to '&us_0'+'nski','&us_0'+'dski','&us_0'+'ks'
                                 endif
                           return

                            func open_kobot && KOBOT
                                 sele 3
                                 filee='kobot'
                                 file_lock ()
                             if file("&us_0\dskit.ntx")
                                 set inde to '&us_0'+'dskit'
                             endif
                           return
                            func open_dpar  && DPAR
                                 sele 4
                                 filee='&us_0'+'dpar'
                                 file_lock ()
                                 if file("&us_0\nadi.ntx")
                                    set inde to '&us_0'+'nadi','&us_0'+'dpdi','&us_0'+'di'
                                 endif
                           return
                            func open_dparjo  && DPARJO
                                 sele 4
                                 filee='&us_0'+'dparjo'
                                 file_lock ()
                              if file("&us_0\dp.ntx")
                                 set inde to '&us_0'+'dp'
                              endif
                           return

                            func open_dpart  && DPART
                                 sele 4
                                 filee='&us_0'+'dpart'
                                 file_lock ()
                            if file("&us_0\dpdit.ntx")
                                   set inde to '&us_0'+'dpdit'
                            endif
                           return
                            func open_dparp  && DPAR
                                 sele 4
                                 filee='&us_0'+'dpar'
                                 file_lock ()
                                if file("&us_0\dpkd.ntx")
                                  set inde to '&us_0'+'dpkd'
                                endif
                           return
                            func open_kpar  && KPAR
                                 sele 5
                                 filee='&us_0'+'kpar'
                                 file_lock ()
                                 if file("&us_0\naki.ntx")
                                    set inde to '&us_0'+'naki','&us_0'+'dpki','&us_0'+'ki'
                                 endif
                           return
                            func open_kpart && KPART
                                 sele 5
                                 filee='&us_0'+'kpart'
                                 file_lock ()
                                 if  file("&us_0\dpkit.ntx")
                                  set inde to '&us_0'+'dpkit'
                                 endif

                           return
                            func open_kparp && KPARP
                                 sele 5
                                 filee='&us_0'+'kpar'
                                 file_lock ()
                               if  file("&us_0\dpkk.ntx")
                                 set inde to '&us_0'+'dpkk'
                               endif
                           return
                            func open_kparjo  && KPARJO
                                 sele 5
                                 filee='&us_0'+'kparjo'
                                 file_lock ()
                               if  file("&us_0\kp.ntx")
                                 set inde to '&us_0'+'kp'
                               endif
                           return
                            func open_obap  && OBAP
                                 sele 6
                                 filee='&us_0'+'obap'
                                 file_lock ()
                                 if file("&us_0\aobi.ntx")
                                    set inde to '&us_0'+'aobi','&us_0'+'nami','&us_0'+'pai'
                                 endif
                           return
                            func open_obapi && OBAPI
                                 sele 6
                                 filee='&us_0'+'obapi'
                                 file_lock ()
                               if file("&us_0\parti.ntx")
                                 set inde to '&us_0'+'parti'
                               endif
                           return
                            func open_obve  && OBVE
                                 sele 7
                                 filee='&us_0'+'obve'
                                 file_lock ()
                                 if file("&us_0\sobi.ntx")
                                    set inde to '&us_0'+'sobi'
                                 endif
                           return
                            func open_zame  && ZAME
                                 sele 7
                                 filee='&us_0'+'zame'
                                 file_lock ()
                                 if file("&us_0\zami.ntx")
                                   set inde to '&us_0'+'zami'
                                 endif
                           return
                            func open_ar && ar
                                 sele 8
                                 filee='&us_0'+'ar'
                                 file_lock ()
                           return
           ***********   Prodalzhava  open files in  pro3  ******************


