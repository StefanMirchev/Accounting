     *SAV4.PRG  spravdds
   *   @  0,15  say 'bbbb ' ; inkey(0) //kkk
      do pro3 ; do pro4 ; set dele on ; store 0 to sald_0,obor_0 ; b2=1
      tt0='40' ; b00=0 ; ll2='п' ; v2=0 ; v21=0
         if sc9='д'
    v2=4
         else
    @  2,11,21,69 box ram1
    @  3,12 clea to 20,68
    @  3,27 say 'ОБОРОТHА  ВЕДОМОСТ  И  ЖУРHАЛ'
    @  5,18 prompt '1. С║к░а▓ени опе░а╢ии'
    @  7,18 prompt '2. Из░або▓ване на ж│░нал по анал. па░▓иди  '
    @  9,18 prompt '3. Изли▒▓ване на обо░о▓на ведомо▒▓ на ▒ин▓. ▒-ки'
    @ 11,18 prompt '4. Изли▒▓ване на обо░о▓на ведомо▒▓ на анал. п-ди'
    @ 13,18 prompt '5. Из░або▓ване на ж│░анал по ▒ин▓е▓и╖ни▓е ▒ме▓ки'
    @ 15,18 prompt '6. Ин┤о░ма╢и┐ за Д Д С'
    @ 17,18 prompt '7. Зам┐на на па░▓иди '
    @ 19,18 prompt '8. Т║░гов▒ка ░ен▓абилно▒▓'
      menu to v2
         endif

         if lastkey()=27  ; set dele off ; return ; endif
    do case
       case v2=1
       tt0='20' ; @ 02,01 clea to 23,78
          @  2,31 say 'С║к░а▓ени опе░а╢ии'
          @  3,30 say '--------------------'
          save screen
          open_arhi()
          set filter to substr(papk,1,1)='k'.and.data=data0
          go top
          declare fiel[1]
          fiel[1]='dok'
          declare imem[1]
          imem[1]=''
          @  7,17,20,61 box ram1
          @  8,22 say 'Оп░едел┐не г░│па▓а на док│мен▓а╢и┐▓а'
          dbedit( 9,26,18,53,fiel," ",'xxxxxxxxxxxxxxxxxxxxxxxxxx',imem,'  ')
                if lastkey()=27.or.substr(dok,23,4)='    '
                    return
                endif
         nom1=subs(data0,4,2)+data0+str(val(substr(dok,23,4)),4)
         dok2= substr(dok,1,26)
         open_arhi(loc0:=34)
         find '&nom1'
         if found()
            skip -1
         else
         endif
         nom0=val(nom)+1
         restore screen
         @  5,31 say 'Hоме░ на СО: '+str(nom0,4)
         lusi()         &&  pro1
         tt0='40'
       case v2=2
           joana()  && pro4
       case v2=3
           *   store 'I'+subs(us_0,2,7) to us_1
           do while .t.
               ramka()
               @ 21+ml0,14,24+ml0,66 box ram1
               @ 22+ml0,15 clea to 23+ml0,65
               ll4='л'
               store 0 to b0,l1,l2,l3,sald1
               set key -5 to ddok2  // p0
               set key -7 to ddok2  // p0
          *    @ 22+ml0,24 say 'F3 - из░або▓ване на обо░о▓на ведомо▒▓'
               @ 22+ml0,27 say 'F6-запи▒ва ОВ в годи╕ни ▒п░авки.'
               @ 23+ml0,15 say 'F8-запи▒ва ОВ на анали▓и╖ни п-ди в годи╕ни ▒п░авки.'
               @  2,24 say 'ИЗЛИСТВАHЕ HА ОБОРОТHА ВЕДОМОСТ'
               @  3,23 say '---------------------------------'
               @  8,20 say 'В лева "л" ╡ил. лева "╡"  млн. лева "м"' get ll4 valid ll4='л'.or.ll4='╡'.or.ll4='м'
               chet()
               @ 20,14 clea to 23,66 ; @ 22+ml0,14,24+ml0,66 box ram1
            *************begin paketno pecatane partidi ************
            *    ekpr0=2
            *************end   paketno pecatane partidi ************
            if file("&disc_0\zan.pdf") ; eras &disc_0\zan.pdf ; endif
                        izrab()
               set key -2 to  // sprqna vinagi izrabotwa
                       if lastkey()=27
                          set dele off
                          set key -5 to
                          exit
                       endif

                       oborot()  // pro4

                       if ekpr0=2
                           b1=54
               @ 14,20 say 'В║веде▓е б░о┐ на ░едове▓е на ▒▓░ани╢а' get b1 pict "999"
               chet()
                           set marg to 14
                           ll0='2'
                           ? 'P17A65'
                       endif
         if (.not.file("kobot.dbf")).or.(.not.file("kobot.dbf"))
             oborot()   //pro4
         endif
               razr()
               open_dobot()
               open_kobot()
               open_obve(loc0:=28)
 store 0 to ndso0,nkso0,dsto0,ksto0,kdso0,kkso0,b0
 b3=1
 ?  space(53)+'О Б О Р О Т H А      В Е Д О М О С Т'
 ?  space(48)+fir
 set cent on
 ? space(63)+'к║м  '+dtoc(date0)
 set cent off
 ?
 ? repli('_',129)
 ? 'С-KА               HАИМЕHОВАHИЕ                 САЛДО к║м 01.01.'+str(year(date0),4)+'г.'+'              ОБОРОТИ                САЛДО к║м 31.12.'+str(year(date0),4)+'г.'
*? 'С-KА               HАИМЕHОВАHИЕ                 САЛДО к║м .........                ОБОРОТИ                САЛДО к║м ...........'
 ? '                                                Д-▓            K-▓            Д-▓            K-▓            Д-▓            K-▓'
 ? repli('_',129)
                     do while .t.
                     store 0 to ndso1,nkso1,dsto1,ksto1,kdso1,kkso1
                        sch0=sch
                        name0=name
                        i=' '
                      * l1=18
                        t0=t
                        ds0=sch0
                        sele 2
                        go top
                        find '&ds0'
                        dsto1=dsto/ra0
                        sele 3
                        go top
                        find '&ds0'
                        ksto1=ksto/ra0
                        sele 7
                           if t0='а'
                             ndso1=ndso/ra0
                             kdso1=kdso/ra0
                           endif
                           if t0='п'
                             nkso1=nkso/ra0
                             kkso1=kkso/ra0
                           endif
                           if t0=' '
                                  nkso1=nkso/ra0
                                  kkso1=kkso/ra0
                                  ndso1=ndso/ra0
                                  kdso1=kdso/ra0
                           endif
                           sald_0=sald/ra0
                           obor_0=obor/ra0
                     sele 7
              if .not. eof() ; skip ; else ; exit ; endif
        if .not.sch0='   '
          if .not.(ndso1=0.and.nkso1=0.and.dsto1=0.and.ksto1=0.and.kdso1=0.and.kkso1=0)   &&  ▒амо н│лви па░▓иди
     if t0='а'
        if ekpr0=2
   *1  ? sch0+i+name0+i+str(ndso1+sald_0,j0,j1)+i+str(nkso1,j0,j1)+i+str(dsto1-obor_0,j0,j1)+i+str(ksto1,j0,j1)+i+str(kdso1-obor_0+sald_0,j0,j1)+i+str(kkso1,j0,j1)
       ? sch0+i+name0+i+str(ndso1+sald_0,j0,j1)+i+str(nkso1,j0,j1)+i+str(dsto1-obor_0,j0,j1)+i+str(ksto1,j0,j1)+i+str(kdso1-obor_0+sald_0,j0,j1)+i+str(kkso1,j0,j1)
        else
   *1  ? sch0+i+name0+i+str(ndso1+sald_0,j0,j1)+i+str(nkso1,j0,j1)+i+str(dsto1-obor_0,j0,j1)+i+str(ksto1,j0,j1)+i+str(kdso1-obor_0+sald_0,j0,j1)+i+str(kkso1,j0,j1)+i+i+sch0
       ? sch0+i+name0+i+str(ndso1+sald_0,j0,j1)+i+str(nkso1,j0,j1)+i+str(dsto1-obor_0,j0,j1)+i+str(ksto1,j0,j1)+i+str(kdso1-obor_0+sald_0,j0,j1)+i+str(kkso1,j0,j1)+i+i+sch0
        endif
     else
        if ekpr0=2
   *1 ? sch0+i+name0+i+str(ndso1,j0,j1)+i+str(nkso1-sald_0,j0,j1)+i+str(dsto1-obor_0,j0,j1)+i+str(ksto1,j0,j1)+i+str(kdso1,j0,j1)+i+str(kkso1+sald_0+obor_0,j0,j1)
      ? sch0+i+name0+i+str(ndso1,j0,j1)+i+str(nkso1-sald_0,j0,j1)+i+str(dsto1-obor_0,j0,j1)+i+str(ksto1,j0,j1)+i+str(kdso1,j0,j1)+i+str(kkso1+sald_0+obor_0,j0,j1)
         else
   *1 ? sch0+i+name0+i+str(ndso1,j0,j1)+i+str(nkso1-sald_0,j0,j1)+i+str(dsto1-obor_0,j0,j1)+i+str(ksto1,j0,j1)+i+str(kdso1,j0,j1)+i+str(kkso1+sald_0+obor_0,j0,j1)+i+i+sch0
    ? sch0+i+name0+i+str(ndso1,j0,j1)+i+str(nkso1-sald_0,j0,j1)+i+str(dsto1-obor_0,j0,j1)+i+str(ksto1,j0,j1)+i+str(kdso1,j0,j1)+i+str(kkso1+sald_0+obor_0,j0,j1)+i+i+sch0
         endif
     endif
                     spri()
          endif
        endif
                     ndso0=ndso0+ndso1
                     nkso0=nkso0+nkso1
                     dsto0=dsto0+dsto1
                     ksto0=ksto0+ksto1
                     kdso0=kdso0+kdso1
                     kkso0=kkso0+kkso1
                     enddo
 ?
 ? space(18)+'Об╣о'+space(18)+str(ndso0,j0,j1)+i+str(nkso0,j0,j1)+i+str(dsto0,j0,j1)+i+str(ksto0,j0,j1)+i+str(kdso0,j0,j1)+i+str(kkso0,j0,j1)
      if ekpr0=1.and.(0<>round(ndso0-l1,2).or.0<>round(nkso0-l2,2).or.0<>round(dsto0-l3,2).or.0<>round(ksto0-sald1,2))
       ?
  *    ? red0
  *    ? space (6)+'Разлика Об╣о - Об╣о на '+us_1+'   '+str(ndso0-l1,j0,j1)+i+str(nkso0-l2,j0,j1)+i+str(dsto0-l3,j0,j1)+i+str(ksto0-sald1,j0,j1)
      endif
 pech()
           enddo
       case v2=4
          *    open_obve(loc0:=29)
           do while .t.
            store  0 to pt1,pt2,pt3,sch3,sch4
            b3=1
            store 'н' to nul0,l2,l3
         *  sc9='н'
            ts1=' '
            s_499=' '
               ll4='л'
               ramka()
               @  2,18 say 'ИЗЛИСТВАHЕ HА ОБОРОТHА ВЕДОМОСТ HА АHАЛ. П-ДИ'
               @  3,17 say '-----------------------------------------------'
            if !sc9='д'
               @ 17+ml0,14,24+ml0,66 box ram1
               @ 18+ml0,15 clea to 23+ml0,65
               set key -2 to analobo  &&  pro4
               set key -3 to ddok1
               set key -6 to ddok
               set key -7 to chpa
               set key -8 to ddok
               set key -9 to chpa
               @ 18+ml0,19 say 'F3 - из░аб. на обо░. ведомо▒▓ на анал.п-ди'
               @ 19+ml0,19 say 'F4 - изли▒▓ва н│леви анал. па░иди         '
               @ 20+ml0,19 say 'F7 - оп░едел┐ под░едено▒▓▓а на анал. п-ди'
               @ 21+ml0,19 say 'F8 - о▓пе╖а▓ва г░│па о▓ анал. па░▓иди'
               @ 22+ml0,19 say 'F9 - изли▒▓ва анал. па░▓иди без н│леви ▒алда'
               @ 23+ml0,18 say 'F10 - о▓пе╖е▓ва ╖а▒▓ о▓ анал.па░▓иди'
            else ; analobo() ; endif


     *    *************begin paketno pecatane partidi ************
     * *  @  2,22 say 'С▓а░▓. паке▓. s0000' ; keyboard chr(-33) ; ddok()
     *
     *     open_obve(loc0:=29)
     *   do while .t.
     *     re0=recno()
     *     * wait 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa'
     *
     *    if a='д' .and. (.not.(ndso=0.and.nkso=0.and.kdso=0.and.kkso=0))
     *         sch0=sch
     *    *************endn paketno pecatane partidi ************


             @  8,21 say 'В║веде▓е ╕и┤║░а на желана▓а ▒ме▓ка :' get sch0
    

               @ 11,20 say 'В лева "л" ╡ил. лева "╡"  млн. лева "м"' get ll4 valid ll4='л'.or.ll4='╡'.or.ll4='м'
               chet()
               set key -2 to
               set key -3 to
               set key -6 to
               set key -7 to
               set key -8 to
               set key -9 to
               save screen  to ek1
                       if lastkey()=27 .or. substr(sch0,1,3)=' '
                          set dele off
                      *    loop
          *************begin paketno pecatane partidi ************
                          exit
          *************endn paketno pecatane partidi ************
                       endif
                     open_obve(loc0:=29)
                     find '&sch0'
                     if found()
                       t0=t
                       name0=name
                     endif
                     clos data
                     if  substr(sch0,1,1)='4'.and.t0=' '
                        @ 23+ml0,15 say space(15)
                        s_499=' '
                        @ 23+ml0,25 say 'Вземани┐ "д" зад║лжени┐ "к":' get s_499  valid  s_499='д'.or.s_499='к'.or.s_499=' '
                        chet()
                     endif
                   @ 10,14 clea to 23,66 ; @ 22+ml0,14,24+ml0,66 box ram1
                        izrab()
                       if lastkey()=27
                          set dele off
                          exit
                       endif
               ds0=sch0
         if (.not.file("dpart.dbf")).or.(.not.file("kpart.dbf"))
             @ 23+ml0,15 say 'Hеоб╡одимо е да из░або▓и▓е обо░.ведомо▒▓ анал.п-ди!'
             i0=inkey(0)
             @ 23+ml0,15 say space(51)
             analobo()
         endif
               open_obve(loc0:=29)
               find '&sch0'
               sald_0=sald
               obor_0=obor
               open_dpart()
               open_kpart()
               open_obap(loc0:=64)
             do case
                case ll2='п'
                     set order to 1
                case ll2='н'
                     set order to 3
             endcase
               find '&ds0'
                    if .not. found()
                      @ 23+ml0,15 say '        Тази ▒ме▓ка н┐ма анали▓и╖ни па░▓иди !      '
                        i0=inkey(0)
                       @ 23+ml0,15 say space(51)
                      sele 7
                      loop
                    else
                      restore screen  from ek1
                    endif
               if 0 < sch3
                  set filter to val(subs(part,1,3)) >= sch3 .and. sch4 >= val(subs(part,1,3))
               endif
               @ 17+ml0,14 clea to 23+ml0,66
               @ 22+ml0,14,24+ml0,66 box ram1
 store 0 to kol2,asal0,asal2,asal3,kold0,dast0,kolk0,kast0,kkol0,ksal0,ksal2,ksal3,b0
                        ll0='1'
                       if ekpr0=2
                           b1=42
   @ 11,20 say space(50)
   @ 11,20 say 'В║веде▓е б░о┐ на ░едове▓е на ▒▓░ани╢а' get b1 pict "999"
   chet()
                           b00=5
                           b1=b1-7
                           set marg to 23
                               ?? 'OL'+sbit0
                               prn0='OL'+sbit0
                       endif
               razr()

 *  ? space(55)+'Обо░о▓на ведомо▒▓ на анал. п-ди к║м ▒ин▓. ▒-ка  '+sch0
    ? space(53)+'Анали▓и╖ни па░▓иди к║м ▒ме▓ка '+sch0+' '+name0
 ? space(57)+fir
 ? space(73)+'к║м  '+dtoc(date0)
                       if ekpr0=2
 *  ? space(130)+'▒▓░. '+str(b3,3)
 ? repli('_',138)
 ? 'П-ДА       HАИМЕHОВАHИЕ                       САЛДО к║м ........                        ОБОРОТИ                         САЛДО к║м ........'
 ? '                                  М-ка T       K-во        СТ-СТ       K-во        СТ-СТ       K-во        СТ-СТ Т       K-во        СТ-СТ'
 ? repli('_',138)
                       else
 ?
 ? repli('_',169)
 ? 'П-ДА       HАИМЕHОВАHИЕ                       САЛДО к║м ........                        ОБОРОТИ                         САЛДО к║м ........         HАИМЕHОВАHИЕ      ЦЕHА'
 ? '                                  М-ка T       K-во        СТ-СТ       K-во        СТ-СТ       K-во        СТ-СТ Т       K-во        СТ-СТ'
 ? repli('_',169)
                       endif
             do case
                case ll2='п'
                     p0 ='substr(part,1,3)=sch0'
                  if 0 < sch3
                     p0 ='val(subs(part,1,3)) >= sch3 .and. sch4 >= val(subs(part,1,3))'
                  endif
                case ll2='н'
                     p0 ='substr(part,1,3)=sch0'
             endcase
                      set cons off
                     do while  &p0     //  pppppppppppppp
                            if .not. pt1=0
                              if   val(substr(part,4,4))<pt1 .or. val(substr(part,4,4))>pt2
                                 if .not. eof() ; skip ; loop ; else ; exit ; endif
                              endif
                            endif
               store 0 to kol1,asal1,kold1,dast1,kolk1,kast1,kkol1,ksal1
                        part1=substr(part,4,4)
                        dp0=part
                        name1=name
                        mk1=mk
                        kol1=kol
                        zena0=zena
                        asal1=asal/ra0
                        kkol1=kkol
                        ksal1=ksal/ra0
                        t1=t
                        ts1=ts
                        sele 4
                        find '&dp0'
                        kold1=kol
                        dast1=dast/ra0
                        sele 5
                        find '&dp0'
                        kolk1=kol
                        kast1=kast/ra0
                     sele 6
                           if .not. eof()
    if l3='д'.and.(kol1=0.and.asal1=0.and.kold1=0.and.dast1=0.and.kolk1=0.and.kast1=0.and.;
        kkol1=0.and.ksal1=0)   &&  ▒амо н│леви па░▓иди
        del()
    endif
                            skip
                           else
                               exit
                           endif
         if .not. s_499=' '
              if s_499=ts1
              else
                 loop
              endif
         endif
                if nul0='д'.and.ksal1=0
                    loop

                endif

    if l2='д' .and. (.not.part1='9999')
    if (kol1=0.and.asal1=0.and.kold1=0.and.dast1=0.and.kolk1=0.and.kast1=0.and.;
        kkol1=0.and.ksal1=0)   &&  ▒амо н│леви па░▓иди
 ? part1+' '+subs(name1,1,30)+' '+mk1+' '+t1+' '+str(kol1,10,j3)+' '+str(asal1,12,j1);
 +' '+str(kold1,10,j3)+' '+str(dast1,12,j1)+' '+str(kolk1,10,j3);
 +' '+str(kast1,12,j1)+' '+ts1+' '+str(kkol1,10,j3)+' '+str(ksal1,12,j1)+' '+part1+' '+substr(name1,1,16)+str(round(zena0,j4),9,j4)
               spri()
    endif
    else
             if ekpr0=2
  *  if kolk1=0
 ? part1+' '+subs(name1,1,30)+' '+mk1+' '+t1+' '+str(kol1,10,j3)+' '+str(asal1,12,j1);
 +' '+str(kold1,10,j3)+' '+str(dast1,12,j1)+' '+str(kolk1,10,j3);
 +' '+str(kast1,12,j1)+' '+ts1+' '+str(kkol1,10,j3)+' '+str(ksal1,12,j1)
  * endif
          else
       *  ВHИМАHИЕ ! ДЪЛИЖАHТА HА ЗАПИСА HЕ БИВА ДА БЪДЕ ПО-ГОЛАМА ОТ 186
     if (.not.part1='9999')   &&    default
   * if (.not.part1='9999')  .and. 500 < kast1  &&  houm dipo

 * ? part1+' '+subs(name1,1,30)+' '+mk1+' '+subs(partp,1,2)+' '+str(kol1,10,j3)+' '+str(asal1,12,j1);
   ? part1+' '+subs(name1,1,30)+' '+mk1+' '+t1+' '+str(kol1,10,j3)+' '+str(asal1,12,j1);
 +' '+str(kold1,10,j3)+' '+str(dast1,12,j1)+' '+str(kolk1,10,j3);
 +' '+str(kast1,12,j1)+' '+ts1+' '+str(kkol1,10,j3)+' '+str(ksal1,12,j1)+' '+part1+' '+substr(name1,1,16)+str(round(zena0,j4),9,j4)
     endif
          endif
               spri()
                  if ekpr0=2 .and.b0=0
                    ? 'OL'+sbit0
               *    ? repl(' ',106)+repl('.',1)+' ▒▓░.'+str(b3,3)
                  endif
    endif                      &&  ▒амо н│леви па░▓иди
        if t0=' '
               if t1='д'
                     asal2=asal2+asal1
               endif
               if t1='к'
                     asal3=asal3+asal1
               endif
                     dast0=dast0+dast1
                     kast0=kast0+kast1
               if ts1='д'
                     ksal2=ksal2+ksal1
               endif
               if ts1='к'
                     ksal3=ksal3+ksal1
               endif
        else
                     kol2=kol2+kol1
                     asal0=asal0+asal1
                     kold0=kold0+kold1
                     dast0=dast0+dast1
                     kolk0=kolk0+kolk1
                     kast0=kast0+kast1
                     kkol0=kkol0+kkol1
                     ksal0=ksal0+ksal1
        endif
                     enddo
                 if t0=' '
                       if asal2>asal3
                          asal0=asal2-asal3
                          t1='д'
                        else
                          asal0=asal3-asal2
                          t1='к'
                        endif
                       if ksal2>ksal3
                          ksal0=ksal2-ksal3
                          ts1='д'
                        else
                          ksal0=ksal3-ksal2
                          ts1='к'
                        endif
                 endif
    ?
   *? '                Об╣о                         '+t1+'              '+str(asal0+sald_0,12,j1);
   *+'              '+str(dast0,12,j1)+'              '+str(kast0-obor_0,12,j1)+'  '+ts1+'              '+str(ksal0-obor_0,12,j1)
   *  ? '                Об╣о                   '+t1+' '+str(kol2,10,j3)+' '+str(asal0+sald_0,12,j1);
   * +' '+str(kold0,10,j3)+' '+str(dast0,12,j1)+' '+str(kolk0,10,j3)+' '+str(kast0-obor_0,12,j1)+' '+ts1+' '+str(kkol0,10,j3)+' '+str(ksal0-obor_0,12,j1)
   ? '                 Об╣о                  '+t1+' '+str(kol2,10,j3)+' '+str(asal0+sald_0,12,j1);
   +' '+str(kold0,10,j3)+' '+str(dast0-obor_0,12,j1)+' '+str(kolk0,10,j3)+' '+str(kast0,12,j1)+' '+ts1+' '+str(kkol0,10,j3)+' '+str(ksal0-obor_0,12,j1)
   if s0000='н'
       ?? norm0
   endif
   pech()
    *     *************begin paketno pecatane partidi ************
    *     endif
    *   @ 4+ml0,1 clea to 21+ml0,78
    *   open_obve(loc0:=29)
    *   go re0
    *   if .not. eof() ; skip ; else ; return ; endif
    *      enddo
    *     *************end  paketno pecatane partidi ************


           enddo
       case v2=5
 sch0='   '
 sch2='   '
 ll4='л'
 * l0='д'
 l2=0
 open_obve()
 do while .t.
 *  re2=recno()
 *  sch0=sch
 ramka()
 store 'н' to l1,ll1
 set key -4 to ddok1
 set key -5 to ddok
 @ 21+ml0,14,24+ml0,66 box ram1
 @ 22+ml0,15 clea to 23+ml0,65
 @  2,31 say 'ЖУРHАЛ HА СМЕТKАТА'
 @  3,31 say '------------------'
 @  5,23 say 'В║веде▓е ╕и┤║░а на ▒ме▓ка▓а ' get sch0
 @  7,23 say '       Само за ▒ме▓ка       ' get sch2
 @  9,10 say 'По деби▓а на ▒ме▓ка▓а - "д" по к░еди▓а на ▒ме▓ка▓а - "к" ' get l0 valid l0='к'.or.l0='д'
 @ 11,19 say 'В лева "л" ╡ил. лева "╡"  млн. лева "м"' get ll4 valid ll4='л'.or.ll4='╡'.or.ll4='м'
 @ 22+ml0,17 say 'F5 - за п░ове░ка на па░и╖ен по▓ок              '
 @ 23+ml0,17 say 'F6 - извежда опи▒ание на опе░а╢и┐▓а по ░еги▒▓║░'
 chet()
 set key -4 to
 set key -5 to
 @ 22+ml0,15 clea to 23+ml0,65
 @ 22+ml0,14,24+ml0,66 box ram1
    izrab()
            if lastkey()=27 .or. substr(sch0,1,1)=' '
                exit
            endif
    razr()
    find &sch0
    if found()
       re2=recno()
    endif
     raboti()
       ****************** П░о╢ед│░а за из░або▓ване на жо░нала ***********
         sd0=sch0
         podr_0=51
         store data0 to data3
         save all like podr_0 to podred
         podred()
         if l0='д'
               open_dobo(loc0:=38)
               set order to 2
         else
               open_kobo(loc0:=37)
               set order to 2
         endif
   if l1='д'
       find '50'
   else
       find '&sd0'
   endif
        if .not. found()
          @ 23+ml0,15 say '     Hама▓е движение по '+dk0+' на ▓ази ▒ме▓ка     '
            i0=inkey(0)
          @ 23+ml0,15 say space(51)
                       open_obve()
                       go re2
              if .not. eof() ; skip ; else ; exit ; endif
          loop
        endif
  * raboti()
   if l1='д'
      dw0="(sch='501'.or.sch='503'.or.sch='502'.or.sch='504')"
   else
      dw0="sch=sch0"
   endif
       do while &dw0
           re0=recno()
           nom0=nom
           data3=data
           noda0=subs(data,4,2)+data+nom
          if l0='д'
           dsto1=round(dsto,j1)
          else
           dsto1=round(ksto,j1)
          endif
         if l0='д'
               open_kobo(loc0:=38)  &&  nski
         else
               open_dobo(loc0:=39)  &&  nsdi
         endif
              find '&noda0'
                  br0=0
                  do while nom=nom0 .and. data=data3
                     re1=recno()
                     br0=br0+1
                     nom1=nom
                     sch1=sch
                 if l0='д'
                     ksto1=round(ksto,j1)
                 else
                     ksto1=round(dsto,j1)
                 endif
                       open_kobp()
                       appe blank
   rec_lock()
 repl nom with nom1,sch with sch1,ksto with ksto1,data with data3
   rec_unlock()
                 if l0='д'
                    open_kobo(loc0:=39)  &&  nski
                  else
                    open_dobo(loc0:=40)  &&  nsdi
                  endif
                  go re1
              if .not. eof() ; skip ; else ; exit ; endif
                  enddo
                       if br0=1
                         sele 8
                         rec_lock()
                         repl ksto with dsto1
                         rec_unlock()
                       endif
         if l0='д'
               open_dobo(loc0:=41)  &&  dsdi
         else
               open_kobo(loc0:=40)  &&  dski
         endif
               set order to 2
         go re0
              if .not. eof() ; skip ; else ; exit ; endif
       enddo
       **********  K░ай на п░о╢ед│░а за из░або▓ване на жо░нала ***********
        open_arhi(loc0:=46)  && nari
        open_kobp()
              ll0='2'
              set marg to 12
              if ekpr0=2
                 b1=62
              endif
      if l0='к'
       ?
       ? '            Ж│░нал по к░еди▓а на ▒ме▓ка '+sch0+' за '+str(year(date0),4)+' ГОД.'
    *  ? '        П░и╡оди по елемен▓и на ▒ме▓ка '+sch0+' за '+str(year(date0),4)+' ГОД.'
       ?
       ? 'Опе░.   Деби▓а    С▓ойно▒▓   Вид'
    *  ? 'Опе░.   Пла╣ане   С▓ойно▒▓   Вид'
      else
       ?
       ? '             Ж│░нал по деби▓а на ▒ме▓ка '+sch0+' за '+str(year(date0),4)+' ГОД.'
    *  ? '        Раз╡оди по елемен▓и на ▒ме▓ка '+sch0+' за '+str(year(date0),4)+' ГОД.'
       ?
       ? 'Опе░.   K░еди▓а   С▓ойно▒▓   Вид'
    *  ? 'Опе░.   По▒▓║пл.  С▓ойно▒▓   Вид'
      endif
       ?
       b0=0
       ksto0=0
       ksto2=0
      do while .not.  eof()
              sele 8
                dano0=subs(data,4,2)+data+nom
                sch1=sch
              sele 1
                 find '&dano0'
           if ll1='н'
                 dokv0=+dok
           else
                  dokv0=substr(dok,1,10)+' '+substr(vid,6,43)
           endif
              sele 8
      do case
          case sch2='   '
           sch3=sch
           if l1='н'.and.(.not.nom='9999')
       ? nom+'-'+substr(data,1,2)+' '+sch+' '+str(ksto/ra0,j0,j1)+' '+dokv0 &&&
         spri()                                                             &&&
           endif
         ksto0=ksto0+ksto/ra0
           if l1='д'.and. &dw0
               ksto0=ksto0-ksto/ra0
           endif
         case sch=sch2
                          if .not.nom='9999'
       ? nom+'-'+substr(data,1,2)+' '+sch+' '+str(ksto/ra0,j0,j1)+' '+dokv0 &&&
         spri()                                                             &&&
                          endif
         case .not.(sch2='   '.and.sch=sch2)
           skip
           loop
      endcase

        ksto2=ksto2+ksto/ra0
                skip
             if .not. sch1=sch
               if  sch2='   '
                 if l1='н'
                 ? '             --------------'
                 ? 'Об╣о'+'    '+sch3+' '+str(ksto2,j0,j1)
                 b0=b0+2
                 spri()
                 else
                 if .not. (sch3='501'.or.sch3='503'.or.sch3='502'.or.sch3='504')
                     ? 'Об╣о'+'    '+sch3+' '+str(ksto2,j0,j1)
                 endif
                 endif
               else
                if sch2=sch1
                  ? '            --------------'
                  ? 'Об╣о'+'   '+str(ksto2,j0,j1)
                 b0=b0+2
                 spri()
                  exit
                endif
               endif
                 if l1='н'
                 ?
                 endif
                 spri()
                 ksto2=0
             endif
      enddo
             if sch2='   '
         ? '            --------------'
         ? 'Об╣о        '+str(ksto0,j0,j1)
             endif
         pech()
                        open_obve()
                        go re2
               if .not. eof() ; skip ; else ; exit ; endif
 enddo
       case v2=6

          store data0  to data1,data2
          disc0='\disc\god'+dt0+'\dds\'+go0
          do while .t.
          save screen
            @  2, 5 clea to 21,78
            @  2,21,21,59 box ram1
            @  3,30 say 'ИHФОРМАЦИЯ ПО Д Д С'
            @  4,29 say '---------------------'
            @  5,30 prompt '1. Дневник на пок│пки▓е'
            @  7,30 prompt '2. Дневник на п░одажби▓е'
            @  9,30 prompt '3. Ди▒ке▓и'
            @ 11,30 prompt '4. Сп░авка-декла░а╢и┐'
            @ 13,30 prompt '5. П░ове░ка ди▒ке▓и'
            @ 15,30 prompt '6. Сп░авка пок│пкии'
            @ 17,30 prompt '7. Сп░авка п░одажби'
            @ 19,30 prompt '8. VIES - декла░а╢и┐'
                menu to v4
            chet()
            ! cmd /c  'if not exist \disc\god&dt0\dds\&go0\nul md \DISC\GOD&dt0\DDS\&go0'  > aaa.txt
             set cursor on ; inkey(0.5) ; eras aaa.txt
            do case
               case lastkey()=27 ; exit
               case v4=1 ; ll5='д' ; dostav()  &&   pro3
               case v4=2 ; ll5='д' ; prodaz()  &&   pro3
               case v4=3
                      if lastkey()=27 ; loop ; endif
                    ll5='д' ; l2='1' ; disk()  && pro3
               case v4=4 ; spravdds()
               case v4=5 ; dnev()    && save
               case v4=6 ; do spdos  && sav1
               case v4=7 ; do sppro  && sav1
               case v4=8 ; do vies   && pro3
             endcase
            restore screen
          enddo
       case v2=7
          z_0='3' ; save screen
            @  4,16,19,65 box ram1 ; @  5,17 clea to 18,64
            @  5,27 say 'ОТСТЪK И ЗАМЯHА HА ПАРТИДИ'
            @  6,26 say '----------------------------'
            @  8,30 prompt '1. О▓▒▓║пки' ; @ 10,30 prompt '2. Зам┐на на па░▓иди '
                menu to v4
            chet()
            do case
               case lastkey()=27 ; return
               case v4=1 ; otstap()
               case v4=2 ; zame()
             endcase
            restore screen
       case v2=8
          do while .t.
          save screen
            @  4,16,19,65 box ram1 ;  @  5,17 clea to 18,64
            @  5,30 say 'ТЪРГОВСKА РЕHТАБИЛHОСТ'
            @  6,29 say '-----------------------'
            @  8,30 prompt '1. Hеоб╡одими нали╖но▒▓и' ; @ 10,30 prompt '2. Обо░о▓но▒▓'
                menu to v4
            chet()
            do case
               case lastkey()=27 ; exit
               case v4=1 ; neobkol()
               case v4=2 ; kriti()
            endcase
            restore screen
          enddo

    endcase
      ****************  Сп░авка декла░а╢и┐ по ДДС *****************
                           proc  spravdds




             store data0 to data1,data2
             set dele off
             l0=2
             open_dds(loc0:=10)
             data3=vek0+data0
       do while .t.
             ramka()
             open_dds(loc0:=10)
             find "&data3"
                  if found()
                     dte3=dte
                     dtep0=dtep
                  else
                     store date0 to dte3
                  endif
          *  set cent on   //  DA NE SE PUSKA TUKA MNOGO BARKA
             l0=2 ; l1='д' ; l2='' ; us0='a'
                store subs(data0,1,2)+subs(data0,4,2) to data4
                disgod0='\disc\god&dt0\dds\&go0\dds&data4..pdf'
             set key -2 to dds1  && pro4
             set key -4 to dds1
             set cent off    // novo
             @ 23+ml0,15 say '  F3 - ДДС ▓абли╢а                F5 - DDSxxxx.PDF '
             @  2,29 say 'СПРАВKА-ДЕKЛАРАЦИЯ ЗА ДДС'
             @  3,28 say '--------------------------'
             @  5,24 say 'Дан║╖ен пе░иод о▓ ' get data1  pict '99/99'
             @  5,50 say 'до ' get data2    pict '99/99'
             @  7,25 say 'Да▓а на декла░а╢и┐▓а ' get dte3  pict '99/99/99'
             chet()
                if lastkey()=27
                     set dele off
                    if l1='д'
                       return
                    else
                       loop
                    endif
                endif
                if lastkey()=-2.or.lastkey()=-4
                   loop
                endif
             save screen
             set cent off
             set key -2 to
             set key -4 to
           if file ("&disc_1\job\ddsper.mem")
              restore from &disc_1\job\ddsper additive
                   set cent on
                   if .not. subs(dtoc(date0),4,7)=subs(ddsper_0,1,7)
                      @ 13,37 say 'ВHИМАHИЕ!'   color 'R+/B'
                      @ 16,16 say 'Ак▓│ални┐▓ пе░иод е '+subs(ddsper_0,1,7)+ ;
                      ' нов пе░иод '+subs(dtoc(date0),4,7)+' ДА HЕ ?'
                      @ 16,63 prompt 'ДА'
                      @ 16,66 prompt 'HЕ'
                      menu to l0
                          if lastkey()=27
                                 set cent off
                                 loop
                          endif
                         if l0=1
                           store subs(dtoc(date0),4,7) to ddsper_0
                           save all like ddsper_0 to &disc_1\job\ddsper.mem
                         endif
                         set cent off
                         loop
                   endif
           endif
                   set cent on
            open_info(loc0:=9)
            set filter to  0 < val(no)
            go top
            sort on no to infs
            use infs
            set filter to p='е'
            go top
            eras s0002.prn
            do while .not. eof()
               disk1=subs(disc0,1,16)+infs->go
            if .not. subs(memoline(memoread('&disk1'+'\deklar.txt'),82,1),66,6)=subs(ddsper_0,4,4)+subs(ddsper_0,1,2)
                memowrit('s0002.prn', memoread('s0002.prn')+trim(ltrim(fir))+chr(13)+chr(10))
            endif
                   skip
            enddo
            set cent off
            @  9,50,21+ml0,77 box ram1
            @ 10,51 say "Без декла░а╢и┐ за " +ddsper_0
            @ 11,51 say repl("═",26)
            save1=memoedit(memoread("s0002.prn"),12,51,20+ml0,76,.F.,"",27,40,1,0)
             data3=vek0+data1
             open_dds(loc0:=10)
             find "&data3"
                  if found()
                     dte3=dte
                     dtep0=dtep
                  else
                     store date0 to dte3
                  endif
             store ' ' to qd0,gp0
             ll5='н'  &&  normalno
              * ll5='д'  && da se vkluchi kogato iskame da otpech.ednowrem. i devnici
          *  do dostav
          *  do prodaz
             do disk
             @ 3,1 clea to 21+ml0,78
             l1='д'
             l0=2
             data3=vek0+data1
             @ 23+ml0,15 say space(51)
             @ 23+ml0,28 say 'Из░або▓ване на ▓абли╢а'
             @ 23+ml0,52 prompt 'ДА'
             @ 23+ml0,55 prompt 'HЕ'
             menu to l0
                if lastkey()=27
                     set dele off
                    if l1='д'
                       return
                    else
                       loop
                    endif
                endif
             set key -2 to
             set key -8 to
             if 1 = round((p130+p210)/(p130+p210+p250),2)
                 k0=0
             else
                 k0=round((p130+p210)/(p130+p210+p250),2)
             endif
             kl40=round(s130+s150*k0,j1)
                      store '       ' to dt1,dt2,dt3,dt4,dt5,dt6,dt_0,da0
                      store '            ' to sald2
                      store 0 to dk0,dk1,dk2,dk3,dk4,dk5,dk6,dv0,dv1,dv2,dv3,dv4,dv5,dv6,dv7
                      store 0 to os_0,os0,os1,os2,os3,os4,os5,os6,os10,q0,re0,por0,sald0,sald1
                      store 0 to v60,i80,sa0,sa1,sa2,sa3,sa4,sa5,sa6,kl70,kl71
                      data_1=vek0+data1
                      store '0' to  q1,q2,q3
       if l0=1 && П░ове░ка ▓░┐бва ли да ▒е из░або▓ва ▓абли╢а▓а
              open_dds(loc0:=11)
              find "&data3"
                   if .not.found()
                       appe blank
                   endif
                      rec_lock()
                      repl v with p130,i with p150,data with subs(data3,5,5), vek with vek0, dte with dte3, dtep with dtep0, p with '1'
                         if h=' '
                             if  p120>kl40
                                repl dv with p120-kl40, h with '2',dk with 0,osta with dv
                             else
                                   repl dk with kl40-p120, h with '1', dv with 0, osta with dk
                              endif
                                  if p120=0.and.kl40=0
                                      repl  h with '2'
                                  endif
                         endif
                      rec_unlock()
                      set filter to p='1'
                      go bott
                      skip -11
                      nazad0='За 12 ме▒е╢а назад'
                      store 0 to v60,i80
                      br0=1
                      do while br0 < 19
                        v60=v60+v
                        i80=i80+i
                        skip
                        br0=br0+1
                       enddo
                      set filter to
    *************  Т А Б Л И Ц А ******************
    br0=0
       do while br0 < 4
          br0=br0+1
   go top
   store space(8) to dat0
   store space(7) to dt1,dt2,dt3,dt4,dt5,dt6,da0,data10,dt_0
   store space(12) to sald2
   store 0 to dk0,dk1,dk2,dk3,dk4,dk5,dk6,dv0,dvo,dv1,dv2,dv3,dv4,dv5,dv6,dv7,dv10
   store 0 to os_0,os0,os1,os2,os3,os4,os5,os6,os10,q0,re0,re1,re3,por0,kl50,kl60,kl70,kl71
   store 0 to sa0,sa1,sa2,sa3,sa4,sa5,sa6,sald0,sald1,x610
   q1='1'
   store '0' to q2,q3
   l2=' '
         do while .not. eof()  && До▒▓игане на дан. к░еди▓ ╖ий▓о пе░иод не е из▓ек.
            if h='1'
             if por=0
                    por0=por0+1
                      rec_lock()
                      repl por with por0
                      rec_unlock()
                      dk0=osta
                      re0=recno()
                      dat0=vek+data
                      exit
             else
                    por0=por
              if 0 < osta
                      dk0=osta
                      re0=recno()
                      dat0=vek+data
                      exit
              endif
             endif
            endif
              if .not. eof() ; skip ; else ; exit ; endif
         enddo
                        find '&data3'
                    set cent on
                    sald2=dtoc(dtep0)+'г.'
                    if substr(sald2,1,2)='  '
                      store space(12) to sald2
                    endif
                    set cent off
           do while  .t.  && Из╖и▒л. на ╕е▒▓м. дан. пе░иод
             if h='2'.and.por=0
                    dvo0=osta
                    dv0=dv
                    data_0=data
                    dte0=dte
                    vek1=vek
                            if dk0 > osta
                                 re2=recno()
                                 if por=0
                                   go re0
                                   rec_lock()
                                   repl osta with dk0-dvo0
                                   rec_unlock()
                                 endif
                                go re2
                                dk0=dk0-osta
                                 rec_lock()
                                repl por with por0, dat with substr(dat0,5,5), vet with substr(dat0,1,4)
                                  rec_unlock()
                            else
                                   dk0=osta-dk0  && С│ма за вна▒┐не
                                 if .not. (round(dk0,j1)=0.or.round(osta-dk0,j1)=0)
                                   rec_lock()
                                   repl por with por0, dat with substr(dat0,5,5), vet with substr(dat0,1,4)
                                   rec_unlock()
                                   appe blank
                                   rec_lock()
                                   repl dv with dv0,h with '2',osta with dk0,vek with vek1,data with data_0, dte with dte0
                                   rec_unlock()
                                   re1=recno()
                                   go re0
                                   rec_lock()
                                   repl osta with 0
                                   rec_unlock()
                                  else
                                         if dk0=0
                                            if  0 < re0
                                               go re0
                                               rec_lock()
                                               repl osta with 0
                                               rec_unlock()
                                            endif
                                         endif
                                    l2='д'
                                  endif
                                exit
                            endif
             endif
              if .not. eof() ; skip ; else ; exit ; endif   && .or. vek+data=data_1)
           enddo
           re3=recno()
           if l2='д'
             exit
           endif
       enddo
                    find '&data3'
                  if h='2'                   &&  До▒▓ига до по▒ледни┐
                    do while vek+data=data3  &&  о▒▓а▓║к о▓ дан║╖на вно▒ка
                              skip           &&  ко┐▓о е п░и▒падала н┐колко
                              if eof()       &&  дан║╖ни к░еди▓а
                                 skip -1
                                 exit
                              endif
                      if  dat='     '   && Ако dat не е по▒о╖ен ме▒е╢ за
                         del()          && озна╖ава ╖е има о▒▓а▓║к за вна▒┐не
                         podr_0=60
                         save all like podr_0 to podred
                         podred()
                         open_dds(loc0:=12)
                         go bott
                      endif
                    enddo
                  endif
                       da0=dat
                       por0=por
                    if .not. dat='     '  && ТОВА СЕ ИЗПЪЛHЯВА АKО ИМА СУМА ЗА
                        dat0=vet+dat      && ВHАСЯHЕ
                        find "&dat0"
                    else
                        locate for h='1' .and. 0 < osta
                        dat0=vek+data     && ВHАСЯHЕ
                    endif
                       por0=por
                       store dk to dk0,os_0,os0,sa0
                      if 0 < os_0
                          set cent on
                          store subs(data,1,3)+vek to dt_0
                          set cent off
                              skip
                      endif
                         do while .t.
                          if val(subs(data3,1,6)) < val(vek+substr(data,1,2))
                              exit
                          endif
                                  if h='1'
                                    dk&q1=dk
                                    os&q1=os&q2+dk
                                    sa&q1=sa&q2
                                    set cent on
                                    dt&q1=subs(data,1,3)+vek
                                    set cent off
                                    da&q1=dat
                                        if dt&q1='  /  '
                                           dt&q1='     '
                                        endif
                                    q1=str(val(q1)+1,1)
                                    q2=str(val(q2)+1,1)
                                    q3=str(val(q2)+1,1)
                                  else

                                   if por=por0.or.vet+dat=dat0
                                      dv&q1=dv
                                      os&q1=os&q2-osta+dk
                                      sa&q1=sa&q2-osta
                                      dv3=dv&q3+osta   &&  dv7
                                      set cent on
                                      dt&q1=subs(data,1,3)+vek
                                      set cent off
                                      da&q1=dat
                                        if dt&q1='  /  '
                                           dt&q1='     '
                                        endif
                                    q1=str(val(q1)+1,1)
                                    q2=str(val(q2)+1,1)
                                   endif
                                  endif
              if .not. eof() ; skip ; else ; exit ; endif
                         enddo
                                    q1=str(val(q1)-1,1)
                           if os&q1 <  0  && В ▒л│╖а┐ кога▓о има вно▒ка
                               zvan()
                               @ 17,14 say 'ВHИМАHИЕ !'   color 'R+/B'
                               @ 17,21 say ' Д Д С ЗА ВHАСЯHЕ В Р-Р HА '+str(abs(os&q1),14,2)+' ЛВ.'
                               pauza()
                               store os&q1 to sald0,kl71
                               kl70=abs(p120-kl40)+kl71
                               os&q1=0
                               if 0 < re1
                                  go re1
                                  del()
                                  podr_0=61
                                  save all like podr_0 to podred
                                  podred()
                               endif
                               go re0
                                rec_lock()
                                repl rest osta with 0 for h='1'
                                rec_unlock()
                           else
                                set cons on
                             if 0 < p120-kl40  &&  ме▒е╖на декла░а╢и┐  ВHОСKА
                                do case
                                   case 0 <> sa&q1
                                   store p120-kl40 to kl70
                                endcase
                             else         &&  ме▒е╖на декла░а╢и┐  ВЪЗСТАHОВЯВАHЕ
                                store 0 to kl71
                             endif
                                set cons off
                           endif
                       if val(q2)=2 .and. dv&q3 < os_0  &&  за trimesechen   dv7
                                os10=os2   &&  за  trimesechen
                                go top
                                find "&dat0"
                                do while .t.
                                      if por=0
                                        rec_lock()
                                        repl  por with por0 ,dat with substr(dat0,5,5), vet with substr(dat0,1,4)
                                        rec_unlock()
                                      endif
                                        skip
                                         if eof()
                                            exit
                                         endif
                                enddo
                       else
                     *!  store dv6+sa6 to sald1
                         store dv&q1+sa&q1 to sald1
                       endif
    @ 3, 3 clea to 16,78
    @  4,32 say nazad0
    @  5,23 say 'Облагаем обо░о▓  ' +str(v60,j0,j1)+'  ЛЕВА  '
    @  6,23 say 'Сделки за изно▒  ' +str(i80,j0,j1)+'  ЛЕВА   '
    @10,21 say dt1+'  '+dt2+'  '+dt3+'  '+dt4+'  '+dt5+'  '+dt6
    @11,4 say dt_0+' ВHАСЯHE'+str(dv1,9,j1)+str(dv2,9,j1)+str(dv3,9,j1)+str(dv4,9,j1)+str(dv5,9,j1)+str(dv6,9,j1)
    @12,2 say str(os_0,9,j1)+' ВЪЗСТАH'+str(dk1,9,j1)+str(dk2,9,j1)+str(dk3,9,j1)+str(dk4,9,j1)+str(dk5,9,j1)+str(dk6,9,j1)
    @13,12 say 'ОСТАТЪK'+str(sa1,9,j1)+str(sa2,9,j1)+str(sa3,9,j1)+str(sa4,9,j1)+str(sa5,9,j1)+str(sa6,9,j1)
    @14,2 say 'СУМА ЗА ВЪЗСТАHОВ.                                         '+str(os10,12,j1)
    if  ll6=' '.and. 45000 < round(v60,2)
     *   zvan()
         @ 08,19 say 'ВHИМАHИЕ !'  color 'R+/B'
         @ 08,30 say 'HАВЛИЗАТЕ В ЗОHАТА HА РЕГИСТЛАЦИЯ'
         pauza()
    endif
       endif  && K░ай п░ове░ка ▓░┐бва ли да ▒е из░або▓ва ▓абли╢а▓а
         if sa&q1 < 0
            sa&q1=0
         endif
                       if  dv&q3 < os_0 .and. val(q2)=2  && *!   dv7
                             go re0           && и ако е до▒▓игна▓ ▒е ▒е н│ли░а
                        do while recno() < re3
                             skip
                        enddo
                             l0=1
                             zvan()
                             @ 17, 4 say space(73)
                             @ 17, 4 say 'ВHИМАHИЕ !'  color 'R+/B'
                             @ 17,15 say 'влиза▓е в п░о╢ед│░а за в║з▒▓анов┐ване желае▓е ли ▒п░авка '
                             @ 17,72 prompt 'ДА'
                             @ 17,75 prompt 'HЕ'
                             menu to l0
                             l0=1
                             @ 17, 4 say space(73)
                             @ 17,15 say 'Желае▓е ли о▓пе╖е▓ване на ▒п░авка за в║з▒▓анов┐ване '
                             @ 17,67 prompt 'HE'
                             @ 17,70 prompt 'ДА'
                             menu to l0
                             if l0=2
                                do spdds
                             endif
                       endif
     set cent off
    *************  Д Е K Л А Р А Ц И Я  ************
             open_bala()
             t0='40'
             set filter to  t=t0
             go top
             store recno() to br0
             go br0
             go br0+4
           rec_lock()
           repl pola with substr(pola,1,45)+subs(pola,46,14)
             go br0+5
           rec_lock()
           repl polp with substr(polp,1,6)+data1+space(34)+'╙'
             go br0+9
           rec_lock()
           repl pola with 'Иден▓и┤ика╢ионен номе░ по ДДС:  BG'+substr(dn1,1,9)+' Иден▓и┤ика╢ионен номе░ '+substr(dn1,1,9)
           repl polp with '░ '+substr(dn1,1,9)
           rec_lock()
             go br0+10
           rec_lock()
           repl pola with 'Име/наименование  '+substr(trim(ltrim(fir)),1,25)+space(9)
           rec_lock()
             go br0+11
           rec_lock()
           repl pola with 'Ад░е▒ за ко░е▒понде╢и┐  '+subs(adr,1,40) + substr(pola,43,33)
             go br0+15
           rec_lock()
           repl pola with substr(pola,1,42)+str(p110,12,j1)+substr(pola,55,5)
           repl polp with substr(polp,1,30)+str(p120,12,j1)+substr(polp,43,7)
             go br0+20   && 90
           rec_lock()
           repl pola with substr(pola,1,42)+str(p130,12,j1)+substr(pola,55,5)
           repl polp with substr(polp,1,30)+str(p140,12,j1)+substr(polp,43,7)
             go br0+24
           rec_lock()
           repl pola with substr(pola,1,42)+str(p150,12,j1)+substr(pola,55,5)
           repl polp with substr(polp,1,30)+str(p160,12,j1)+substr(polp,43,7)
             go br0+27
           rec_lock()
           repl polp with substr(polp,1,30)+str(p170,12,j1)+substr(polp,43,7)
             go br0+30
           rec_lock()
           repl pola with substr(pola,1,42)+str(p180,12,j1)+substr(pola,55,5)
           repl polp with substr(polp,1,30)+str(p190,12,j1)+substr(polp,43,7)
             go br0+34
           rec_lock()
           repl pola with substr(pola,1,42)+str(p200,12,j1)+substr(pola,55,5)
            go br0+37
           rec_lock()
           repl pola with substr(pola,1,42)+str(p210,12,j1)+substr(pola,55,5)
            go br0+40
           rec_lock()
           repl pola with substr(pola,1,42)+str(p220,12,j1)+substr(pola,55,5)
            go br0+43
           rec_lock()
           repl pola with substr(pola,1,42)+str(p230,12,j1)+substr(pola,55,5)
            go br0+47
           rec_lock()
           repl pola with substr(pola,1,42)+str(p240,12,j1)+substr(pola,55,5)
            go br0+52
           rec_lock()
           repl pola with substr(pola,1,42)+str(p250,12,j1)+substr(pola,55,5)
            go br0+57
           rec_lock()
           repl pola with substr(pola,1,42)+str(s110,12,j1)+substr(pola,55,5)
             go br0+65
           rec_lock()
           repl pola with substr(pola,1,42)+str(s120,12,j1)+substr(pola,55,5)
           repl polp with substr(polp,1,30)+str(s130,12,j1)+substr(polp,43,7)  && kl.41
             go br0+68
           rec_lock()
           repl pola with substr(pola,1,42)+str(s140,12,j1)+substr(pola,55,5)
           repl polp with substr(polp,1,30)+str(s150,12,j1)+substr(polp,43,7)  && kl.42
             go br0+71
           rec_lock()
           repl polp with substr(polp,1,30)+str(s160,12,j1)+substr(polp,43,7)  && kl.43
            go br0+74
          rec_lock()
           repl pola with substr(pola,1,42)+space(8)+str(k0,4,2)+substr(pola,55,5)
           repl polp with substr(polp,1,30)+str(kl40,12,j1)+substr(polp,43,7)  && kl.40
            go br0+79
          rec_lock()
            if  p120 > kl40
               kl50=p120-kl40
           repl pola with substr(pola,1,42)+str(kl50,12,j1)+substr(pola,55,5)
           repl polp with substr(polp,1,30)+space(12)+substr(polp,43,7)
            else
               kl60=kl40-p120
           repl pola with substr(pola,1,42)+space(12)+substr(pola,55,5)
           repl polp with substr(polp,1,30)+str(kl60,12,j1)+substr(polp,43,7)  && kl.60
            endif
              go br0+84   &&  кле▓ка 70
           rec_lock()
             if  0 < abs(kl70)
                   repl pola with substr(pola,1,42)+str(kl70,12,j1)+substr(pola,55,5)
             else
                   repl pola with substr(pola,1,42)+space(12)+substr(pola,55,5)
             endif
            if 0 < abs(kl71)
                   repl polp with substr(polp,1,30)+str(abs(kl71),12,j1)+substr(polp,43,7)
            else
                if substr(sald2,1,2)='  '
                   repl polp with substr(polp,1,30)+space(12)+substr(polp,43,7)
                else
                   store p120-kl40 to kl71
                   repl polp with substr(polp,1,30)+str(abs(kl71),12,j1)+substr(polp,43,7)
                endif
            endif
             go br0+89
             rec_lock()
             store 0 to kl80,kl81,kl82
             l0=' '
              if i80/(v60+i80) < .30
               repl pola with substr(pola,1,42)+str(os10,12,j1)+substr(pola,55,5)
                 store os10 to kl80
              else
               repl polp with substr(polp,1,30)+str(os10,12,j1)+substr(polp,43,7)
                 store os10 to kl81
              endif
             go br0+94
             rec_lock()
           repl pola with substr(pola,1,20)+substr(nam,1,30)+substr(pola,50,9)
             go br0+96
             rec_lock()
           repl pola with substr(pola,1,2)+l0+substr(pola,4,57)
            rec_unlock()
           set cent on
                             l2=1
                             @ 23+ml0,15 say space(51)
                             @ 23+ml0,16 say 'Желае▓е ли запи▒ на декла░╢и┐▓а на ди▒ке▓а '
                             @ 23+ml0,59 prompt 'HE'
                             @ 23+ml0,62 prompt 'ДА'
                             menu to l2
                             if l2=2

  kl71=abs(kl71)
  @  5, 1,17,78 box ram1
  @  6, 2 clea to 16,77
  @  6, 2 say 'Раздел  Г: ДДС за вна▒┐не                      Дан║к за                     '
  @  7, 2 say 'ДДС за вна▒.о▓ кл.50 п░и▒.                     вна▒┐не                      '
  @  8, 2 say 'по ░еда на ╖л.92 ал.1 ЗДДС                     о▓ кл.50                     '
  @  9, 2 say repli(chr(45),76)
  @ 10, 2 say 'Раздел Д: ДДС, за в║з▒▓анов┐ване о▓ подаване▓о на ▓ази декла░о╢и┐'
  @ 11, 2 say 'С║гла▒но ╖л.92,ал.1                      С║гл.╖л.92,ал.3                   '
  @ 12, 2 say 'в 45-дневен ▒░ок                         в 30-дневен                       '
  @ 13, 2 say '                                         ▒░ок                              '
  @ 14, 2 say 'С║гла▒но ╖л.92,ал.4                      '
  @ 15, 2 say 'в 30-дневен ▒░ок                         '
  @ 16, 2 say '                                         '
  @  6,29,  8,46 box ram1 ; @  7,43 say chr(204)+'70' ; @  6,43 say chr(203) ; @  8,43 say chr(202)
  @  6,59,  8,76 box ram1 ; @  7,73 say chr(204)+'71' ; @  6,73 say chr(203) ; @  8,73 say chr(202)
  @ 13,23, 11,40 box ram1 ; @ 12,37 say chr(204)+'80' ; @ 11,37 say chr(203) ; @ 13,37 say chr(202)
  @ 13,59, 11,76 box ram1 ; @ 12,73 say chr(204)+'81' ; @ 11,73 say chr(203) ; @ 13,73 say chr(202)
  @ 14,23, 16,40 box ram1 ; @ 15,37 say chr(204)+'82' ; @ 14,37 say chr(203) ; @ 16,37 say chr(202)
  @  7,30 get kl70  pict "9999999999.99"
  @  7,60 get kl71  pict "9999999999.99"
  @ 12,24 get kl80  pict "9999999999.99"
  @ 12,60 get kl81  pict "9999999999.99"
  @ 15,24 get kl82  pict "9999999999.99"
          read
          go br0+84   &&  кле▓ка 70
          rec_lock()
                   repl pola with substr(pola,1,42)+str(kl70,12,j1)+substr(pola,55,5)
                   repl polp with substr(polp,1,30)+str(abs(kl71),12,j1)+substr(polp,43,7)
           go br0+89
           rec_lock()
               if 0 < kl81.or.0 < kl82
                     l0='X'
               endif
               repl pola with substr(pola,1,42)+str(kl80,12,j1)+substr(pola,55,5)
               repl polp with substr(polp,1,30)+str(abs(kl81),12,j1)+substr(polp,43,7)
          go br0+92
          rec_lock()
               repl pola with substr(pola,1,42)+str(kl82,12,j1)+substr(pola,55,5)

             go br0+96
             rec_lock()
           repl pola with substr(pola,1,2)+l0+substr(pola,4,57)
                             endif
          izrab()
          if lastkey()=27
             set dele off
             return
          endif
          ll0='2'
       *  save screen   &&  da ne se puska
                     erase ddspl.mem
                  if 0 < kl50
                     store kl50 to x610
                     store data0 to x610data0
                     save all like x61* to ddspl
                  endif
                  if 0 < kl71
                     store kl71 to x610
                     save all like x610 to ddspl
                  endif
       *  if vprn0=2
       *     ?? '1'
       *     ?   ''
       *  else
            ?? 'F11P14L09'  &&  chif L10
       *  endif
             set marg to 8
             t0='40'
             set filter to  t=t0
             go top
             b1=77
                   do while t=t0
                  *     ? str(recno()-br0,3)+substr(pola,1,59)+trim(substr(polp,1,75))+str(recno()-br0,3)
                        ? substr(pola,1,59)+trim(substr(polp,1,75))
                  *       spri()
              if .not. eof() ; skip ; else ; exit ; endif
                   enddo
          for i0 = 1 to 2
           ?
	         next
      ? 'Да▓а на ▒║▒▓ав┐не:................'+space(5)+'Дл║жно▒▓:'+substr(dlaz,1,20)+space(10)+'Подпи▒ и пе╖а▓:...........'
      ?
              set cent off
        pech()

           restore screen
           l0=2
           @ 23,15 say space(50)
           @ 23,25 say 'Желае▓е ли PDF ▒п░авка ДА HЕ'
           @ 23,48 prompt 'ДА'
           @ 23,51 prompt 'HЕ'
           menu to l0

            if l0=1
           @ 23,15 say 'П░о╢ед│░а▓а ╣е п░од║лжи около 2 мин│▓и и 15 ▒ек│нди'

           inkey(2)
           raboti(sek0:=135)
             b3=1
             b4=0
             do while .t.
               save_1='p'+nulb4()+'.prn'
               if file("&save_1")
                b3=b3+1
                save_0='s'+nulb3()+'.prn'
                copy file &save_1 to &save_0
                 loop
               else
                  exit
               endif
             enddo

               store b3 to b2
               inte0=0
               inte1=0
               deli0=1
               store subs(data0,1,2)+subs(data0,4,2) to data4
               disgod0='\disc\god&dt0\dds\&go0\dds&data4..pdf'


                do osmich  //   p5



            endif
                             if l2=2
                   set cons off
                   set cent on
                   save screen
     asci0= 'BG'+dn1+space(3)+fir+space(5)+str(year(date0),4)+subs(data1,1,2)+egn+'/'+;
          lize+space(4)+subs(tel,1,10)+qp0+qd0+str(p110,15,2)+str(p120,15,2);
          +str(p130,15,2)+str(p140,15,2)+str(p150,15,2)+str(p160,15,2)+str(p170,15,2);
          +str(p180,15,2)+str(p190,15,2)+str(p200,15,2)+str(p210,15,2)+str(p220,15,2);
          +str(p230,15,2)+str(p240,15,2)+str(p250,15,2);
          +str(s110,15,2)+str(s120,15,2)+str(s130,15,2)+str(s140,15,2)+str(s150,15,2)+str(s160,15,2);
          +str(k0,4,2)+str(kl40,15,2)+str(kl50,15,2)+str(kl60,15,2)+str(kl70,15,2)+str(kl71,15,2)+str(kl80,15,2)+str(kl81,15,2)+str(kl82,15,2)
       as0=1 ; asci()
       HAND0=0
                   set cons off
                   set cent off
                   set prin on
                   set prin to &disc0\deklar.txt
        ?? asci1
        ?
                   set prin to
                   set device to screen
                   restore screen
                   clos all
                   set prin off
                   set cent off
          for i0 = 68 to 90
               us0=chr(i0)
              _LOC5 := "&us0:\"+subs(disc0,4,10)
            IF .NOT.(NHANDLE := FCREATE (_LOC5 + "\A!")) == -1
                if file("&disc0\deklar.txt").and.(.not.subs(_LOC5,1,1)=subs(disc0,1,1))
                   copy file &disc0\deklar.txt to &_LOC5\deklar.txt
                endif
            endif
          next
           *    if dirchange("a:\")=0
           *       copy file &disc0\deklar.txt  to a:\deklar.txt
           *    endif
           *    if dirchange("b:\")=0
           *       copy file &disc0\deklar.txt  to b:\deklar.txt
           *    endif
                   set cons on
                   set cent off
                             endif
       enddo
                return

