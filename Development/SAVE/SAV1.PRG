    *SAV1.PRG chakai fprint korsmet operi promnam sapa stokbel stokraz  umnoz
    ** EXTERNAL  papka pkorder setcons spdos sppro
      tt0='10' ; sch0='   ' ; v2=0
      l8='d'  && startira kontrola ot administratora
      do pro1
             if  sc9='д' ; v2=2 ; else
      @  2,14,21,66 box ram1
      @  3,15 clea to 20,65
      @  3,26 say 'ВЪВЕЖДАHЕ HА HАЧАЛHО САЛДО'
      @  5,20 prompt '1. В║веждане на ▒╖е▓оводни▓е ▒ме▓ки'
      @  7,20 prompt '2. В║веждане на на╖ални ▒алда'
      @  9,20 prompt '3. В║веждане наименование на нива▓а'
      @ 11,20 prompt '4. Оп░едел┐не г░│пи▓е на док│мен▓а╢и┐▓а'
      @ 13,20 prompt '5. Ак▓│ализа╢и┐ на анал. па░▓иди'
      @ 15,20 prompt '6. О▓к░иване на па░▓иди о▓ ▒ме▓ка в ▒ме▓ка'
      @ 17,20 prompt '7. С▓░ои▓елна ┤и░ма за дан║╖на п░ове░ка'
      @ 19,20 prompt '8. Годи╕ни ▒╖е▓оводни о▓╖е▓и'
        menu to v2
             endif
      set cursor on
    do case
       case lastkey()=27
             restore screen  from ekr0
             return
       case v2=1
     do while .t.
     ramka()
         open_obve(loc0:=18)
   @  2,28 say 'ВЪВЕЖДАHЕ HА СМЕТKОПЛАHА'
   @  3,27 say '--------------------------'
   @  5,23 say 'В║веде▓е ╕и┤║░а на ▒ме▓ка▓а ' get sch0
   chet()
              if lastkey()=27 .or. substr(sch0,1,1)=' '
                    b0=0
                 @ 23+ml0,19 say 'Желае▓е ли изли▒▓ване на ▒ме▓коплана'
                 @ 23+ml0,56 prompt 'ДА'
                 @ 23+ml0,59 prompt 'HЕ'
                 menu to l0
                  if l0=2
                    return
                  else
                    izrab()
                       if lastkey()=27
                          return
                       endif
                  endif
                    go top
                       if ekpr0=2
                           b1=55
                           ll0='2'
                           set marg to 10
                       endif
                   ?? '                       Индивид│ален ▒ме▓коплан на ┤и░ма'
                   ?
                   ?
                   ?
                   ? 'Hоме░        Hаименование  на ▒е▓ка▓а            Тип  на ▒е▓ка▓а'
                   ?
                do while .not. eof()
                  do case
                     case t='а'
                          tip0='ак▓ивна'
                     case t='п'
                          tip0='па▒ивна'
                     case t=' '
                          tip0='ак▓-па▒'
                  endcase
                  do case
                     case a='д'
                          a1='▒ анали▓и╖ни па░▓иди'
                     case a='н'
                          a1='без анали▓и╖ни п-иди'
                  endcase
                     if type(sch)='N'
                   ? sch+'  '+name+'  '+tip0+'  '+a1
                   spri()
                     endif
                           if .not. eof() ; skip ; else ; exit ; endif
                enddo
                  ?
                  ?
                  ? '                                    С║▒▓авил : ............'
                  ?
                  pech()
                  exit
              endif

                 go top
                 find '&sch0'
            if found()
               name0=name
               t0=t
               a0=a
         do case
            case t='а'
                 tip0='ак▓ивна'
            case t='п'
                 tip0='па▒ивна'
            case t=' '
                 tip0='ак▓-па▒'
         endcase
         do case
            case a='д'
                 a1='▒ анали▓и╖ни па░▓иди'
            case a='н'
                 a1='без анали▓и╖ни п-иди'
         endcase
                 @ 23+ml0,16 say 'Вида на ▒ме▓ка▓а е '+tip0+' '+a1
         @  8,4 say 'В║веде▓е наименование▓о на ▒ин▓. ▒-ка'
         @  8,42 get name0
         chet()
         @ 11,16 say 'Вид на ▒ме▓ка▓а /ак▓ивна-"а", па▒ивна-"п":' get t0  valid t0='а'.or.t0='п'
         chet()
              if lastkey()=27
                  return
              endif
            @ 23+ml0,15 say space(51)
            a0=a
         @ 15, 8 say 'С анали▓и╖ни па░▓иди - "д", без анали▓и╖ни па░▓иди - "н" ' get a0  valid a0='д'.or.a0='н'
         chet()
              if lastkey()=27
                  return
              endif
            else
              nsinf() && pro0
              @ 23+ml0,15 say space(51)
            endif
              find '&sch0'
              if found()
                 rec_lock()
                 repl sch with sch0,t with t0,a with a0,name with name0
                 rec_unlock()
              endif
     enddo
       case v2=2


         ramka()
         do while .t.
         store 0 to sald0,sald1,sald2
         @ 10,12 say '                                                           '
         @ 2,26 say 'ВЪВЕЖДАHЕ HА HАЧАЛHИ САЛДА'
         @ 3,25 say '----------------------------'
         set key 245 to korsmet
         @  7,24 say 'В║веде▓е ╕и┤║░а на ▒ме▓ка▓а  ' get sch0
         chet()
             if lastkey()=27 .or. substr(sch0,1,1)=' '
                 exit
             endif
         @ 10,12 say space(60)
         open_obve(loc0:=19)
         find "&sch0"
                 if found()
                        store t to t0,t2
                       a0=a
           *              @ 10,18 say space(40)
                       do case
                          case t0='п'
                          sald0=nkso
                          sald2=nkso
                          @ 10,18 say 'Салдо▓о е к░еди▓но по ▒ме▓ка'
                          @ 10,55 say sald0  pict "99999999999.99"
                          t0='п'
                       case  t0='а'
                          sald0=ndso
                          sald1=ndso
                          @ 10,18 say 'Салдо▓о e деби▓но по ▒ме▓ка'
                          @ 10,55 say sald0  pict "99999999999.99"
                          t0='а'
                       case  t0=' '
                         do case
                            case 0 < ndso
                             sald0=ndso
                             sald1=ndso
                             @ 10,18 say 'Салдо▓о e деби▓но по ▒ме▓ка'
                             @ 10,55 say sald0  pict "99999999999.99"
                             t0='д'
                            case 0 < nkso
                             sald0=nkso
                             sald2=nkso
                             @ 10,18 say 'Салдо▓о е к░еди▓но по ▒ме▓ка'
                             @ 10,55 say sald0  pict "99999999999.99"
                             t0='к'
                         endcase
         @ 21,29 say 'Сме▓ка▓а е ак▓ивно-па▒ивна'
         @ 23+ml0,19 say 'По▒о╖е▓е e ▒алдо▓о деби▓а-"д", к░еди▓а-"к"' get t0  valid  t0='д'.or.t0='к'
                                      chet()
         @ 17,3 clea to 21,78
         @ 23+ml0,15 say space(51)
                  if t0='д'
                      t0='а'
                  else
                      t0='п'
                  endif
                       endcase
                  if a0='д'          &&  викане на анали▓и╖ни▓е ▒алда
                     do sapa
                     @ 10,55 say sald0 pict "99999999999.99"
                  else
                     @ 10,17 say '    В║веде▓е на╖ално▓о ▒алдо '
                     @ 10,55 get sald0 pict "99999999999.99"
                     read  &&  chet()
                  endif
                 else
                         nsinf()
                            loop
                 endif
                   sele 7
                   find "&sch0"
                   rec_lock()
                   if t0='а'
                      repl sch  with sch0, ndso with sald0, nkso with 0
                   endif
                   if t0='п'
                      repl sch  with sch0, ndso with 0, nkso with sald0
                   endif
                   rec_unlock()
         enddo

       case v2=3
           do while .t.
               ramka()
               open_obap(loc0:=43)
               @  2,26 say 'ВЪВЕЖДАHЕ HА ПЪРВО И ВТОРО HИВО'
               @  3,25 say '---------------------------------'
                    l0='3'
               @  8,18 say 'В║веде▓е ниво I-во - 1,II-░о - 2,III-░о - 3 :' get l0  valid  l0='1'.or.l0='2'.or.l0='3'
               chet()
                       if lastkey()=27
                           exit
                       endif
               do case
                  case l0='1'
               part0=' '
               @ 10,27 say 'В║веде▓е ╕и┤║░а на ниво▓о' get part0
               chet()
               part0=part0+'---'
               dp0='---'+part0
                  case l0='2'
               part0='  '
               @ 10,27 say 'В║веде▓е ╕и┤║░а на ниво▓о' get part0
               chet()
               part0=part0+'--'
               dp0='---'+part0
                  case l0='3'
               part0='   '
               @ 10,27 say 'В║веде▓е ╕и┤║░а на ниво▓о' get part0
               chet()
               part0=part0+'-'
               dp0='---'+part0
                  endcase
             if lastkey()=27
                 exit
             endif
           sele 6
            go top
             find '&dp0'
                 if found()
                      mk0=mk
                      name0=name
                 else
                    l0='д'
                    @ 23+ml0,16 say 'Hиво▓о е ново, желае▓е ли да го в║веде▓е д/н ? ' get l0 valid l0='д'.or.l0='н'
                       chet()
                   if l0='д'
                      appe blank
                 @ 23+ml0,15 say space(51)
                   else
                 @ 23+ml0,16 say space(51)
                     loop
                   endif
                 endif
               @ 12, 7 say 'В║веде▓е наименование на ниво▓о' get name0
                chet()
             if lastkey()=27
                 exit
             endif
       sele 6
                 rec_lock()
      repl part with '---'+part0,name with name0, mk with mk0

                 rec_unlock()
           enddo
       case v2=4
                 set dele on
                 ramka()
                 @  2,22 say 'ОПРЕДЕЛЯHЕ ГРУПИТЕ HА ДОKУМЕHТАЦИЯТА'
                 @  3,21 say '--------------------------------------'
                 open_arhi(loc0:=1)   && без индек▒ни ┤айлове
                 dele all for papk='k'.and.nom='    '
                 set filter to data=data0.and.substr(papk,1,1)='k'
                   go top
                   declare fiel[1]
                   fiel[1]='dok'
                   declare imem[1]
                   imem[1]=''
                   dbedit( 4,17,19+ml0,65,fiel,"pfunk","",imem,' ')
                 set dele off
       case v2=5
                go1=go0
                pr1=1
                pr2=9999
                store us_0 to us_1
                sch0='   '
           do while .t.
                ramka()
                l5='н'
                sc6=1
                @ 23+ml0,27 say 'F7 - ▒пи▒║к о▓ ди░ек▓о░ии'
                @  2,27 say 'АKТУАЛИЗАЦИЯ HА АHАЛ. ПАРТИДИ'
                @  3,26 say '-------------------------------'
                    set key -6 to direk1
                @  6,25 say 'О▓ ди░ек▓о░и┐ ' get us_1 pict "N:\NNNN\" valid 64<asc(us_1).and.asc(us_1)<123
                chet() && read
                us_1=trim(us_1)
                   set key -6 to direk0
                @  8,25 say 'В  ди░ек▓о░и┐ ' get us_0 pict "N:\NNNN\" valid 64<asc(us_0).and.asc(us_0)<123
                  chet() && read
                us_0=trim(us_0)
                @ 10,31 say 'О▓ ▒ме▓ка  ' get sch0
                @ 12,30 say 'О▓ па░▓ида :' get pr1 pict'9999'
                @ 14,30 say 'До па░▓ида :' get pr2 pict'9999'
                @ 16,18 say 'С п░ом┐на на наименование на па░▓ида д/н' get l5 valid l5='н'.or.l5='д'.or.l5='d'
                chet()  && read
                @ 18,30 say 'С ╢ени : '
                @ 18,41 prompt 'HЕ'
                @ 18,44 prompt 'ДА'
                menu to sc6
                   if lastkey()=27
                     return
                   endif
              aktual()    && pro0
           enddo
                set key -6 to
       case v2=6
                   do while .t.
                   ramka()
                   b0=0
                   sch1='   '
                   pr1=1
                   pr2=9999
                   sc6=1
                 @  2,28 say 'ОТKРИВАHЕ HА HОВИ ПАРТИДИ'
                 @  3,27 say '---------------------------'
                 @  8,31 say 'О▓ ▒ме▓ка  ' get sch0
                 @ 10,31 say 'В  ▒ме▓ка  ' get sch1
                 @ 12,30 say 'О▓ па░▓ида :' get pr1 pict'9999'
                 @ 14,30 say 'До па░▓ида :' get pr2 pict'9999'
                 chet()
                 @ 16,30 say 'С ╢ени : '
                 @ 16,41 prompt 'HЕ'
                 @ 16,44 prompt 'ДА'
                 menu to sc6
                           if lastkey()=27 .or. sch1='   '
                               restore screen
                               return
                           endif
              raboti()
         open_obap(loc0:=44)
         find '&sch0'
                l0=0
                do while substr(part,1,3)=sch0 .and.(.not.eof())
                 if val(substr(part,4,4))<pr1.or.val(substr(part,4,4))>pr2
                          if .not. eof() ; skip ; else ; exit ; endif
                 endif
                    part2=part
                      mk0=mk
                      name0=name
                      dnev0=dnev
                      zena0=zena
                           part3=sch1+substr(part,4,4)
                    find  '&part3'
                      if .not. found ()
                      appe blank
                 rec_lock()
         repl  part with part3,name with name0,dnev with dnev0,mk with mk0
                 rec_unlock()
                      endif
                          if sc6=2
                             rec_lock()
                             repl zena with zena0
                             rec_unlock()
                          endif
                    find  '&part2'
                       if .not. eof()
                         if l0=0
                              skip
                              l0=1
                         else
                           skip
                         endif
                        else
                           exit
                       endif
                enddo
                   enddo
       case v2=7
       ramka()
            open_kobp(loc0:=45)
            open_kpap(loc0:=45)
            @  2,20 say ' С▓░ои▓елна ┤и░ма за дан║╖на п░ове░ка'
            @  7,15 say 'W pro5 i markiranite s "pril" se wkluchwat'
            @  8,15 say 'menu 5/7/3 412 i nomera oper. kojato preh ot 412 w 701'
            @  9,15 say 'W kpap trqbwa da se dobawi pole name=35'
            @ 11,15 say 'W sav3 markiranite s "pril" se wkluchwat towa'
            @ 12,15 say 'raboti samo w partida s opisanie i to po dnewnik'
            @ 13,15 say 'menu3 s/ka 412 partida 1111 i se zadawa niwo 1'
            @ 14,15 say 'i prog. listi wsiwsichki parti zap`washti s 1'
            @ 15,15 say 'W dobp.dbf trqbwa da se dobawi pole part=7 vid=43'
      do izrab
               if lastkey()=27
                   return
               endif
      ? space(61)+'/П░иложение ╝ 1/'
      ?
      ?
      ? '     Табли╢а за из╖и▒пение ▒ебе▒▓ойно▒▓▓а и пло╣и▓е на многое▓ажна ▒г░ад'
      ? '    обек▓ блок "А" ▒г░ада "Ми░аж" Hе▒еб║░ об╣о за▒▓░оена пло╣ 8918.280 м2'
      ?
      ? repl('-', 77)
      ? 'Па░▓иден  Обек▓     Клиен▓      За▒▓░.   Себе▒-     Фак▓│░а        П░од.▒▓-▒▓'
      ? '  No                             пло╣   ▓ойно▒▓    No    да▓а        без ДДС'
      ? repl('-', 77)
      ? '  1         2         3           4       5         6      7           8'
      ? repl('-', 77)

      do while .not. eof()
         part0=part
         ? part+' '+ subs(name,1,22)+' '+str(kol,6,2)+str(kol* 924.01,11,2)+space(17)+str(dast,12,2)
         ? space(65)+'------------'
         sele 8
         locate for part=part0
            do while part=part0
               ? space(50)+subs(vid,6,15)+'  '+str(ksto,10,2)
                    if .not. eof() ; skip ; else ; exit ; endif
            enddo
         ?
         sele 9
                    if .not. eof() ; skip ; else ; exit ; endif

      enddo
      ? space(25)+repl('-',52)
      ? 'С│ма'+space(26)+' 226.61    59471.53                  151302.72'
      ?
      ?
      ?
      ?
      ?
      ? space(45)+'С║▒▓авил:....................'
        pech()
       case v2=8
                save screen
                ! &disc_1\otch\otch.exe
    endcase
                   function pfunk
                   parameters mode0,fld0
                   private fld0
                   cur0=fiel[fld0]
                    do case
                      case mode0 < 4
          nom2=str(val(subs(dok,23,4))+1,4)
          set cursor off
          @ 21,14,24,66 box ram1
          @ 22,15 clea to 23,65
          @ 22,26 say 'Избо░ на г░│па ▒▓░елка - '+chr(25)+' '+chr(24)
          @ 23+ml0,17 say 'Insert-вм║ква нов ░ед     Delete-из▓░ива ░ед'
                           return 1
                      case lastkey()=27
                    go top
                    *   rec_lock()
                    *   repl nom with '   0'
                    *   rec_unlock()
                   index on subs(data,4,2)+data+nom to nari
                    rein
                    set dele off
                           return 0
                      case lastkey()=13
                            set cursor on
                            rec_lock()
                            @ row(),col() get &cur0  pict "XXXXXXXXXXXXXXXX 9999-9999"
                           @ 23+ml0,26 say '   В║веде▓е желани▓е г░│пи     '
                            read   && chet()
                             if 0 < val(substr(dok,18,4))-1
                                repl nom with str(val(substr(dok,18,4))-1,4)
                             else
                                repl nom with '   0'
                             endif
                                rec_unlock()
                            keyboard chr(4)
                            return 1
                      case lastkey()=22
                           appe blank
                                rec_lock()
                                repl nom with nom2, papk with 'k',data with data0,vek with vek0
                                rec_unlock()
                      case lastkey()=7
                           del()
                      otherwise
                            return 1
                    endcase
                   return 1

  **************  П░о╢ед│░а за в║веждане на анал. ▒алда    **************
                              proc  sapa

     set cons on
         open_obap(loc0:=45)
         ds0=sch0
         store space(11) to l1,l2
         parol0='    '
         barc1='н'
         barc0=space(25)
         find '&ds0'
         * if found()
         * else
         *   part0=0
         *   @ 23+ml0,15 say '      H┐ма анали▓и╖ни па░▓иди по ▓ази ▒ме▓ка       '
         *     i0=inkey(0)
         *   @ 23+ml0,15 say space(51)
         * endif
             @ 13, 1 say repl('═',78)
             do while .t.
         if barc1='д'.and.sc13='д'
               barc0='                         '
               *     set key 287 to barcod
               @ 15,3 clea to 21,78
               @ 15,21 say 'ВЪВЕДЕТЕ БАРКОД  ' get barc0
               chet()
                if barc1='н'
                   loop
                endif
               if lastkey()=27
                  return
               endif
               set key 287 to
               open_obap(loc0:=46)
               set order to 0
               locate for barc=trim(barc0)
               if found()
                  part0=val(subs(part,4,4))
                  kol0=1
               else
                      l0='н'
                      open_obap(loc0:=47) && aobi
                      set filter to substr(part,1,3)=sch0
                      go bott
                      part0=val(substr(part,4,4))+1
                      zena0=zena
               endif
         else
                    if sc9='д' .and. sch0='адм'
                @ 23+ml0,15 say '     F3-изди░ва в║ведени▓е кодове на опе░а▓░и      '
                    else
                @ 23+ml0,15 say ' F3-изди░ва анал.па░▓ида F4-г░│п.п░ом┐на на наимен.'
                    endif
               set key -2 to spisk1
               set key -32 to spisk1
               *    set key 287 to barcod
                           if sc9='д' .and. sch0='адм'
                               if l8='d'  && startira kontrola ot administratora
                                 do admini
                               endif
                                  if l7='d'  &&  pri neprawilno vavedena parol se zapochva ot nachalo schet smetk адм
                                      return
                                  endif
                           endif
               part0=0
               @ 15,3 clea to 21,78
           *   @ 10,3 say space(75)  // ne go puskay tova tuka

                           if sc9='д' .and. sch0='адм'
                  do while part='адм'
                        part0=val(subs(part,4,4))+1
                       if (.not. eof())
                          skip
                        else
                          exit
                        endif
                  enddo

               l7='n'  &&  pri prawilno vavedena parol se warti vav vavegdane na nov operator
               l8='n'  && ne povtarya  kontrola ot administratora
               @ 15,21 say '     В║веде▓е кода на опе░а▓о░а: ' get part0 pict '9999'
                           else
               @ 15,21 say 'В║веде▓е ╕и┤║░а на анал. па░▓ида:' get part0 pict '9999'
                           endif
               chet()
               set key -2 to
               set key -32 to
               set key 287 to
                  if lastkey()=27
                       @ 14,3 clea to 21,78
                       exit
                  endif
                if barc1='д'
                   loop
                endif
         endif
           open_obap(loc0:=48)
                       if part0<1
                          loop
                       endif
               part1=sch0+str(part0,4)
               dp0=part1
            go top
             find '&dp0'
                 if found()
                      t1=t
                      mk0=mk
                      kol0=kol
                      zena0=zena
                      asal0=asal
                      name0=name
                      dnev0=dnev
                   if sc9='д' .and. sch0='адм'
                     @ 14, 2 clea to 21,78
           @ 23+ml0,15 say 'Има опе░а▓о░ ▒ ▓ози номе░, мол┐ в║веде▓е нов номе░!'
                     inkey(3)
            *        l7='n'  &&  pri prawilno vavedena parol se warti vav vavegdane na nov operator
            *        l8='n'  && ne povtarya  kontrola ot administratora
               loop
                   endif
                    if sc13='д'
                      barc0=barc
                    endif
                     if sc16='д'
                        l1=subs(iban,1,11)
                        l2=subs(iban,12,11)
                     endif
              if t2=' '
                        if t0='а'
                            if t1='д'
                               sald1=sald1-asal0
                               sald0=sald1
                                 if sald1<0
                                    sald2=abs(sald1)
                                    sald0=sald2
                                    sald1=0
                                 endif
                            else
                               sald1=sald1+asal0
                               sald0=sald1
                            endif
                        endif
                        if t0='п'
                            if t1='к'
                               sald2=sald2-asal0
                               sald0=sald2
                                 if sald2<0
                                    sald1=abs(sald2)
                                    sald0=sald1
                                    sald2=0
                                 endif
                            else
                               sald2=sald2+asal0
                               sald0=sald2
                            endif
                        endif
                                                             if sald1=0
                                                                 t0='п'
                                                             endif
                                                             if sald2=0
                                                                 t0='а'
                                                             endif
              else
                               sald0=sald0-asal0
              endif
                      @ 10,55 say sald0 pict "99999999999.99"
                    l0='н'
                 else
                 l0='д'
                  @ 23+ml0,15 say space(51)
             if sc9='д' .and. sch0='адм'
                  save screen
                  @ 23+ml0,15 say 'Опе░а▓о░а е нов, желае▓е ли да го в║веде▓е д/н ? ' get l0  valid  l0='д'.or.l0='н'
                  parol0='----'
                  dnev0='П░одава╖  '
             else
                  @ 23+ml0,15 say 'Па░▓ида▓а е нова, желае▓е ли да ┐ в║веде▓е д/н ? ' get l0  valid  l0='д'.or.l0='н'
             endif
                 chet()
                   if l0='д'
                      kol0=0
                      zena0=zena
                      asal0=0
                    @ 23+ml0,15 say space(51)
                      appe blank
                   else
                   l0='н'
                    @ 23+ml0,15 say space(51)
                     loop
                   endif
                 endif
                if sc13='д'
                 *   barc0='                         '
                    @ 17,3 clea to 21,78
                    @ 18,19 say 'ВЪВЕДЕТЕ БАРКОД  ' get barc0
                    chet()
                    @ 17,3 clea to 21,78
                endif
                    if sc9='д' .and. sch0='адм'
                @ 10+ml0,5 say space(70)
                  store space(30) to name0
                @ 20,19 say 'Hаименование на опе░а▓о░а        Дл║жно▒▓     '
                @ 21,16 get name0
                @ 21,51 get dnev0
                @ 23+ml0,16 say '    F3-изди░ва в║ведени▓е кодове на опе░а▓░и      '
                    else
                @ 23+ml0,16 say 'F3-изди░ва анал.па░▓ида F4-г░│п.п░ом┐на на наимен.'
               set key -3 to promnam
               set key -1 to umnoz
               @ 17,17 say 'М-KА    KОЛИЧЕСТВО      ЦЕHА        СТОЙHОСТ'
               @ 18,18 get mk0
               @ 18,24 get kol0 pict "99999999.999"
               @ 18,38 get zena0 pict "&picze_0"
               @ 18,51 get asal0 pict "99999999999.99"
               @ 20,21 say 'Hаименование на па░▓ида▓а        О-ние в дневник'
               @ 21,16 get name0
               @ 21,57 get dnev0
                    endif
                if sc16='д'
                   @ 20,54 say '    Годна до    '
                   @ 23+ml0,16 say '  Па░▓ида:                 П░оиз╡од:              '
                   @ 23,27 get l1
                   @ 23,53 get l2
                 endif
               chet()
           if t2=' '
             @ 23+ml0,16 say 'Сме▓. е ак▓.-па▒. по▒о╖е▓е ▒-▓о Д-▓ "д", K-▓ "к"' get t1  valid t1='д'.or.t1='к'.or.t1=' '
             chet()
           endif

                   if sc9='д' .and. sch0='адм'
                     if  empty(name0).or.empty(dnev0) .or. empty(parol0)


            @ 20+ml0, 5 clea to 21+ml0,78
            @ 21+ml0,14,24+ml0,66 box ram1
            @ 22+ml0,15 clea to 23+ml0,65

           @ 22+ml0,15 say ' Hедоп│▒▓имо е в║веждане▓о на нов опе░а▓о░ ако не  '
           @ 23+ml0,15 say '     ▒а поп║лнен й ▓░и▓е зад║лжи▓елни поле▓а!      '
                       inkey(7)
           restore screen
                      loop
                     endif
                   endif

               set key -3 to
               set key -1 to
             @ 23+ml0,15 say space(51)
             @ 15,3 clea to 16,78
             rec_lock()

                         if sc9='д' .and. sch0='адм'
         repl  part with part1,name with name0,dnev with dnev0,mk with mk0,;
              kol with kol0,zena with zena0, asal with asal0, partp with parol0+'    '
                         else
         repl  part with part1,name with name0,dnev with dnev0,mk with mk0,;
              kol with kol0,zena with zena0, asal with asal0
                         endif

                         if  sc13='д'
                            repl barc with barc0
                         endif
                           if t2=' '
                              repl  t with t1
                           endif
                if sc16='д'
                   repl iban with l1+l2
                endif
                 rec_unlock()
                  if mk='**'
                     if asal=0
                         del()
                     else
                         @ 23+ml0,22 say 'П░ог░ама▓а ма░ки░а ▒амо н│лево ▒алдо'
                         i0=inkey(0)
                     endif
                  else
                     reca()
                  endif
            if t2=' '
                        if t0='а'
                           if t1='д'
                             sald1=sald1+asal0
                           else
                             sald1=sald1-asal0
                                 if sald1<0
                                    sald2=abs(sald1)
                                    sald0=sald2
                                    sald1=0
                                 endif
                           endif
                        endif
                        if t0='п'
                           if t1='к'
                             sald2=sald2+asal0
                           else
                             sald2=sald2-asal0
                                 if sald2<0
                                    sald1=abs(sald2)
                                    sald0=sald1
                                    sald2=0
                                 endif
                           endif
                        endif
                   if sald1>sald2
                       sald0=sald1-sald2
                       t0='а'
                   else
                       sald0=sald2-sald1
                       t0='п'
                   endif
            else
                    sald0=sald0+asal0
            endif
                     if t0='а'
                         @ 10,18 say 'Салдо▓о e деби▓но по ▒ме▓ка '
                     else
                         @ 10,18 say 'Салдо▓о е к░еди▓но по ▒ме▓ка'
                     endif
                     @ 10,55 say sald0 pict "99999999999.99"

     if (substr(part1,1,1)='3'.or.substr(part1,1,1)='7').and.(sc3='д'.and.l0='д')
                         part4=substr(part,4,4)
                         preh()
     endif
             enddo
                              return  // sapa

         ************** П░о╢ед│░а за и╖и▒л┐ване на ▒▓-▒▓ *************
                      proc umnoz
                 do while .t.
                     if lastkey()=28
                     if tt0='20'
                        if l6='н'
                           @ 24,70 say '  С УМHОЖ.'
                           l6='д'
                        else
                           @ 24,70 say 'БЕЗ УМHОЖ.'
                           l6='н'
                           return
                        endif
                     endif
                     endif
                     store round(zena0*kol0,j1) to asal0, dast2
                 if asal0<-9999999999.99.or.asal0>99999999999.99.or.dast2<-9999999999.99.or.dast2>99999999999.99
                          zvan()
                          clear gets
                     if tt0='10'
                          @ 23+ml0,17 say '        Внимание п░еп║лва▓е ░еги▒▓║░а !'
                          @ 18,24 get kol0 pict "99999999.999"
                          @ 18,38 get zena0 pict "9999999.999"
                     else
                          @ 18,17 say '        Внимание п░еп║лва▓е ░еги▒▓║░а !'
                          @ 24,22 get kol0 pict "99999999.999"
                          @ 24,38 get zena0 pict "9999999.999"
                     endif
                            chet()
                         loop
                      return
                 else
                       exit
                 endif
                 enddo
                     return
          ******************   П░о╢ед│░а за ко░ек╢и┐ на ▒ме▓ка ***********
                           proc korsmet
               s501_=0
              save screen
             clea gets
             @ 14, 9,16,72 box ram1
             @ 15,10 clea to 15,71
             @ 15,10 say ' В║веде▓е ▒алдо-обо░о▓ по '+sch0+':' get sald pict "99999999999.99"
             @ 15,57  get obor pict "99999999999.99"
             chet()
             restore screen
                           return
     *********  Г░│пова п░ом┐ва на наименовавие на ▒▓окови▓е ▒ме▓ки  ********
                           proc promnam
                 re0=recno()
                 @ 23+ml0,16 say '     П░ог░ама▓а п░енаименова наименование▓о       '
        do case
           case  410 < val(subs(part,1,3)) .and. val(subs(part,1,3)) < 600
                 set filter to 410 < val(subs(part,1,3)) .and. val(subs(part,1,3)) < 600 .and. subs(part,4,4)=str(part0,4)
                 pp0="410 < val(subs(part,1,3)) .and. val(subs(part,1,3)) < 600 .and. subs(part,4,4)=str(part0,4)"
       *   case  705 < val(subs(part,1,3))
           case  702 = val(subs(part,1,3)) &&& ▒амо за sc9 и  sc11
                 set filter to
                 part1='304'+subs(str(part0,7),4,4)
                 find "&part1"
               if found()
                 rec_lock()
                 repl name with name0
                 rec_unlock()
               endif
               if found()
                 part1='702'+subs(str(part0,7),4,4)
                 find "&part1"
                 rec_lock()
                 repl name with name0
                 rec_unlock()
               endif
                 set filter to 705 < val(subs(part,1,3)).and.subs(part,4,4)=str(part0,4).and.subs(part,1,1)='7'
                 pp0="705 < val(subs(part,1,3)).and.subs(part,4,4)=str(part0,4).and.subs(part,1,1)='7'"
                 part1=sch0+subs(str(part0,7),4,4)
           endcase
                 go top
                 do while &pp0
                    rec_lock()
                    repl mk with mk0, name with name0, proa with '2'
                    rec_unlock()
                    sele 6
                    if .not. eof() ; skip ; else ; exit ; endif
                 enddo
                 set filter to
                    if sc9='д' .and. sch0='адм'
                @ 23+ml0,16 say '    F3-изди░ва в║ведени▓е кодове на опе░а▓░и      '
                    else
                @ 23+ml0,16 say 'F3-изди░ва анал.па░▓ида F4-г░│п.п░ом┐на на наимен.'
                    endif
                go re0
                           return

         ******************* П░о╢ед│░а за из░або▓ка на опа░а╢ии  **********
                            proc   operi
                    if sc9='д'
                       return
                    endif
         do ramka
                @  2,27 say 'ДОБАВЯHЕ HА ОРЕРАЦИИ '
                @  3,26 say '------------------------'
                i0=inkey(0)

   memowrit('expo.txt',strtran(freadstr( fopen("export.txt"),len(memoread("export.txt"))),"|",","))
       open_arhi(loc0:=48)
       open_expo(loc0:=1)
       dele all
       pack
       appe from expo.txt delimited with ,
       go top
      do while .not. eof()
       store fakt to fak0
         dok0=stok
               if fak0='-'
         vid0='о▓-▓ 0000000001'+' '+subs(data,1,2)+'/'+subs(data,3,2)+'/'+subs(data,5,2)+' к.о▓╖е▓'
               else
         vid0='┤-░а '+fakt+' '+subs(data,1,2)+'/'+subs(data,3,2)+'/'+subs(data,5,2)+' '+klie
               endif
         dn2=dn
               sele 1
               appe blank
               rec_lock()
   repl nom with str(nom0,4), papk with str(papk0,3),dok with dok0,vid with vid0,;
   dr with 'п',vd with '01', sd with 'о',data with data0, vek with subs(vek0,1,2)
               if fak0='-'
                  repl fakt with '0000000001', dn with '         '
               else
                  repl fakt with fak0,dn with dn2
               endif
               rec_unlock()
               sele 14
         do while fak0=fakt
               rec_lock()
*  repl nom with str(nom0,4), sch with sch0, nvo with str(nvo0,4), dsto with dsto0, data with data0
*              rec_unlock()
*  dsto1=dsto1+dsto
*              rec_lock()
*  repl nom with str(nom0,4), sch with sch0, nvo with str(nvo0,4), ksto with ksto0,;
*  data with data0
*              rec_unlock()
*  ksto1=ksto1+ksto
*        appe blank
*              rec_lock()
*  repl  nom with str(nom0,4), part with part1,mk with mk0, zena with zena0,;
*  kol with kol0, dast with dast1, data with data0
*              rec_unlock()
*        dsto0=dsto0+dast
* else
*        open_kpar(loc0:=26)
*        appe blank
*              rec_lock()
*  repl  nom with str(nom0,4), part with part1, mk with mk0, zena with zena0,;
*  kol with kol0, kast with dast1, data with data0
*
        if .not. eof() ; skip ; else ; exit ; endif
         enddo
         nom0=nom0+1
      enddo
                                   return


      **************   СПРАВKА за до▒▓авки▓е  **************
                        proc spdos
              ll5='д'
              set dele on
              store data0 to data3
           *  do razdds1  &&  sav7
              l1=2
  *           store 0 to s110,s120,s130,s140,s150,s160,b3
              i=' '
      if ll5='д'
              store data0  to data1,data2
              ramka()
              @  2,29 say 'СПРАВKА HА ПОKУПKИТЕ '
              @  3,28 say '----------------------'
              @  8,32 say 'О▓ ме▒е╢ :' get data1
              @ 10,32 say 'До ме▒е╢ :' get data2
              chet()
              izrab()
                 if lastkey()=27
                   return
                 endif
      endif
      if ll5='д'
                       if ekpr0=2
                           ll0='1'
                           b00=1
                           b1=44
                           @ 12,27 say 'Б░ой ░едове на ▒▓░ани╢а' get b1 pict "99"
                           chet()
                           set marg to 10
                           ?? sbit0
                           prn0=sbit0
                       endif
  if l1=2
 ? space(70)+'С П Р А В K А   З А   П О K У П K И Т Е'
 ?
 ? space(70)+fir
 ?
 ?  space(128)+'Дан║╖ен номе░ N '+dn1
 ?  '----------------------------------------------------------------------------------------------------------------------------------------------------------'
 ?  ' Nпо        Вид и номе░                               Дан.  ном.   Вид на                                                                ДДС        Hа╖ин      '
 ?  ' ░ед        на док│мен▓а            ИЗПЪЛHИТЕЛ        на изп║лн.   ▒▓ока▓а                   Kоли╖е▒▓во      Ед.╢ена     С▓ойно▒▓      /дан║╖ен       на       '
 ?  '                                                                 /│▒л│га▓а/                                                            к░еди▓/     пла╣ане     '
 ?  '----------------------------------------------------------------------------------------------------------------------------------------------------------'
  endif
      endif
          store 0 to p0,b0,q0
          b0=10
          open_obap(loc0:=23)  && nari
          open_arhi(loc0:=23)  && nari
          do while .not. eof()
     *   if (dr='д').and.((nom='1509'.and.data='01/05').or.(nom='1510'.and.data='01/05').or.;
     *   (nom='1508'.and.data='01/05').or.(nom='1513'.and.data='01/05'));
     *
     *       *    '0000000000000000000*0000'
     *
     *   else
     *                     if .not. eof() ; skip ; else ; exit ; endif
     *  endif
              nom0=nom
              data3=data
              vid0=vid
            if dn=space(10)
              dn00='9999999999'
            else
              dn00=dn
            endif
              dok1=substr(dok,1,10)
              vd0=vd
              sd2=sd
              vi2=vi
              dn0=subs(data,4,2)+data+nom
          *     open_dobo(loc0:=22)  && nsdi
                open_dpar(loc0:=22)  && nsdi
                find "&dn0"
                   store 0 to sts0,std0,s16
                   l0=' '
                   do while nom=nom0.and.data=data3
              store 0 to s110,s120,s130,s140,s150,s160,b3,sts0,std0,s16,kol0,zena0
                *     if .not. sch='453'
                      if .not. part='453'
                          part0=part
                   *      sts0=sts0+dsto
                          sts0=dast
                          kol0=kol
                          zena0=zena
                      else
                        * std0=dsto
                          std0=dast
                         l0='1'
                      endif
                      sele 6
                      find "&part0"
                      name0=subs(name,1,25)
                      sele 4
                           if .not. eof() ; skip ; else ; exit ; endif
                         stsd0=str(sts0+std0,j0-2,j1)
                         sts0=str(sts0,j0-2,j1)
                         std0=str(std0,j0-2,j1)
                         s16=str(s16,j0-2,j1)
                         store space(j0-2) to s11,s12,s13,s15
                         kol0=str(kol0,j0-2,j1)
                         zena0=str(zena0,j0-2,j1)
                        do case
                           case sd2='н'
                              s11=stsd0
                              s11=stsd0
                              s110=s110+val(s11)
                           case sd2='▒'.or.sd2='в'
                               s12=sts0
                               s13=std0
                               s120=s120+val(s12)
                               s130=s130+val(s13)
                           case sd2='╖'
                               s14=sts0
                               s15=std0
                               s140=s140+val(s14)
                               s150=s150+val(s15)
                        endcase
      if ll5='д'
              p0=p0+1
              q0=q0+1
     *    if ekpr0=1
           * if 0.01 < abs(val(str(round(val(s10)*.2,2)-val(s11),11,2)))
           *    fn0=str(q0,4)+str(abs(round(val(s10)*.2,2)-val(s11)),11,2)
           * else
                fn0=space(15)
           * endif
   if .not. val(sts0)=0
   ? str(q0,4)+i+vid0+i+dn00+i+name0+i+kol0+i+zena0+i+sts0+i+str(round(val(sts0)*.2,2),j0-2,j1)+'     в б░ой'
   endif
      *   else
*  ? str(q0,4)+i+vid0+i+dn00+i+dok1+i+stsd0+i+s11+i+s12+i+i+s13+i+s14+i+s15+i+s16+i+nom0+'-'+substr(data3,1,2)
          endif
   *  endif
                   enddo

               if ll5='д'
                  spri()
                  if ekpr0=2 .and.b0=0
                     ?? sbit0
                  endif
               endif
                  sele 1
                           if .not. eof() ; skip ; else ; exit ; endif

          enddo
      if ll5='д'
* ?'            ОБЩА СУМА ЗА ПЕРИОДА'+space(44)+str(s110,12,j1)+i+str(s120,12,j1);
* +i+i+str(s130,12,j1)+i+str(s140,12,j1)+i+str(s150,12,j1)+i+str(s160,12,j1)+'  '+'в б░ой'
    set cent on
               *       if ekpr0=2
                         ?
                         ?
                         ?
    set cent on
    ? '      Да▓а '+dtoc(date0)+' год.'+space(75)+dlaz+':................'
    set cent off
              *        endif
    do  pech
      endif
  set dele off
                        return

      **************   СПРАВKА за п░одажби▓е  **************
                        proc sppro
              set dele on
              store data0  to data3
         *    do razdds1  &&  sav7
              ll5='д'
              l1=2
  *           store 0 to s110,s120,s130,s140,s150,s160,b3
              i=' '
      if ll5='д'
              store data0  to data1,data2
              ramka()
              @  2,29 say 'СПРАВKА HА П░одажб▓е '
              @  3,28 say '-----------------------'
              @  8,32 say 'О▓ ме▒е╢ :' get data1
              @ 10,32 say 'До ме▒е╢ :' get data2
              chet()

              izrab()

                 if lastkey()=27
                   return
                 endif
      endif
      if ll5='д'
                       if ekpr0=2
                           ll0='1'
                           b00=1
                           b1=44
                           @ 12,27 say 'Б░ой ░едове на ▒▓░ани╢а' get b1 pict "99"
                           chet()
                           set marg to 10
                           ?? sbit0
                           prn0=sbit0
                       endif



  if l1=2
 ? space(70)+'С П Р А В K А   З А   П Р О Д А Ж Б И Т Е'
 ?
 ? space(70)+fir
 ?
 ?  space(128)+'Дан║╖ен номе░ N '+dn1
 ?  '----------------------------------------------------------------------------------------------------------------------------------------------------------'
 ?  ' Nпо        Вид и номе░                               Дан.  ном.   Вид на                                                                ДДС        Hа╖ин      '
 ?  ' ░ед        на док│мен▓а            ИЗПЪЛHИТЕЛ        на изп║лн.   ▒▓ока▓а                   Kоли╖е▒▓во      Ед.╢ена     С▓ойно▒▓      /дан║╖ен       на       '
 ?  '                                                                 /│▒л│га▓а/                                                            к░еди▓/     пла╣ане     '
 ?  '----------------------------------------------------------------------------------------------------------------------------------------------------------'
  endif
      endif
          store 0 to p0,b0,q0
          b0=10
          open_obap(loc0:=23)  && nari
          open_arhi(loc0:=23)  && nari
          do while .not. eof()
 if (dr='п').and.((nom='7011'.and.data='01/05').or.(nom='7020'.and.data='01/05').or.;
 (nom='7021'.and.data='01/05').or.(nom='1513'.and.data='01/05'))
 else
                   if .not. eof() ; skip ; else ; exit ; endif
 endif
              nom0=nom
              data3=data
              vid0=vid
            if dn=space(10)
              dn00='9999999999'
            else
              dn00=dn
            endif
              dok1=substr(dok,1,10)
              vd0=vd
              sd2=sd
              vi2=vi
              dn0=subs(data,4,2)+data+nom
          *     open_dobo(loc0:=22)  && nsdi
                open_kpar(loc0:=22)  && nsdi
                find "&dn0"
                   store 0 to sts0,std0,s16
                   l0=' '
                   do while nom=nom0.and.data=data3
              store 0 to s110,s120,s130,s140,s150,s160,b3,sts0,std0,s16,kol0,zena0
                *     if .not. sch='453'
                      if .not. part='453'
                          part0=part
                   *      sts0=sts0+dsto
                          sts0=kast
                          kol0=kol
                          zena0=zena
                      else
                        * std0=dsto
                          std0=kast
                         l0='1'
                      endif
                      sele 6
                      find "&part0"
                      name0=subs(name,1,25)
                      sele 5
                           if .not. eof() ; skip ; else ; exit ; endif
           *       enddo
                         stsd0=str(sts0+std0,j0-2,j1)
                         sts0=str(sts0,j0-2,j1)
                         std0=str(std0,j0-2,j1)
                         s16=str(s16,j0-2,j1)
                         store space(j0-2) to s9,s10,s11,s12,s13,s14,s15
                         kol0=str(kol0,j0-2,j1)
                         zena0=str(zena0,j0-2,j1)
                        do case
                           case sd2='н'
                              s11=stsd0
                              s110=s110+val(s11)
                           case sd2='▒'.or.sd2='в'
                               s12=sts0
                               s13=std0
                               s120=s120+val(s12)
                               s120=s130+val(s13)
                           case sd2='╖'
                               s14=sts0
                               s15=std0
                               s140=s140+val(s14)
                               s150=s150+val(s15)
                        endcase
      if ll5='д'
              p0=p0+1
              q0=q0+1
     *    if ekpr0=1
             if 0.01 < abs(val(str(round(val(s10)*.2,2)-val(s11),11,2)))
                fn0=str(q0,4)+str(abs(round(val(s10)*.2,2)-val(s11)),11,2)
             else
                fn0=space(15)
             endif
   if .not. val(sts0)=0
   ? str(q0,4)+i+vid0+i+dn00+i+name0+i+kol0+i+zena0+i+sts0+i+str(round(val(sts0)*.2,2),j0-2,j1)+'     в б░ой'
   endif
      *   else
*  ? str(q0,4)+i+vid0+i+dn00+i+dok1+i+stsd0+i+s11+i+i+s12+i+s13+i+s16+i+nom0+'-'+substr(data3,1,2)
          endif
   *  endif
                   enddo

               if ll5='д'
                  spri()
                  if ekpr0=2 .and.b0=0
                     ?? sbit0
                  endif
               endif
                  sele 1
                  if .not. eof() ; skip ; else ; exit ; endif
          enddo
      if ll5='д'
* ?'            ОБЩА СУМА ЗА ПЕРИОДА'+space(44)+str(s110,12,j1);
* +i+str(s120,12,j1)+i+i+str(s130,12,j1)+i+str(s140,12,j1)+i+str(s150,12,j1)+i+str(s160,12,j1)+'  '+'в б░ой'
    set cent on
               *       if ekpr0=2
                         ?
                         ?
                         ?
    set cent on
    ? '      Да▓а '+dtoc(date0)+' год.'+space(75)+dlaz+':................'
    set cent off
              *        endif
    do  pech
      endif
  set dele off
                         return

                     *   func setcons
                     *        set cent on
                     *        set cons on
                     *        ? line0
                     *        set cons off
                     *   return

          ***************    С▓окова бележка  *****************************
                             proc stokraz
            ramka()
            set key 191 to
            clea gets
            dn0=subs(data0,4,2)+data0+str(nom2,4)
            open_arhi(loc0:=16)  && nari
            find '&dn0'
            store ctod(substr(vid,17,6)+vek+substr(vid,23,2) ) to ddat0,dati0
            open_obap(loc0:=16) && aobi
            open_kpar(loc0:=15)  && naki
            find '&dn0'
            izrab()
      if ekpr0=2
         set marg to 20
      endif
       if sc16='д'
         l0=14
       else
         l0=0
       endif
   ?
   ?
   ?
   ? space( 8)+'ПРИЕМО-ПРЕДАВАТЕЛЕH ПРОТОКОЛ'
    ?? sbit0
   ? space(93+l0)+str(nom2,4)+'-'+dtoc(ddat0)
   ? vid1+space(36+l0)+vid00
       if sc16='д'
   ? gr0+space(36+l0)+gr00
   ? 'БУЛСТАТ      '+dn00+space(61+l0)+'БУЛСТАТ      '+trim(dn1)
       endif
   ? 'М О Л  ' +mol0+space(42+l0)+'М О Л  '+sas0
   red1 =  repl("-",106)
   red2 = 'ШИФЪР     HАИМЕHОВАHИЕ HА АРТИКУЛА         М-KА       K-ВО      ЕД.ЦЕHА   % ОТСТ   ЦЕHА С ОТСТ.   СТОЙHОСТ'
       if sc16='д'
          red1 = red1+repl("-",l0)
          red2 = 'ШИФЪР     HАИМЕHОВАHИЕ HА АРТИКУЛА         М-KА       K-ВО      ЕД.ЦЕHА      СТОЙHОСТ   ПАРТИДА    ПРОИЗХОД    ГОДHА ДО'
       endif
    ? red1
    ? red2
    ? red1
       b0=10
       store 0 to kol0,ksto0
                    do while data=data0.and.nom=str(nom2,4)
                         part0=part
                      sele 6
                      find "&part0"
                       name1=name
                       iban0=iban
                       dnev0=dnev
                       mk1=mk
                  sele 5
  *  ? ' '+substr(part,4,4)+'   '+name1+' '+mk+' '+str(kol,j2,j3)+' '+str(round(zena*(100+otst)/100,j4),11,j4)+'      '+str(otst,5,2)+' '+str(round(kol*zena,j1),13,j4)
           red3= ' '+substr(part,4,4)+'   '+name1+' '+mk+' '+str(kol,j2,j3)+' '+str(round(zena/(1-otst/100),j4),11,j4)+'    '+str(otst,5,2)+' '+str(zena,11,j4)+' '+str(round(kol*zena,j1),13,j4)
       if sc16='д'
        * s otstapka red3 = red3+'  '+subs(iban0,1,11)+'  '+subs(iban0,12,11)+' '+dnev0
          red3= ' '+substr(part,4,4)+'   '+name1+' '+mk+' '+str(kol,j2,j3)+' '+str(round(zena,j4),11,j4)+' '+str(round(kol*zena,j1),13,j4)+' '+subs(iban0,1,11)+' '+subs(iban0,12,11)+' '+dnev0
       endif
  ? red3
                    kol0=kol0+kol
                    ksto0=ksto0+round(kast,j1)
        spri()
                     sele 5
                     if .not. eof() ; skip ; else ; exit ; endif
                    enddo
    ?
    ? '                 Об╣о'+space(26)+str(kol0,j2,j3)+space(33)+str(ksto0,j0,j1)
    ?
       if sc16='д'
    ? '       Го░епо▒о╖ени▓е а░▓ик│ли ▒а п░едназна╖ени за ╖ове╕ка кон▒│ма╢и┐ и ▒а п░оизведени'
    ?? ' ▒║гла▒но ░егламен▓ на ЕС, '
    ? '       ка▒ае╣и безопа▒но▒▓▓а на ╡░ани▓е о▓ живо▓ин▒ки п░оиз╡од за ▒вободна ▓║░гови┐ в ЕС.'
       endif

    ?
    ?
    ?
    ? space(10)+'Пол│╖ил:.............'+space(45+l0)+'П░едал:...............'
       if sc16='д'
    ? space(15)+mol0+space(30+l0)+sas0
       endif
    ?
    ?
    ?
    ?
    ?
    ?
    ?
    ?
    ?
    do pech
     open_arhi(loc0:=17)
     go bott



          ***************    П░иоден ка▒ов о░де░    ***********************
                             proc pkorder
            ramka()
            set key 300 to
             @  2,31 say 'ПРИХОДЕH KАСОВ ОРДЕР'
                   blan0='ПРИХДЕH KАСОВ ОРДЕР'


            dn0=subs(data0,4,2)+data0+str(nom2,4)
            open_kpar(loc0:=15)
            find '&dn0'
            if found()
               kast0=kast
            else
               kast0=kast
            endif
            izrab()
    ?? space(18)+fir
     ? space(15)+repli('-',50)
     ?
     ? space(21)+'ПРИХОДЕH KАСОВ ОРДЕР'+ str(nom2,4)+'-'+dtoc(ddat0)
         set marg to 20
     ?
     ? 'Дне▒ '+dtoc(date0)+' ка▒ие░ '+sas0
     ? 'пол│╖и╡ о▓ '+mol0
     ?
     ? 'СУМАТА:  '+ltrim(str(kast0,11,2))+' лв.'
     ?
     ? 'по зад║лжени┐ на '+vid1
     ?
     store round(kast0,2) to slov0
     slovo()
         set marg to 15

    ?
    ?
    ?
    ?
    ? space(27)+'Пол│╖ил:..............'
    ?
    ?
    ?
    ?
    ?
    ?
    ?
    ?
    ?
    ?
    ?
    ?
    ?
    do pech
   *  open_regl(loc0:=17)
   *  rec_lock() ; repl vid with vid1, mol with mol0 ; rec_unlock()

     open_arhi(loc0:=17)
     go bott
    return

 *****************************   time    ***************************
  *                           func timercount
  *       * sec0=round(seconds(),0)
  *           do while .t.
  *                 sek1=120-(round(seconds(),0)-sec0)
  *                     if sek1 < 0
  *                        exit
  *                     endif
  *                 if 0 < val(subs(str(round(sek1/60,2),5,2),1,2))
  *                     @ 23,66 say subs(str(round(sek1/60,2),5,2),1,2)+':'+;
  *                     str(sek1-val(subs(str(round(sek1/60,2),5,2),1,2))*60,2)
  *                 else
  *                     @ 23,67 say '0:'+str(sek1,2)
  *                 endif
  *                        inkey(0.99)
  *             *    @ 14,15 say space(51)
  *                            return

   ********************   PROCEDURA ZA PROVERKA NA RED ****************
                             func  chakai
                        set cons on
                        ch0=ch0+1
                        ch1=str(ch0,1)
                     *  ? repl('&ch1',10)
                        @ 0,25 say repl('&ch1',30)
                        inkey(15)
                        @ 0,25 say space(30)
                        set cons off

                               return

   ********************   PROVERKA NA VKLUCHENFISKALEN PRINTER **********
                             proc  fprint

            ! cmd /c  mode com3  > aaa.txt
            set cursor on

     if (.not.subs(memoline(memoread("aaa.txt"),30,1),1,19) ='Illegal device name');
         .and.(subs(memoline(memoread("aaa.txt"),30,2),1,17) ='Status for device')
     else
                if tt0='00'
                   @ 10,7,12,71 box ram1 ; @ 11, 9 clea to 11,70
                   for i=1  to  4
                    @ 11, 8 say 'Мол┐ вкл╛╖е▓е ┤и▒кални┐ п░ин▓е░ и ▒▓а░▓и░ай▓е п░ог░ам▓а о▓ново!' color 'R+/B'
                    inkey(1) ; @ 11, 8 say space(63)  ; inkey(0.5)
                   next
                   @ 10, 7 clea to 12,71
                   cance
                else
                   l2='n' ; eras s0001.prn ; @ 5,1 clea to 21,78 ; @  9, 6, 13,73 box ram1
                   @ 10,36 say 'ВHИМАHИЕ!' color 'R+/B'
                   @ 12, 7 say 'Фак▓│░а▓а не може да б║де издадена без в░║зка ▒ ┤и▒кални┐ п░ин▓е░!'
                   inkey(6)
                endif
                   inkey(3)
     endif
                               return


      ********* П░о╢ед│░а за о▓пе╖а▓ване на заглавна ▒▓░ани╢а на пака ************
                              proc papka
                     set key 21 to
                     save screen
                     store subs(fir,7,31) to X_0
                     X_1='         K  А  С  А      '
                     X_2='   ЯHУАРИ     -     ЮHИ  '
               *     vek0=substr(str(year(date0),6),3,4)
                     set curs on
                 do while .t.
                     @  0, 0 clea to 24,80
                     ramka()
		     @  2,27 say 'ЗАГЛАВHА СТРАHИЦА HА ПАПКА'
		     @  3,26 say '----------------------------'
		     @  8,24 get X_0
		     @ 10,27 get X_1
		     @ 12,27 get X_2
                     chet()
                     if lastkey()=27
                        set key 21 to papka
                        set curs off
                        restore screen
                        return
                     endif
		     izrab()
                     set marg to 0
            ?'F23'
            ?? ' Й═══════════════════════════════Ч'
            ? ' З'+X_0+'З'
            ? ' З                               З'
            ? ' З                               З'
            ? ' З                               З'
            ? ' З                               З'
            ? ' З    С Ч Е Т О В О Д С Т В О    З'
            ? ' З                               З'
            ? ' З                               З'
            ? ' З                               З'
            ? ' З                               З'
            ? ' З                               З'
            ? ' З   '+X_1+'   З'
            ? ' З                               З'
            ? ' З                               З'
            ? ' З   '+X_2+'   З'
            ? ' З                               З'
            ? ' З                               З'
            ? ' З                               З'
            ? ' З                               З'
            ? ' З                               З'
            ? ' З                               З'
            ? ' З         '+vek0+' ГОДИHА           З'
            ? ' И═══════════════════════════════Ш'
            ? 'F13'
               do pech
                 enddo
                                 return
    

