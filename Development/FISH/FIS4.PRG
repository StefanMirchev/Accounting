   *FIS4.PRG
   *  @  0,15  say 'bbbb' ; inkey(0) //kkk
                      tt0='40'
                      rasa0=1
                      @ 3,23,20,56 box ram1
                      @ 4,24 clea to 19,55
                      @ 4,29 say ' Œ…‘…—H€ €’K€'
                      @ 5,28 say '----------------------'
                      @  6,27 prompt '1. ²ª°¨¢ ­¥ ­  ­®¢ ¬¥±¥¶'
                      @  8,27 prompt '2. ‚§¥¬ ­¥ ­  ¬¥±¥¶'
                      @ 10,27 prompt '3. ‚°º¹ ­¥ ­  ¬¥±¥¶'
                      @ 12,27 prompt '4. ˆ§·¨±«¿¢  ±² ¦  '
                      @ 14,27 prompt '5. ˆ­´®°¬ ¶¨¿ §  Hˆ'
                      @ 16,27 prompt '6. ²ª°¨¢ ­¥ ­  ­®¢ ¸¨´º°'
                      save screen
                          menu to v2
                       if lastkey()=27
                              return
                       endif
               do case
                  case v2=1

                       ramka()
                      @  2,29 say '’Kˆ‚€H… H€ H‚ Œ…‘…–'
                      @  3,28 say '------------------------'
                       sele 2
                       use mese
                       go top
                       do while .t.
                          vd0=data
                          skip
                           if eof()
                              exit
                           endif
                         if .not.vd0=data
                      @ 23,16 say '‚HˆŒ€Hˆ… '  color 'R+/B'
                      @ 23,25 say 'H¥¤®¯³±²¨¬® ¥ ¤  ¯®¢¥·¥ ®² 1 ¬¥±. ¢ 5/1'
                           pauza()
                           return
                         endif

                        if sch='603' .and. 0 <> suma
                    @ 20,14 clea to 23,66  ; @ 21,14,24,66 box ram1
                    @ 22,16 say '‚HˆŒ€Hˆ… '  color 'R+/B'
                    @ 22,25 say '²ª°¨¢ ­¥ ­  ­®¢ ¬¥±¥¶ ¥ ­¥¤®¯³±²¨¬® ± '
                    @ 23,16 say '¸¨´º° 603 ¨ ±²-±² '+str(suma,9,2)+' ­³«¨° ©²¥ ±²-±²² !'
                         pauza()
                         return
                       endif
                       enddo

                       sele 2 ; use mese inde dnsi,sdni
                       go bott
                       store data to data0,data1
                       vd0=vek0+data0
                       vd1=vek0+data1
                       use
                       sele 4 ; use godn inde gdnsi,gsdni
                       find "&vd0"
                     if found()
                        @ 23,22 say '‚HˆŒ€Hˆ…  '  color 'R+/B'
                        @ 23,31 say '¨¬ ²¥ ®¡®°®²¨ §  ¬¥±¥¶ '+data0+'     '
                        pauza()
                         return
                      endif
                        me0=val(substr(data0,1,2))+1
                        do case
                           case me0 < 10
                             me0='0'+str(me0,1,1)
                             dt0=substr(data0,4,2)
                           case me0 > 9.and.me0<13
                             me0=str(me0,2)
                             dt0=substr(data0,4,2)
                           case me0 > 12
                             me0='01'
                         if 99 < val(substr(data0,4,2))+1
                             dt0='00'
                         else
                             dt0=str(val(substr(data0,4,2))+1,2)
                             if val(dt0) < 10
                                dt0='0'+str(val(dt0),1)
                             endif
                         endif
                        vek0=str(val(vek0)+1,4)
                        endcase
                        data0=me0+'/'+dt0
                        date0=ctod('01/'+subs(data0,1,2)+'/'+vek0)
                        store vek0 to vek1
                        t1=subs(data0,1,2)
        do case
          case t1='01' ; x82=31.01
          case t1='02'
               set cent on
               x82=28.02
               set cent on
               if ! dtoc(ctod('29/02/'+subs(dtoc(date0),7,4)))='  /  /    '
                  x82=29.02
               endif
               set cent off
          case t1='03' ; x82=31.03 ; case t1='04' ; x82=30.04
          case t1='05' ; x82=31.05 ; case t1='06' ; x82=30.06
          case t1='07' ; x82=31.07 ; case t1='08' ; x82=31.08
          case t1='09' ; x82=30.09 ; case t1='10' ; x82=31.10
          case t1='11' ; x82=30.11 ; case t1='12' ; x82=31.12
        endcase

                      if m_&me0=0
                        @ 10,18 say '‚HˆŒ€Hˆ…!'  color 'R+/B'
                        @ 10,28 say 'Œ®«¿ ¢º¢¥¤¥²¥ ° ¡®²­¨²¥ ¤­¨ ¢ ¬¥­¾ 6/5'
                        @ 11,28 say '¯®¢²®°¥²¥ ®²­®¢o 4/1.'
                      else
                        store m_&me0 to x1
                      endif

                        set key -2 to nuhar
                      l0=' '
                      @  5, 8 say '°®£° ¬  ¹¥ ®²ª°¨¥ ¬¥±¥¶ '+data0+' ¯®²¢º°¦¤ ¢ ²¥ «¨ ®²ª°¨¢ ­¥²® ¤/­:' get l0 valid l0='¤'.or.l0='­'
                      @ 23,18 say 'F3 - ®¯°¥¤¥«¿ ­³«-²¥ ¨ § ¢-²¥ ®² ° ¡. ¤­¨ µ-ª¨'
                      read
                       if lastkey()=27 .or.l0='­'
        *             date0
                        sele 2 ; use mese inde dnsi,sdni
                        go top ; go 4
   vek0=vek ; me0=subs(data,1,2) ; dt0=subs(data,4,2) ;  store vek0 to vek1
   data0=me0+'/'+dt0 ; date0=ctod('01/'+subs(data0,1,2)+'/'+vek0)
   t1=subs(data0,1,2)
                              return
                       endif
                      @ 23,18 say '      °®£° ¬ ²  ° ¡®²¨, ¬®«¿ ¨§· ª ©²¥ !     '
                       appe from mese
                       sele 2
                       use mese inde dnsi,sdni
       store data0 to data_1, data_2 ; store 0 to  x2, x3 ,x4
       find "&vd1        2"
       x2=stoi
       find "&vd1        3"
       x3=stoi
       find "&vd1        4"
       x4=stoi
                   do while .t.
                       find "&vd1"
                       if found()
                          repl data with data0, vek with vek0
                          repl all suma with 0 for .not. sch='  7'.and.data=data0
                       else
                          exit
                       endif
                   enddo
          restore from nulstoi additive
   repl all stoi with 0  for sch=z_1.or.sch=z_2.or.sch=z_3.or.sch=z_4.or.sch=z_5;
   .or.sch=z_6.or.sch=z_7.or.sch=z_8.or.sch=z_9.or.sch=z_10.or.sch=z_11.or.sch=z_12.or.sch=z_13.or.;
   sch=z_14.or.sch=z_15.or.sch=z_16.or.sch=z_17.or.sch=z_18.or.sch=z_19
   repl all stoi with 0  for sch=z_19.or.sch=z_20.or.sch=z_21.or.sch=z_22.or.sch=z_23.or.sch=z_24.or.sch=z_25;
   .or.sch=z_27.or.sch=z_28.or.sch=z_29.or.sch=z_30.or.sch=z_31.or.sch=z_32.or.sch=z_33.or.;
   sch=z_34.or.sch=z_35.or.sch=z_36.or.sch=z_37.or.sch=z_38

      sele 1 ; use spis inde nomi ; sele 2 ; use mese inde dnsi,sdni
      set relation to nom into spis
            td_0='’'
            do while ! eof()
               if spis->td='' ; td_0='' ; exit ; endif
               if ! eof() ; skip ; else ; exit  ; endif
            enddo
               if td_0='’' ; x82=0 ; endif
                        set bell on
                        ?? chr(7)
                        set bell off
       @  8, 15 say '‚º¢¥¤¥²¥ ¡°®¿ ­  ° ¡®²­¨²¥ ¤­¨ §  ¬¥±¥¶ :' get x1 pict "99999.99"
       @ 10, 15 say '‚º¢¥¤¥²¥ ¬¨­. ° ¡®²­  § ¯« ²  §  ¬¥±¥¶ : ' get x2 pict "99999.99"
       @ 12, 15 say '    „ ²  ­  ¢º¢¥¦¤ ­¥ ­  ¤. ±ª «  ·«. 4: ' get x3 pict "99999.99"
       @ 14, 15 say '        Œ ª±¨¬ «¥­ ®±¨£³°¨²¥« ­ ¤®µ®¤  : ' get x4 pict "99999.99"
     if x82=0
       @ 16, 15 say '„ ²  ­  ¨§¯« ¹ ­¥/­ ·¨±«¿¢ ­¥ e ­³« ,   '
       @ 17, 15 say '§ ¹®²® ±¥ ®±¨£³°¿¢ ² ± ¬® ±®¡±²¢¥­¨¶¨   '+str(x82,10,2)
     else
       @ 16, 15 say '„ ²  ­  ¨§¯« ¹ ­¥/­ ·¨±«¿¢ ­¥ ²°¿¡¢  ¤   '
       @ 17, 15 say '¡º¤¥ ¯®±«¥¤­¨¿² ª «¥­¤ °¥­ ¤¥­ ®² ¬¥±¥¶ :   ' get x82 pict "99.99"
     endif
       read
                       if lastkey()=27
                              return
                       endif
       vd0=vek0+data0
       find "&vd0        1"
       repl stoi with x1, suma with x1
       find "&vd0        2"
       repl stoi with x2, suma with x2
       find "&vd0        3"
       repl stoi with x3, suma with x3
       find "&vd0        4"
       repl stoi with x4, suma with x4
       find "&vd0       82"
       repl stoi with val(str(year(date0),4)), suma with x82
          set cent on
       if substr(data0,1,2)='01'.and.substr(data0,4,2)='00'
          date0=ctod('01/'+'01/'+str(year(date0)+1,4))
       else
          date0=ctod('01/'+subs(data0,1,2)+'/'+str(year(date0),4))
       endif
          save all like date0 to fdate
          set cent off
     *   data00=data0
    restore from rabodni additive
   repl all stoi with x1  for sch=j_1.or.sch=j_2.or.sch=j_3.or.sch=j_4.or.sch=j_5;
   .or.sch=j_6.or.sch=j_7.or.sch=j_8.or.sch=j_9.or.sch=j_10.or.sch=j_11.or.sch=j_12.or.sch=j_13.or.;
   sch=j_14.or.sch=j_15.or.sch=j_16.or.sch=j_17.or.sch=j_18.or.sch=j_19
   repl all stoi with stoi1  for sch=j_19.or.sch=j_20.or.sch=j_21.or.sch=j_22.or.sch=j_23.or.sch=j_24.or.sch=j_25;
   .or.sch=j_27.or.sch=j_28.or.sch=j_29.or.sch=j_30.or.sch=j_31.or.sch=j_32.or.sch=j_33.or.;
   sch=j_34.or.sch=j_35.or.sch=j_36.or.sch=j_37.or.sch=j_38

                  case v2=2
                       data2=data0
                       ramka()
                      @  2,31 say '‚‡…Œ€H… H€ Œ…‘…–'
                      @  3,30 say '-------------------'
                      @ 10,31 say ' Œ…‘…– : ' get data2
                       read
                       if lastkey()=27
                              return
                       endif
                       clos data
                       sele 2
                       use mese inde dnsi,sdni
                      if subs(data,1,2)='  '
                       vd0=vek0
                      else
                       vd0=vek0+data2
                      endif
                       find "&vd0"
                     if found()
                        set bell on
                        ?? chr(7)
                        set bell off
                        @ 23,21 say '‚HˆŒ€Hˆ…  '  color 'R+/B'
                        @ 23,31 say '¨¬ ²¥ ®¡®°®²¨ ¯® ¬¥±¥¶ '+data2+'     '
                        pauza()
                         return
                      endif
              @ 23,23 say '°®£° ¬ ²  ° ¡®²¨, ¬®«¿ ¨§· ª ©²¥ !'
                      if subs(data2,1,2)='  '
                         appe from godn  for vek=vek0
                      else
                         appe from godn  for vek+data=vek0+data2
                      endif
                        set bell on
                        ?? chr(7)
                        set bell off
                  case v2=3
                       ramka()
                      @  2,31 say '‚š™€H… H€ Œ…‘…–'
                      @  3,30 say '-------------------'
                      @ 10,31 say ' Œ…‘…– : ' get data2
                       read
                       if lastkey()=27
                              return
                       endif
                       clos data
                       sele 4
                       use godn inde gdnsi,gsdni
                       vd0=vek0+data2
                       find "&vd0"
                     if found()
                        set bell on
                        ?? chr(7)
                        set bell off
                        @ 23,22 say '‚HˆŒ€Hˆ…  '  color 'R+/B'
                        @ 23,31 say '¨¬ ²¥ ®¡®°®²¨ ¯® ¬¥±¥¶ '+data2+'     '
                         pauza()
                         return
                      endif
              @ 23,23 say '°®£° ¬ ²  ° ¡®²¨, ¬®«¿ ¨§· ª ©²¥ !'
                       sele 4
                       appe from mese for vek+data=vek0+data2
                        set bell on
                        ?? chr(7)
                        set bell off
                  case v2=4
                  l3='¬'
           do while .t.  &&  nachalo na cikala
                       ramka()
                      @  2,33 say '  ‘  ’  €  † '
                      @  3,33 say '---------------'
                sele 1
                use spis inde nomi,namz
                nom0=1
                store 0 to s92_8s,s92_4s,s92_1s
               @  5,18 say '’ ¡¥«¥­ ­®¬¥°' get nom0 pict "999999"
               read
                    if lastkey()=27
                          set cent off
                          return
                     endif
                  store 0 to staz0
                  store ' ' to stg0,stg8,stg4,trk0,trk8,trk4,slo01,slo02,slo81,slo82,slo41,slo42
                   ch8=8
                   ch4=0
                  nom1=str(nom0,6)
                  find '&nom1'
          if .not.found()
                  @ 23,15 say space(51)
                  @ 23,28 say 'H¿¬  «¨¶¥ ± ²®§¨ ­®¬¥°'
                  pauza()
                  @ 23,15 say space(51)
          else
                  dani()   && fis7
                  store ctod(datp0) to datn0,datn8, datn4
                  store ctod(datu0) to datu0,datu8, datu4
                  do case
                     case vod0=1
                          kat0='’…’€'
                     case vod0=2
                          kat0='š‚€'
                     case vod0=3
                          kat0='‚’€'
                     other
                          kat0='      '
                  endcase
                  set cent on
                  @  5,40 say  name0
                  @  7,23 say "O¡¹® ­ §­." get datn0
                  @  7,45 say '³¢®«.' get datu0
                  @  9,30 say '‘¡®°³¢  ± ¬® 8·. ®±¨£. ¤®µ®¤'
                  @ 10,23 get ch8 pict "9"
                  @ 10,24 say "·.  ­ §­."  get datn8
                  @ 10,45 say '³¢®«.' get datu8
                  @ 12,30 say '‘¡®°³¢  ± ¬® 4·. ®±¨£. ¤®µ®¤'
                  @ 13,23 get ch4 pict "9"
                  @ 13,24 say "·.  ­ §­."  get datn4
                  @ 13,45 say '³¢®«.' get datu4
                  read
                  i0=0
                  @ 23,15 say space(51)
                  @ 23,15 say '           ‘² ¦  ±¥ ¨§·¨±«¿¢  ®² ¸¨´º°  92         '
                  stag() &&  fis8
                  @ 23,15 say space(51)
                  do case
                    case 0< s92_8s .and. 0 = s92_4s
                      if 0 < ch4
                        @ 23,19 say '‚HˆŒ€Hˆ… '  color 'R+/B'
                          @ 23,29 say '‹¨¶¥²® ¨¬  ± ¬® 8·. ¤­¥¢­  ±² ¢ª '
                          ch4=0
                      endif
                    case 0 < s92_4s .and. 0 = s92_8s
                      if 0 < ch8
                        @ 23,19 say '‚HˆŒ€Hˆ… '   color 'R+/B'
                          @ 23,29 say '‹¨¶¥²® ¨¬  ± ¬® 4·. ¤­¥¢­  ±² ¢ª '
                          ch8=0
                      endif
                    case 0 < s92_8s .and. 0 < s92_4s
                       if ch8=0 .or. ch4=0
                        @ 23,19 say '‚HˆŒ€Hˆ… '  color 'R+/B'
                          @ 23,29 say '‹¨¶¥²® ¨¬  8· ¨ 4·. ¤­¥¢­  ±² ¢ª '
                          store 4 to ch8, ch4
                       endif
                  endcase
                  for i0 = 1 to 2
                   if i0=1
                      store datn8 to datn0
                      store datu8 to datu0
                   else
                      store datn4 to datn0
                      store datu4 to datu0
                   endif
                      stag()
                  next
                  set cons off
                  @ 15,36 say 'ƒ„ˆHˆ  Œ…‘…–ˆ  „Hˆ'
                  @ 17,30 say +stg0
                  @ 18,30 say +stg8
                  @ 19,30 say +stg4
          endif
                     l0=1
                      inkey(2)
                      @ 23,15 say space(51)
                      @ 23,34 say '“-2   “-3'
                      @ 23,34 prompt '“-2'
                      @ 23,41 prompt '“-3'
                      menu to l0

           up2_1='Ó 1 Ó                 Ó Ó          Ó          Ó  Ó  Ó  Ó              Ó'
           up2_2='Ó 2 Ó                 Ó Ó          Ó          Ó  Ó  Ó  Ó              Ó'
           up2_3='Ó 3 Ó                 Ó Ó          Ó          Ó  Ó  Ó  Ó              Ó'
           up2_4='Ó 4 Ó                 Ó Ó          Ó          Ó  Ó  Ó  Ó              Ó'
            store dtoc(datn0) to datn0
            store dtoc(datu0) to datu0
            store dtoc(datn8) to datn8
            store dtoc(datu8) to datu8
            store dtoc(datn4) to datn4
            store dtoc(datu4) to datu4
                 do case
                    case ya1=1
           vek0=str(year(ctod(datn0)),4)
           mins92 ()  &&  fis8
              set cons on
             if 0 < ch8 .and. 0 < ch4
                up2_1='Ó 1 Ó'+rabo0+'   Ó'+str(ch8,1)+'Ó'+datn8+'Ó'+datu8+'Ó'+str(ya0,2)+'Ó'+str(mn0,2)+'Ó'+str(da0,2)+'Ó'+str(s92_8,14,2)+'Ó'
                up2_2='Ó 2 Ó'+rabo0+'   Ó'+str(ch4,1)+'Ó'+datn4+'Ó'+datu4+'Ó'+str(ya0,2)+'Ó'+str(mn0,2)+'Ó'+str(da0,2)+'Ó'+str(s92_4,14,2)+'Ó'
             endif
             if 0 < ch8.and. 0 = ch4
                up2_1='Ó 1 Ó'+rabo0+'   Ó'+str(ch8,1)+'Ó'+datn8+'Ó'+datu8+'Ó'+str(ya0,2)+'Ó'+str(mn0,2)+'Ó'+str(da0,2)+'Ó'+str(s92_8,14,2)+'Ó'
             endif
             if 0 = ch8.and. 0 < ch4
                up2_1='Ó 1 Ó'+rabo0+'   Ó'+str(ch4,1)+'Ó'+datn4+'Ó'+datu4+'Ó'+str(ya0,2)+'Ó'+str(mn0,2)+'Ó'+str(da0,2)+'Ó'+str(s92_4,14,2)+'Ó'
             endif
             if ch8 = ch4
                up2_1='Ó 1 Ó'+rabo0+'   Ó'+str(ch8,1)+'Ó'+datn8+'Ó'+datu8+'Ó'+str(ya0,2)+'Ó'+str(mn0,2)+'Ó'+str(da0,2)+'Ó'+str(s92_8+s92_4,14,2)+'Ó'
             endif
             set cons off

                    case ya1=2
           vek0=str(year(ctod(datn0)),4)
           mins92 ()
             up2_1='Ó 1 Ó'+rabo0+'   Ó'+str(pnv0,1)+'Ó'+datn0+'Ó31/12/'+vek0+'Ó  Ó'+str(mon0,2)+'Ó'+str(dan0,2)+'Ó'+str(s92_8+s92_4,14,2)+'Ó'
           vek0=str(year(ctod(datn0))+1,4)
           mins92 ()
             up2_2='Ó 2 Ó'+rabo0+'   Ó'+str(pnv0,1)+'Ó01/01/'+vek0+'Ó'+datu0+'Ó  Ó'+str(mou0,2)+'Ó'+str(dau0,2)+'Ó'+str(s92_8+s92_4,14,2)+'Ó'
                    case ya1=3
           vek0=str(year(ctod(datn0)),4)
           mins92 ()
             up2_1='Ó 1 Ó'+rabo0+'   Ó'+str(pnv0,1)+'Ó'+datn0+'Ó31/12/'+vek0+'Ó  Ó'+str(mon0,2)+'Ó'+str(dan0,2)+'Ó'+str(s92_8+s92_4,14,2)+'Ó'
           vek0=str(year(ctod(datn0))+1,4)
           mins92 ()
             up2_2='Ó 2 Ó'+rabo0+'   Ó'+str(pnv0,1)+'Ó01/01/'+vek0+'Ó31/12/'+vek0+'Ó 1Ó  Ó  Ó'+str(s92_8+s92_4,14,2)+'Ó'
           vek0=str(year(ctod(datn0))+2,4)
           mins92 ()
             up2_3='Ó 3 Ó'+rabo0+'   Ó'+str(pnv0,1)+'Ó01/01/'+vek0+'Ó'+datu0+'Ó  Ó'+str(mou0,2)+'Ó'+str(dau0,2)+'Ó'+str(s92_8+s92_4,14,2)+'Ó'
                    case ya1=4
           vek0=str(year(ctod(datn0)),4)
           mins92 ()
             up2_1='Ó 1 Ó'+rabo0+'   Ó'+str(pnv0,1)+'Ó'+datn0+'Ó31/12/'+vek0+'Ó  Ó'+str(mon0,2)+'Ó'+str(dan0,2)+'Ó'+str(s92_8+s92_4,14,2)+'Ó'
           vek0=str(year(ctod(datn0))+1,4)
           mins92 ()
             up2_2='Ó 2 Ó'+rabo0+'   Ó'+str(pnv0,1)+'Ó01/01/'+vek0+'Ó31/12/'+vek0+'Ó 1Ó  Ó  Ó'+str(s92_8+s92_4,14,2)+'Ó'
           vek0=str(year(ctod(datn0))+2,4)
           mins92 ()
             up2_3='Ó 3 Ó'+rabo0+'   Ó'+str(pnv0,1)+'Ó01/01/'+vek0+'Ó31/12/'+vek0+'Ó 1Ó  Ó  Ó'+str(s92_8+s92_4,14,2)+'Ó'
           vek0=str(year(ctod(datn0))+3,4)
           mins92 ()
             up2_4='Ó 4 Ó'+rabo0+'   Ó'+str(pnv0,1)+'Ó01/01/'+vek0+'Ó'+datu0+'Ó  Ó'+str(mou0,2)+'Ó'+str(dau0,2)+'Ó'+str(s92_8+s92_4,14,2)+'Ó'
                    case 4 < ya1
           vek0=str(year(ctod(datn0)),4)
           mins92 ()
             up2_1='Ó 1 Ó'+rabo0+'   Ó'+str(pnv0,1)+'Ó'+datn0+'Ó31/12/'+vek0+'Ó  Ó'+str(mon0,2)+'Ó'+str(dan0,2)+'Ó'+str(s92_8+s92_4,14,2)+'Ó'
           vek0=str(year(ctod(datn0))+1,4)
           mins92 ()
             up2_2='Ó 2 Ó'+rabo0+'   Ó'+str(pnv0,1)+'Ó01/01/'+vek0+'Ó31/12/'+vek0+'Ó 1Ó  Ó  Ó'+str(s92_8+s92_4,14,2)+'Ó'
           vek0=str(year(ctod(datn0))+2,4)
           mins92 ()
             up2_3='Ó 3 Ó'+rabo0+'   Ó'+str(pnv0,1)+'Ó01/01/'+vek0+'Ó31/12/'+vek0+'Ó 1Ó  Ó  Ó'+str(s92_8+s92_4,14,2)+'Ó'
           vek0=str(year(ctod(datn0))+3,4)
           mins92 ()
             up2_4='Ó 4 Ó'+rabo0+'   Ó'+str(pnv0,1)+'Ó01/01/'+vek0+'Ó31/12/'+vek0+'Ó 1Ó  Ó  Ó'+str(s92_8+s92_4,14,2)+'Ó'
                      do while .t.
                        @ 21,5 say '‚HˆŒ€Hˆ…'  color 'R+/B'
                        @ 21,14 say '‘«¥¤¢  ¤  ­ ¯° ¢¨²¥ “ 2 §  ¯¥°¨®¤  01/01/'+str(year(ctod(datn0))+4,4)+' - '+datu0
                        @ 23,15 say space(51)
                        @ 23,25 say 'H ²¨±­¥²¥ Esc §  ¤  ¯°®¤º«¦¨²¥'
                        pauza()
                        if lastkey()=27
                           exit
                        endif
                      enddo
                 endcase
                 sele 1
                 use &disc_1\job\bala
                 set filter to t='62'
                 go top
                 store recno()  to br0
                 set cent on
   go  br0+3
   repl pola with space(5)+trim(fir)+space(70-len(trim(fir)))
   go  br0+5
   repl pola with space(5)+'“‹‘’€’  Ó'+subs(buls,1,1)+'Ó'+subs(buls,2,1)+'Ó'+subs(buls,3,1)+'Ó'+subs(buls,4,1)+'Ó'+subs(buls,5,1)+'Ó'+subs(buls,6,1)+'Ó'+subs(buls,7,1)+'Ó'+subs(buls,8,1)+'Ó'+subs(buls,9,1)+'Ó'+' '+'Ó'
   go  br0+7
   repl pola with space(5)+'£°. /±./'+trim(grad)+'   ¯.ª®¤ '+repu00+space(70-len('£°. /±./'+trim(grad)+'   ¯.ª®¤ '+repu00))
   go  br0+8
   repl pola with space(5)+trim(adr00)+space(70-len(trim(adr00)))
   go  br0+9
   repl pola with space(5)+'²¥«.'+trim(tel)+', ´ ª±:.......,email  '+trim(mail00)+space(70-len('²¥«.'+trim(tel)+', ´ ª±:......,e-mail  '+trim(mail00)))
   go  br0+10
   repl pola with space(5)+'ˆ§µ.No'+str(nom0,6)+' ®² '+dtoc(date())+space(70-len('ˆ§µ.No'+str(nom0,6)+' ®² '+dtoc(date())))
   go  br0+17
   repl pola with space(5)+trim(fir)+' £°. /±./'+trim(grad)+space(70-len(trim(fir)+' £°. /±./'+trim(grad)))
   go  br0+18
   repl pola with space(5)+'³¤®±²®¢¥°¿¢ , ·¥ '+trim(name0)+space(70-len('³¤®±²®¢¥°¿¢ , ·¥ '+trim(name0)))
   go  br0+20
   repl pola with space(5)+'   …ƒH   Ó'+subs(egn0,1,1)+'Ó'+subs(egn0,2,1)+'Ó'+subs(egn0,3,1)+'Ó'+subs(egn0,4,1)+'Ó'+subs(egn0,5,1)+'Ó'+subs(egn0,6,1)+'Ó'+subs(egn0,7,1)+'Ó'+subs(egn0,8,1)+'Ó'+subs(egn0,9,1)+'Ó'+subs(egn0,10,1)+'Ó'
   go  br0+22
         if val(subs(egn0,1,2)) < 40
              i0='20'
         else
              i0='19'
         endif
   repl pola with space(5)+'°®¤¥­( ) ­  '+subs(egn0,5,2)+'.'+subs(egn0,3,2)+'.'+i0+subs(egn0,1,2)+'£. £°. /±./ '+trim(nasm0)+space(36-len(trim(fir)+' £°. /±./'+trim(nasm0)))
   go  br0+39
   repl pola with up2_1
   go  br0+41
   repl pola with up2_2
   go  br0+43
   repl pola with up2_3
   go  br0+45
   repl pola with up2_4
   go  br0+52
   repl pola with ' £³°¨²¥«­¨ ±«³· ¨ ¯°¨ '+kat0+' ª ²¥£®°¨¿ ­  ²°³¤. ƒ®°¥¯®±®·¥­¨²¥ ±³¬¨ ­¥'

                 set filter to t='63'
                 go top
                 store recno()  to br0
   go  br0+3
   repl pola with subs(pola,1,14)+ltrim(trim(fir))+space(30-len(ltrim(trim(fir))))+'Ó³«±² ²Ó'+subs(buls,1,1)+'Ó'+subs(buls,2,1)+'Ó'+subs(buls,3,1)+'Ó'+subs(buls,4,1);
                  +'Ó'+subs(buls,5,1)+'Ó'+subs(buls,6,1)+'Ó'+subs(buls,7,1)+'Ó'+subs(buls,8,1)+'Ó'+subs(buls,9,1)+'Ó Ó'
   go  br0+4
   repl pola with subs(pola,1,14)+trim(ltrim(grad))+'  ¯®¹¥­±ª¨ ª®¤ '+repu00+space(30-len(trim(ltrim(grad))+'  ¯®¹¥­±ª¨ ª®¤ '+repu00))+subs(pola,45,29)
   go  br0+5
   repl pola with subs(pola,1,14)+trim(ltrim(adr00))+space(30-len(trim(ltrim(adr00))));
            +'Ó ˆ§µ.No'+str(nom0,5)+' ®² '+dtoc(date())+' Ó'
   go  br0+11
   repl pola with subs(pola,1,20)+trim(ime0)+' '+trim(prime0)+space(27-len(trim(ime0)+' '+trim(prime0)))+'Ó …ƒHÓ'+;
        subs(egn0,1,1)+'Ó'+subs(egn0,2,1)+'Ó'+subs(egn0,3,1)+'Ó'+subs(egn0,4,1)+'Ó'+subs(egn0,5,1)+'Ó'+subs(egn0,6,1)+'Ó'+subs(egn0,7,1)+'Ó'+subs(egn0,8,1)+'Ó'+subs(egn0,9,1)+'Ó'+subs(egn0,10,1)+'Ó'
   go  br0+12
   repl pola with subs(pola,1,20)+trim(family0)+space(27-len(trim(family0)))+subs(pola,48,26)
   go  br0+15
         if val(subs(egn0,1,2)) < 40
              i0='20'
         else
              i0='19'
         endif
   repl pola with 'Ó®¤¥­/ /  '+subs(egn0,5,2)+'.'+subs(egn0,3,2)+'.'+i0+subs(egn0,1,2)+'£.Ó£°./±./ '+subs(nasm0,1,14)+' Ó  ®¡« ±² '+obl0+'Ó'
   go  br0+33
   repl pola with 'Ó 1 Ó'+rabo0+space(13)+'Ó  '+str(pnv0,1)+'  Ó'+datn0+'Ó'+datu0+'Ó'+str(ya0,2)+'Ó'+str(mn0,2)+'Ó'+str(da0,2)+'Ó  Ó'
   go  br0+46
   repl pola with 'Ó  ­ ¬¨° ¹¨ ±¥ ¢ '+trim(ltrim(fir))+space(31-len(trim(ltrim(fir))))+' §  ¤  ¯®±«³¦¨ ¯°¨ ¯¥­±.Ó'

          set cent off
          set marg to 0
          set prin on
          set prin to s0008.prn
          set marg to 35
          egn1=''
          for i0 = 1 to 10
            egn1=egn0
          next
      ?
      ? space(6)+'B …ƒH  '+egn1
      * if vprn0=2
      *   ?? 'G'+sbit0
      * else
      * endif
      for i0 = 1 to 8
      ?
      next
      ? space(8)+subs(datn0,1,5)+space(7)+subs(datu0,1,5)+'   ·«.'+chlu0
      ? space(8)+subs(datn0,7,4)+space(8)+subs(datu0,7,4)+'    ®² Š’'
      * if vprn0=2
      *    ?? 'H'
      * else
         ?? norm0+'b'
      * endif

          set prin to s0007.prn
          set marg to 3
      ?
      ?   '    B'+trim(name0)
      *  if vprn0=2
      *   ?? 'G'+sbit0
      *  else
         ?? 'P17A55'  &&       B'
      *  endif
      for i0 = 1 to 9
      ?
      next
      ? subs(ltrim(fir),1,11)+'  '+obek0+'   '+subs(rabo0,1,15),+'    '+str(vazn0,7,2)
      ?
         set marg to 10
      ?  'š'+repl('„',50)+''
      ?  'Ó’°³¤®¢ ±² ¦ ¢ '+trim(ltrim(fir))+space(24-len(trim(ltrim(fir))))+'±¨£³°¨²¥«¥­Ó'
      ?  'Ó¡¹ ²°³¤®¢ ±² ¦  '+trk0+'    ¤®µ®¤ «¢.Ó'
      ?  'Ó‘«®¢®¬:  '+slo01+space(41-len(slo01))+'Ó'
      ?  'Ó ˆ '+slo02+space(46-len(slo02))+'Ó'
      if 0 < ch8
         ?  'Ó¢ ².·.¯°¨ 8·.    '+trk8+space(13)+'Ó'
         ?  'Ó‘«®¢®¬:  '+slo81+space(41-len(slo81))+'Ó'
         ?  'Ó ˆ '+slo82+'Ó'
         if 0 < ch4
            ?  'Ó¢ ².·.¯°¨ 4·.    '+trk4+space(13)+'Ó'
            ?  'Ó‘«®¢®¬   '+slo41+space(41-len(slo41))+'Ó'
            ?  'Ó ˆ '+slo42+'Ó'
         else
            ?  'Ó'+space(50)+'Ó'
            ?  'Ó'+space(50)+'Ó'
            ?  'Ó'+space(50)+'Ó'
         endif
      else
         if 0 < ch4
            ?  'Ó¢ ².·.¯°¨ 4·.    '+trk4+space(13)+'Ó'
            ?  'Ó‘«®¢®¬   '+slo41+space(41-len(slo41))+'Ó'
            ?  'Ó ˆ '+slo42+'Ó'
            ?  'Ó'+space(50)+'Ó'
            ?  'Ó'+space(50)+'Ó'
            ?  'Ó'+space(50)+'Ó'
         else
            ?  'Ó'+space(50)+'Ó'
            ?  'Ó'+space(50)+'Ó'
            ?  'Ó'+space(50)+'Ó'
            ?  'Ó'+space(50)+'Ó'
            ?  'Ó'+space(50)+'Ó'
            ?  'Ó'+space(50)+'Ó'
         endif
      endif
      ?  'Ó'+space(50)+'Ó'
      ?  'Ó'+space(50)+'Ó'
      ?  'Óƒ«.±·¥²®¢®¤¨²¥«:..........ºª®¢®¤¨²¥«:............Ó'
      ?  '€'+repl('„',50)+'™'
      *  if vprn0=2
      *    ?? 'H'
      *  else
           ?? norm0+'b'
      *  endif

         @ 17,04 say space(70)

            izrab()
            if lastkey()=27
               set dele off
               loop
            endif
            ll0='2'
            save screen
            ?? norm0
            set marg to 6
               b1=77
            ?
            ?
                 do case
                    case l0=1
               set filter to  t='62'
               go top
               store recno() to bro
                     do while t='62'
                    *     ? str(recno()-br0,3)+substr(pola,1,75)
                          ? substr(pola,1,75)
                        if .not.eof()
                           skip
                        else
                           exit
                        endif
                     enddo
                    ?
                    ?
                    ?
                    copy file s0001.prn to s0005.prn
                     pech()
                    case l0=2
               set filter to  t='63'
               go top
                     do while t='63'
                     *    ? str(recno()-br0,3)+substr(pola,1,75)
                          ? substr(pola,1,75)
                        if .not.eof()
                           skip
                        else
                           exit
                        endif
                     enddo
                     for i0 = 1 to 6
                     ?
                     next

                    copy file s0001.prn to s0006.prn
                     pech()
                 endcase
                 set cent off
            enddo &&
      case v2=5
                      v3=1
                      obr0=''
                      @ 5,24,19,55 box ram1
                      @ 6,25 clea to 18,54
                      @ 6,29 say 'ˆHB”Œ€–ˆŸ ‡€ “‘ ˆ „‘  '
                      @ 7,28 say '--------------------------'
                      @  8,26 prompt '1. ±¨£³°®¢ª¨               '
                      @ 10,26 prompt '2. H §­ ¬¥­¨¥ “¢®«­¥­¨¥     '
                      @ 12,26 prompt '3. ‘«³¦¥¡­  ¡¥«¥¦ª          '
                      @ 14,26 prompt '4. ‘/ª  §  ¨§¯«. ±³¬¨ ’°.„-°'
                      @ 16,26 prompt '5. ‘¯° ¢ª  ·«.73  «.1       '
                      @ 18,26 prompt '6. ‘¯° ¢ª  ·«.73  «.6       '
                      save screen
                          menu to v3
                       if lastkey()=27
                              return
                       endif


 ! cmd /c 'if not exist \disc\god&dt0\doo\&go0\obr_&vek0\nul md \DISC\GOD&dt0\DOO\&go0\OBR_&vek0' > aaa.txt
 ! cmd /c 'if not exist \disc\god&dt0\doo\&go0\pl\nul  md \DISC\GOD&dt0\DOO\&go0\PL'  > aaa.txt
 ! cmd /c 'if not exist \disc\god&dt0\doo\&go0\tr\nul  md \DISC\GOD&dt0\DOO\&go0\TR'  > aaa.txt
 ! cmd /c 'if not exist \disc\god&dt0\doo\&go0\zp\nul  md \DISC\GOD&dt0\DOO\&go0\ZP'  > aaa.txt
 ! cmd /c 'if not exist \disc\god&dt0\zapl\&go0\nul md \DISC\GOD&dt0\ZAPL\&go0' > aaa.txt
      inkey(0.5)
      eras aaa.txt

    do while .t.
             i=','
             q='"'
             data5='01/'+vek0
             data6='12/'+vek0
             set marg to
             ramka()
          do case
             case v3=1
             rasa0=1
             store subs(data0,1,3)+vek0 to data5, data6
             @  2,29 say ' ‘ ˆ ƒ “   ‚ K ˆ'
             @  3,28 say '---------------------'

             @ 6,31 say '² ¤ ²  ' get data5
             @ 8,31 say '„® ¤ ²  ' get data6
             @ 12,18 say '„¥ª« ° ¶¨¿ ®¡° §¥¶ 6  €’HˆK ‘€Œ‘ˆƒ“Ÿ‚€™ '
             read
                 @ 12,40 prompt '€’HˆK'
                 @ 12,49 prompt '‘€Œ‘ˆƒ“Ÿ‚€™'
                 menu to rasa0
                 if rasa0=2
                 nom0=0
                 @ 23,28 say '’ ¡³«¥­ ­®¬¥°' get nom0 pict "999999"
                 read
                 @ 23,28 say space(35)
                 sele 1
                 use spis inde nomi
                 nom1=str(nom0,6)
                 find "&nom1"
                 if .not.found().or. nom0=0
                     @ 23,15 say space(51)
                     @ 23,16 say '          H¿¬  «¨¶¥ ± ²®§¨ ² ¡³«¥­ ­®¬¥°'
                     i0=inkey(0)
                     loop
                 endif
                     fir2=name
                     buls0=egn
                 endif

             case v3=2
             @  2,27 say 'H€‡H€—EHˆ… “‚‹H…Hˆ…'
             @  3,26 say '---------------------'
                   sele 2
                   use mese
                   go top
                   do while .t.
                      vd0=data
                      skip
                       if eof()
                          exit
                       endif
                     if .not.vd0=data
                       @ 23,16 say '‚HˆŒ€Hˆ… '   color 'R+/B'
                       @ 23,25 say 'H¥¤®¯³±²¨¬® ¥ ¤  ¯®¢¥·¥ ®² 1 ¬¥±. ¢ 5/1'
                        pauza()
                       return
                     endif
                   enddo
             case v3=3
                l4=1
             @  2,25 say '‘‹“†…H€ …‹…†H€ ‡€ „•„ˆ’…'
             @  3,24 say '--------------------------------'
                 @  6,31 say '² ¤ ²  ' get data5
                 @  8,31 say '„® ¤ ²  ' get data6
                 @ 11,27 say '‚º§­ £ ¦¤¥­¨¥  “’  HE’'
                 read
                 @ 11,42 prompt '“’'
                 @ 11,49 prompt 'HE’'
                 menu to l4
                 set cent on
                 data_3=ctod('01'+subs(dtoc(ctod('15/'+data5)-18),3,8))
                 data_4=ctod('01'+subs(dtoc(ctod('15/'+data6)+18),3,8))
                 slbel()  && fis2
                 return
             case v3=4
             @  2,25 say '‘Œ…’K€ ‡€ ˆ‡‹. ‘“Œˆ  ’.„ƒ‚ˆ'
             @  3,24 say '-------------------------------------'
                 smettd()  && fis2
                 return
             case v3=6
             @  2,25 say '‘€‚Š€ —‹. 73 €‹.6                '
             @  3,24 say '--------------------'
                 chl736()  && fis8
                 return
          endcase
     set cent on
     data_3=ctod('01'+subs(dtoc(ctod('15/'+data5)-18),3,8))
     data_4=ctod('01'+subs(dtoc(ctod('15/'+data6)+18),3,8))
                       if lastkey()=27
                              return
                       endif
             set key -2 to
             l2='1'
            if v3=1.or.v3=2
             disk()   && fis8
            endif
             ekpr0=1
             !del s*.prn
             set prin on
             set prin to s0001
             set cons off
                       if lastkey()=27
                              return
                       endif
             @ 23,23 say '°®£° ¬ ²  ° ¡®²¨, ¬®«¿ ¨§· ª ©²¥ !'
               if l3='¬'
                     sele 2
                     use mese inde dnsi
                else
                     sele 4
                     use godn inde gdnsi
                endif
  *   set filter to data_3 < ctod('01/'+subs(data,1,2)+'/'+vek).and.ctod('01/'+subs(data,1,2)+'/'+vek) < data_4
      set filter to data_3 < ctod('01/'+subs(data,1,2)+'/'+vek).and.;
                 (ctod('01/'+subs(data,1,2)+'/'+vek) < data_4)
      go top
      store 0 to br1,x1,x2,q0,ss13,ss31,ss33,ss50,ss92,ss94,ss201; t1=' '; br0='1'
      x1=stoi
          if x1=0
             @ 14,12 say '‚HˆŒ€Hˆ…'   color 'R+/B'
             @ 14,22 say 'H¥ ±²¥ ¢ ° ¡®²¥­ ®²·¥²¥­ ¯¥°¨®¤ ¯°®¬¥­¥²¥ ± F8 !'
             pauza()
             return
          endif
      skip 1
      x2=stoi
      skip 2
      x4=stoi
      go top
      locate for sch=' 82'
      x82=subs(str(suma,10,2),6,2)+'/'+subs(str(suma,10,2),9,2)+'/'+str(round(stoi,0),4)
      set date brit
      set cons off
      go top
   *   store 0 to br1
      nom0=nom
     do while .not.eof()
      store ' ' to ime0,prime0,family0,inic0 ,egn0,dvz0
      store 0 to s9,s92,s94,s95,s99,s201,s205,z201,xh7
      store 0 to t0,t16,rs0,pnv0,kd0,pd0,nkp0,nkpnam1,bch0
      store 0 to x6,x7,x8,x13,x14,x26,x30,x31,x51,x50
      store 0 to x110,x151,x201,x205,vod0,dvd0,dpd0
      data1=data
      nom0=nom
           if &fimes0 ; else
               if .not. eof() ; skip ; loop ; else ; return ; endif
           endi
     fir1=''
    for i0 = 1 to len(fir)
      if subs(fir,i0,1)='"'
         fir1=fir1+' '
      else
         fir1=fir1+subs(fir,i0,1)
      endif
    next
    fir1=ltrim(trim(fir1))

      if .not.empty(nom0)
         store nom0 to nom1


         dani()  && fis7    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

      endif
      store subs(data1,1,2) to me0,me1
      messec()
               if l3='¬' ; sele 2 ; else ; sele 4 ; endif

      do while nom=nom0
        do case
           case sch='  6' ; x6=suma
           case sch='  7' ; x7=x7+stoi ; t1=subs(data,1,2) ; pnv0=suma
           case sch='  8' ; x8=x8+suma ; if x4 < x8 ; x8=x4 ; endif
           case sch='  9' ; s9=suma
           case sch=' 11'.or.sch=' 14'.or.sch=' 16'  ; x14=stoi ;if td_0='' ; ss13=ss13+suma ; endif
           case sch=' 13'.or.sch=' 15' ; x13=stoi  ; ss13=ss13+suma
           case sch=' 26' ; x26=stoi   ; ss13=ss13+suma
           case sch=' 30'.or.sch=' 32' ; x30=stoi ; if td_0='' ; ss31=ss31+suma ; endif
           case sch=' 31' ; x31=stoi                            ; ss31=ss31+suma
           case sch=' 50'.or.sch=' 52' ; x50=stoi ; if td_0='' ; ss50=ss50+suma ; endif
           case sch=' 51' ; x51=stoi                            ; ss50=ss50+suma
           case sch=' 92' ; s92=suma ; if td_0='' ; ss92=ss92+suma ; endif
           case sch=' 94' ; s94=suma ; if td_0='' ; ss94=ss94+suma ; endif
           case sch=' 95' ; if td_0='' ; s95=suma ; endif
           case sch=' 99' ; if td_0='' ; s99=suma ; endif
           case sch='107' ; x7=x7+stoi
           case sch='110' ; x110=stoi ; if 0 < x110 ; z201=x51 ; endif
           s201=val(ltrim(str(s201+round((x110/x1*x110)*(pr_6/2/x1),2),9,2)))
              if td_0='' ; ss201=ss201+s201 ; endif
           case sch='151' ; x151=x151+stoi ; s9=s9-suma
           case sch='201' ; x201=stoi ; if td_0='' ; s201=s201+suma ; endif
              if td_0='' ; ss201=ss201+suma ; endif if 0 < x201 ; z201=x51 ; endif
           case sch='205' ; x205=+stoi ; if td_0='' ; s201=s201+suma ; endif
              if td_0='' ; ss201=ss201+suma ; endif if 0 < x205 ; z201=x51 ; endif
              if x205=x1  ; x8=0 ;store 0 to x13,x14 ; endif
        endcase

              if .not. eof() ; skip ; loop ; else ; exit ;endif
      enddo

      if .not.empty(nom0)
            if  x1 < x7+x201+x151+x205+x110.and.dat&br0=data1
                set prin off ; set cons on ; ? chr(7)
                @ 15,15 clea to 21,70
                @ 15,33 say '‚HˆŒ€Hˆ… !'  color 'R+/B'
                @ 17,15 say '‡€ ’€“‹…H HŒ… '+nom0+'    '+name0
                @ 19,15 say '™ˆŸ’ ‰ „Hˆ ‡€—…’…Hˆ ‡€ ‘ˆƒ“ˆ’…‹…H ‘’€†    '+str(x7+x201+x151+x205+x110,2)
                @ 20,15 say 'H€„•‚š‹Ÿ ‰ H€ €’Hˆ’… „Hˆ ‡€ Œ…‘…– '+dat&br0+ '   '+str(x1,2)
                pauza() ; set cons off ; set prin on
            endif

            if  x1 > x7+x201+x151+x205+x110 .and. vod0=0 .and.dat&br0=data1
                set prin off ; set cons on
                @ 15,15  say chr(7)
                @ 15,15 clea to 21,70
                @ 15,33 say '‚HˆŒ€Hˆ… !'  color 'R+/B'
                @ 17,15 say '‡€ ’€“‹…H HŒ… '+nom0+'    '+name0
                @ 18,15 say '™ˆŸ’ ‰ „Hˆ ‡€—…’…Hˆ ‡€ ‘ˆƒ“ˆ’…‹…H ‘’€†    '+str(x7+x201+x151+x205+x110,2)
                @ 19,15 say '…   -Œ€‹šK ’   €’Hˆ’… „Hˆ ‡€ Œ…‘…–  '+dat&br0+ '  '+str(x1,2)
                pauza() ; set cons off ; set prin on
            endif

    if td_0='’' ; store 0 to s9,pnv0,rs0,nkp0 ; nkid0=''; oid0='0'; endif
    if (x7+x201+x205+x110) < 10 ; t16='0'+ltrim(str(x7+x151+x201+x205+x110,2))
            else ; t16=ltrim(str(x7+x151+x201+x205+x110,2)) ; endif
    if  x8=0 ; store 0 to x13,x14,x26,x30,x31,x50,x51 ; endif

             if x7 < 10 ; x7='0'+ltrim(str(x7,2)) ; else ; x7=ltrim(str(x7,2)) ; endif
              xh7=ltrim(str(val(x7)*pnv0,3)) ;  x8=ltrim(str(x8,8,2))
              s9=ltrim(str(s9,9,2)) ; t1=ltrim(str(val(t1),2))
             t16=t16+ltrim(str(rs0,1))+ltrim(str(pnv0,1))
             x13=ltrim(str(x13,9,2)) ; x14=ltrim(str(x14,9,2))
             x26=ltrim(str(x26,9,2))
             x50=ltrim(str(x50,9,2)) ; x51=ltrim(str(x51,9,2))
             x30=ltrim(str(x30,9,2)) ; x31=ltrim(str(x31,9,2))
             s92=ltrim(str(s92,9,2)) ; s94=ltrim(str(s94,9,2))
             s95=ltrim(str(s95,9,2)) ; s99=ltrim(str(s99-s205,9,2))
            if x110 < 10  ; x110='0'+ltrim(str(x110,2)) ; else ; x110=ltrim(str(x110,2)) ; endif
            if x201 < 10  ; x201='0'+ltrim(str(x201,2)) ; else ; x201=ltrim(str(x201,2)) ; endif
            if x151 < 10  ; x151='0'+ltrim(str(x151,2)) ; else ; x151=ltrim(str(x151,2)) ; endif
            if x205 < 10  ; x205='0'+ltrim(str(x205,2)) ; else ; x205=ltrim(str(x205,2)) ; endif
            s201=ltrim(str(s201,9,2))
            z201=ltrim(str(z201,9,2))
            s205=ltrim(str(s205,9,2))
            bch0=ltrim(str(bch0,1))
            nkp0=ltrim(str(nkp0,1))
            osig0=ltrim(str(osig0,7,2))
            osnn0=str(val(osnn0),2)
            if vod0 < 10  ; vod0='0'+ltrim(str(vod0,2)) ; else ; vod0=ltrim(str(vod0,2)) ; endif
            if dvd0 < 10  ; dvd0='0'+ltrim(str(dvd0,2)) ; else ; dvd0=ltrim(str(dvd0,2)) ; endif
            if dpd0 < 10  ; dpd0='0'+ltrim(str(dpd0,2)) ; else ; dpd0=ltrim(str(dpd0,2)) ; endif
            if vod0='27'  ; store '' to nkid0,nkp0,oid0 ; s92='0.00' ; xh7='000'         ; endif
            if vod0='10'  ; t16=subs(t16,1,3)+'0' ; xh7='000' ; s9='0.00'                ; endif
            if len(xh7)=1 ; xh7='00'+xh7 ; endif  ; if len(xh7)=2 ; xh7='0'+xh7 ; endif

    *** ˜ˆ”ˆ ‡€ ‘ˆƒ. ‹ˆ–… ˆ „€ ‘… Kˆƒˆ€’ ˜ˆ”ˆ’… ’ 1 „ 10
       do case
          case v3=1.and.(6 < val(subs(data1,4,2)))
             data2=subs(str(year(date0),4),1,4)
             th0=t1+i+str(year(date0),4)+i+q+trim(buls0)+q+i+q+egn0+q+i+bch0+i+q+trim(family0)+q+i+q+inic0+q+i+vod0+i+dvd0+i+dpd0+i+'00'+i
             th1=+'00,00,00,00,00,00,00'+i+q+t16+q+i+x7+i+x201+i+x205+i+'00'+i+x110+i+x151+i+xh7 +i+'000'+i+nkp0+i+q+nkid0+q+i+oid0+i+q+'0000'+q+i+s201+i+z201+i
             th2=+s92+i+x13+i+x14+i+x51+i+x50+i+x26+i+'0.00'+i+'0.00'+i+x31+i+x30+i+'0.00'+i+'0.00'+i
             th3=+s9+i+'0.00'+i+s95+i+s94+i+s99+i+'0'+i+kd0+i+q+'NRAD12008'+q

        *     SET CONS ON
        *         ?
        *         ? t16
        *         ? rs0
        *         ? vod0
        *         ? dvd0
        *         ? dpd0
        *         ? dvz0   &&  tova e weche e EKATTE
        *         ? s201
        *         ? t0
        *         ? x8
        *         ? s9
        *         ? s94
        *         ? s95
        *         ?
        *      wait 'vvv'
        *     cance

          case v3=2   // —‹. 62
               if subs(datn0,1,2)='  '
                  datn1='00,00,0000'
               else
                  datn1=subs(datn0,1,2)+i+subs(datn0,4,2)+i+subs(datn0,7,4)
               endif
               if subs(srok0,1,2)='  '
                  srok1=',,'
               else
                  srok1=subs(srok0,1,2)+i+subs(srok0,4,2)+i+subs(srok0,7,4)
               endif
               if subs(datu0,1,2)='  '
                  datu1=',,'
               else
                  datu1=subs(datu0,1,2)+i+subs(datu0,4,2)+i+subs(datu0,7,4)
               endif

               vazn1=ltrim(str(vazn0,8,2))
               if pd0='3'
                  if .not.osnn0=' 2'
                      store ',,,' to srok1
                  endif
                  store '' to vazn1,nkp1,nkid0
               endif

                @ 15,15 clea to 21,70
          if vod0='10'
        @ 10,33 say '‚HˆŒ€Hˆ…!'   color 'R+/B'
        @ 13,13 say '‚¨¤ ®±¨£³°¥­ '+vod0+' ¤®£®¢®° ¯® „“Š ¬ © ­¥ ±¥ ®¡¿¢¿¢  ¢ H€.'
               inkey(0)
          endif
         if pd0='1'.or.pd0='2'  &&   .or.pd0='3'   && DA NE SE PIPA POVE4E
            th0=kd0+i+pd0+i+q+trim(buls0)+q+i+q+egn0+q+i+'0'+i+q+trim(ime0)+q+i+q+trim(prime0)+q+i+q+trim(family0)+q+i+osnn0
            th1=+i+datn1+i+i+i+i+vazn1+i+srok1+i+q+nkp1+q+i
            th2=+q+nkid0+q+i+q+dvz0+q+i+datu1+i+q+osnp0+q+i+'"NAP'+str(year(date0),4)+'"'

          * th0=kd0+i+pd0+i+q+trim(buls0)+q+i+q+egn0+q+i+'0'+i+q+trim(ime0)+q+i+q+trim(prime0)+q+i+q+trim(family0)+q+i+osnn0
          * th1=+i+datn1+i+vazn1+i+srok1+i+q+upper(nkpnam1)+q+i+q+nkp1+q+i
          * th2=+q+nkid0+q+i+q+dvz0+q+i+datu1+i+'"NAP'+str(year(date0),4)+'"'
          endif
         if pd0='3'
            th0=kd0+i+pd0+i+q+trim(buls0)+q+i+q+egn0+q+i+'0'+i+q+trim(ime0)+q+i+q+trim(prime0)+q+i+q+trim(family0)+q+i+osnn0
            th1=+i+datn1+i+i+i+i+i+srok1+i+q+q+i+q+q+i+q
            th2=+q+i+datu1+i+'"NAP'+str(year(date0),4)+'"'
          endif
       endcase

       @  0, 0 clea to 24,80
       do case
          case v3=1
            obr0='01'
             store th0 to asci0
             asci()
           if .not. empty(egn0)
            if q0=0
               ?? asci1
               ?? th1
               ?? th2
               ?? th3
               q0=1
               br1=br1+1
            else
               ?  asci1
               ?? th1
               ?? th2
               ?? th3
               br1=br1+1
            endif
           endif

          case v3=2
            obr0='62'

            if pd0='1'.or.pd0='2'.or.pd0='3'
                 if q0=0
                    store th0 to asci0
                    asci()
                    ??  asci1
                    store th1 to asci0
                    asci()
                    ??  asci1
                    store th2 to asci0
                    asci()
                    ??  asci1
                    q0=1
                    br1=br1+1
                  *    ?? th0
                  *    ?? th1
                  *    ?? th2
                 else
                    store th0 to asci0
                    asci()
                    ?  asci1
                    store th1 to asci0
                    asci()
                    ??  asci1
                    store th2 to asci0
                    asci()
                    ??  asci1
                    q0=1
                    br1=br1+1

                  *    ?  th0
                  *    ?? th1
                  *    ?? th2
                    br1=br1+1
                 endif
            endif
       endcase
     set cons off
               data3=t1+'/'+str(year(date0),4)
            if br1=1
               data4=t1+'/'+str(year(date0),4)
            else
               data4=t1+'/'+str(year(date0),4)
            endif
      endif
          if .not. data=data1
               br0=val(br0)+1
            if br0 < 10
               br0=str(br0,1)
            else
               br0=str(br0,2)
            endif
          endif
          if 13 = val(br0)
             exit
          endif
     enddo
        if v3=1
           ? chr(26)
        endif

     if v3=1.or.v3=2
      if l1=1
        l2='2'
      *   wait '000000000000000'  && ¤  ­¥ ±¥ ¨§²°¨¢ 
      *   return                  && ¤  ­¥ ±¥ ¨§²°¨¢ 
         disk()     && fis8
      endif
     endif
        set prin off
        set cons on
        exit
    enddo
    do case
       case v3=1
         do messec
            data2=subs(str(year(date0),4),1,4)
         if me1='01'
            data1=subs(str(year(date())+1,4),1,4)
         else
            data1=subs(str(year(date()),4),1,4)
         endif
          t1=subs(data0,1,2)

       pismod()   && fis8

       obr0='06'
       set cons off
       set prin on
       set prin to s0001
       @  2,29 say '„EK‹€€–ˆŸ  .6'
       @  3,28 say '-------------------'

             set cent on
         if !(subs(x82,4,7)=subs(dtoc(date0),4,7)) .and. rasa0=1
             @  6,33 say '‚HˆŒ€Hˆ… !'  color 'R+/B'
             @  9,20 say '„EK‹€€–ˆŸ .6 HŸŒ€ „€ ‘… ˆ‡€’ˆ'
             @ 11,13 say '²¥ª³¹  ¤ ²  '+dtoc(date0)+' ±²®©­®±² ­  ¸.82 '+x82
             @ 13,20 say '     Œ‹Ÿ ‚……’… ‚ ˜ˆ”š 82 !    '
              inkey(0)
             @  6,20 clea to 10,77
                     kd1='0'
                     return
         endif  &&  else
             set cent off

              kd1=0
              @  6,30 prompt '…„‚H'
              @  6,38 prompt 'Š…Š–Ÿ'
              menu to kd1
                  if kd1=2
                     kd1='1'
                  else
                     kd1='0'
                  endi
            if l1=1
                 if rasa0=2   &&  vvv
                    store fir2 to fir1
                    store s30 to s31
                    t1='13'
                    x82=''
                 endif

 th6=q+trim(buls0)+q+i+q+trim(fir1)+q+i+'0'+i+q+q+i+q+q+i+q+q+;
 i+t1+i+data2+i+x82+i+kd1+i+'5'+i+ltrim(str(ss13,9,2))+i+''+i;
 +ltrim(str(ss31,9,2))+i+i+ltrim(str(ss50,9,2))+i+i+i+i+t1+i+data2;
 +i+x82+i+kd1+i+'8'+i+i+''+i+i+i+i+i+ltrim(str(ss94,9,2));
 +repl(',',28)+q+'NRAD62007'+q


 *************** OLD ***************************
 * th6=q+trim(buls0)+q+i+q+trim(fir1)+q+i+'0'+i+q+q+i+q+trim(tel)+q+i+q+q+;
 * repl(',',27)+t1+i+data2+i+x82+i+kd1+i+'5'+i+ltrim(str(ss13,9,2))+i+''+i+ltrim(str(ss31,9,2));
 * +i+ltrim(str(ss33,9,2))+i+ltrim(str(ss50,9,2))+i+'0.00';
 * +i+repl(',',15)+q+'NRAD62007'+q
 * th94=q+trim(buls0)+q+i+q+trim(fir1)+q+i+'0'+i+q+q+i+q+trim(tel)+q+i+q+q+;
 * repl(',',27)+t1+i+data2+i+x82+i+kd1+i+'8'+i+i+''+i+i+i+i+;
 * +i+ltrim(str(ss94,9,2))+repl(',',15)+q+'NRAD62007'+q
 *************** OLD ***************************



             store th6 to asci0
              asci()
              ?? asci1
        *  if rasa0=1
        *       store th94 to asci0
        *       asci()
        *       ? asci1
        *  endif
                ?? chr(13)+chr(10)
                ?? chr(26)
               set prin off
               set prin to
               set cent off
     v3=3
     disk()  && fis8

    if god_0 < 60
      if round(ss92*(pr_13+pr_14+pr_26)/100,2) <> round(ss13,2)
          save screen
          @  9,10,14,69 box ram1 ; @ 10,11 clea to 13,68
          @ 10+ml0,36 say '‚HˆŒ€Hˆ… !'  color 'R+/B'
          @ 11+ml0,11 say space(42)+'¡°.1     ¡°.6'
          @ 12+ml0,12 say 'ˆ¬ ²¥ °§«¨·¨¿ ¢ „ ¬¥¦¤³ ¡°. 1 ¨ 6'
          @ 12+ml0,49 say str(round(ss92*(pr_13+pr_14+pr_26)/100,2),9,2);
            +' '+str(ss13,9,2)
          @ 13+ml0,23 say '¤¥ª ° ¶¨¿²  ¹¥ ¡º¤¥ ®²ª § ­  ®² Hˆ!' color 'R+/B'
           inkey(0)
          restore screen
      endif
    else
    * DON'T DELETE
    *  @  0,15  say 'ss92   ' +str(round(ss92,4),9,2)  ; inkey(0) //kkk
    *  @  0,15  say 'pr_113 ' +str(pr_113,9,2)         ; inkey(0) //kkk
    *  @  0,15  say 'pr_114 ' +str(pr_114,9,2)         ; inkey(0) //kkk
    *  @  0,15  say 'pr_26  ' +str(pr_26,9,2)          ; inkey(0) //kkk
    *  @  0,15  say 'ss13   ' +str(round(ss13,4),10,4) ; inkey(0) //kkk
      if  round(ss92*(pr_113+pr_114+pr_26)/100,2) <> round(ss13,2)
          save screen
          @  9,10,14,69 box ram1 ; @ 10,11 clea to 13,68
          @ 10+ml0,36 say '‚HˆŒ€Hˆ… !'  color 'R+/B'
          @ 11+ml0,11 say space(42)+'¡°.1     ¡°.6'
          @ 12+ml0,12 say 'ˆ¬ ²¥ °§«¨·¨¿ ¢ „ ¬¥¦¤¨ ¡°. 1 ¨ 6'
          @ 12+ml0,49 say str(round(ss92*(pr_113+pr_114+pr_26)/100,2),11,2);
            +' '+str(ss13,11,2)
          @ 13+ml0,23 say '¤¥ª ° ¶¨¿²  ¹¥ ¡º¤¥ ®²ª § ­  ®² Hˆ!' color 'R+/B'
           inkey(0)
          restore screen
      endif
    endif

    * DON'T DELETE
    *  @  0,15  say str(round(ss92*pr_31/100,2)+round(ss92*pr_32/100,2),9,2) //kkk
    *  @  1,15  say str(round(ss31,2),9,2) ; inkey(0) //kkk

      if  round(ss92*pr_31/100,3)+round(ss92*pr_32/100,3) <> round(ss31,3)
          save screen
          @  9, 8,14,69 box ram1 ; @ 10, 9 clea to 13,68
          @ 10+ml0,36 say '‚HˆŒ€Hˆ… !'  color 'R+/B'
          @ 11+ml0, 9 say space(42)+'¡°.1     ¡°.6'
          @ 12+ml0,10 say 'ˆ¬ ²¥ °§«¨·¨¿ ¢ „‡0 ¬¥¦¤¨ ¡°. 1 ¨ 6'
          @ 12+ml0,47 say str(round(ss92*pr_31/100,4)+round(ss92*pr_32/100,4) ;
            ,9,4)+' '+str(ss31,9,4)
          @ 13+ml0,23 say '¤¥ª ° ¶¨¿²  ¹¥ ¡º¤¥ ®²ª § ­  ®² Hˆ!' color 'R+/B'
           inkey(0)
          restore screen
      endif

    if round((ss201+ss92)*(pr_51/100),2)+round((ss92)*(pr_52/100),2)<>round(ss50,2)
          save screen
          @  9,10,14,69 box ram1 ; @ 10,11 clea to 13,68
          @ 10+ml0,36 say '‚HˆŒ€Hˆ… !'  color 'R+/B'
          @ 11+ml0,11 say space(42)+'¡°.1     ¡°.6'
          @ 12+ml0,12 say 'ˆ¬ ²¥ °§«¨·¨¿ ¢ ‡‚ ¬¥¦¤¨ ¡°. 1 ¨ 6'
          @ 12+ml0,49 say str(round((ss201+ss92)*(pr_51/100),2)+ ;
            round((ss92)*(pr_52/100),2),9,2)+' '+str(ss50,9,2)
          @ 13+ml0,23 say '¤¥ª ° ¶¨¿²  ¹¥ ¡º¤¥ ®²ª § ­  ®² Hˆ!' color 'R+/B'
           inkey(0)
          restore screen
    endif

* +'  '+str(ss13,9,2)+ str(ss31,9,2)+str(s50,9,2)+ str(ss33,9,2) ; inkey(0) //kkk
*  @  0,15  say 'obr.1/6 '+str(round((ss201+ss92)*(pr_51/100),2)+ ;
*     round((ss92)*(pr_52/100),2)   ,9,2) ;
* +'  '+str(ss13,9,2)+ str(s31,9,2)+str(s50,9,2)+ str(s33,9,2) ; inkey(0) //kkk
*  @  0,15  say 'dddd   '+space(50)
*  @  0,15  say 'dddd   '+str(ss201,9,2)+'   '+str(ss92,9,2) ; inkey(0) //kkk
            endif
                   if .not. subs(x82,1,5)='00/00'
                      pismod()
               *      dekl6()   &&  fis8
                   endif
       case v3=2
            prpismo() &&  fis2
    endcase

      case v2=6
          store '±' to dni0,dni1
          store 0 to sch0,st0
          pr1=1
          pr2=999999
     do while .t.
               if l3='¬'
                     sele 2
                     use mese inde sdni,dnsi
                else
                     sele 4
                     use godn inde gsdni,gdnsi
                endif
             sele 1
             use spis inde nomi
          ramka()
         @  2,28 say '²ª°¨¢ ­¥ ­  ­®¢ ¸¨´º°'
         @  3,27 say '-----------------------'
         @  8,30 say '‚º¢¥¤¥²¥ ¸¨´º° ' get sch0 pict "999"
         @ 10,31 say '• ° ª²¥°¨±²¨ª ' get dni0
         @ 12,26 say '‘²®©­®±² ­  µ ° ª².' get st0 pict "99999.99"
         @ 14,24 say '² ­®¬¥°         „® ­®¬¥°'
         @ 14,33 get pr1 pict "999999"
         @ 14,50 get pr2 pict "999999"
          read
          if lastkey()=27.or.sch0=0
                 return
          endif
       do while .not. eof()
                 if val(nom)<pr1.or.val(nom)>pr2
                     if .not. eof()
                        skip
                        loop
                     endif
                 endif
          nom0=nom
          td_0=td
         if l3='¬'
            sele 2
         else
            sele 4
          endif
          sdn0='  8'+vek0+data0+nom0
          find "&sdn0"
          if found()
             sdn0=str(sch0)+vek0+data0+nom0
              if l3='¬'
                sele 2
              else
                sele 4
              endif
              find "&sdn0"
              @ 23,23 say '°®£° ¬ ²  ° ¡®²¨, ¬®«¿ ¨§· ª ©²¥ !'
            if .not.found()
               if td_0='’'.and.(sch0=13.or.sch0=14.or.sch0=51.or.sch0=52.or.sch0=70.or.sch0=71)
                  loop
               endif
               appe blank
               do case
                  case sch0=412
                    if td_0='’'
                       st0=12
                    else
                       st0=1
                    endif
                  case sch0=412
                        st0=1
                  case sch0=452
                    if td_0='’'
                       st0=35
                    else
                       st0=30
                    endif
               endcase
               repl nom with nom0,sch with str(sch0,3), stoi with st0, dni with dni0, data with data0, vek with vek0
            endif
          else
              sdn0=str(sch0)+vek0+data0+nom0
              find "&sdn0"
              l1=1
              @ 20,14 clea to 23,66
             @ 21,14,24,66 box ram1
             @ 22,20 say '’ ¡³«­¨¿² ­®¬¥°'+nom0+' ­¥ ¢º¢¥¤¥­ ¢ ²®§¨ '
             @ 23,18 say '¬¥±¥¶ ¹¥ ¢º¢¥¤¥²¥ «¨ µ ° ª²¥°¨±²¨ª ²  ?   '
                  @ 23,56 prompt 'H…'
                  @ 23,59 prompt '„€'
                  menu to l1
              if lastkey()=27
                     return
              endif
             if l1=2
                @ 23,15 say '      °®£° ¬ ²  ° ¡®²¨, ¬®«¿ ¨§· ª ©²¥ !      '
                appe blank
                repl nom with nom0,sch with str(sch0,3), stoi with st0, suma with st0,dni with dni0, data with data0, vek with vek0
             endif
          endif
               sele 1
                      if .not.eof()
                          skip
                      else
                          exit
                      endif
       enddo
     enddo
      endcase

