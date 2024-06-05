  *PRO5.PRG  grupprod mol krprev nammag osok osmich plat potok potkor troi  stok2
  ****  prikzkpo pfunk6. funk6. stok2 tehkar. userpass viddok
 ** @  0,15  say 'bbbb ' ; inkey(0) //kkk
   ******************** П░ове░ка за п░авилно в║вдени па░и╖ни по▓о╢и ********
                             proc  potkor
   save screen
   izrab()
   open_kobo(loc0:=23)   && nski
   set filter to sch='50'.or.sch='4'
   go top
   ? space(22)+'Hеп░авилно в║ведени пла╣ани┐'
   ?
     do while .not. eof()
        dn0=subs(data,4,2)+data+nom
        skip
         if  subs(data,4,2)+data+nom=dn0.and.(.not.sch='453')
            ? space(31)+nom+'-'+data
         endif
     enddo
   open_dobo(loc0:=25)   &&  nsdi
   set filter to sch='50'.or.sch='4'
   go top
     do while .not. eof()
        dn0=subs(data,4,2)+data+nom
        skip
         if subs(data,4,2)+data+nom=dn0.and.(.not.sch='453')
            ? space(31)+nom+'-'+data
         endif
     enddo
   pech()
   restore screen
                             return

        ************ П░о╢ед│░а за ▒▓окови ▒ме▓ки **************
                      proc mol
           save screen
         do while .t.
               ramka()
           store 0 to nom3,nom4 ; b0=0 ; b2=1 ; pr1=1 ; pr2=9999
           set message to 23 center
              ll2='п'
            if sc9='д'
               @  2,27 say '     ЗАДЪЛЖЕHИЕ HА МОЛ     '
               v3=3
            else
               @  2,27 say 'ПРОЦЕДУРИ ЗА СТОKОВИ СМЕТKИ'
               @  3,26 say '-----------------------------'
               @  4,29 prompt '1 - Анали▓и╖ни па░▓иди'
               @  6,29 prompt '2 - О▓╖е▓а на п░одажби▓е /к░еди▓а/' message " Да▓а на п░ог░ама▓а ▓░┐бва да е ка▓о на ое░а╢и┐▓а"
               @  8,29 prompt '3 - Зад║лжение на МОЛ /деби▓а/' message " Да▓а на п░ог░ама▓а ▓░┐бва да е ка▓о на ое░а╢и┐▓а"
               @ 10,29 prompt '4 - Заве░ка на МОЛ '
               @ 12,29 prompt '5 - Складова ░азпи▒ка'
               @ 14,29 prompt '6 - И▒кане за ма▓е░иали'
               @ 16,29 prompt '7 - Те╡нлоги╖на ка░▓а'
               @ 18,29 prompt '8 - Hали╖но▒▓и по обек▓и'
               @ 20,29 prompt '9 - Изпла▓ени зад║лжении┐'
               menu to v3
            endif
                  if lastkey()=27
                     restore screen
                     return
                  endif

         if .not. v3=8
            ramka()
           if sc9='д'
              store sch00 to sch0
           endif

          *************begin paketno pecatane partidi ************
              @  6,21 say 'В║веде▓е ╕и┤║░а на желана▓а ▒ме▓ка  :' get sch0
          *************endn paketno pecatane partidi ************
         endif

       do case
          case v3=1

       *  *************begin paketno pecatane partidi ************
       *    @ 11, 5,13,74 box ram1 ; @ 12, 6 clea to 12,73
       *    s0000='д' ; ekpr0=2 ; ll14='n'  //  Prekasnat pechat vkluchen
       *    memowrit('&disc_0\s0000','')
       *    copy file &disc_0\s0000 to s0099.prn
       * @ 12, 6 say '  Вкл. паке▓ен пе╖а▓ s0000 - ▒амо на "ПЕЧАТ" ▒ оп╢и┐ П░ек║▒на▓. пе╖.'
       *   if file("&disc_0\zan.pdf") ; eras &disc_0\zan.pdf ; endif
       *               inkey(8)  ; @ 11, 5 clea to 13,74
       * open_obve(loc0:=29)
       * do while .t.
       *  re0=recno()
       * if a='д' .and. (.not.(kdso=0.and.kkso=0))
       *      sch0=sch
       *     @  6,21 say 'В║веде▓е ╕и┤║░а на желана▓а ▒ме▓ка :' get sch0
       * *  wait 'hhhhhhhhhhhhhhhhhhhhhhhhhhhh'
       *  *************end  paketno pecatane partidi ************
               ll4='л' ; b0=0 ; b2=1
               set key -6 to ddok
               @ 23+ml0,15 say '     F7 - оп░едел┐ под░едено▒▓▓а на анал. п-ди     '
                    l0='н'
                    l2='н'
                   * @  2,29 say 'ИHВЕHТАРИЗАЦИОHEH ОПИС'
          *************begin paketno pecatane partidi ************
                     @  2,31 say 'AHАЛИТИЧHИ ПАРТИДИ'
                     @  3,30 say '--------------------'
                     @  8,28 say 'О▓ па░▓ида      :  ' get pr1 pict'9999'
                     @ 10,28 say 'До па░▓ида      :  ' get pr2 pict'9999'
                     @ 12,28 say 'Без ╢ена "н" ▒ ╢ена "д":' get l2  valid l2='н'.or.l2='д'
                     @ 14,25 say 'Само о▓░и╢а▓елни па░▓иди д/н'  get l0  valid l0='н'.or.l0='д'
                     @ 16,20 say 'В лева "л" ╡ил. лева "╡"  млн. лева "м"' get ll4 valid ll4='л'.or.ll4='╡'.or.ll4='м'
                     chet()
          *************end  paketno pecatane partidi ************

                     @ 16,20 say space(50)
                        if lastkey()=27.or.sch0='   '
          *************begin paketno pecatane partidi ************
                       *     return
                           loop
          *************endn paketno pecatane partidi ************
                        endif
                     izrab()
              p0=''
               open_obap(loc0:=31)
             do case
                case ll2='п'
                     set order to 1
                case ll2='н'
                     set order to 3
             endcase
                  if ekpr0=2
                     ll0='2'
                     b1=65

           *************begin paketno pecatane partidi ************
                     @ 14,23 say 'В║веде▓е б░ой ░едове на ▒▓░ани╢а' get b1 pict'999'
                     chet()
           *************end   paketno pecatane partidi ************

                     set marg to 3
                  endif
              razr()
    ?? norm0
  * ? space(27)+'ИHВЕHТАРИЗАЦИОHEH ОПИС '+sch0
    ? space(30)+'АHАЛИТИЧHИ ПАРТИДИ '+sch0
    ?  space(18)+fir
    set cent on
    ?  space(33)+'к║м  '+dtoc(date0)
    set cent off
    ? space(70)+'▒▓░. '+str(b2,3)
    ? repli('_',78)
  * ? 'П-ДА          HАИМЕHОВАHИЕ            МЯРKА     K-ВО       ЦЕHА       СТ-СТ '
    ? 'П-ДА          HАИМЕHОВАHИЕ             M-KА  КОЛИЧЕСТВО      ЦЕHА     СТОЙHОСТ '
    ? repli('_',78)
    b0=b0+8
  *********************
  * ? repli('_',44)
  * ?
  * ? 'П-ДА  HАИМЕHОВАHИЕ  М-А   K-ВО   ЦЕHА  СТ-СТ '
  * ? repli('_',44)
  * ?
  * b0=b0+4
  **********************
                     store 0 to kast0,kast1,kol0
           *         store 0 to line0,line1,line2, line9, sec0  //  ??
           *         count for sch0=substr(part,1,3) to line1   //  ??
                     go top
                     find '&sch0'
                   @ 23+ml0,15 say '      П░ог░ама▓а ░або▓и, по па░▓ида                '
                    do while sch0=substr(part,1,3)  &&.not. eof()
           *            raboti() ; line()
                 @ 23+ml0,52 say part
                 if val(substr(part,4,4))<pr1.or.val(substr(part,4,4))>pr2
                           if .not. eof() ; skip ; loop ; else ; exit ; endif
                 endif

                     red0=recno()
                     part1=substr(part,4,4)
                     ds0=part
                    *  name1=substr(name,1,33)
                       name1=substr(name,1,35)
                       mk1=mk
                       kolk1=kkol
                       open_obap(loc0:=32)  && aobi
                       find '&ds0'
                       zena0=zena
                       ksal0=ksal/ra0
             if l2='н'  &&   без едини╖на ╢ена

                 if ksal<>0.or.kolk1<>0
                    if l0='д'
                       if ksal< 0.or.kolk1< 0   && У▒ловие за ╖е░вене па░▓иди
     ? part1+' '+name1+' '+mk1+' '+str(kolk1,j2,j3)+' '+str(zena0,9,j4)+' '+str(ksal/ra0,j0,j1)

                        kast0=kast0+ksal/ra0
                        kol0=kol0+kolk1
                        spri()
                       endif
                    else
    *  ppp1=''
    *  ppp0="part1+' '+name1+' '+mk1+' '+str(kolk1,j2,j3)+' '+str(zena0,9,j4)+' '+str(ksal/ra0,j0,j1)"
      *****************
     ? part1+' '+name1+' '+mk1+' '+str(kolk1,9+j6,j3)+' '+str(zena0,11-j6,j4)+' '+str(ksal/ra0,12,j1)
   * ? part1+' '+subs(name1,1,15)+' '+mk1+str(kolk1,7,3)+str(zena0,7,2)+str(ksal/ra0,7,2)
      *****************
   *   for i=1  to len(&ppp0)
   *      if empty(subs(&ppp0,i,1))
   *         ppp1=ppp1+'_'
   *      else
   *         ppp1=ppp1+subs(&ppp0,i,1)
   *      endif
   *   next
   *   ? ppp1
                        kast0=kast0+ksal/ra0
                        kol0=kol0+kolk1
                        spri()
                    endif
                 endif
             else     &&  ▒ едини╖на ╢ена
                 if kolk1*zena0<>0.or.kolk1<>0
              *  if kolk1*zena0 >0
              ? part1+' '+name1+' '+mk1+' '+str(kolk1,j2,j3)+' '+str(zena0,9,j4)+' '+str(kolk1*zena0,j0,j1)
                    kast0=kast0+kolk1*zena0
                    kol0=kol0+kolk1
                    spri()
                 endif
             endif
              open_obap(loc0:=33)  && aobi
             do case
                case ll2='п'
                      set order to 1
                case ll2='н'
                      set order to 3
             endcase
                       go red0
                          if .not. eof() ; skip ; else ; exit ; endif
                                 if  b0=0
  b2=b2+1
  ?? norm0
  ? space(71)+'▒▓░. '+str(b2,3)
  ? repli('_',79)
  ? 'П-ДА          HАИМЕHОВАHИЕ            МЯРKА     K-ВО       ЦЕHА       СТ-СТ '
  ? repli('_',79)
  b0=4
                                 endif
                    enddo
    ?
    b0=b0+1
    ? '        Об╣о'+space(32)+str(kol0,9+j6,j3)+space(11-j6)+str(kast0,j0,j1)
    *  ? '  11111 Об╣о'+space(18)+str(kast0,j0,j1)
   **************
           @ 16,29 say 'Б░ой на ▒▓░ани╢и▓е '+ str(b2,3)
    pech()

       *  *************begin paketno pecatane partidi ************
       *  endif
       *    save_0='s0001'
       *    @ 4+ml0,1 clea to 21+ml0,78
       *    open_obve(loc0:=29)
       *    go re0
       *    if .not. eof() ; skip ; else
       *       copy file s0099.prn to &disc_0\s0099.prn
       *       do sentinel
       *    disgod0='\DISC\god&dt0\zkpo\&go0\part&vek0..pdf'
       *    if file ('&disc_0\zan.pdf')
       *    copy file &disc_0\zan.pdf to &disgod0
       *   ! cmd /c start &pdfxc_0  &disgod0
       *   set cursor on ; endif
       *   s0000='n' ; ekpr0=1 ; ll14='d'
       *   if file("&disc_0\s0000") ; eras &disc_0\s0000 ; endif
       *     clea gets
       *     return ; endif
       *  enddo
       *  *************end paketno pecatane partidi ************



          case v3=2.or.v3=3.or.v3=4.or.v3=5.or.v3=6.or.v3=7
          store 0 to nom3,nom4
         * nom3=3011
         * nom4=3012
           open_obap(loc0:=34)  && aobi
           open_arhi(loc0:=26) && nari
           do case
              case v3=2
                     l0='6'
                     @  2,33 say 'ОТЧЕТ HА ПРОДАЖБИТЕ'
              case v3=3
                     l0='1'
                     @  2,34 say 'ЗАДЪЛЖЕHИЕ HА МОЛ'
              case v3=4
                     l0='4'
                     @  2,34 say '  ЗАВЕРKА HА МОЛ '
              case v3=5
                     l0='2'
                     @  2,34 say 'СKЛАДОВА РАЗПИСKА'
              case v3=6
                     l0='3'
                     @  2,33 say 'ИСKАHЕ ЗА МАТЕРИАЛИ'
              case v3=7
                     l0='5'
                     @  2,33 say 'ТЕХHОЛОГИЧHА KАРТА'
               *  set key -2 to tehkar
               *  set key -3 to avtteh
                 @ 23+ml0,22 say 'F3 - ▓е╡нологи╖на ка░▓а  F4 - ав▓ома▓.'
           endcase
                     @  3,31 say '----------------------'
                  if sc9='д'
                     store date0 to data1
                     @  8,25 say 'В║веде▓е ▓ек│╣а да▓а: ' get data1
                     chet()
                        if lastkey()=27
                            loop
                        endif
                     store data1 to data3
                     @  8,25 say space(35)
                     set filter to dtoc(data1)=subs(vid,17,8).and.3000<val(nom).and.val(nom)<9999
                     go top
                     nom3=val(nom)
                     do while .not.eof()
                        nom4=val(nom)
                        skip
                     enddo
                     set filter to
                  endif
                     @  8,30 say 'О▓ номе░ на СО : ' get nom3 pict'9999'
                     @ 10,30 say 'До номе░ на СО : ' get nom4 pict'9999'
                     @ 12,30 say 'О▓ па░▓ида     : ' get pr1 pict'9999'
                     @ 14,30 say 'До па░▓ида     : ' get pr2 pict'9999'
                     chet()
                     izrab()
                        if lastkey()=27.or.sch0='   '
                            loop
                        endif
              open_obve(loc0:=16)
              find '&sch0'
              name0=name
           *  open_kpap(loc0:=1)   && pril  !!! da ne se trie
           *  dele all             && pril
           *  pack                 && pril
            do case
               case l0='1'.or.l0='2'
                  open_dpar(loc0:=22)
               case l0='3'.or.l0='4'.or.l0='5'.or.l0='6'
                  open_kpar(loc0:=22)
            endcase
                  set order to 2
              find '&sch0'
                       if ekpr0=2
                           ll0='2'
                           b1=65
                           @ 18,23 say 'В║веде▓е б░ой ░едове на ▒▓░ани╢а' get b1 pict'999'
                           chet()
                       endif
                       store 0 to kol0,kast0
    ?? norm0
    ?
          do case
             case  l0='1'
                          set marg to 2
    ?  '                              ЗАДЪЛЖЕHИE HА МОЛ'
             case  l0='2'
                          set marg to 7
    ?  '                  СKЛАДОВА РАЗПИСKА'
             case  l0='3'
                          set marg to 13
                          set marg to 2
    ?  '                  ИСKАHЕ ЗА МАТЕРИАЛИ'
             case  l0='4'
                          set marg to 2
    ?  '                               ЗАВЕРKА HА МОЛ'
             case  l0='5'
                          set marg to 2
    ?  '                            ТЕХHОЛОГИЧHА KАРТА'
             case  l0='6'
                          set marg to 2
    ?  '                            ОТЧЕТ HА ПРОДАЖБИТЕ'
          endcase
                       if ekpr0=1
                           set marg to 0
                       endif
       if l0='1'.or. l0='4'.or.l0='5'.or.l0='6'
             dn0=subs(data0,4,2)+data0+str(nom3,4)
             open_arhi(loc0:=27) && nari
             find '&dn0'
             dok0=dok
             vid0=subs(vid,17,8)    &&  за ┤лай▓ ел
     ? '                     '+name0+'  '+sch0
     ? '                     ........................................'  +space(5)+str(nom3,4)+'-'+vid0
       if sc11='д'
     ? '                     '+dok0
       endif
     ?
     ?
     ? space(71)+'▒▓░. '+str(b2,3)
           ? repli('_',79)
           ? 'П-ДА           HАИМЕHОВАHИЕ               М-KА     K-ВО       ЦЕHА        СТ-СТ'
           ? repli('_',79)
       else
     ? '           '+name0    + 'v01'
     ? '       ........................................'
     ?
     ?
     ? '                   к║м  ........ '+substr(dtoc(date0),4,5)
     ? space(55)+'▒▓░. '+str(b2,3)
           ? repli('_',58)
           ? 'П-ДА          HАИМЕHОВАHИЕ              МЯРKА      K-ВО'
           ? repli('_',58)
       endif
            do case
               case l0='1'.or.l0='2'
                  sele 4
               case l0='3'.or.l0='4'.or.l0='5'.or.l0='6'
                  sele 5
            endcase
       b0=11    &&       za l0='6'
       store 0 to kol0,kol1,kast1
      *  nom3=1
      *  nom4=9999
      *  set filter to  nom3<=val(nom).and.val(nom)<=nom4.and.part=sch0.and.pr1<=val(subs(part,4,4)).and.val(subs(part,4,4))<=pr2
         set filter to  nom3<=val(nom).and.val(nom)<=nom4.and.data=data0.and.part=sch0.and.pr1<=val(subs(part,4,4)).and.val(subs(part,4,4))<=pr2  &&
         go top
                    do while  .not. eof() &&    substr(part,1,3)=sch0
                         store part to part1
                         ds1=substr(part,1,3)+subs(data,4,2)+data+nom
                         store zena to zena0,zena1
                         ds0=sch0+substr(part,4,4)
                      sele 6
                      find '&ds0'
                       name1=name
                       mk1=mk
            do case
               case l0='1'.or.l0='2'
                  sele 4
               case l0='3'.or.l0='4'.or.l0='5'.or.l0='6'
                  sele 5
            endcase
             if l0='1'
                    kast1=kast1+dast
                    kast0=kast0+dast
             else
                    kast1=kast1+kast
                    kast0=kast0+kast
             endif
                    kol1=kol1+kol
                    kol0=kol0+kol
                          if .not. eof() ; skip ; else ; exit ; endif
    if .not.part=part1
       if l0='1'.or.l0='4'.or.l0='5'.or.l0='6'
          ?  substr(part1,4,4)+' '+substr(name1,1,35)+'   '+mk1+str(kol1,10,j3)+' '+str(round(kast1/kol1,j4),10,j4)+' '+str(kast1,12,j1)
    * sele 9         &&  pril
    * appe blank     &&  pril
    * repl part with part1,mk with mk1,kol with kol1, name with name1, dast with kast1    &&  pril
          store 0 to kol1,kast1
          spri()
       else
          ?  substr(part1,4,4)+' '+name1+'  '+mk+'  '+str(kol1,j2,j3)
          store 0 to kol1
          spri()
       endif
    endif
         *  do case                                         && pril towa ne e nugno
         *     case l0='1'.or.l0='2'                        && pril ako ne se
         *        sele 4                                    && pril puska po-gore
         *     case l0='3'.or.l0='4'.or.l0='5'.or.l0='6'    && pril open_kpap()
         *        sele 5                                    && pril
         *  endcase                                         && pril
                                 if  b0=0
           b2=b2+1
           ?? norm0
           ? space(71)+'▒▓░. '+str(b2,3)
       if l0='1'.or. l0='4'.or.l0='5'.or.l0='6'
           ? repli('_',79)
           ? 'П-ДА          HАИМЕHОВАHИЕ           М-KА     K-ВО       ЦЕHА         СТ-СТ '
           ? repli('_',79)
       else
           ? repli('_',58)
           ? 'П-ДА          HАИМЕHОВАHИЕ              МЯРKА      K-ВО'
           ? repli('_',58)
       endif
       b0=5  &&      za l0='6'
                                endif
                    enddo
    ?
       if l0='1'.or. l0='4'.or.l0='5'.or.l0='6'
    ? '           Об╣о'+space(28)+str(kol0,j2,j3)+space(10)+str(kast0,j0,j1)
       endif
    ?
    ?
           if  l0='6'

    *  ? space(23)+'Об╣о обо░о▓ за ден┐  ..............'
    *  ? space(23)+'Hепла▓ени ▒▓окови    ..............'
    *  ? space(23)+'С▓а░и пла╣ан┐        ..............'
    *  ? space(23)+'О▓╖е▓ени па░и в б░ой ..............'
    *  ? space(23)+'Разлика за вна▒┐не   ..............'
           endif
    ?
    ?
    ?
    ?'                                      Подпи▒ :...............'
    ?
    if .not. sc9='д'
     for i0 = 1 to 4
        ?
     next
    endif
    * ?  chr(12)
     @ 16,29 say 'Б░ой на ▒▓░ани╢и▓е '+ str(b2,3)   &&  v01
     pech()
                       if sc9='д'
                 l0=2
                 @ 23+ml0,15 say space(51)
                 @ 23+ml0,17 say 'Желае▓е ли обоб╣аване на ка▒ови п░одажби'
                 @ 23+ml0,58 prompt 'ДА'
                 @ 23+ml0,61 prompt 'HЕ'
                 menu to l0
                   if l0=1
                       do grupprod
                   endif
                       endif
          case  v3=8
             ramka()
             part0=0
             nammag()
          case  v3=9
             mol2()
       endcase
         enddo
                restore screen
                         return
      ************** П░о╢ед│░а за ╡а░ак▓е░и▒▓ики в║в ведомо▒▓▓а ***********
                   proc nammag
          save screen
           pr1=1
           pr2=9999
          @  2,26 say 'HАИМЕHОВАHИЕ HА ОБЕKТИТЕ'

          @  6,23 say 'ОТ ПАРТИДА' get pr1 pict "9999"
          @  6,41 say 'ДО ПАРТИДА' get pr2 pict "9999"
          chet()
          if file("magazin.mem")
             restore from magazin additive
          else
             save all like y_* to magazin
          endif
          clea gets
             br0=1
             br1=9
             br2='  '
             br3=9
             br4='  '
            do while br0 < 16
              br2=ltrim(str(br0,2))
              br4=ltrim(str(br0+50,2))
              @ br1,br3 get y_&br2
              @ br1+2,br3+4 get y_&br4
              br0=br0+1
              br3=br3+13
                 if br0=6.or.br0=11
                  br1=br1+4
                  br3=9
                 endif
             enddo
             chet()
             save all like y_* to magazin
             izrab()
                    if lastkey()=27
                        return
                    endif

           podr_0=12
           save all like podr_0 to podred
           podred()
           open_obapi()
          set filter to part=y_51.or.part=y_52.or.part=y_53.or.part=y_54.or.;
          part=y_55.or.part=y_56.or.part=y_57.or.part=y_58.or.part=y_59.or.;
          part=y_60.or.part=y_61.or.part=y_62.or.part=y_63.or.part=y_64.or.part=y_65
          go top
          i=space(8)
          l=' '
       if ekpr0=2
         b1=60
         b2=1
         b0=8
         @ 23+ml0,28 say 'Б░ой ░едове на ▒▓░ани╢а' get b1 pict "99"
         chet()
         set marg to 7
         ? sbit0
         prn0=sbit0
       endif
          ? space(65)+'HАЛИЧHИ KОЛИЧЕСТВА ПО ОБЕKТИ'
          ? space(130)+'▒▓░. '+str(b2,3)
          ? repli('_',139)
          ? space(41)+y_1+l+y_2+y_3+l+y_4+l+y_5+l+l+y_6+l+y_7+'     ОБЩО'+'     ЗАЯВКА'  && +y_8+y_9+y_10
          ? space(44)+y_51+i+y_52+i+y_53+i+y_54+i+y_55+i+y_56+i+y_57+i+y_58+i+y_59
          ? repli('_',139)
     *    ?
          br0=0
          do while .not. eof()
                 if val(substr(part,4,4))<pr1.or.val(substr(part,4,4))>pr2
                          if .not. eof() ; skip ; loop ; else ; exit ; endif
                 endif
             part0=substr(part,4,4)
             br0=len(trim(name))
             part1=substr(part,4,4)+' '+trim(name)+repl('_',35-br0)
             kkol0=0
             br0=0
             do while substr(part,4,4)=part0
               if kkol<>0
               br0=len(ltrim(str(kkol,10,j3)))
               part1=part1+' '+repl('_',9-br0)+' '+ltrim(str(kkol,10,j3))
               else
                part1=part1+' __________'  && space(10)
               endif
              kkol0=kkol0+kkol
                if eof()
                   exit
                else
                   skip
                endif
             enddo
            br0=len(ltrim(str(kkol0,10,j3)))
            ? part1+' '+repl('_',9-br0)+' '+ltrim(str(kkol0,10,j3))+' __________'
            spri()
                                 if  b0=0
        ? sbit0
        b2=b2+1
          ?? norm0
          ? space(130)+'▒▓░. '+str(b2,3)
          ? repli('_',139)
          ? space(41)+y_1+l+y_2+y_3+l+y_4+l+y_5+l+l+y_6+l+y_7+'     ОБЩО'+'     ЗАЯВКА'  && +y_8+y_9+y_10
          ? space(44)+y_51+i+y_52+i+y_53+i+y_54+i+y_55+i+y_56+i+y_57+i+y_58+i+y_59
          ? repli('_',139)
        b0=7
                                 endif
                if eof()
                   exit
                endif
          enddo
   ?
   pech()
          return

    ************  Г░│пи░а ка▒ови▓е опе░а╢ии за ден┐ на магазини▓и ************
                               proc grupprod
      do ramka
      @ 23+ml0,15 say space(51)
      @ 23+ml0,24 say 'П░ог░ама▓а ░або▓и по ден: '+dtoc(data3)
      clos data
      clea gets
      store data3 to date1
      @  2,22 say 'ДHЕВHО ОБОЩАВАHЕ HА KАСОВИ ОПЕРАЦИИ'
      @  3,21 say '-------------------------------------'
      @  8,24 say 'В║веде▓е ▓ек│╣а да▓а: ' get date1
      chet()
         if lastkey()=27
            return
         endif
      @  8,20 say space(35)
      clos all
      open_arhi(loc0:=28)  && nari
      locate rest for subs(dok,28,10)=dtoc(date1).and.fakt='0000000001'
   if found()
      set filter to subs(dok,28,10)=dtoc(date1).and.fakt='0000000001'
      store val(nom) to nom4

          ************* Добав┐ к░еди▓ни▓е обо░о▓и ****************
           podr_0=51
           save all like podr_0 to podred
           podred()
      open_arhi(loc0:=29)  && nari
      set filter to subs(dok,28,10)=dtoc(date1).and.fakt='0000000001'
      go top
      l0='м'
    do while .not.eof()
       store val(nom) to nom1,nom2
       nom3=nom
       data1=data
       sele 3
       use
       open_kobp()
       appe from kobo  for  nom=nom3.and.data=data1
       open_kobo(loc0:=24)
       mark()
       sele 5
       use
       open_kpap()
       appe from kpar for nom=nom3.and.data=data1
       open_kpar(loc0:=24)
       mark()
       sele 1
       if .not.eof()
          skip
       else
          exit
       endif
    enddo

  * sele 8
    open_kobp(loc0:=1)
     rec_lock()
    repl all nom with str(nom4,4)
     rec_unlock()
    total on sch field ksto to kobpt
    use
    open_kpap(loc0:=1)
    sele 9
     rec_lock()
    repl all nom with str(nom4,4)
     rec_unlock()
    total on part field kol,kast to kpapt
    use
    podr_0=23
    save all like podr_0 to podred
    podred()
    open_kobo(loc0:=25)
    appe from kobpt
    podr_0=25
    save all like podr_0 to podred
    podred()
    open_kpar(loc0:=25)
    appe from kpapt
          ************* Добав┐ деби▓ни▓е обо░о▓и ****************
           podr_0=51
           save all like podr_0 to podred
           podred()
      open_arhi(loc0:=30)  && nari
      set filter to subs(dok,28,10)=dtoc(date1).and.fakt='0000000001'
      go top
      l0='м'
    do while .not.eof()
       store val(nom) to nom1,nom2
       nom3=nom
       data1=data
       sele 2
       use
       open_kobp()
       appe from dobo  for  nom=nom3.and.data=data1
       open_dobo(loc0:=27)
       mark()
       sele 4
       use
       open_kpap()
       appe from dpar for nom=nom3.and.data=data1
       open_dpar(loc0:=23)
       mark()
       sele 1
       if .not.eof()
          skip
       else
          exit
       endif
    enddo
    open_kobp(loc0:=1)
     rec_lock()
    repl all nom with str(nom4,4)
     rec_unlock()
    total on sch field dsto to kobpt
    use
    open_kpap(loc0:=1)
     rec_lock()
    repl all nom with str(nom4,4)
     rec_unlock()
    total on part field kol,dast to kpapt
    use
       podr_0=22
       save all like podr_0 to podred
       podred()
       open_dobo(loc0:=28)
       appe from kobpt
       podr_0=24
       save all like podr_0 to podred
       podred()
       open_dpar(loc0:=24)
       appe from kpapt
       open_arhi(loc0:=1)  && nari
       set filter to subs(dok,28,10)=dtoc(date1).and.fakt='0000000001'
       go top
       repl dok with subs(dok,1,32)+' обоб╣ен'
       dele all for (.not.eof()).and.(.not.nom=str(nom4,4))
       clos data
       podr_0=21
       save all like podr_0 to podred
       podred()
       open_arhi(loc0:=31)
       clos all
       eras kobpt.dbf
       eras kpapt.dbf
   else
   endif
          data1='  /'+substr(dtoc(date1),7,2)
          data2='  /'+substr(dtoc(date1),7,2)
          store nom4 to nom2,nom3
          store go0 to go1,go2

                               return

 
********************************************************************************************************************

    ***************   H│ли░а о▒▓анало коли╖е▒▓о в 302*****************
                         proc osok
                         @ 23+ml0,15 say '          П░ог░ама▓а н│ли░а okol в tehno           '
                         i0=inkey(1)
                         open_tehno(loc0:=1)
                         rec_lock()
                         repl all okol with 0
                         rec_unlock()
                         @ 23+ml0,15 say 'F3-изди░ва ╕и┤║░ на ▓е╡нолог.ка░▓а F9-н│ли░ане okol'
                         return
    ***************   П░о╢ед│░а за ▒▓окови▓е ▒ме▓ки  *****************
                         proc stok2
      if sc15='н'
          do case
              case  sch1='701'
                    sch2='302'
              case  val(sch1) > 702
                    sch2='3'+substr(sch1,2,2)
          endcase
      else
           sch2='302'
      endif
                         return
         ****************** П░о╢ед│░а за ▒░ок *********************
                                proc messec
                        me0=val(substr(data0,1,2))
                        do case
                           case me0 < 10
                             me0='0'+str(me0,1,1)
                           case me0 > 9.and.me0<13
                             me0=str(me0,2)
                           case me0 > 12
                             me0='01'
                        endcase
                        me1=val(substr(data0,1,2))+1
                        do case
                           case me1 < 10
                             me1='0'+str(me1,1,1)
                           case me1 > 9.and.me1<13
                             me1=str(me1,2)
                           case me1 > 12
                             me1='01'
                        endcase
               set cent on
               do case
                  case me0='01'
                       store '0 1 '  to me0
                       ms0='   ┐н│а░и'
                       den0='31'
                  case me0='02'
                       store '0 2 '  to me0
                       ms0=' ┤ев░│а░и'
                       den0='28'
                  case me0='03'
                       store '0 3 '  to me0
                       ms0='     ма░▓'
                       den0='31'
                  case me0='04'
                       store '0 4 '  to me0
                       ms0='    ап░ил'
                      den0='30'
                  case me0='05'
                       store '0 5 '  to me0
                       ms0='      май'
                       den0='31'
                  case me0='06'
                       store '0 6 '  to me0
                       ms0='      ╛ни'
                       den0='30'
                  case me0='07'
                       store '0 7 '  to me0
                       ms0='      ╛ли'
                       den0='31'
                  case me0='08'
                       store '0 8 '  to me0
                       ms0='   авг│▒▓'
                       den0='31'
                  case me0='09'
                       store '0 9 '  to me0
                       ms0='▒еп▓емв░и'
                       den0='30'
                  case me0='10'
                       store '1 0 '  to me0
                       ms0=' ок▓омв░и'
                       den0='31'
                  case me0='11'
                       store '1 1 '  to me0
                       ms0='  ноемв░и'
                       den0='30'
                  case me0='12'
                       store '1 2 '  to me0
                       ms0=' декемв░и'
                       den0='31'
               endcase
               do case
                  case me1='01'
                       store '0 1 '  to me1
                       ms1='   ┐н│а░и'
                       den1='31'
                  case me1='02'
                       store '0 2 '  to me1
                       ms1=' ┤ев░│а░и'
                       den1='28'
                  case me1='03'
                       store '0 3 '  to me1
                       ms1='     ма░▓'
                       den1='31'
                  case me1='04'
                       store '0 4 '  to me1
                       ms1='    ап░ил'
                      den1='30'
                  case me1='05'
                       store '0 5 '  to me1
                       ms1='      май'
                       den1='31'
                  case me1='06'
                       store '0 6 '  to me1
                       ms1='      ╛ни'
                       den1='30'
                  case me1='07'
                       store '0 7 '  to me1
                       ms1='      ╛ли'
                       den1='31'
                  case me1='08'
                       store '0 8 '  to me1
                       ms1='   авг│▒▓'
                       den1='31'
                  case me1='09'
                       store '0 9 '  to me1
                       ms1='▒еп▓емв░и'
                       den1='30'
                  case me1='10'
                       store '1 0 '  to me1
                       ms1=' ок▓омв░и'
                       den1='31'
                  case me1='11'
                       store '1 1 '  to me1
                       ms1='  ноемв░и'
                       den1='30'
                  case me1='12'
                       store '1 2 '  to me1
                       ms1=' декемв░и'
                       den1='31'
               endcase
                                return
      ************** П░о╢ед│░а за пе╖а▓ на пла▓ежни   *****************
                            proc plat
                stor 0 to part0,sum00,ksal0 ,p1
                store space(15) to gr0
             *  store space(22) to bk0
                store space(22) to bf0
                store space(19) to ba0
                store space(15) to gb0
                store space(23) to vid5
                store space(35) to vid4
                store space(0) to obia1,obia2
                dn2=space(9)
                sch1='503'
                part1='   1'
             *  dn2='102804684 '
                i=' '
      do while .t.
          ramka()
          open_info(loc0:=1)
          locate for dn+go=dngo0
           @  2,31 say 'ПЕЧАТ ПЛАТЕЖHИ'
           @  3,30 say '----------------'
           l0=1
           @ 23+ml0,26 say 'Редак╢и┐ ┤и░мена ▒ме▓ка'
           @ 23+ml0,50 prompt 'HE'
           @ 23+ml0,53 prompt 'ДА'
           menu to l0
           @ 23+ml0,15say space(50)
            if l0=2
                @  5, 1 say 'Iban' get bf
                @  5,30 say 'Банка'get ba
                @  5,59 say 'Г░ад' get gb
                @  7,27 say 'Сме▓ка:' get sch1 pict "999"  valid subs(sch1,1,1)='5'
                @  7,40 say 'Па░▓ида:' get part1 pict "9999"
                chet()
                   if lastkey()=27
                       exit
                   endif
           l0=1
           @ 23+ml0,29 say 'Редак╢и┐ Web Site'
           @ 23+ml0,48 prompt 'HE'
           @ 23+ml0,51 prompt 'ДА'
           menu to l0
           @ 23+ml0,15say space(50)
                   if lastkey()=27
                       exit
                   endif
              IF  l0=2
                userpass()
              endif
            endif
                     vid00=vvid
                     buls00=buls
                     gr00=gr
                     bf00=bf
                     bs00=bf
                     ba00=ba
                     gb00=gb
                     lize0=lize
                     sas0=sas
                   * nest0=trim(subs(izb[q0],1,3)+prsl_0+repl('0',12))
                     nest0=' '
                   part2=sch1+part1
                   open_obap(loc0:=1)

                  find '&part2'
                   if .not.found()
                     @ 23+ml0,24 say 'H┐ма па░▓ида ▒ ▓ози номе░:1'+part2
                     i0=inkey(0)
                     loop
                   else
                        repl name with subs(name,1,13)+bf00
                   endif
        @  5, 1 clea to 21,78
        sch0='401'
        ll13='н'
        set key -2 to ddok2
        l1='н'
        @ 23+ml0,22 say 'F3 - Редак╢и┐ данни▓е на до▒▓ав╖ика'
        @  8,31 say 'Hов паке▓ д/н' get l1 valid l1='д'.or.l1='н'
        read
                   if lastkey()=27
                       exit
                   endif
        if l1='д'.and.file("p31.prn")
           eras p31.prn
        endif
 *      set kea
 *  case lastkey()=-2
 *   ll13='д'
 *   @ 23+ml0,27 say 'Редак╢и┐▓а за░едена'
        @  8,31 say space(30)
        set key -2 to spisk1
        set key -32 to spisk1
        @ 23+ml0,22 say 'F3 - Изди░ва па░▓да▓а на до▒▓ав╖ика'
        @ 12,34 say 'Дo▒▓ав╖и╢и'
        @ 14,24 say 'В║веде▓е ╕и┤║░а на па░▓ида▓а ' get part0 pict "9999"
              chet()
              if lastkey()=27.or.part0=0
                 exit
              endif
        open_obap()
        part3='401'+str(part0,4)
        find "&part3"
          if found()
                dn2=subs(name,27,9)
                bf0=iban
                name0=name
          endif
                set key -2 to
                set key -32 to
                open_regl()
                locate for dn=dn2
                if found()
                  rec_lock()
                    if empty(bf)
                       repl bf with bf0
                    endif
                    if empty(vid)
                       repl vid with name0
                    endif
                  rec_unlock()
                    gr0=gr
                    vid5=vid
                    vid4=vvid
                    bf0=bf
                    ba0=ba
                    gb0=gb
                endif
                @  6, 6 clea to 21,78
                @  5,20 say 'Дo▒▓ав╖и╢и ' +part3
              if empty(dn2)
                @  19,07 say 'Partidata na kontragenta trqbwa da zawarshwa s bulstat ili druga'
                @  20,07 say '   harakterna fraza za prtidata i tova se pravi v menu 1/2.'
              endif
                chet()

             if  ll13='д'
           *    @  7, 2 say 'Iban' get iban0
           *    @  7,38 say 'в дневник1'+vid4
           *    @  7,58 say 'Г░ад '
                @  9, 1 say 'Б.▒ме▓ка                       Банка                     Г░aд'
                @  5,40 get vid5
                @  9, 9 get bf0
                @  9,38 get ba0
                @  9,64 get gb0
                chet()
             else
           *    @  7, 2 say 'Iban '+iban0
           *    @  7,32 say 'в дневник2'+vid4
           *    @  7,58 say 'Г░ад ' + gr0
                @  9, 1 say 'Б.▒ме▓ка                         Банка                    Г░aд'
                @  9,10 say bf0
                @  9,40 say ba0
                @  9,64 say gb0
                chet()
             endif
                open_regl()
                   locate for dn=dn2
                      if found()
                         rec_lock()
                         repl vid with vid5, vvid with vid4,bf with bf0,;
                         ba with ba0,gb with gb0
                         rec_unlock()
                      endif
              if lastkey()=27
                 loop
              endif
        part3='401'+str(part0,4)
        open_obap()
        find "&part3"
          if found()
             ksal0=ksal
            rec_lock()
            repl iban with bf0
            rec_unlock()
          endif
        open_dpar()
        open_arhi()
        open_kpar()
        set filter to (kpar->part=part3).and.kpar->kol=1
        go top
        store 0 to sum00
       if dn2='▓║░гов▒ки'
        obia1='Так▒а ▓║░гов▒ки ░еги▒▓║░ - ГФО'
       else
        obia1='Ф-и:'
       endif
          do while .not. eof()
            dn0=subs(data,4,2)+data+nom
            sele 1
            find "&dn0"
             if len(obia1+' '+subs(vid,6,10)+'-'+subs(vid,17,8)) < 96
                 obia1=obia1+' '+subs(vid,6,10)+'-'+subs(vid,17,8)
             endif
            sele 5
            find "&dn0"
                    sum00=sum00+kast
                         if .not. eof() ; skip ; else ; exit ; endif
          enddo
             if 44 < len(obia1)
                 obia2=subs(obia1,45,52)
                 obia1=subs(obia1,1,44)
             endif
              if sum00=0
                @  19,07 say 'Poleto stoinost e zashtoto ne ste postavili 1-ca v menu 5/4     '
                @  20,07 say 'v poleto kolichestvo sreshtu sumata za plashtane                '
              endif
        obia1=obia1+space(44-len(obia1))
        obia2=obia2+space(52-len(obia2))
        @ 23+ml0,15 say space(51)
        @ 12,26 say 'С▓ойно▒▓ ' get sum00 pict '9999999.99'
        @ 14,4  say 'По┐▒нение' get obia1
        @ 16,4  say 'По┐▒нение' get obia2
                chet()
              if lastkey()=27.or.sum00=0
                 loop
              endif
        l1='н'
        @ 18,31 say 'RINGS д/н' get l1 valid l1='д'.or.l1='н'
        read
                   if lastkey()=27
                       exit
                   endif
            if sum00-ksal0 <> 0
                @ 23+ml0,16 say 'ВHИМАHИЕ'   color 'R+/B'
               if 0 < sum00-ksal0
                  @ 23+ml0,26 say 'Пла╣а▓е ПОВЕЧЕ на д▓ав╖ика   ▒:'+str(sum00-ksal0,9,2)
               else
                  @ 23+ml0,26 say 'Пла╣а▓е По-малко на д▓ав╖ика ▒:'+str(sum00-ksal0,9,2)
               endif
                   pauza()
                   if lastkey()=27
                       exit
                   endif
            endif
    if 0 < sum00
        store '' to  ss00
          for i=1  to 16
              if i < 16-len(ltrim(str(sum00,12,j1)))+1
              ss00=ss00+'>'
              else
              ss00=ss00+ltrim(str(sum00,16,j1))
              exit
              endif
          next
       bk00=substr(bs00,5,4)+'BGSF'
       bido0=subs(bf0,5,4)+subs(bf0,1,2)+'SF'
       @ 2,2 clea to 21,78
       @ 2,25 say 'ПЛАЩАHЕ ПО РАЗПЛАЩАТЕЛHА СМЕТKА'
       @ 3,24 say '---------------------------------'
        do messec
          set cons off
           sele 1
           use &disc_1\job\bala
           set filter to t='61'
           go top
           store recno()   to br0
       go  br0+1
       rec_lock()
       repl pola with substr(pola,1,5)+ba00+substr(pola,26,9)+'Да▓а '+space(29)+ '╙'
       rec_unlock()
       go  br0+2
       rec_lock()
     repl pola with substr(pola,1,7) + gb00 + substr(pola,23,47)
       rec_unlock()
       go  br0+5
       rec_lock()
     repl pola with substr(pola,1,14) + vid5 + substr(pola,50,20)
       rec_unlock()
       go  br0+7
       rec_lock()
     repl pola with substr(pola,1,8) + bf0 + substr(pola,31,29) + bido0 + substr(pola,68,2)
       rec_unlock()
       go  br0+9
       rec_lock()
     repl pola with substr(pola,1,14) + ba0 + substr(pola,34,36)
       rec_unlock()
       go  br0+12
       rec_lock()
     if dn2='▓║░гов▒ки'
          repl pola with '╙       за пла╣ане о▓/к║м Б╛дже▓а     ╙'+space(11)+'╙ '+ ss00+'╙'
     else
         repl pola with substr(pola,1,52) + ss00 +'╙'
     endif
      set cons off



       rec_unlock()
       go  br0+14
       rec_lock()
      repl pola with substr(pola,1,24) + obia1+'╙'
       rec_unlock()
       go  br0+16
       rec_lock()
      repl pola with substr(pola,1,16)+obia2+'╙'
       rec_unlock()
       go  br0+18
       rec_lock()
      repl pola with '╙ ЕИК ПО БУЛСТАТ '+dn1+subs(fir,4,41)+'╙'
       rec_unlock()
       go  br0+20
       rec_lock()
     repl pola with substr(pola,1,8)+bs00+substr(pola,31,29)+bk00+substr(pola,68,2)
       rec_unlock()
       go  br0+23
       rec_lock()
     repl pola with substr(pola,1,8)+ba00+'КЛОH   '+gb00+substr(pola,51,19)
       rec_unlock()
       go  br0+25
       rec_lock()
            if l1= 'д'
     repl pola with '╙ Ринг▒ ДА                         ╙Ринг▒ да▓а '+dtoc(date())+'           ╙'
            else
     repl pola with '╙ Ринг▒ HЕ                         ╙Ринг▒ да▓а                      ╙'
            endif
       rec_unlock()
                   do izrab
                   if lastkey()=27
                       exit
                   endif
           sele 1
             go top
             set prin on
             set prin to s0001
             set marg to 5
             ?? 'P10A50'
          for j=1  to 6
             ?
          next
          for i=1  to 2
                             do while t='61'
             ? trim(pola)
           * ? str(recno()-br0,4)+trim(pola)
                             if .not.eof()
                                skip
                             else
                                exit
                             endif
                             enddo
                 go top
          for j=1  to 15
             ?
          next
               next
  ** set prin off
   *      store br4 to b3
   *      save_1='&us_0'+'s'+nulb3()+'.prn'
   *      memowrit("&save_1",ltrim(memoread("&save_1"))+memoread('s0001.prn')+memoread('s0001.prn'))
   *      if l6='n'
   *         do grplat
   *      else
   *        memowrit("s0002.prn",ltrim(memoread("s0001"))+memoread('s0001.prn')+memoread('s0001.prn'))
   *      endif
   *      br4=br4+1
           do pech
   *       krprev()
    endif
      enddo
                            return
     *************** П░о╢ед│░а за паке▓но пла▓ежно к║м до▒▓ав╖и╢и *************
     *************** П░еводно на░еждане за к░еди▓ен п░евод *************
                              proc krprev
                        ss00=str(sum00,12,2)
                        obb0=''
                        set cent off
                        set marg to 0
                        set prin on
                        set prin to p30
    do case
       case subs(bf00,5,4)='RZBB'
       set date ansi
      *            BAE на изп░а╣а╖а                     BAE на пол│╖а▓ел┐
  ?? '-}{1:F01'+SUBS(bf00,5,8)+'XXXX0000000000}'+'{2:I103'+SUBS(bf00,5,8)+'XXXXN0000}'+'{4:'
  ? ':20:'+nest0
  ? ':23B:CRED'
  ? ':32A:'+strtran(dtoc(date()),'.','')+'BGN'+strtran(ltrim(ss00),'.',',')
  ? ':50K:/'+bf00                           // IBAN на     HАРЕДИТЕЛ
  store '' to asan1
  store fir to asan0
  ascans()
  ? ltrim(trim(strtran(asan1,'"','')))      // име на ┤и░ма▓а
  ? ':52D:'+SUBS(bf00,5,8)                  // БАЕ на
  store '' to asan1
  store ba00 to asan0
  ascans()
  ? ltrim(trim(asan1))                      // име на банка▓а
  ? ':57D:'+subs(ibdo0,5,8)                 // БАЕ на      ПОЛУЧАТЕЛ
  store '' to asan1
  store ba00 to asan0
  ascans()
  ? ltrim(trim(asan1))                      // име на банка▓а
  ? ':59:/'+ibdo0+'PAY'+parag0              // IBAN на
  store '' to asan1
  store bud0 to asan0
  ascans()
  ? ltrim(trim(asan1))                      // ime na polichatel
  store '' to asan1
  store subs(obia10,1,35) to asan0
  ascans()
  ? ':70:'+ltrim(trim(asan1))
  ? ' /'
  ? '/PROL/NSSI'
  ? '/OPNAT/J'
  ? ':71A:SHA'                 // ▓ак▒а▓а на п░евода е за ▒ме▓ка на на░еди▓ел┐
  ? ':72:/DTYPE/BUDJ/OPER/BISER'  // вида на пла╣ане е П░еводно на░еждане за к░еди▓ен п░евод
  ? '/BAEREF/000000000000000000'
  ? '/DOC/NUM9DOC.NUMDAT'+strtran(dtoc(date()),'.','')
  ? '/PERIOD/BEG'+strtran(dtoc(data2),'.','')+'END'+strtran(dtoc(data3),'.','')
  ? '/BUL/'+trim(buls0)
  ? '/IZL/Obliged Person'
  ?
    case subs(bf00,5,4)='UBBS'
       set cent on
       store '' to asan1
       store subs(vid5,1,30) to asan0
       ascans()
       obb0=obb0+'IBAN311|'+ltrim(trim(asan1))+'|'+bf0+'|'+subs(bf0,5,4)+'BGSF|BGN|'
       store '' to asan1
       store subs(obia1,1,35) to asan0
       ascans()
       obb0=obb0+ltrim(ss00)+'|'+ltrim(trim(asan1))
       store '' to asan1
       store subs(obia2,1,35) to asan0
       ascans()
       obb0=obb0+'|'+ltrim(trim(asan1))
       if l1='д'
          obb0=obb0+'|on'
       else
          obb0=obb0+'|'
       endif
       if 2999.99 < sum00
           store '' to asan1
           store 'Декла░а╢и┐' to asan0
           ascans()
           obb0=obb0+'|'+ltrim(trim(asan1))+'|'
       else
           obb0=obb0+'||'
       endif
       ?? obb0
    endcase
      memowrit("p31.prn",memoread("p31.prn")+memoread('p30.prn')+chr(13)+chr(10))
      copy file p31.prn to s0031.prn
      set date brit
      set cent on
      set marg to 5
                               return // к░ай на пла▓ежно
                       func ascans
   for i = 1 to len(asan0)
      if 127 < asc(subs(asan0,i,1)) .and. asc(subs(asan0,i,1)) < 192
         asan1=asan1+chr(asc(subs(asan0,i,1))+64)
      else
         asan1=asan1+subs(asan0,i,1)
      endif
   next

   ************ П░о╢│д│░а▓а о▓пе╖а▓ва в ▓░и колони мемо░иални о░де░и ***********
                           proc troi
   store 0 to b0
   store 1 to b3
   b4:=0
      save_0='s0001'
   do while .t.
   store '' to var1,var2,var3
   set prin to
     save_1='&us_0'+'s'+nulb4()+'.prn'
    if file ("&save_1")
     var1=memoread("&save_1")
    endif
     save_2='&us_0'+'s'+nulb4()+'.prn'
    if file ("&save_2")
     var2=memoread("&save_2")
    endif
     save_3='&us_0'+'s'+nulb4()+'.prn'
    if file ("&save_3")
     var3=memoread("&save_3")
    endif
     timecount(sek2:=1)
          if (.not.file ("&save_1")).and.(.not.file ("&save_2")).and.(.not.file ("&save_3"))
             exit
          endif
                  set prin to &save_0
                  set marg to 16
                  if l0=2 .and. b3=1
                     ?
                     ? space(17)+norm0+'МЕМОРИАЛHИ  ОРДЕРИ'
                     ? space(3)+fir
                     ? space(24)+vek0
                  else
                        b2=b2+1
                  endif
            *v01
                ?  'P20A65'
                ?
                ? space(126)+'▒▓░. '+str(b2,3)
                ?
                    b1=56
                    store 45 to lin1
                    for lin0 = 1 to b1+0
                    store space(lin1) to var_1,var_2,var_3
                       if .not. empty(var1)
                          var_1=memoline(var1,lin1,lin0)
                       endif
                       if .not. empty(var2)
                          var_2=memoline(var2,lin1,lin0)
                       endif
                       if .not. empty(var3)
                          var_3=memoline(var3,lin1,lin0)
                       endif
                     if len(var_1)=0
                        store space(lin1) to var_1
                     endif
                     if len(var_2)=0
                        store space(lin1) to var_2
                     endif
                     ? var_1+'  '+var_2+'  '+var_3
                    spri()
                    next
   enddo
      *  @ 23,15 say space(51)
         @ 16,30 say 'Б░ой на ▒▓░ани╢и▓е'+ str(b2,3)
         set prin off
         set prin to
         set cons off
         inkey(5)
     save_0='&us_0'+'s'+nulb3()+'.prn'
     do while file ("&save_0")
       !del  &save_0
       b3=b3+1
       save_0='&us_0'+'s'+nulb3()+'.prn'
     enddo
                        return



    ****************  nachalo izrabotvana na osmicniite s0001-sX.prn faylove ****************
                              proc osmich

      if file("&disc_0\god&dt0\zkpo\&go0\deklar.txt")
          eras "&disc_0\god&dt0\zkpo\&go0\deklar.txt"
      endif
      erase &disgod0
      erase &us_\zkpo.pdf

        if file("&disc_1\zan\izkl\app.ini")
         *  @  0,15  say 'izkl AAAA' ; inkey(0) //kkk
            zanvi(zan0:='izkl')
        endif

    b3=1 ; b4=0

      timecount(sek2:=1)

           if 0 < val(subs(str(round(b2/deli0,20),5,2),4,2)) && glkn-8 memo-6 delitel
                b2=val(subs(str(round(b2/deli0,20),5,2),1,2))+2
           else
                b2=val(subs(str(round(b2/deli0,20),5,2),1,2))+1
           endif
           dele file s9999.prn

          for i0=1  to b2   &&  b2 e broi osmchki -> v edin fail mogada se syberat 8 fila s glkn
              timecount(sek2:=1)

      *  @  0,15  say 'aaaa '+str(i0,3)+str(deli0,3)   ; inkey(0) //kkk
                  if i0=1
                         if subs(disgod0,21,4)='glkn'
    memowrit('s9999.prn',memoread("s9999.prn")+space(37)+'ГЛАВHА KHИГА';
    +''+chr(13)+chr(10)+space(20)+fir+''+chr(13)+chr(10)+space(40)+vek0;
    +''+chr(13)+chr(10)+sbit0)
                         endif
                  else
                   if i0 < b2
                     memowrit('s9999.prn',memoread("s9999.prn")+sbit0)
                   endif
                  endif
            for i1=1 to deli0 step 1

                timecount(sek2:=1)
                 save_0='s'+nulb3()+'.prn'
                 b3=b3+1               && naprimer 1-8 9-16 17-24 i t.n.
              if file("&save_0")
                 memowrit('s9999.prn',memoread("s9999.prn")+memoread("&save_0"))

                 for i2=1 to inte0   &&  glkn-6 memo->4 intervali mevdu dve stranici
                    timecount(sek2:=1)
                    memowrit('s9999.prn',memoread("s9999.prn")+''+chr(13)+chr(10))
                 next
                 dele file "&save_0"
              else
                 exit
              endif
* @  0,15  say 'bbbb '+str(i1,3)+str(deli0,3)   ; inkey(0) //kkk
            next

                if file("s9999.prn")
                   if 0 < b4
                     for i3=1 to inte1
                      timecount(sek2:=1)
                      memowrit('s9999.prn',''+chr(13)+chr(10)+memoread("s9999.prn"))
                     next
                   endif
                   save_1='s'+nulb4()+'.prn'
                   copy file s9999.prn to "&save_1"
                   dele file s9999.prn
                endif
          next

   *********************  osmicniite.prn / osmicniite.prn faylove ****************
      if file("&disc_1\zan\izkl\app.ini")
         *   @  0,15  say 'izkl BBBB' ; inkey(0) //kkk
             zanvi(zan0:='izkl')
       endif

                if file('&disc_0\zan.pdf')
                   dele file '&disc_0\zan.pdf'
              *   ! del &disc_0\*.tmp
                endif
                if file('zkpo.pdf')
                   dele file zkpo.pdf
                endif

          for i0=1  to b2   && prashta s0001.prn v \disc za da se otpechata v .pdf
                 timecount(sek2:=1)
                 save_0='s'+nulb3()+'.prn'
                 b3=i0               && naprimer 1-8 9-16 17-24 i t.n.
              save_0='s'+nulb3()+'.prn'
              if file("&save_0") &&  otbroyava i s0???.prn  failovete
                  copy file "&save_0" to "&disc_0\&save_0"

                  do sentinel

                      if .not. file('zkpo.pdf') &&    .and. file('&disc_0\zan.pdf')
                          timecount(sek2:=5)
                       *  inkey(5)  //  ne pipay i ne go maha neka da se vigda che nqma nigda ot tazi pauza
                          copy file "&disc_0"+"\zan.pdf" to ZKPO.pdf  // da se ostavyat glavnite bukvi
                          timecount(sek2:=4)
                       *  inkey(4) // ok!!! ne pipay
                      else
                          rename zkpo.pdf to aaa.pdf
                          timecount(sek2:=4)
                       *  inkey(4) // ok!!! ne pipayay
                          ! &disc_1\exe\pdf\pdftk.exe aaa.pdf &disc_0\zan.pdf output ZKPO.pdf
                          timecount(sek2:=5)
                       *  inkey(5)    // ne promenya
                          dele file '&disc_0\zan.pdf'
                          dele file aaa.pdf
                      endif
              endif
          next
             *    @ 23,15 say space(51)
                   copy file zkpo.pdf to &disgod0
                   timecount(sek2:=5)   // iztr
                *  inkey(5)
                      if file('zkpo.pdf')
                         dele file zkpo.pdf
                      endif
        if file("&disgod0")
          * PRINT  DDS0124.PDF
          ! cmd /c start &pdfxc_0  &disgod0
      if file("&disc_1\zan\vkl\app.ini")
       *  @  0,15  say 'vkl CCCC' ; inkey(0) //kkk
          zanvi(zan0:='vkl')
     endif
           set cursor on ; timecount(sek2:=6)
           return
        else
               @ 23,15 say space(43)
          @ 23+ml0,15 say '              Файл║▓ не е наме░ен.                 '
            timecount(sek2:=4)
        *   inkey(4)
          @ 23+ml0,15 say ' F7-╖е▓е док│мен▓а F8-код опе░а▓о░ да▓а на пла╣ане '
        endif

       if file("&disc_1\zan\vkl\app.ini")
         *  @  0,15  say 'vkl EEEE' ; inkey(0) //kkk
            zanvi(zan0:='vkl')
       endif

                  if file("zan.*")
                   !del zan.*
                  endif

                   dele file zkpo.pdf
                    if file("p*.prn")
                      !del p*.prn
                   endif

                   if file("&disc_0\vdm*.tmp")=.T.
                      aaaa=subs(disc_0,1,5)
                      !del &aaaa\vdm*.tmp
                   endif

                      return
   *********************  kray izrabotvana na osmicniite.pdf faylove ****************
   *********************  nachalo prikzkpo gfo glkn memo bank   ****************
                              proc prikzkpo
           set key -24 to  ; @ 11,21,13,59 box ram1 ; @ 12,22 clea to 12,58
           @ 12,28 say 'ГОДИШHИ СЧЕТОВОДHИ ОТЧЕТИ'
       *   raboti idealno no bavno  ! cmd /c start %SystemRoot%\explorer.exe  &disc_0\GOD&dt0\ZKPO\&go0
          ! cmd /c start &disc_0\GOD&dt0\ZKPO\&go0   // raboti mnogo barzo
           set cursor on
                            return
      open_arhi(loc0:=66)
      appe blank
      rec_lock()
      repl nom with str(nom0,4), papk with str(papk0,3),dok with 'г┤о       .glkn'+vek0,;
      data with data0, vek with subs(vek0,1,2)
      appe blank
      nom0=nom0+1
      repl nom with str(nom0,4), papk with str(papk0,3),dok with 'г┤о       .memo'+vek0,;
      data with data0, vek with subs(vek0,1,2)
      appe blank
      nom0=nom0+1
      repl nom with str(nom0,4), papk with str(papk0,3),dok with 'г┤о       .banka'+vek0,;
      data with data0, vek with subs(vek0,1,2)
   *  data with(14)='REG'
   *     repl reg with dtoc(date())
   *  endif
   *  rec_unlock()
   *  @ 18,29 say 'Hа▓и▒не▓е кой да е клави╕'
               i0=inkey(0)
      @ 18, 0 say space(80)
   @  6, 0 clea to 17,36
   @  6,43 clea to 17,75
    nom0=nom0+1
            set key -24 to  prikzkpo
    @  3,17 say str(nom0,5)+'-'+data0
       @  3,73 get papk0 pict '99' valid papk0=0.or.papk0=1.or.papk0=2
        chet()
                                   return
   *********************  kray prikzkpo gfo glkn memo bank    ****************
   *****************************    userpass   ****************************
                              func userpass
           if file ("bank.mem")
               restore from bank additive
           else
             store space(78) to bank1
             store space(25) to bank2
             store space(25) to bank3
             save all like bank? to bank
           endif
                @ 14, 1 say 'По▓░еби▓ел▒ко име:'
                @ 14,20 say space(25)  color "/w"
                @ 14,46 say 'Па░ола:'
                @ 14,54 say space(25)  color "/w"

                @ 17+ml0,33 say 'ВHИМАHИЕ !'  color 'R+/B'
                @ 19+ml0,2 say 'Web Site, По▓░еби▓ел▒ко име и Па░ола не мога▓ да ▒║д║░жа▓ ин▓е░вали/spaces/!'
                @ 20+ml0,2 say '  П░епо░║╖и▓елно е в║веждане▓о на данни▓е да ▒е па░ви ╖░ез Copy / Paste.'
                @ 11,35 say 'Web Site'
                @ 12, 1 get bank1
                  chet()
                      *   if lastkey()=27
                      *       save all like bank? to bank
                      *       return    .T.  && userpass
                      *   endif

            store ' ' to x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20
            store space(25) to bank2
                      for i0=1 to 25   // username
                      if i0 < 10
                         i1=str(i0,1)
                      else
                         i1=str(i0,2)
                      endif
                        @ 14,19+i0 get x&i1
                          read
                          if lastkey()=27 .or. x&i1=' '
                             exit
                          endif
                        @ 14,19+i0 say '*' color "/w"
                           if i0=1
                              bank2=x&i1
                           else
                              bank2=bank2+x&i1
                           endif
                          if lastkey()=13
                             exit
                          endif
                      next
                      bank2=bank2+space(25-len(bank2))

            store ' ' to x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20
            store space(25) to bank3
                      for i0=1 to 25   // pass
                      if i0 < 10
                         i1=str(i0,1)
                      else
                         i1=str(i0,2)
                      endif
                        @ 14,53+i0 get x&i1
                          read
                          if lastkey()=27 .or. x&i1=' '
                             exit
                          endif
                        @ 14,53+i0   say '*'  color "/w"
                           if i0=1
                              bank3=x&i1
                           else
                              bank3=bank3+x&i1
                           endif
                          if lastkey()=13
                             exit
                          endif
                      next
                      bank3=bank3+space(25-len(bank3))
                          save all like bank? to bank

                    return    .T.  && userpass
       ***************  Вид на док│мен▓а за ди▒ке▓а ****************
                          proc viddok
    save screen
    @  1,11,20,70 box ram1
    @  2,12 clea to 19,69
    @  2,13 prompt '01 Фак▓│░а'
    @  3,13 prompt '02 Деби▓но изве▒▓ие'
    @  4,13 prompt '03 K░еди▓но изве▒▓ие'
    @  5,13 prompt '07 Ми▓ни╖е▒ка декла░.  '
    @  6,13 prompt '09 П░о▓окол или д░. д-мен▓'
    @  7,13 prompt '11 Фак▓│░а - ка▒ова о▓╖е▓но▒▓'
    @  8,13 prompt '12 Деби▓но изве▒▓ие - ка▒ова о▓╖е▓но▒▓'
    @  9,13 prompt '13 К░еди▓но изве▒▓ие - ка▒ова о▓╖е▓но▒▓'
    @ 10,13 prompt '91 П░о▓окол за изи▒к│еми┐ дан║к по ╖л.151в,ал.3'
    @ 11,13 prompt '92 П░о▓окол за дан║╖ни┐ к░еди▓ по ╖л. 151г,ал.8'
    @ 12,13 prompt '93 П-л за изи▒к.д-к по ╖л.151, кои▓о HЕ п░ил. ▒пе╢.░ежим.'
    @ 13,13 prompt '94 П-л за изи▒к.д-к по ╖л.151, кои▓о ПРИЛАГАТ ▒пе╢.░ежим.'
    @ 14,13 prompt '81 О▓╖е▓ за изв║░╕ени▓е п░одажби▓е'
    @ 15,13 prompt '82 О▓╖е▓ за изв║░╕ени▓е п░од. п░и ▒пе╢. ░ед на облаг.'
    @ 16,13 prompt '60 ▒▓окова ░азпи▒ка / п░иемо-п░едав. п░о▓окол.'
    @ 17,13 prompt '61 К░ива ┤ак▓│░а'


    @ 18,12 say repli('-',57)
    @ 19,25 prompt 'ENTER = ИЗБОР,   ESC = ОТKАЗ'
      menu to v2
         do case
            case v2=1  ; vd0='01' ; vid1='┤-░а'
            case v2=2  ; vd0='02' ; vid1='ди-е'
            case v2=3  ; vd0='03' ; vid1='ки-е'
            case v2=4  ; vd0='07' ; vid1='мд-┐'
            case v2=5  ; vd0='09' ; vid1='п-ол'
            case v2=6  ; vd0='11' ; vid1='┤-░а'
            case v2=7  ; vd0='12' ; vid1='ди-е'
            case v2=8  ; vd0='13' ; vid1='ки-е'
            case v2=9  ; vd0='91' ; vid1='п-ол'
            case v2=10 ; vd0='92' ; vid1='п-ол'
            case v2=11 ; vd0='93' ; vid1='п-ол'
            case v2=12 ; vd0='94' ; vid1='п-ол'
            case v2=13 ; vd0='81' ; vid1='о-е▓'
            case v2=14 ; vd0='82' ; vid1='о-е▓'
            case v2=15 ; vd0='60' ; vid1='п░-л'
            case v2=16 ; vd0='61' ; vid1='п░-л'
         endcase
               restore screen
             if vd0='01'.or.vd0='02'.or.vd0='03'.or.vd0='07'.or.vd0='09'.or.;
                vd0='11'.or.vd0='12'.or.vd0='13'.or.vd0='91'.or.vd0='92'.or.;
                vd0='93'.or.vd0='94'.or.vd0='81'.or.vd0='82'.or.vd0='60'.or.vd0='61'
                re0=recno() ; fnom() ; go re0 ; endif
                @ 20,22 say vd0
                          return

