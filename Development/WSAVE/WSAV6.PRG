   ** IMA PROMQNA W MENU 5/2    
   


    do case
       case v0=1 


         DO podred
       case v0=6
          DO dire
          DO firma
             ramka0.Visible =.F.
             ekran0.Show    

       case v0=7

      ENDCASE
      










     tt0='60'
  *   ramka()
  *      @  2, 8,21,72 box ram1
  *      @  3, 9 clea to 20,71
  *      @  3,28 say 'K  О  Р  Е  K  Ц  И  И'
  *      @  5,24 prompt '1. Реиндексация'
  *      @  7,24 prompt '2. Счетоводна операция'
  *      @  9,24 prompt '3. Добавяне на оборотите по месеци'
  *      @ 11,24 prompt '4. Отпечатване на страница '
  *      @ 13,24 prompt '5. Откриване на нова година и нов месец'
  *      @ 15,24 prompt '6. Kорекция на ик. елемнти'
  *      @ 17,24 prompt '7. Прехвъляне на салда от предходен месец'
  *      @ 19,24 prompt '8. Амортизационен план'
  *       menu to v3
        do case
           case lastkey()=27
           return
           case v0=1
           
               podr_0=1
               save all like podr_0 to podred
               DO podred
               if file("prot.dbf")
                         podr_0=13
                        save all like podr_0 to podred
               endif
       *     endif
           case v0=2
              store 0 to br0,br1
              l1='н'
              k1=' '
              tt0='20'
              ksto11=0
              gkor()
              clos all
           case v0=3
              store data0 to data1
             store us_0 to us_1
         do while .t.
             ramka()
             @  2,25 say 'ДОБАВЯHЕ HА ОБОРОТИ ПО МЕСЕЦИ'
             @  3,24 say '-------------------------------'
             set key -6 to direk1
             @  6,27 say 'От директория ' get us_1   valid 64<asc(us_1).and.asc(us_1)<123
             chet() && read
             if lastkey()=27
                 return
              endif
              data1='01/'+subs(us_1,6,2)
              set key -6 to direk0
              @  8,27 say 'В  директория ' get us_0  valid 64<asc(us_0).and.asc(us_0)<123
              @ 10,26 say 'Обороти за месец :' get data1
              chet() && read
             if lastkey()=27
                 return
              endif
              raboti()
              us_1=trim(us_1)
              us_0=trim(us_0)

                     dn0=subs(data1,4,2)+data1
                          open_arhi(loc0:=52)
                          find '&dn0'
                             if found()
                               zvan()
                               @ 23+ml0,20  say 'Вече има добавени обороти за този месец !'
                               i0=inkey(0)
                               @ 23+ml0,20 say space(51)
                               loop
                             endif
                          if .not. file("&us_1\*.*")
                              @ 23+ml0,22 say '          Грешите масеца !          '
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
                DO podred
        *                 zvan()
         enddo
         case v0=4
               DO PECH
         case v0=5
            store us_0 to us_1
          do while .t.
            v4=0
            @  7,17,17,64 box ram1
            @  8,18 clea to 16,63
            @  8,23 say 'ОТKРИВАHЕ HА HОВА ГОДИHА И HОВ МЕСЕЦ'
            @ 10,28 prompt '1.Откриване на нова година'
            @ 12,28 prompt '2.Откриване на нов месец'
            @ 14,28 prompt '3.Добавяне на операция'
                menu to v4
            chet()
            do case
               case lastkey()=27
                     exit
               case v4=1
              do while .t.
                  ramka()
                  @  2,28 say 'ОТKРИВАHЕ HА HОВА ГОДИHА'
                  @  3,27 say '--------------------------'
                  @  8,25 say 'Посочете шифъра на фирмата' get go0 valid 64<asc(go0).and.asc(go0)<123
                  @ 11,30 say 'Въведете годината' get dt0
                  us0=subs(us_0,1,1)
                      chet()
                               l0='н'
                               @ 23+ml0,28 say 'Желаете ли по месеци д/н' get l0 valid l0='д'.or.l0='н'
                               chet()
                               @ 23+ml0,23 say '                                          '
                     if lastkey()=27.or.substr(go0,1,1)=' '
                       return
                     endif
                          if  file("&us0:\&go0&dt0\janu\*.*")
                               @ 23+ml0,20  say 'Директорията вече съществува на у-во "&us0" !'
                                        i0=inkey(0)
                                exit
                          else
                                exit
                          endif
              enddo
                  raboti()
                  !md &us0:\&go0&dt0
             if l0='д'
                  !md &us0:\&go0&dt0\janu
                  !md &us0:\&go0&dt0\febr
                  !md &us0:\&go0&dt0\marc
                  !md &us0:\&go0&dt0\apri
                  !md &us0:\&go0&dt0\may
                  !md &us0:\&go0&dt0\june
                  !md &us0:\&go0&dt0\july
                  !md &us0:\&go0&dt0\augu
                  !md &us0:\&go0&dt0\sept
                  !md &us0:\&go0&dt0\octo
                  !md &us0:\&go0&dt0\nove
                  !md &us0:\&go0&dt0\dece
             endif
               k0=fcreate("&us0:\&go0&dt0\a")
                 fclose(k0)
             if l0='д'
             han0=fcreate("&us0:\&go0&dt0\janu\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt0\febr\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt0\marc\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt0\apri\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt0\may\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt0\june\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt0\july\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt0\augu\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt0\sept\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt0\octo\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt0\nove\a")
                 fclose(han0)
             han0=fcreate("&us0:\&go0&dt0\dece\a")
                 fclose(han0)
             endif
                          if  file(" \treeinfo.ncd")
                              erase \treeinfo.ncd
                          endif
                  return
               case v4=2
                  l1='н'
                  ramka()
               *   store us_0 to us_1
                do while .t.
                  @ 23+ml0,20 say '      F7 - списък от директории        '
                  @  2,28 say 'ОТKРИВАHЕ HА HОВ МЕСЕЦ'
                  @  3,27 say '------------------------'
                  set key -6 to direk1
                  @  6,25 say 'От директория ' get us_1  valid 64<asc(us_1).and.asc(us_1)<123
                  chet() && read
                  us_1=trim(us_1)
                  set key -6 to direk0
                  @  8,25 say 'В  директория ' get us_0 valid  64<asc(us_0).and.asc(us_0)<123
                  @ 10,25 say 'Желаете ли нулиране д/н: ' get l1  valid l1='д'.or.l1='н'
                  chet()
                  us_0=trim(us_0)
                  store trim(us_0)  to us_0,us__0
                   if 8 < len(us__0)
                     if len(us__0)=12
                         us__0=subs(us_0,1,11)
                     else
                         us__0=subs(us_0,1,12)
                     endif
                   else
                     us__0=subs(us_0,1,7)
                   endif
                     if lastkey()=27
                       return
                     endif
                set key -6 to direk0
            set cent on
           date0=ctod('15/'+subs(dtoc(date0),4,7))+17
           store date0+15 to date0
           date0=ctod('01/'+subs(dtoc(date0),4,7))
           set cent off
           data2=subs(dtoc(date0),4,5)
                 if us_0=us_1
                    l0='д'
                 else
                    l0='н'
                 endif
           @ 23+ml0,23 say 'Желаете ли в натрупваща директория' get l0 valid l0='д'.or.l0='н'
           chet()
           @ 23+ml0,15 say space(51)
                     if lastkey()=27
                       return
                     endif

                     if l0='д'
                          open_arhi(loc0:=53)
                          locate for data=data2.and.papk='k'
                            if found()
                               l0='н'
                             save  screen
                             @ 21,14,24,66 box ram1
                             @ 22,15 clea to 23,65
                             zvan()
                               setcolors (zv0+=2)
                               @ 22,22 say 'ВHИМАHИЕ'
                               setcolors (zv0)
                               @ 22,32 say ' имате  открит  месец '+data2
                               inkey(3)
                            *  @ 23+ml0,22 say 'Потвърждавате ли откриването д/н ? ' get l0  valid  l0='д'.or.l0='н'
                            *  chet()
                            endif
                                       if l0='н'
                                          return
                                       endif
                         raboti()
                         restore screen
                         copy stru to ar
                         open_ar(loc0:=1)
                         appe from arhi for substr(papk,1,3)='k'.and.data=data0
                         repl all data with data2
                         clos data
                         open_arhi(loc0:=54)
                         appe from ar
                         rec_lock()
                         eras ar.dbf
                         save all like date0 to date
                               return
                     endif
                          save  screen
                     if  us_0 = us_1
			  zvan()
                          setcolors (zv0+=2)
                          @ 13,35 say 'ВHИМАHИЕ'
                          setcolors (zv0)
                          @ 15,13 say 'Невъзможно откриване на нова дир. със същите инициали!'
				   i0=inkey(0)
                          @ 13,13 clea to 15,73
                          loop
                     endif
                     if (.not.file("&us_0\*.*")).or..not. file("&us_1\*.*")
			  zvan()
                          @ 23+ml0,23 say ' Грешите месеца или кода на фирмата '
                       *   @ 23+ml0,27 say 'ГРЕШИТЕ ДИРЕКТОРИЯТА '+"&us_0"
				   i0=inkey(0)
		       loop  && return
                     else
                        exit
                     endif
             enddo
                          if  file("&us_0\arhi.dbf")
                             @ 21,14,24,66 box ram1
                             @ 22,15 clea to 23,65
                             zvan()
                             zvan()
                             setcolors(zv0+2)
                             @ 22,22 say 'ВHИМАHИЕ'
                             setcolors(zv0)
                             @ 22,32 say 'имате обороти по месец '+subs(dtoc(date0),4,5)
                               l0='н'
                               @ 23+ml0,23 say 'Потвърждавате ли откриването д/н ?' get l0  valid  l0='д'.or.l0='н'
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
                    if file  ("&us_1\edanni.dbf.dbf")
                        copy file '&us_1'+'edanni.dbf' to '&us_0'+'edanni.dbf'
                    endif
                    if file  ("&us_1\bank.dbf")
                        copy file '&us_1'+'bank.dbf' to '&us_0'+'bank.dbf'
                    endif
                    if file  ("&us_1\bank.mem")
                        copy file '&us_1'+'bank.mem' to '&us_0'+'bank.mem'
                    endif
                    if file  ("&us_1\fn_0.mem")
                        copy file '&us_1'+'fn_0.mem' to '&us_0'+'fn_0.mem'
                    endif
                    if file  ("&us_1\nc.mnu")
                        copy file '&us_1'+'nc.mnu' to '&us_0'+'nc.mnu'
                    endif
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
                    endif
                    if file  ("&us_1\sc10.")
                        copy file '&us_1'+'sc10.' to '&us_0'+'sc10.'
                    endif
                    if file  ("&us_1\sc11.")
                        copy file '&us_1'+'sc11.' to '&us_0'+'sc11.'
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
                    if file  ("&us_1\tehno.dbf")
                        copy file '&us_1'+'tehno.dbf' to '&us_0'+'tehno.dbf'
                    else
                        copy file '\hlp\save\'+'tehno.dbf' to '&us_0'+'tehno.dbf'
                    endif
                    if file  ("&us_1\prot.dbf")
                        copy file '&us_1'+'prot.dbf' to '&us_0'+'prot.dbf'
                    endif
                    if file  ("&us_1\zame.dbf")
                        copy file '&us_1'+'zame.dbf' to '&us_0'+'zame.dbf'
                    endif
                    if file  ("&us_1\harsmet.mem")
                        copy file '&us_1'+'harsmet.mem' to '&us_0'+'harsmet.mem'
                    endif
                set cons on
        *       us__0=subs(us_0,1,7)
                dirchange("&us__0")
                         open_arhi(loc0:=53)
                         copy stru to ar
                         open_ar(loc0:=1)
                         appe from arhi for substr(papk,1,3)='k'.and.data=data0
                         repl all data with data2
                         clos data
                         open_arhi(loc0:=54)
                         appe from ar
                         rec_lock()
                         eras ar.dbf
                         save all like date0 to date
                @ 0,0 say curdir("us_0")
                save all like date0 to date
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
                open_arhi(loc0:=1)
                set order to 2
                go bott
                fn0=fakt
                set cons on
                dele all for .not.( papk='k'.and.data=data0)
                podr_0=21
                save all like podr_0 to podred
                podred()
                open_arhi(loc0:=1)
                set order to
                go top
                repl all data with subs(dtoc(date0),4,5)
                go bott
                repl fakt with fn0
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
                  data1='     '
                  ll11='н'
                  store 'D'+subs(us_0,2,7) to us_1
                 do while .t.
                  ramka()
                  @ 23+ml0,15 say 'F6-актуализация на партиди'
                  @ 23+ml0,43 say 'F7-списък от директории'
                  @  2,30 say 'ДОБАВЯHЕ HА ОПЕРАЦИЯ'
                  @  3,29 say '----------------------'
                  set key -5 to aktdis
                  set key -6 to direk1
                  if subs(memoread("s0001.prn"),1,7)='Липсва '.or.subs(memoread("s0001.prn"),1,7)='Разлика'.or.subs(memoread("s0001.prn"),1,9)='---------'
                     @  5,48,21+ml0,74 box ram1
                     save1=memoedit(memoread("s0001.prn"),6,50,20+ml0,72,.t.,"fdobav",23,40,1,0)
                     memowrit('s0001.prn',save1)
                  endif
                  @  6,13 say 'От директория ' get us_1  valid 64<asc(us_1).and.asc(us_1)<123
                  chet() && read
                  us_1=trim(us_1)
                     if lastkey()=27
                       return
                     endif
                 set key -6 to direk0
                  @  8,13 say 'В  директория ' get us_0   valid 64<asc(us_0).and.asc(us_0)<123
                  chet() && read
                  us_0=trim(us_0)
                  @ 10,13 say 'Въведете от номер СО : ' get nom2  pict "9999"
                  @ 12,13 say 'Въведете до номер СО : ' get nom3  pict "9999"
                  @ 14,13 say 'Въведете месеца на СО :' get data0
                  @ 16,13 say 'Заменете с номер      и дата'
                  @ 16,30 get nom4
                  @ 16,42 get data1
                  chet() && read

                     if lastkey()=27
                       return
                     endif

                   set key -6 to
                 * if nom3=0
                 *    store nom2 to nom3
                 * endif
                  oper() && pro0
                 enddo
            endcase
          enddo
           case v0=6
             ramka()
             @  2,30 say 'KОРЕKЦИЯ HА ИK. ЕЛЕМЕHТИ'
             @  3,29 say '--------------------------'
            open_obap(loc0:=75)
           do while .t.
             set  key -2 to nov
           @ 23+ml0,24 say 'F3 - издирва желаната характеристика'
           @  8,22 say 'Въведете шифъра на ик. елемент:' get nvo0 picture "9999"
           chet()
           @ 23+ml0,23 say '                                     '
                             if lastkey()=27
                                 set  key -2 to
                                 return
                             endif
           dnvo0='   '+str(nvo0,4)
               find '&dnvo0'
                  if  found()
                       @ 11, 6 say 'Въведете наимен. на ик. елемент:' get name
                       chet()
                  else

                       @ 11, 6 say 'Въведете наимен. на ик. елемент:' get name0
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

           case v0=7
                   ramka()
                   set safety off
                   setcolors (zv0+=2)
                   @  4,34 say 'ВHИМАHИЕ !'
                   setcolors (zv0)
                   @ 10,14 say 'ЗАДЪЛЖИТЕЛHО Е ИЗРАБОТВАHЕ HА ОБОРОТHА ВЕДОМОСТ'
                   @ 12,16 say 'ОТ ПРЕДХОДHИЯ МЕСЕЦ ПО СИHТЕТИЧHИТЕ СМЕТKИ И'
                   @ 14,28 say 'АHАЛИТИЧHИТЕ ПАРТИДИ'
                   @ 23+ml0,26 say 'Hатиснете кой да е клавиш'
                   i0=inkey(0)
                   @ 23+ml0,26 say '                         '
                   @ 4,14 clea  to 14,70
                   store subs(us_0,1,5)+str(val(subs(us_0,6,2))-1,2)+'\' to us_1
              do while .t.
                  ramka()
                  @  2,21 say 'ПРЕХВЪЛЯНЕ НА САЛДА ОТ ПРЕДХОДЕH МЕСЕЦ'
                  @  3,20 say '----------------------------------------'
                  set key -6 to direk1
                  @  6,25 say 'От директория ' get us_1   valid 64<asc(us_1).and.asc(us_1)<123
                  read
                     if lastkey()=27
                       return
                     endif
                 set key -6 to direk0
                  @  8,25 say 'В  директория ' get us_0   valid 64<asc(us_0).and.asc(us_0)<123
                  read
                     if lastkey()=27
                       return
                     endif
                l0=1
                @ 10,16 say 'Желаете ли прехвърляне на ДДС таблица'
                @ 10,54 prompt 'HЕ'
                @ 10,57 prompt 'ДА'
                menu to l0



                    raboti()
                          if (.not.file("&us_1*.*")).or.(.not.file("&us_0*.*")).or.us_0=us_1
                             @ 23+ml0,15 say space(50)
                             @ 23+ml0,23 say ' Грешите месеца или кода на фирмата '
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
          
                     *    if subs(part,1,3)='401'  &&  prehwyrlqne saldata samo na edna smetka
                                   repl t with ts0,kol with kkol0,asal with ksal0,proa with proa0
                     *    endif   &&  prehwyrlqne saldata samo na edna smetka
                                   rec_unlock()
                                 else
                                   sele 6
                                   rec_lock()
                      *   if subs(part,1,3)='401'  &&  prehwyrlqne saldata samo na edna smetka
                                   repl kol with 0, asal with 0
                      *   endif   &&  prehwyrlqne saldata samo na edna smetka
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
                @ 23+ml0,15 say '                 Програмата приключи               '
                i0=inkey(0)
              enddo
           case v0=8
       do while .t.
            ramka()
            open_obap(loc0:=76) && aobi
            part0=space(3)
            store 0 to ksal0,pr1,pr2
             @  2,30 say 'АМОРТИЗАЦИОHЕH ПЛАH'
             @  3,29 say '---------------------'

             @ 10,22 say 'Въведете партидният номер ' get part0
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
                     dbedit( 6,15,20+ml0,65,fiel,"pfunk7",'',imem,'Ї','L')
                     nvo0=val(substr(part,4,4))
                     restore screen
                     set filter to
                       if lastkey()=27
                          set dele off
                          exit
                       endif
              else
                 @ 23+ml0,27 say 'Hяма партида с този номер'
                 i0=inkey(0)
                 loop
              endif
       enddo
                l0=1
                @ 12,15 clea to 14,60
                @ 12,15 say 'Желаете ли изчисляване на месечна аморт.квота'
                @ 12,61 prompt 'HЕ'
                @ 12,64 prompt 'ДА'
                menu to l0
                if l0=2
                     @ 14,28 say 'От партида      :  ' get pr1 pict'9999'
                     @ 16,28 say 'До партида      :  ' get pr2 pict'9999'
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
              @ 14,19 say 'Въведете броя на редовете на страница' get b1 pict "999"
              chet()
           endif
              ?? sbit0
  find '20'
 ? space(48)+'А М О Р Т И З А Ц И О H Е H   П Л А H'
 ? space(46)+fir
 ? space(63)+str(year(date0),4)+'г.'
 ?
 ? repli('_',128)
 ? ' ПАРТ.                HАИМЕНОВАHИЕ           ДАТА HА    ПОЛЕЗЕН    ОТЧЕТHА    АМОРТИЗАЦИЯ   ОСТАТЪЧHА   МЕТОД   АМОРТ.      ГОД.'
 ? '  N                                          ВЪВЕЖД.      СРОК       СТ-СТ                     СТ-СТ      HА    НОРМА     АМОРТ.'
 ? '                                                          Г.  М.            МЕС.      СУМА              АМОРТ.            KВОТА '
 ? repli('_',128)
          store 0 to ksal2,ksal3,ksal4,ksal20,ksal30,ksal40
          part0=subs(part,1,4)
    *     do while (part='20'.or.part='21').and.(.not.part='207') && съкратен
          do while (part='20'.or.part='21') &&   разширен
               if 0 < pr1.and.0 < pr2
                 if  val(substr(part,4,4))<pr1.or.val(substr(part,4,4))>pr2
                          if .not. eof()
                             skip
                             loop
                          endif
                 endif
               endif
                 if part='207'
                          if .not. eof()
                             skip
                             loop
                          endif
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
         dnev0='няма в 241'
       endif
          go re0
       if .not.part0=subs(part,1,4)
       *  съкратен пуснато
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
   *  съкратено спряно   4444444444444444444444444
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
   *    съкратен пуснато
   *   ? part0+space(60)+str(ksal20,11,j1)+'     '+str(ksal20-ksal30,11,j1)+' '+str(ksal30,11,j1)+'               '+str(ksal40,10,j1)  &&
       ? space(55)+'          ----------      ----------  ----------                ---------'
       ? space(45)+'Всичко             '+str(ksal2,11,j1)+'     '+str(ksal2-ksal3,11,j1)+' '+str(ksal3,11,j1)+'               '+str(ksal4,10,j1)

     pech()
        endcase



           ************** Функция към амортизационен план ******************

                function pfunk7
                parameters mode0,fld0
                private fld0
                cur0=fiel[fld0]
                 do case
                   case mode0 < 4
       @ 23+ml0,19 say '  Избор на поле-колона стрелки - '+'-'+chr(26)+' '+chr(25)+' '+chr(24)+' '+chr(27)+'- '
                        return 1
                   case lastkey()=27
                         return 0
                   case lastkey()=13
                         set cursor on
                         kol0=kol
                         @ row(),col() get &cur0
                         @ 23+ml0,21 say '        Въведете желаните промени           '
                         chet()
                         set cursor off
                         @ 23+ml0,19 say '  Избор на поле-колона стрелки - '+'-'+chr(26)+' '+chr(25)+' '+chr(24)+' '+chr(27)+'- '
                         return 1
                 endcase
                return 1





           ************** Процедура за за излистване на OBAP Ппо ик. елементи ****
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
                     dbedit(16,20,20+ml0,60,fiel," ",'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',imem,'Ї','L')
                     nvo0=val(substr(part,4,4))
                     restore screen
                     set filter to
                           return



           ************** Приключване смяна на номера на операция ************
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
                          @ 13,23 say 'Hомер на СО' get nom2 pict'9999'
                          @ 14,23 say 'От дата   ' get data2 pict'99999'
                          @ 13,42 say 'Заменен с :' get nom3 pict'9999'
                          @ 14,42 say 'От дата  :' get data3 pict'99999'
                          chet()
              if lastkey()=27 .or. nom2=0 .or. nom3=0
                  return
              endif
                         dn2=subs(data2,4,2)+data2+str(nom2,4)
                         dn3=subs(data3,4,2)+data3+str(nom3,4)
            open_arhi(loc0:=57)   && nari
            find '&dn3'
                     if  found()
                        @ 14,22 say '   Има операция с този номер    '+str(nom3,4)
                        i0=inkey(0)
                        loop
                     endif
            find '&dn2'
                     if .not. found()
                        @ 14,22 say '   Hяма операция с този номер   '+str(nom2,4)
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


*     *******************  Функция за проверки в мрежа  ******************
                               proc vapros  && vapros
                               set bell on
                               zvan()
                               set bell off
                               save screen
                               @ 11, 5,13,74 box ram1
                               @ 12, 6 clea to 12,73
                               @ 12,12 say otgo0
                               do pauza
                               restore screen
                               return       && vapros

       