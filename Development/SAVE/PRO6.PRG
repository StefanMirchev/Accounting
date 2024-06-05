   *PRO6.PRG   
   ** p6  admini chdire copizho kaparat missfile operat pfunk8 suptot versia
   *  parola i !!!!    nomer na admin  e na red 205  !!!!
   *  IDI NA  SPRI TOVA  ZA STOP ADMINISTRATORA
   * @  0,15  say 'bbbb ' ; inkey(0) //kkk
   *   @ 0,0 say 'C:\M119\' ; @ 0,72 say '18/02/19' ; cden0='Ponedelnik'
   *   @ 23+ml0, 3 say cden0 ; @ 23+ml0,69 say '18/02/19'

   *   Има ве╖е издаден ка▒ова бон за ┤ак▓│░а pro6 -> kaparat()
   *   Фак▓│░а▓а не може да б║де издадена     sav1 -> fprint()
   *   Мол┐ вкл╛╖е▓е ┤и▒кални┐ п░ин▓е░        sav1 -> fprint()
   *   Има ве╖е издаден ка▒ова бон за ▓ази ┤ак▓│░а /СО/ sav2
   ******************** Programirane kasov aparat ********
                             proc  kaparat
    *   if timeb0='  :  :' .or.( .not. ekpr0=2)  ; return ; endif  //  supto pusni

           open_unpr(loc0:=39) ; set order to 2 ; go top ; find '&dn0'
        if found()
           idfu01 = idfu
           admi01 = admi
           pnp01 = pnp
          save screen
         * @ 21,14,24,66 box ram1  /// supto pusni sledvashtite 8 reda
         * @ 22,15 clea to 23,65
         * @ 22+ml0,38 say 'ВHИМАHИЕ!'  color 'R+/B'
         * @ 23+ml0,16 say 'Има ве╖е издаден ка▒ова бон за ┤ак▓│░а:'+fn1
         *     inkey(4)
         *     @ 23+ml0,1 say space(51)
         *     restore screen
         *     return  // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        endif

    ******************** Nachalo Sazdavane na UIN  **********************
      if sc9='д' .and. subs(str(nom0,4),1,1)='7'
          *    @  0,15  say 'supto 09 vika prowerka fprin' ; inkey(0) //kkk
           fprint()  // sav1

              if  vd0='01' .or. vd0='02' .or. vd0='03'
                 store '' to idfu01,admi01,pnp01
            open_unpr(loc0:=41)
            go bott
  store repl('0',7-len(ltrim(str(val(pnp)+1))))+ltrim(str(val(pnp)+1)) to pnp00
           appe blank
        rec_lock()
  repl pnp with pnp00,nom with str(nom2,4),data with data0, admi with admi00, ;
       dateb with date(), timeb with timeb0, daten with date(),dds with d_s0*100, ;
       timen with time(), obek with obek00, myas with myas00, idfu with idfu00
          inkey(2)
            *  @  0,15  say 'supto 10 UIN/ pnp00 '+pnp00 ; inkey(0) //kkk
         rec_unlock()
        idfu01=idfu
        admi01=admi
        pnp01=pnp
              endif
         as0=1
      *   @  3,25  say 'УHП: '+idfu00+'-'+admi00+'-'+pnp00  // supto pusni
         if pl0='в б░ой'
           do case
              case vd0='01' .or. vd0='02'
       dok1='СТР.М-ЛИ'
  *    ime00='Милена Иванова С▓о┐нова'
       asci0= 'P,1,______,_,__;Опе░а▓о░: '+ime00+';;;;;'
       asci()
       l1=asci1
       asci0= 'P,1,______,_,__;УHП: '+idfu00+'-'+admi00+'-'+pnp00+';;;;;'
       asci()
       l2=asci1
       asci0= 'S,1,______,_,__;'+dok1+';'+ltrim(str(abs(slov0),13,2))+';;;;2;;;'+idfu00+'-'+admi00+'-'+pnp00+';'
       asci()
       l3=asci1
       asci0= 'T,1,______,_,__;'
       asci()
       l4=asci1
     * ? 'T,1,______,_,__;0;'+ltrim(str(abs(slov0),13,2))+00+';'
       memowrit('s0099.prn', memoread('s0099.prn')+l1+chr(13)+chr(10)+l2+chr(13)+chr(10)+l3;
                +chr(13)+chr(10)+l4)

              case vd0='03'
       dok1='ВРЪЩАHЕ/РЕКЛАМАЦИЯ'
    *  asci0= 'P,1,______,_,__;Опе░а▓о░: '+ime00+';;;;;'
    *  asci()
    *  l1=asci1
       asci0= 'r,1,______,_,__;0;'+trim(subs(mjst1,1,7))+';'+subs(mjst1,9,19)+';'+mjst2+';'
       asci()
       l1=asci1
       asci0= 'S,1,______,_,__;'+dok1+';'+ltrim(str(abs(slov0),13,2))+';;;;2;;;'+idfu00+'-OP'+subs(admi00,3,2)+'-'+pnp00+';'
       asci()
       l2=asci1
       asci0= 'T,1,______,_,__;'
       asci()
       l3=asci1
       memowrit('s0099.prn', memoread('s0099.prn')+l1+chr(13)+chr(10)+l2+chr(13)+chr(10)+l3)
              endcase
       copy file s0099.prn to &disc_0\defexec.txt
         endif
      endif
    ******************** Kray Sazdavane na UIN  **********************
                             return


                           proc admini
       l7='n' &&   pri prawilno vaveghdena parol se izliza ot wuwevdane na operator
     * l8='d' && startira kontrola ot administratora

         if file("&disc_1\job\admini.mem")
            restore from &disc_1\job\admini.mem additive
               if l8='d'
       @ 10+ml0,15 say space(60)
       @ 23+ml0,15 say space(51)
       @ 14,10 say 'В║еждане▓о кода на нов опе░а▓о░ ▒е о▒║╣е▒▓в┐ва под кон▓░ола на '
       @ 15,23 say 'админи▒▓░а▓ивни┐ ░║ководи▓ел:'
       @ 20, 2 clea to 21,78
                          sa_01=''
                          store ' ' to x1,x2,x3,x4
                          set curs on
                          @ 17,21,19,60 box ram1
                          @ 18,22 clea to 18,59
                          @ 18,24 say 'Мол┐ в║веде▓е Ва╕а▓а па░ола:'
                          @ 18,54  say space(4)
                          @ 18,54  say repl('',4)
                          @ 18,54  get x1  && pict "9"
                          read
                          @ 18,54  say '*'
                          @ 18,55  get x2
                          read
                          @ 18,55  say '*'
                          @ 18,56  get x3
                          read
                          @ 18,56  say '*'
                          @ 18,57  get x4
                          read
                          @ 18,57  say '*'
                          set curs off
                          sa_01=x1+x2+x3+x4
                               if sa_01=sa_00
                          @ 18,22 say '     Па░ола▓а е в║ведена │▒пе╕но!     '
                               else
                          @ 18,22 say 'С║жал┐вам но н┐ма▓е п░аво на до▒▓║п!!!'
                                l7='d' &&   pri neprawilno vavedena parol se zapochva ot nachalo schet smetk адм
                               endif
                          inkey(3)
                          @ 14, 2 clea to 21,78
                          @ 23+ml0,15 say space(51)
                          set curs on
               endif
         else

       @  5,10,20,70 box ram1
       @  6,13 say '  В║веждане▓о кода на нов опе░а▓о░ ▒е о▒║╣е▒▓в┐ва под  '
       @  7,13 say '       кон▓░ола на Админи▒▓░а▓ивни┐ ░║ководи▓ел.       '
       @  8,13 say '         За ╢ел▓а е необ╡одима ав▓ен▓ика╢и┐ на         '
       @  9,13 say '            Админи▒▓░а▓ивни┐ ░║ководи▓ел.              '


            sa_00='----'
              do while .t.

            @ 12,21 say 'Мол┐ в║веде▓е Ва╕а▓а п║░ва па░ола:' get sa_00
            chet()

            if sa_00='----'
              @ 19,15 say ' Че▓░и ▓е░е▓а ▒а недоп│▒▓има комбина╢и┐ за па░ола! '
                           inkey(3)
              @ 19,15 say space(51)
            else

                   inkey(0)



                @  6,11 clea to 19,69
              @ 11,22 say '     Па░ола▓а е в║ведена │▒пе╕но!     '
              @ 13,22 say ' Кода на админи▒▓░а▓о░а винаги е н│ла.'
                           inkey(4)





                @  5,10 clea to 20,70
                exit
            endif
              enddo
            save all like sa_* to &disc_1\job\admini.mem
            clos data
                         sele 6
                         use obap inde aobi, nami, pai
                   find 'адм   0'
                       if .not. found()
                         appe blank
                         rec_lock()
                         repl part with 'адм   0', name with +'Админи▒▓░а▓ивен ░║ководи▓ел    ', partp with sa_00+'    '
                         rec_unlock()
                       endif
         endif
                             return


     **************** П░о╢ед│░а за избо░ на админи▒▓░.  ***************
                           proc  operat
                  *      @  9,21,13,60 box ram1   &&  supto pusni
                  *      @ 10,22 clea to 12,59    &&  supto pusni
                         part0=1
   * @  8,22 say 'Marakiraj part0=1 i parol0=llll sas zvezda admi00=0001'
                          store 0 to part0, parol0
                          store ' ' to x1,x2,x3,x4
                          set curs on
                   *''A   MARKIRAI DO  ''B  SPRI TOVA  && supto mahni * ot A do B
                   *      @ 10,32 say 'Мол┐ в║веде▓е Ва╕а▓а:'
                   *
                   *      @ 12,30 say 'Код:       и па░ола:'
                   *      @ 12,35 get part0  pict "9999"
                   *      read
                   *      @ 12,51  say space(4)
                   *      @ 12,51  say repl('',4)
                   *      @ 12,51  get x1  && pict "9"
                   *      read
                   *      @ 12,51  say '*'
                   *      @ 12,52  get x2
                   *      read
                   *      @ 12,52  say '*'
                   *      @ 12,53  get x3
                   *      read
                   *      @ 12,53  say '*'
                   *      @ 12,54  get x4
                   *      read
                   *      @ 12,54  say '*'
                   *      set curs off
                   *    parol0=x1+x2+x3+x4
                   *''B  idid ''C

               part0=1  ; parol0='llll' ; admi00='0001' && SPRI TOVA  ''C  && supto slogi * na tozi red

                         sele 6
                         use obap inde aobi, nami, pai
                         dp0='адм'+str(part0,4)
                        go top
                        find '&dp0'
                       if found() .and. parol0=subs(partp,1,4)
           if parol0='----'
                          set curs on
              @  9,19,13,61 box ram1  ; @ 10,20 clea to 12,60
              store repl('0',4-len(ltrim(str(part0))))+ltrim(str(part0)) to admi00
              do while .t.
            @ 10,22 say admi00+'  '+subs(name,1,30)
            @ 12,20 say ' Мол┐ в║веде▓е Ва╕а▓а п║░ва па░ола:' get parol0
            read
            if parol0='----'
              @ 15,15 say ' Че▓░и ▓е░е▓а ▒а недоп│▒▓има комбина╢и┐ за па░ола! '
                           inkey(3)
              @ 15,15 say space(51)
            else
               rec_lock()  ;  repl partp with parol0+'   ' ; rec_unlock()

               set curs off
               @ 12,20 say '       Па░ола▓а е в║ведена │▒пе╕но!      '
                           inkey(3)
               @  9,19 clea to 13,61
               @  9,21,13,60 box ram1
                exit
            endif
              enddo
           endif
             store repl('0',4-len(ltrim(str(part0))))+ltrim(str(part0)) to admi00
             store subs(name,1,30)  to ime00
             *              @ 10,22 clea to 12,59  && supto mahni zvezdite sledv 5 reda
             *              @ 10,23 say admi00
             *              @ 10,29 say ime00
             *              @ 12,30 say 'F3 - п░ом┐на на па░ола'
             *              inkey(3)
                       else
                          @ 10,22 clea to 12,59
                          @ 11,51  say parol0
                          @ 11,22 say 'С║жал┐вам но н┐ма▓е п░аво на до▒▓║п!!!'
                          inkey(3)
                          cance
                       endif
                      if lastkey()=-2
                          set curs on
                          @ 10,22 clea to 12,59
                          @ 10,24 say 'Мол┐ в║веде▓е Ва╕а▓а па░ола: ' get parol0
                          @ 12,24 say 'Име' get ime00
                          read
                          set curs off
                           rec_lock()
                           repl name with ime00+'     ',partp with parol0+'   '
                           rec_unlock()
                      endif
              if .not. admi00='0000'
                      open_unpr(loc0:=41)
                      locate for nom='адм'.and.admi=admi00.and.dateb=date()
                if .not.found()
                     appe blank ; set cent on ; rec_lock()
                  repl dateb with date(), timeb with time(), nom with 'адм',;
                    data with subs(dtoc(date()),4,5), admi with admi00, ;
                    obek with obek00, myas with myas00, idfu with idfu00
                    inkey(2) ; rec_unlock() ; set cent off  ; set cursor off
                endif
              endif
                         @  9,19 clea to 13,61
                           return

         ************** PROCEDURA ZA PROWERKA SMQNATA NA DIREKTOR ********
                                 func chdire
  @ 3,0 clea to 10,75
  @ 4,2 say "\DISC\HLP\us_0 = "+us_0
  @ 5,2 say '!cd= '
  ! cd
  @ 6,2 say 'us0 = '+us0
  @ 7,2 say 'dr0 = '+dr0
  @ 8,2 say 'l4  = '+ l4
  @ 9,2 say 'date0 = '+dtoc(date0)
  inkey(0)
  @ 3,0 clea to 10,75
  inkey(1)
                                 return


         ********* DOBAWYA DBF FAYLOWE NA V STARA DIREKTORIYA*******
                                 proc missfile
          if (.not.file ("ddse.mem"))
               copy file  &disc_1\save\ddse.mem to "&us_0\ddse.dbf"
          endif
          if (.not.file ("prot.dbf"))
               copy file  &disc_1\save\prot.dbf to  "&us_0\prot.dbf"
               eras nari.ntx
          endif
          if (.not.file ("unpr.dbf"))
               copy file  &disc_1\save\unpr.dbf to "&us_0\unpr.dbf"
               eras nari.ntx
          endif
          if (.not.file ("zame.dbf"))
               copy file  &disc_1\save\zame.dbf to "&us_0\zame.dbf"
               eras nari.ntx
          endif

                                 return


           ************************ Tarsi smetka w obve **************
                                    func helpproba

                     if readvar()='SCH1'
                        sele 7
                        find "&sch1"
                        if .not. found()
                  @ 23,22 say 'H┐ма ▒ме▓ка в ▒ме▓коплана ▒ номе░ '+sch1+' !'
                           inkey(3)
                           @ 23,20 say space(50)
                           return .F.
                         else
                            if !lastkey()=28
                              return .T.
                          endif
                        endif
                      endif
                           return .T.

           ********************* file date time  ********************


                                    proc versia

    @ 17,21 say space (38)
!  cmd /c &disc_1\EXE\forfiles /P &disc_0\ARHI\ARHI\ /M KOSI_23.ZIP /C "cmd /c echo @fdate @ftime" > aaa.txt   
  
      set cursor on ; ssss= memoread("aaa.txt")
    do case
       case subs(ver1,1,4)='Save'
    @ 0,24 say ver1+' v.01 - '+subs(memoline(ssss,21,2),1,9)+'/ ';
               +subs(memoline(ssss,21,2),14,5) color 'G+/N'
       case subs(ver0,8,5)='\ARHI'
    @ 17,23 say 'Да▓а на а░╡ива:  '+subs(memoline(ssss,21,2),1,10)+'/ ';
               +subs(memoline(ssss,21,2),14,5)
    endcase
       inke(7)
       @ 17,21 say space (38)
                                    return

           ********************* file date time  ********************




         *********************  Nachalo  Spravki SUPTO    ***************
                                  proc  suptot
             date1=ctod('01/01/'+subs(vek0,1,2)+subs(us_0,6,2))
             date2=date()
             idfu1=idfu00 ; obek1=obek00 ; myas1=myas00 ; admi1=admi00
             as0=1 ; a0=1 ; a1=1
             set cent on
             set cons off
      do while .t.   // tablici
             set prin off ; set prin to
             @  2,10 clea to 18,70
             @  2,18,18,62 box ram1
             @ 23+ml0,15 say space(51)
             @  3,32 say 'Tабли╢и СУПТО'
             @  4,31 say '---------------'
             @  6,23 prompt ' 1. Обоб╣ени данни за п░одажби▓е'
             @  7,23 prompt ' 2. Данни за пла╣ани┐▓а по п░одажби▓е'
             @  8,23 prompt ' 3. Де▓айлни данни за п░одажби▓е'
             @  9,23 prompt ' 4. С▓о░ни░ани п░одажби'
             @ 10,23 prompt ' 5. Ан│ли░ани п░одажби '
             @ 11,23 prompt ' 6. Обоб╣ени данни за до▒▓авки'
             @ 12,23 prompt ' 7. Де▓айлни данни за до▒▓авки'
             @ 13,23 prompt ' 8. Движение на ▒▓оки за пе░иод'
             @ 14,23 prompt ' 9. Hоменкла▓│░и на ▒▓оки/│▒л│ги'
             @ 15,23 prompt '10. Опе░▓о░ - login / logout'
             @ 16,23 prompt '11. Кон┤иг│░и░ане в ▒и▒▓ема▓а'

         if .not. file ("&disc_1\job\suptocon.txt")
              @ 20,14,24,66 box ram1 ; @ 21,15 clea to 23,65
                   @ 21+ml0,36 say 'ВHИМАHИЕ !' 

                   @ 22+ml0,19 say 'Hе ▒▓е нап░авили кон┤иг│░и░ане в ▒и▒▓ема▓а!'
                   @ 23+ml0,19 say '  Мол┐ изп║лне▓е ▓о╖ка 11 о▓ го░но▓о мен╛! '
                       inkey(0)      //5
          @ 20,14 clea to 23,66 ; @ 22+ml0,14,24+ml0,66 box ram1 ; v4=11
         endif
             ekpr0=3
             menu to v4
        * !!!  WAGNO 11. Кон┤иг│░и░ане в ▒и▒▓ема▓а' izliza prazen .xls file
        * zashtot e standat i samostoqtelna sprawka nyama i ne e nugna,
        *  Konofig se posochva v spravkite na menu 9  v4=11 !!!!!!!!!!!!!

                if lastkey()=27
                   set dele off ; set date brit ; set cent off ; return
                endif
        if v4=2
          @ 20,14,24,66 box ram1 ; @ 21,15 clea to 23,65
          @ 21+ml0,36 say 'ВHИМАHИЕ !'  color 'R+/B'
          @ 22+ml0,15 say 'В T.2 кол.7и8 ▒е поп║лва▓ ▒амo за плa╣ане по банка.'
          @ 23+ml0,15 say '      В║веждане на банкови пла╣ани┐ -> 5/1/F8      '
               inkey(0)
          @ 20,14 clea to 23,66  ; @ 22+ml0,14,24+ml0,66 box ram1
        endif
             @  2,14 clea to 21,66
             do case
               case v4=1
                @  2,23 say '    Обоб╣ени данни за п░одажби▓е    '
                @  3,23 say '   ------------------------------   '
                      tabl0='        ОБОБЩЕHИ ДАHHИ ЗА ПРОДАЖБИТЕ'
                      t0=7
               case v4=2
                @  2,23 say '  Данни за пла╣ани┐▓а по п░одажби▓е '
                @  3,23 say ' -----------------------------------'
                      tabl0='  ДАHHИ ЗА ПЛАЩАHИЯТА ПО ПРОДАЖБИТЕ '
                      t0=5
               case v4=3
                @  2,23 say '    Де▓айлни данни за п░одажби▓е    '
                @  3,23 say '   ------------------------------   '
                      tabl0='        ДЕТАЙЛHИ ДАHHИ ЗА ПРОДАЖБИТЕ'
                      t0=4
               case v4=4
                @  2,23 say '        С▓о░ни░ани п░одажби         '
                @  3,23 say '       ---------------------        '
                      tabl0='                СТОРHИРАHИ ПРОДАЖБИ '
                      t0=6
               case v4=5
                @  2,23 say '        Ан│ли░ани п░одажби          '
                @  3,23 say '       --------------------         '
                      tabl0='                 АHУЛИРАHИ ПРОДАЖБИ '
                      t0=6
               case v4=6
                @  2,23 say '    Обоб╣ени данни за до▒▓авки      '
                @  3,23 say '   ----------------------------     '
                      tabl0='    OБОБЩЕHИ ДАHHИ ЗА ДОСТАВКИ      '
                      t0=5
               case v4=7
                @  2,23 say '    Де▓айлни данни за до▒▓авки      '
                @  3,23 say '   ----------------------------     '
                      tabl0='    ДЕТАЙЛHИ ДАHHИ ЗА ДОСТАВКИ      '
                      t0=2
               case v4=8
                @  2,23 say '    Движение на ▒▓оки за пе░иод     '
                @  3,23 say '   -----------------------------    '
                      tabl0='        ДВИЖЕHИЕ HА СТОКИ ЗА ПЕРИОД '
                      analobo()
                      @ 23,15 say space(51)
                      t0=5
               case v4=9
                @  2,23 say '    Hоменкла▓│░и на ▒▓оки/│▒л│ги    '
                @  3,23 say '   ------------------------------   '
                      tabl0='    HОМЕHКЛАТУРИ HА СТОКИ/УСЛУГИ    '
                      t0=6
               case v4=10
                @  2,23 say '     Опе░а▓о░ - login / logout      '
                @  3,23 say '    ---------------------------     '
                      tabl0='               ОПЕРАТОР - Login / Logout'
                      t0=3
               case v4=11
                @  2,23 say '     Кон┤иг│░и░ане в ▒и▒▓ема▓а      '
                @  3,23 say '    ---------------------------     '
                      tabl0='           КОHФИГУРИРАHЕ В СИСТЕМАТА' ; tabl0=''
                      t0=1
             endcase

             obek1=val(obek1) ; myas1=val(myas1) ; admi1=val(admi1)

         if v4=9
     @  6+ml0,32 prompt ' 1. С▓оки/│▒л│ги ' ; @  7+ml0,32 prompt ' 2. До▒▓ав╖и╢и'
     @  8+ml0,32 prompt ' 3. Клиен▓и   '    ; @  9+ml0,32 prompt ' 4. Видове опе░а╢ии'
     @ 10+ml0,32 prompt ' 5. Видове  пла╣ани┐' ; @ 11+ml0,32 prompt ' 6. Т║░гов▒ки  обек▓и'
     @ 12+ml0,32 prompt ' 7. Рабо▓ни м┐▒▓а' ; @ 13+ml0,32 prompt ' 8. Опе░а▓о░и'
     @ 14+ml0,32 prompt ' 9. Роли на опе░а▓о░и▓е'
     @ 15+ml0,32 prompt '10. П░ава, п░и▒во┐вани на ░оли▓е' ; menu to a1
            if lastkey()=27 ; set dele off ; set cent off
             obek1=str(obek1,4) ;  myas1=str(myas1,4)
             store repl('0',4-len(ltrim(str(admi1))))+ltrim(str(admi1)) to admi1
             loop
            endif
               t0=2
        do case
          case a1= 1;sch0=sch00 ;tabl0=space(18)+'С▓оки / │▒л│ги по ▒ме▓ка '+sch0
          case a1= 2;sch0='401' ;tabl0=space(22)+'До▒▓ав╖и╢и по ▒ме▓ка '+sch0
          case a1= 3;sch0='411' ;tabl0=space(30)+'Клиен▓и '+sch0
          case a1= 4;sch0=' 40' ;tabl0=space(30)+'Видове опе░а╢ии'
          case a1= 5;sch0=' 50' ;tabl0=space(30)+'Видове  пла╣ани┐'
          case a1= 6;sch0='обе' ;tabl0=space(30)+'Т║░гов▒ки обек▓и'
          case a1= 7;sch0='м┐▒' ;tabl0=space(33)+'Рабо▓ни ме▒▓а'
          case a1= 8;sch0='адм' ;tabl0=space(35)+'Опе░а▓о░и'
          case a1= 9;sch0=' 90' ;tabl0=space(30)+'Роли на опе░а▓о░и▓е'
          case a1=10;sch0='100' ;tabl0=space(15)+'П░ава, п░и▒во┐вани на ░оли▓е'
        endcase
            if lastkey()=27 ; set dele off ; set cent off
             obek1=str(obek1,4) ;  myas1=str(myas1,4)
             store repl('0',4-len(ltrim(str(admi1))))+ltrim(str(admi1)) to admi1
             loop
            endif
         else
            if .not. v4=11
             @  5,35 say 'Ф И Л Т Р И'
             @  8,11 say 'Hа╖ало на пе░иод:             к░ай на пе░иод:'
             @  8,29 get date1  ; @  8,57 get date2
             @ 10,14 say 'Т║░гов▒ки обек▓      Фи▒кално │▒▓░ой▒▓во:'
             @ 10,30 get obek1 pict "9999" ; @ 10,56 get idfu1
             @ 12,21 say 'Рабо▓но м┐▒▓о:      Опе░а▓о░:'
             @ 12,36 get myas1  pict "9999"  ;  @ 12,51 get admi1  pict "9999"
              chet()
                @ 23,22 say '  Желае▓е ли изкл╛╖ени ┤ил▓░и HЕ ДА    '
                @ 23+ml0,52 prompt 'HЕ' ; @ 23+ml0,55 prompt 'ДА' ; menu to a0
                 if lastkey()=27 ; set dele off ; set cent off
                  obek1=str(obek1,4) ;  myas1=str(myas1,4)
                  store repl('0',4-len(ltrim(str(admi1))))+ltrim(str(admi1)) to admi1
                  loop
                 endif
            endif
         endif
             obek1=str(obek1,4) ;  myas1=str(myas1,4)
             store repl('0',4-len(ltrim(str(admi1))))+ltrim(str(admi1)) to admi1
             izrab()
             @ 23,15 say space(51)
             @ 18, 2 clea to 21,78
            if lastkey()=27 ; set dele off ; set cent off
             obek1=str(obek1,4) ;  myas1=str(myas1,4)
             store repl('0',4-len(ltrim(str(admi1))))+ltrim(str(admi1)) to admi1
             loop
            endif
                @ 23+ml0,15 say '       П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е ...       '
             ekpr0=1
                         if file("&disc_0\supto1.csv")
                            memowrit('aaa.bat','2>nul (>> &disc_0\supto1.csv echo off ) && (echo file is not locked > aaa.txt) || ( echo file is locked  > aaa.txt)')
                 !&disc_1\exe\hstart.exe /noconsole aaa.bat
                 inkey(3)
              do while .t.
                 !&disc_1\exe\hstart.exe /noconsole aaa.bat
                 inkey(3)
                      if subs(memoline(memoread("aaa.txt"),30,1),1,18)='file is not locked'
                           exit
                      else
                   save screen
                   @ 23+ml0,15 say space(51)
                   @ 22,14,24,66 box ram1
                   @ 23+ml0,20 say 'ВHИМАHИЕ !'  color 'R+/B'
                   @ 23+ml0,32 say 'Мол┐ за▓во░е▓е СУПТО ▓абли╢а▓а!'
                       inkey(3)      //5
                   @ 23+ml0,15 say space(50)
                       loop
                      endif
              enddo
                   @ 23+ml0,15 say '       П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е ...       '
                       inkey(1)
                            !del &disc_0\supto*.csv > aaa.txt
                       inkey(1)  // 5
                         endif
                           erase aaa.bat  ; erase aaa.txt
                           ll0='1'
                           b1=5000 // ako ne e posocheno po podrazbirane e 325 reda
                           set marg to 4
         store 0 to p0,b0,q0 ; b0=7 ; i=';'

         open_dpart(loc0:=56)
         open_obap(loc0:=56) ; set order to 1
         open_arhi(loc0:=28) ; set order to 1
         open_dobo(loc0:=28) ; set order to 1
         open_kobo(loc0:=28) ; set order to 2
        if v4=8
          open_kpart(loc0:=56)
        else
          open_kpar(loc0:=28) ; set order to 1 ; set relation to part into obap
        endif
         open_dpart(loc0:=56)
         open_unpr(loc0:=29) ; set order to ; go top

    asci0=repl(';',t0)+tabl0
    asci() ; ? asci1
    asci0=repl(';',t0)+'  ЗА  ПЕРИОДA OT  ' +dtoc(date1)  +' ДО '+dtoc(date2)
     asci() ; ? asci1
?
         if v4=1
 asci0=' No   '+i+'Уникален     '+i+'  Си▒▓емен '+i+'Код и наименование'+i+' О▓к░иване'+i+'О▓к░иване '+i+'Код на '+i+'   Код   '+i+'С│ма на      '+i+'О▓▒▓║пка'+i+'С│ма ДДС'+i+'      Д║лжима   '+i+'   Фак▓░а '+i+;
' П░икл╛╖ване '+i+' П░икл╛╖ване '+i+'  Клиен▓   '
     asci() ; ? asci1
 asci0=' по   '+i+'   No        '+i+'    No     '+i+'на ▓║░гов▒к┐ обек▓'+i+'п░одажба▓а'+i+'п░одажба▓а'+i+'░або▓но'+i+'    на   '+i+'п░одажбa▓a   '+i+'        '+i+'        '+i+'     ▒│ма по    '+i+'          '+i+;
'на п░одажба▓а'+i+'на п░одажба▓а'+i+'           '
     asci() ; ? asci1
 asci0=' ░ед  '+i+'на п░одажба▓а'+i+'на п░одажб.'+i+'                  '+i+' да▓а     '+i+'   в░еме  '+i+'м┐▒▓ о '+i+'опе░a▓о░а'+i+'без ДДС в лв.'+i+'  в лв. '+i+' в лв.  '+i+'п░одажба▓а в лв.'+i+'номе░ да▓а'+i+;
'       да▓а  '+i+'     в░еме   '+i+' Б│л▒▓а▓           Име '
      asci() ; ? asci1
 ?  '    1    '+i+'      2      '+i+'     3     '+i+'        4         '+i+'    5     '+i+'     6    '+i+'   7  '+i+' 8   '+i+'     9    '+i+'  10  '+i+'   11   '+i+'      12  '+i+'          13       '+i+'      14     '+i+'     15'+i+'16'
         endif

         if v4=2
 asci0=' No   '+i+'Уникален     '+i+'  Си▒▓емен '+i+' О▓к░иване'+i+' П░икл╛╖ване  '+i+'    Об╣а ▒│ма   '+i+'  Да▓а  '+i+ '   Код    '+i+'Пла▓ена'+i+'   Вид   '+i+'Индивид│ален'
     asci() ; ? asci1
 asci0=' по   '+i+'   No        '+i+'    No     '+i+'п░одажба▓а'+i+'на п░одажба▓а+'+i+'      на        '+i+'    на  '+i+  '    на   '+i+' ▒│ма  '+i+'   на    '+i+'     на     '
     asci() ; ? asci1
 asci0=' ░ед  '+i+'на п░одажба▓а'+i+'на п░одажб.'+i+' да▓а     '+i+'      да▓а    '+i+'п░одажба▓а в лв.'+i+' пла╣ане'+i+  'опе░а▓о░а'+i+'  в лв.'+i+'пла╣ане▓о'+i+'     ФУ     '
   asci() ; ? asci1
 ?  '    1    '+i+'      2      '+i+'     3     '+i+'    4     '+i+'       5      '+i+'         6      '+i+'     7  '+i+'      8    '+i+'    9  '+i+'    10   '+i+'     11     '
         endif  // v4=2

         if v4=3
 asci0=' No   '+i+'Уникален     '+i+'  Си▒▓емен '+i+'  Код  '+i+'Hаименование'+i+'Коло╖е▒▓во'+i+'Едини╖на'+i+'О▓▒▓║пка'+i+' ДДС  '+i+' ДДС '+i+'Об╣а '
     asci() ; ? asci1
 asci0=' по   '+i+'   No        '+i+'    No     '+i+'   на  '+i+'      на    '+i+'          '+i+'  ╢ена  '+i+'        '+i+'▒▓авка'+i+'▒│ма '+i+'▒│ма '
     asci() ; ? asci1
 asci0=' ░ед  '+i+'на п░одажба▓а'+i+'на п░одажб.'+i+'▒▓ока▓а'+i+'   ▒▓ока▓а  '+i+'          '+i+' в лв.  '+i+' в лв.  '+i+'      '+i+'в лв.'+i+'в лв.'
     asci() ; ? asci1
 ?  '    1    '+i+'      2      '+i+'     3     '+i+'   4   '+i+'       5    '+i+'    6     '+i+'    7   '+i+'     8  '+i+'  9   '+i+' 10 '+i+'  11  '
         endif  // v4=3

         if v4=4
 asci0=' No   '+i+'Уникален     '+i+'  Си▒▓емен '+i+'  Код  '+i+'Hаименование'+i+'Коло╖е▒▓во'+i+'Едини╖на'+i+'О▓▒▓║пка'+i+' ДДС  '+i+' ДДС '+i+'Об╣а '+i+'Да▓а на     '+i+'  В░еме на    '+i+'  Да▓а на    '+i+'  В░еме на   '+i+'Индивид│ален'+i+'  Код   '
     asci() ; ? asci1
 asci0=' по   '+i+'   No        '+i+'    No     '+i+'   на  '+i+'      на    '+i+'          '+i+'  ╢ена  '+i+'        '+i+'▒▓авка'+i+'▒│ма '+i+'▒│ма '+i+'п░икл╛╖ване '+i+'  п░икл╛╖ване '+i+'  ▒▓о░ни░ане '+i+' ▒▓о░ни░ане  '+i+'  номе░ на  '+i+'   на   '
     asci() ; ? asci1
 asci0=' ░ед  '+i+'на п░одажба▓а'+i+'на п░одажб.'+i+'▒▓ока▓а'+i+'   ▒▓ока▓а  '+i+'          '+i+'  в лв. '+i+'  в лв. '+i+'      '+i+'в лв.'+i+'в лв.'+i+'на п░одажба▓а'+i+'на п░одажба▓а'+i+'на п░одажба▓а'+i+'на п░одажба▓а'+i+'      ФУ    '+i+'опе░а▓о░а'
    asci() ; ? asci1
 ?  '    1    '+i+'      2      '+i+'     3     '+i+'   4   '+i+'       5    '+i+'    6     '+i+'    7   '+i+'     8  '+i+'  9   '+i+' 10 '+i+' 11 '+i+'      12    '+i+'      13        '+i+'      14     '+i+'      15      '+i+'      16    '+i+'  17   '
         endif  // v4=4

         if v4=5
 asci0=' No   '+i+'Уникален     '+i+'  Си▒▓емен '+i+'  Код  '+i+'Hаименование'+i+'Коло╖е▒▓во'+i+'Едини╖на'+i+'О▓▒▓║пка'+i+' ДДС  '+i+' ДДС '+i+'Об╣а '+i+'Да▓а на      '+i+'  В░еме на    '+i+'  Да▓а на    '+i+'  В░еме на   '+i+'  Код    '
     asci() ; ? asci1
  asci0=' по   '+i+'   No        '+i+'    No     '+i+'   на  '+i+'      на    '+i+'          '+i+'  ╢ена  '+i+'        '+i+'▒▓авка'+i+'▒│ма '+i+'▒│ма '+i+'о▓к░иване на'+i+'  о▓к░иване   '+i+'  ан│ли░ане  ' +i+' ан│ли░ане   '+i+'   на   '
     asci() ; ? asci1
 asci0=' ░ед  '+i+'на п░одажба▓а'+i+'на п░одажб.'+i+'▒▓ока▓а'+i+'   ▒▓ока▓а  '+i+'          '+i+'  в лв. '+i+'  в лв. '+i+'      '+i+'в лв.'+i+'в лв.'+i+'на п░одажба▓а'+i+'на п░одажба▓а '+i+'на п░одажба▓а'+i+'на п░одажба▓а'+i+'опе░а▓о░а'
    asci() ; ? asci1
 ?  '    1     '+i+'      2      '+i+'     3    '+i+'   4   '+i+'       5    '+i+'    6     '+i+'    7   '+i+'     8  '+i+'  9   '+i+'  10 '+i+' 11  '+i+'      12     '+i+'       13     '+i+'      14     '+i+'      15     '+i+'     16  '
         endif  // v4=5
         if v4=6
 asci0=' No   '+i+'    ID '+i+'  Да▓а  '+i+' В░еме '+i+'  Код   '+i+'   Код   '+i+'   Име   '+i+'  No на  '+i+'  Да▓а   '+i+'    С│ма на  '+i+' ДДС '+i+'Об╣а '+i+'   Вид   '
     asci() ; ? asci1
 asci0=' по   '+i+'    на '+i+'   на   '+i+'       '+i+'  на    '+i+'    на   '+i+'    на   '+i+'до▒▓авана'+i+'до▒▓авана'+i+' до▒▓вка▓а   '+i+'▒│ма '+i+'▒│ма '+i+'    на   '
     asci() ; ? asci1
 asci0=' ░ед  '+i+'  запи▒'+i+'до▒▓авка'+i+'       '+i+'опе░а▓о░'+i+'до▒▓ав╖ик'+i+'до▒▓ав╖ик'+i+' ┤ак▓│░а '+i+' ┤ак▓│░а '+i+'без ДДС в лв.'+i+'в лв.'+i+'в лв.'+i+'пла╣ане▓о'
     asci() ; ? asci1
 ?  '    1    '+i+'      2'+i+'     3  '+i+'   4   '+i+'   5    '+i+'    6    '+i+'    7   ' +i+'     8   '+i+'     9   '+i+'      10     '+i+'  11 '+i+'  12 '+i+'   13    '
         endif  // v4=6

         if v4=7
 asci0=' No   '+i+'    ID '+i+'   Код  '+i+'Hаименование'+i+'Коло╖е▒▓во'+i+'Едини╖на'+i+'О▓▒▓║пка'+i+' ДДС '+i+'Об╣а '
     asci() ; ? asci1
 asci0=' по   '+i+'    на '+i+'   на   '+i+'      на    '+i+'          '+i+'  ╢ена  '+i+'        '+i+'▒│ма '+i+'▒│ма '
     asci() ; ? asci1
 asci0=' ░ед  '+i+'  запи▒'+i+'▒▓ока▓а '+i+'   ▒▓ока▓а  '+i+'          '+i+'  в лв. '+i+'  в лв. '+i+'в лв.'+i+'в лв.'
     asci() ; ? asci1
 ?  '    1    '+i+'      2'+i+'     3  '+i+'       4    '+i+'    5     '+i+'    6   '+i+'     7  '+i+'  8  '+i+'  9  '
         endif  // v4=7
         if v4=8
 asci0=' No   '+i+'   Код  '+i+'Hаименование'+i+'М┐░ка'+i+'Коло╖е▒▓во'+i+'Об╣а ▒▓-▒▓'+i+'  Деби▓ен '+i+'  Деби▓ен  '+i+' К░еди▓ен '+i+' К░еди▓ен  '+i+' Коло╖е▒▓во  '+i+' Об╣а ▒│ма в '
     asci() ; ? asci1
 asci0=' по   '+i+'   на   '+i+'      на    '+i+'     '+i+'в на╖ало▓о'+i+'в на╖ало▓о'+i+'   обо░о▓ '+i+'   обо░о▓  '+i+'   обо░о▓ '+i+'   обо░о▓  '+i+'   ка░┐ на   '+i+'   ка░┐ на   '
     asci() ; ? asci1
 asci0=' ░ед  '+i+'▒▓ока▓а '+i+'   ▒▓ока▓а  '+i+'     '+i+'на пе░иода'+i+'на пе░иода'+i+'коли╖е▒▓во'+i+'▒▓-▒▓ в лв.'+i+'коли╖е▒▓во'+i+'▒▓-▒▓ в лв.'+i+'пе░иода в лв.'+i+'пе░иода в лв.'
     asci() ; ? asci1
 ?  '    1    '+i+'   2    '+i+'       3    '+i+'  4   '+i+'    5     '+i+'     6    '+i+'      7   '+i+'      8    '+i+'     9    '+i+'    10     '+i+'      11    '+i+'     12      '
         endif  // v4=8

         if v4=10
            asci0=' No   '+i+'   Код   '+i+'Т░и▓е има  '+i+'Hа╖ало на  '+i+'Hа╖ало на  '+i+' Ка░ай на  '+i+' Ка░ай на  '+i+'Код и наименование'+i+'Код на '
 asci() ; ? asci1
            asci0=' по   '+i+'    на   '+i+'на оп░а▓о░а'+i+'░або▓ен ден'+i+'░або▓ен ден'+i+'░або▓ен ден'+i+'░або▓ен ден'+i+'на ▓║░гов▒к┐ обек▓'+i+'░або▓но'
 asci() ; ? asci1
            asci0=' ░ед  '+i+'опе░a▓о░а'+i+'           '+i+'    да▓а   '+i+'    ╖а▒    '+i+'   да▓а    '+i+'   ╖а▒     '+i+'                  '+i+'м┐▒▓о  '
 asci() ; ? asci1
 ?  '    1    '+i+'        4         '+i+'    5     '+i+'     6    '+i+'   7  '+i+' 8   '+i+'     9    '
         endif

         if v4=9
               asci0=i+'Да▓а на п║░вона╖ално кон┤иг│░и░ане в ▒и▒▓ема▓а '+;
              subs(memoline(memoread("&disc_1\job\suptocon.txt"),45,3),5,10)

                 set cent  on
                 set date ansi
                  asci() ; ?? asci1
               for i0=0 to 7
               l6 =ctod(subs(dtoc(date()),1,5)+'04/15')+i0
                if cdow(l6)='Thursday'
                   set date brit
                    if ctod(subs(memoline(memoread("&disc_1\job\suptocon.txt"),45,4),5,10)) ;
                     <  l6
                   asci0=i+'     Да▓а  на  по▒ледна п░ом┐на в ▒и▒▓ема▓а '+dtoc(l6)
                    else
                   asci0=i+'     Да▓а  на  по▒ледна п░ом┐на в ▒и▒▓ема▓а '+;
                       subs(memoline(memoread("&disc_1\job\suptocon.txt"),45,1),5,10)
                    endif
                   asci() ; ? asci1 ; ?
                endif
               next
                   set cent off
               asci0=i+i+'No по ░ед '+i+'  Код  '+i+'Hаименование'
                  asci() ; ? asci1
             ?  i+i+'    1    '+i+'   2    '+i+'       3    '
             do case
               case a1=1 ; tabl0=space(33)+'С▓оки/│▒л│ги'
               case a1=2 ; tabl0=space(33)+'До▒▓ав╖и╢и'
               case a1=3 ; tabl0=space(33)+'Клиен▓и'
               case a1=4 ; tabl0=space(30)+'Видове опе░а╢ии'
               case a1=5 ; tabl0=space(30)+'Видове  пла╣ани┐'
               case a1=6 ; tabl0=space(30)+'Т║░гов▒ки обек▓и'
               case a1=7 ; tabl0=space(35)+'Рабо▓ни ме▒▓а'
               case a1=8 ; tabl0=space(35)+'Опе░а▓о░и'
               case a1=9 ; tabl0=space(24)+'Роли на опе░а▓о░и▓е'
               case a1=10 ; tabl0=space(10)+'П░ава, п░и▒во┐вани на ░оли▓е'
             endcase
               store '' to part1,name1

          if a1=1 .or.a1=2 .or. a1=3 .or. a1=6 .or. a1=7 .or. a1=8
               sele 6 ; find  '&sch0'
                q0=1
             do while subs(part,1,3)=sch0
                if a1=2.or.a1=3
                   asci0=i+i+str(q0,4)+i+subs(part,4,4)+i+subs(name,1,26)
                else
                   asci0=i+i+str(q0,4)+i+subs(part,4,4)+i+name
                endif
                   asci() ; ? asci1
                 if .not. eof() ; skip ; else ; exit ; endif
                 q0 = q0+1
             enddo
          else
                   q0=1
              for v0=1 to mlcount(memoread("&disc_1\job\suptocon.txt"),45)
               m1=subs(memoline(memoread("&disc_1\job\suptocon.txt"),45,v0),1,3)
               m2=subs(memoline(memoread("&disc_1\job\suptocon.txt"),45,v0),5,40)
               asci0='' ; asci1=''
               if a1=4  .and. m1='4' ; asci0=i+i+str(q0,4)+i+m1+i+m2 ; q0 = q0+1 ; asci() ; ? asci1 ; endif
               if a1=5  .and. m1='5' ; asci0=i+i+str(q0,4)+i+m1+i+m2 ; q0 = q0+1 ; asci() ; ? asci1 ; endif
               if a1=9  .and. m1='9' ; asci0=i+i+str(q0,4)+i+m1+i+m2 ; q0 = q0+1 ; asci() ; ? asci1 ; endif
               if a1=10 .and. m1='1' ; asci0=i+i+str(q0,4)+i+m1+i+m2 ; q0 = q0+1 ; asci() ; ? asci1 ; endif
              next
          endif
                store b3 to p ; b3=1
                for b3=1 to p
                    save_0='s'+nulb3()
                    if file('&save_0'+'.prn')
     copy file '&save_0'+'.prn'  to '&disc_0\supto'+ltrim(str(b3))+'.csv'
                   endif
                 next
    ! cmd /c start excel.exe  &disc_0\supto1.csv
    set cursor on
                loop  // !!!!! vazhen izhof
         endif  // v4=9

         if v4=11
          if .not. file ("&disc_1\job\suptocon.txt")
           set cent on
          asci0 = 'Да▓а на п║░вона╖ално кон┤иг│░и░ане в ▒и▒▓ема▓а'; asci() ; l1=asci1
             l2 =  '000 '+dtoc(date())+space(30)+'|'
          asci0 = 'Видове опе░а╢ии'        ; asci() ; l3=space(18)+asci1+space(11)+'|'
          asci0 = 'П░одажби'               ; asci() ; l4='400 '+asci1+space(32)+'|'
          asci0 = 'Видове  пла╣ани┐'       ; asci() ; l5=space(18)+asci1+space(10)+'|'
          asci0 = 'В б░ой'                 ; asci() ; l6='500 '+asci1+space(34)+'|'
          asci0 = 'По банка'               ; asci() ; l7='501 '+asci1+space(32)+'|'
         memowrit('&disc_1\job\suptocon.txt', l1+chr(13)+chr(10)+l2+;
         chr(13)+chr(10)+l3+chr(13)+chr(10)+l4+chr(13)+chr(10)+l5+;
         chr(13)+chr(10)+l6+chr(13)+chr(10)+l7)

         asci0 = 'Роли на опе░а▓о░и▓е'    ; asci() ; l1=space(18)+asci1+space(7)+'|'
         asci0 = 'Об▒л│жване на клиен▓и'  ; asci() ; l2='900 '+asci1+space(19)+'|'
         asci0 = 'П░ава, п░и▒во┐вани на ░оли▓е'    ; asci() ; l3=space(13)+asci1+space(3)+'|'
         asci0 = 'Т░│дов догово░'         ; asci() ; l4='100 '+asci1+space(26)+'|'
          memowrit('&disc_1\job\suptocon.txt',memoread('&disc_1\job\suptocon.txt');
          +chr(13)+chr(10)+l1+chr(13)+chr(10)+l2+chr(13)+chr(10)+l3+chr(13)+chr(10)+l4)
           set cent on
          endif
      *   ! cmd /c start %SystemRoot%\notepad.exe &disc_1\job\suptocon.txt
      *    set cursor on ; loop
          ! notepad.exe &disc_1\job\suptocon.txt
         endif  // v4=11

          set date ansi
          do while .not. eof() // cical izrabotka
              store '' to dok0,klie0,dok02,nom1,data1,dtno2,part1,;
                          name1,daten1,daten2,timen1,timen2
              store '' to dok0, dok1, klie0, dok02,dok03,pl0
              idfu0 = idfu+'-'+admi+'-'+pnp
              admi0 = 'адм'+str(val(admi),4)
              obek0 = 'обе'+str(val(obek),4)
              dsnd1 = sch00+subs(data,4,2)+data+nom
              dtno1 = subs(data,4,2)+data+nom
              dds0=dds

            sele 6  ; find  '&obek0'
            obek0 = subs(obek0,4,4)+' '+subs(name,1,21)
            sele 6  ; find  '&admi0'
            ime0=name

            sele 2 ; find  '&dtno1'

            if sch='501' ; pl0='В б░ой' ; endif
             if sch='411' ; pl0='По банка' ; endif

            sele 3 ; find  '&dsnd1'
                 stsd0 = ksto
            sele 1 ; find  '&dtno1'
             dok0=subs(vid,1,24);dok1=subs(vid,1,4);klie0 = dn+subs(vid,26,20)

               if pl0='По банка'
                  dok02=subs(dok,24,4)  // administartor reg plashtaneto
                  dok03=subs(dok,29,8)  //           data na plashtaneto
                  dok01=subs(dok,12,11) //           suma na plashtaneto
               endif

            dtno2=subs(dok,25,2)+subs(dok,22,5)+subs(dok,17,4)

            sele 14 ; filt0='(date1-1<dateb .and. daten<date2+1)'

                   if v4=1.or.v4=2.or.v4=3
                      filt0=filt0+' .and. '+"dok1='┤-░а'"
                   endif
                   if v4=4
                      filt0=filt0+' .and. '+"dok1='к-ие'"
                   endif
                   if v4=5
                      filt0=filt0+' .and. '+"dok1='ан│л'"
                   endif
                   if v4=10
                      filt0=filt0+' .and. '+"nom='адм'"
                   endif

                   if  0 < val(obek1)
                      filt0=filt0+' .and. '+"obek='&obek1'"
                   endif
                   if 0 < val(myas1)
                      filt0=filt0+' .and. '+"myas='&myas1'"
                   endif
                   if 0 < val(admi1)
                      filt0=filt0+' .and. '+"admi='&admi1'"
                   endif
                   if .not. empty(idfu1)
                      filt0=filt0+' .and. '+"idfu='&idfu1'"
                   endif

                   if a0=2
                      filt0='0=0'
                   endif

        *    @ 15,2  say 'AAA   '+nom+'_'+data //kkk ne iztrivay
        *    @ 16,5  say subs(filt0, 1,70)     //    ne iztrivay
        *    @ 17,5  say subs(filt0,71,70)     //    ne iztrivay
        *    @ 19,5  say 'dateb= '+dtoc(dateb)+' daten= '+dtoc(daten)
        *    @ 20,5 say 'dok1='+subs(dok0,1,24)+' obek='+obek1+' myas='+myas1
        *    @ 20,42 say 'admi='+admi1+' idfu='+idfu1
        *    inkey(0)
        *    @ 15, 1 clea to 20,78

    if  &filt0

          *  @ 15, 2 say 'bbbb  '+str(q0,4)   //   ; inkey(0.5) //kkk ne iztrivay
         if v4=1
            q0 = q0+1
            sts0=str(round(stsd0/(1+(dds0/100)),2),10,j4)       //  stoinost. bez dds
            std0=str(stsd0-round(stsd0/(1+(dds0/100)),2),9,j4)  //   dds
            stsd0=str(stsd0,10,j4)
      asci0=str(q0,4)+i+idfu0+i+nom+'_'+data+i+obek0+i+dtoc(dateb)+i+timeb+i+;
      myas+i+admi+i+sts0+i+'0.00'+i+std0+i+ stsd0+i+dok0+i+dtoc(daten)+i+;
      timen+i+klie0
         asci() ; ? asci1

         endif

         if v4=2
                if pl0='По банка' &&  .and.(empty(dok02).or.(type(dok01)='N'))
                *  @ 23+ml0,24 say 'Пла╣ане▓о на СО '+nom+'-'+data+' не е оп░еделено'
                 if empty(dok02) .or. (type(dok01)='N'=.F.)
                    @ 20,14,24,66 box ram1
                    @ 21,15 clea to 22,65
                    @ 21+ml0,35 say 'ВHИМАHИЕ !'  color 'R+/B'
                    @ 22+ml0,15 say '     Пла╣ане▓о на СО '+nom+'-'+data+' не е оп░еделено'
                    @ 23+ml0,15 say '             Мол┐ изп║лн▓е мен╛ 5/1/F8 !          '
                       inkey(0)
                    @ 20,14 clea to 23,66
                    @ 22+ml0,14,24+ml0,66 box ram1
                 endif
                   @ 23+ml0,15 say '       П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е ...       '
                       inkey(1)

       q0 = q0+1 ;  stsd0=str(stsd0,10,j4)
       asci0=str(q0,4)+i+idfu0+i+nom+'_'+data+i+dtoc(dateb)+i+dtoc(daten)+i+;
       stsd0+i+dok03+i+dok02+i+dok01+i+pl0+i+idfu
         asci() ; ? asci1
                endif

        endif  //  v4=2

         if v4=3
               nom1=nom ; data1=data ; store '' to part1,name1,otst0
               store 0 to stsd0,sts0,std0,kol1,zena1

               sele 5  ; find  '&dtno1'

             do while (data=data1 .and. nom=nom1)    // v4=3
               part1=subs(part,4,4) ; name1=obap->name
               kol1=str(kol,j2,j3)  ; zena1=str(zena,j0,j4)
               otst0=str(otst,5,2)
               stsd0=kast
               sts0=str(round(stsd0/(1+(dds0/100)),2),10,j4)     //  stoinost. bez dds
               std0=str(stsd0-round(stsd0/(1+(dds0/100)),2),9,j4)  //   dds
               stsd0=str(stsd0,10,j4)

  asci0=str(q0,4)+i+idfu0+i+nom1+'_'+data1+i+part1+i+name1+i+kol1+i+zena1+i+;
   otst0+i+str(dds0,2)+i+std0+i+stsd0
    asci() ; ? asci1
                if .not. eof() ; skip ; else ; exit ; endif
                  q0 = q0+1
             enddo  // ccc   v4=3
             sele 14
         endif   // v4=3

         if v4=4
                nom1=nom;data1=data;daten1=dtoc(daten);timen1=timen;admi2=admi
                re0=recno()
                daten2='' ; timen2='' ; re0=recno()
                sele 14  ; set order to 2 ; find  '&dtno2'

                   if found()
                      daten2=dtoc(daten) ; timen2=timen
                   else
               @ 20,14,24,66 box ram1 ; @ 21,15 clea to 22,65
               @ 21+ml0,35 say 'ВHИМАHИЕ !'  color 'R+/B'
               @ 22+ml0,15 say 'За к░еди▓но изве▒▓ие СО '+nom1+'-'+data1+' не е            '
               @ 22+ml0,15 say '      За к░еди▓но изве▒▓ие СО '+nom1+'-'+data1+' не е      '
               @ 23+ml0,15 say '      ░еги▒▓░и░ана п░одажба ▒║▒ СО '+subs(dtno2,8,4)+'-'+subs(dtno2,3,5)
               inkey(0)
               @ 20,14 clea to 23,66  ; @ 22+ml0,14,24+ml0,66 box ram1
               @ 23+ml0,15 say '       П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е ...       '
                       inkey(1)
                   endif
                sele 14 ;set order to ; go re0
               store '' to part1,name1 ; store 0 to stsd0,sts0,std0,kol1,zena1,otst0
               sele 5 ; find  '&dtno1'
             do while (data=data1 .and. nom=nom1)    // v4=4
               part1=subs(part,4,4)
               name1=obap->name
               kol1=str(abs(kol),j2,j3)
               zena1=str(zena,j0,j4)
               otst0=str(otst,5,2)
               stsd0=abs(kast)
               sts0=str(round(stsd0/(1+(dds0/100)),2),10,j4)     //  stoinost. bez dds
               std0=str(stsd0-round(stsd0/(1+(dds0/100)),2),9,j4)  //   dds
               stsd0=str(stsd0,10,j4)

   asci0=str(q0,4)+i+idfu0+i+nom1+'_'+data1+i+part1+i+name1+i+kol1+i+zena1+i+;
   '0.00'+i+str(dds0,2)+i+std0+i+stsd0+i+daten2+i+timen2+i+daten1+i+timen1+i+;
   subs(idfu0,1,8)+i+admi2
   asci() ; ? asci1
                 if .not. eof() ; skip ; else ; exit ; endif
                 q0 = q0+1

             enddo  // v4=4
             sele 14
         endif   // v4=4


         if v4=8
             @ 23,21  say 'П░ог░ама▓а ░або▓и по анал. п-да :      '
            sele 6
            set order to 1
            find '&sch00'
            do while substr(part,1,3)= sch00  // v4=8
               store 0 to kol1,asal1,kold1,dast1,kolk1,kast1,kkol1,ksal1
                part1=substr(part,4,4) ; @ 23+ml0,57 say part1
                dp0=part ;  name1=name ;  mk1=mk ; kol1=kol ; asal1=asal
                kkol1=kkol ; ksal1=ksal
                sele 4  ; find '&dp0'
                kold1=kol ; dast1=dast
                sele 5  ; find '&dp0'
                kolk1=kol ; kast1=kast
  if .not. (kol1=0.and.asal1=0.and.kold1=0.and.dast1=0.and.kolk1=0.and.kast1=0.and.;
         kkol1=0.and.ksal1=0)

   q0 = q0+1
   asci0=str(q0,4)+i+part1+i+name1+i+mk1+i+str(kol1,10,j3)+i+str(asal1,12,j1)+;
   i+str(kold1,10,j3)+i+str(dast1,12,j1)+i+str(kolk1,10,j3)+i+str(kast1,12,j1)+;
   i+str(kkol1,10,j3)+i+str(ksal1,12,j1)
   asci() ; ? asci1
  endif
               sele 6
                 if .not. eof() ; skip ; else ; exit ; endif
            enddo   // v4=8
            exit  // !!!!! vazhen izhof
         endif   // v4=8

         if v4=10
            q0 = q0+1
      asci0=str(q0,4)+i+admi+i+ime0+i+dtoc(dateb)+i+timeb+i+;
      dtoc(daten)+i+timen+i+obek0+i+myas
         asci() ; ? asci1

         endif

    endif  // &filt0
                  spri()

           if .not. eof() ; skip ; else ; exit ; endif
          enddo  // cical izrabotka
        set date brit
          @ 23+ml0,15 say space(51)   // tova tryava da e tuka

                store b3 to p
                b3=1
                for b3=1 to p
                   save_0='s'+nulb3()
                    if file('&save_0'+'.prn')
     copy file '&save_0'+'.prn'  to '&disc_0\supto'+ltrim(str(b3))+'.csv'
                   endif
                 next
   * ? norm0
   * do  pech
    ! cmd /c start excel.exe  &disc_0\supto1.csv
      set cursor on
      enddo  //  menu tablici
                   return    //   kray suptot

   **************  Sinhr data comp k.aparat *************************
                         proc dtch
          open_unpr(loc0:=41)
         locate for nom='адм'.and.dateb=date()
           if found() ; return ; endif
            @ 10,12,12,67 box ram1 ; @ 11,13 clea to 11,66
      for v1=1 to 1 ; @ 11,13 say 'П░ог░ама▓а ▒ин╡░онизи░а да▓а и ╖а▒ ▒ ┤и▒кални┐ п░ин▓е░'
      inkey(1) ; @ 11,13  say space (54) ; inkey(1) ; next

       set cent off ; set date italian ; as0=1
       l1='X,1,______,_,__;DATETIME;W;'+dtoc(date())+';'+time()+';'
       memowrit('s0099.prn',l1)
       copy file s0099.prn to &disc_0\defexec.txt
      answ0='answer_DEFEXEC_'+subs(dtoc(date()),7,2)+subs(dtoc(date()),4,2)+ ;
      subs(dtoc(date()),1,2)+'_'+subs(time(),1,2)+subs(time(),4,2)+ ;
      subs(time(),7,2)+'.txt'

    for v1=1 to 3  // NIKOGA PO-MALKO OT 3 ZASHT. NYAMA DA PROCHETE ANSW!!!
     ! cmd /c 'if  exist &disc_0\defans\&answ0 copy &us_0\aaa.txt &us_0\bbb.txt' > aaa.txt
    if file ("&us_0\bbb.txt")
     ! cmd /c 'copy &disc_0\defans\&answ0 &us_0\S0098.PRN' > aaa.txt
    endif
       *   erase aaa.bat  ; erase aaa.txt ; erase bbb.txt
      @ 11,13 say 'П░ог░ама▓а ▒ин╡░онизи░а да▓а и ╖а▒ ▒ ┤и▒кални┐ п░ин▓е░'
   if file ("&us_0\s0098.PRN")
      ssss= memoread("s0098.PRN")
      @ 11,13 say space(7)+'Ф.п░ин▓е░ Да▓а '+space(11)+'Ча▒ '+space(17)
      @ 11,35 say subs(memoline(ssss,45,1),28,8) color 'G+/N'
      @ 11,50 say subs(memoline(ssss,45,1),37,8) color 'G+/N'
      inkey(9) ; exit ; endif
      inkey(1) ; @ 11,13 say space (54) ; inkey(1)
       l3=str(val(subs(answ0,27,2))+1,2)
       if subs(l3,1,1)=' ' ; l3='0'+subs(l3,2,1) ; endif
       answ0=subs(answ0,1,26)+l3+'.txt'
    next
       erase aaa.bat ; erase aaa.txt ; erase bbb.txt ; erase S0098.PRN
       set cent off ; set date brit  ; @ 10,12 clea to 12,67 ; eras &disc_0\defexec.txt
                         return  // dtch


      ************ По▓░еби▓ел▒ка ┤│нк╢и┐ **********
                function pfunk8
                parameters mode0,fld0
                private fld0
                cur0=fiel[fld0]
            do case
               case mode0 < 4
                       if dele()
                         @ 23+ml0,15 say '        Запи▒║▓ е ма░ки░ана за из▓░иване           '
                         i0=inkey(1)
                       endif
                     *   @  4,24 say 'Кон▓и░овка '+dobo->sch+' / '+kobo->sch+str(kobo->ksto,j0,j1)
                        * if ll1='51'   // moge da e problem
                        *    @ 23+ml0,15 say '  Ма░ки░ане - "м" в║з▒▓анов┐ване - "в" кон▓░аген▓а '
                        * endif
                       *  do case
                       *     case l2='2'
                       *       re0=recno()
                       *       @ 17,15 say sald
                       *       @ 17,35 say dt
                               @  3,71 say '       '
                        if .not.empty(iban)
                           store iban to iban0
                           sele 6
                             locate for trim(iban)=trim(iban0)
                               if .not. found()
                                   @  3,71 say 'ДОБАВИ '  color 'R+/B'
                               else
                                   @  3,71 say part
                               endif
                               sele 13
                    *          open_bank(loc0:=0)
                     *      if l3='д'.or.l3='d'
                     *          set filter to subs(datb,4,3)+subs(datb,9,2)=data3
                     *      endif
                     *      go top
                     *      go re0
                     *        @ 17,15 say sald
                     *   else  
                     *         @ 17,15 say sald
                     *         @  3,70 say '       '
                        endif
                         @ 23+ml0,15 say '            F10 - добав┐ банкова ▒ме▓ка            '
                      *   endcase
                        return 1
             case lastkey()=27
                          @ 23+ml0,15 say '            F10 - добав┐ банкова ▒ме▓ка            '
                         return 0
             case lastkey()=13
                         set cursor on
                         rec_lock()
                         @ row(),col() get &cur0
                         @ 23+ml0,15 say '              В║веде▓е желани▓е п░омени            '
                         chet()
                         rec_unlock()
                         set cursor off
                           @ 23+ml0,15 say '            F10 - добав┐ банкова ▒ме▓ка            '
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
                           set cursor off ; set filter to
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