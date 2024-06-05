    *SAV5.PRG
    * EXTERNAL
   do pro5  ;  set dele on ; tt0='50' ; store 0 to v2,v22 ; save screen
      *  suptot()
        if sc9='д'
   @  8,21,17,61 box ram1 ; @  9,22 clea to 16,60
   @  9,31 say 'С  П  Р  А  В  K  И'
   @ 10,30 say '---------------------'
           @ 12,23 prompt '1. Спи▒║к на о▒╖е▓оводени▓е док│мен▓и'
           @ 14,23 prompt '2. Tабли╢и СУПТО'
           @ 16,23 prompt '3. Зад║лжение на МОЛ'
        else
   @  2,14,22,66 box ram1
   @  3,16 clea to 21,65
   @  3,31 say 'С  П  Р  А  В  K  И'
   @  5,23 prompt '1. За▒е╖ки '
   @  7,23 prompt '2. Пе╖а▓ на мемо░иални о░де░и'
   @  9,23 prompt '3. Пе╖а▓ пла▓ежни '
   @ 11,23 prompt '4. Спи▒║к на кон▓и░ани па░▓иди'
   @ 13,23 prompt '5. Спи▒║к на о▒╖е▓оводени▓е док│мен▓и'
   @ 15,23 prompt '6. См┐на на ░або▓на▓а ди░ек▓о░и┐▓а'
   @ 17,23 prompt '7. П░о╢ед│░и за ▒▓окови ▒ме▓ки'
   @ 19,23 prompt '8. Раз╡оди по нап░авлени┐'
   @ 21,23 prompt '9. Tабли╢и СУПТО'
        endif
     menu to v2
     if sc9='д'
          do case
             case v2=1 ; v2=5
             case v2=2 ; v2=9
             case v2=3 ; v2=7
          endcase
     endif
      if lastkey()=27 ; clos all ; set dele off  ; set key -2 to ; return ; endif
      restore screen
   do case
      case v2=1
      @  3, 15,20,66 box ram1 ;  @  4, 16 clea to 19,65 ; v3=1
      @  4,29 say 'З  А  С  Е  Ч  K  И '
      @  6,17 prompt '1. М/│ ▒алда▓а на ▒ин▓. ▒-ки и анал. па░▓иди'
      @  8,17 prompt '2. М/│ обо░о▓и▓е на ▒ин▓. ▒-ки и анал. па░▓иди'
      @ 10,17 prompt '3. За ░авен▒▓во▓о по ▒╖е▓оводни опе░а╢ии'
      @ 12,17 prompt '4. За ░авен▒▓.по опе░. м/│ на ▒-ки и п-ди'
      @ 14,17 prompt '5. За д│бли░ани и лип▒ва╣и па░▓иди'
      @ 16,17 prompt '6. За д│бли░ани ┤ак▓│░и '
      @ 18,17 prompt '7. За лип▒ва╣и опе░а╢ии '
      chet()
      menu to v3
         if lastkey()=27
           clos all ; set dele off ; set dele off ; return
         endif
        do case
           case v3=1
do while .t.
   ramka()
      open_obap(loc0:=67)  && aobi
   @ 2, 9 say 'СПРАВKА ЗА РАВЕHСТВОТО МЕЖДУ САЛДАТА HА СИHТ. С-KИ И АHАЛ. П-ДИ'
   @ 3, 8 say '-----------------------------------------------------------------'
                   l0='н'
                    @ 23+ml0,30 say 'С║▒ ▒▓║пка  д/н :'get l0 valid l0='д'.or.l0='н'
                    chet()
                  if lastkey()=27
                       return
                  endif
   @  6,15 say 'Деби▓но ▒алдо                        K░еди▓но ▒алдо'
   @ 18,15 say 'Деби▓ен ▒бо░                          K░еди▓ен ▒бо░'
          store 0 to ndso1,nkso1
          open_obve(loc0:=31)
       do while .t.
          sch0=sch
             if sch0='   '
                      if .not. eof() ; skip ; else ; exit ; endif
                loop
             endif
          @ 5,38 say sch0
          @ 8,14 say str(ndso,j0,j1)+'                          '+str(nkso,j0,j1)
          ndso0=round(ndso,j1)
          nkso0=round(nkso,j1)
          ndso1=ndso1+ndso
          nkso1=nkso1+nkso
          ds0=sch0
          t0=t
             if a='д'
                @ 11,11 say 'Деби▓ни анал. па░▓иди                K░еди▓ни анал. па░▓иди'
                sele 6
                find '&ds0'
                    store 0 to asal1,asal2
                 *  raboti()
                    @ 23+ml0,15 say '       П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е ...       '
                    do while  substr(part,1,3)=sch0
                      if t=' '
                          if t0='а'
                              asal1=asal1+asal
                              asal2=0
                          endif
                          if t0='п'
                              asal2=asal2+asal
                              asal1=0
                          endif
                      else
                          if t='д'
                              asal1=asal1+asal
                          else
                              asal2=asal2+asal
                          endif
                      endif
                      if .not. eof() ; skip ; else ; exit ; endif
                    enddo
                         if t0=' '
                               if asal1>asal2
                                  asal1=asal1-asal2
                                  asal2=0
                               else
                                  asal2=asal2-asal1
                                  asal1=0
                               endif
                         endif
                    @ 13,13 say str(asal1,j0,j1)+'                           '+str(asal2,j0,j1)
                              asal1=round(asal1,j1)
                              asal2=round(asal2,j1)
                              if .not.(ndso0=asal1.and.nkso0=asal2)
                                  @ 23+ml0,15 say '  H┐ма▓е ░авен▒▓во м/│ ▒ин▓. ▒-ки и анал.п-ди  '
                                  zvan()
                                  pauza()
                                 @ 23+ml0,15 say space(51)
                              endif
             endif
                          if l0='д'
                            i0=inkey(1)
                          endif
                  if lastkey()=27
                       return
                  endif
                       @ 20,13 say str(ndso1,j0,j1)+'                          '+str(nkso1,j0,j1)
                      sele 7
                      if .not. eof() ; skip ; else ; exit ; endif
                    @ 11, 6 clea to 13,70
       enddo
                        @ 23+ml0,15 say '   H┐ма▓е пове╖е ▒алда на▓и▒не▓е кой да е клави╕   '
                        pauza()
                              ndso1=round(ndso1,j1)
                              nkso1=round(nkso1,j1)
                     if ndso1<>nkso1
                         @ 23+ml0,15 say space(51)
                         if ndso1 > nkso1
                           @ 23+ml0,18 say 'С│ма▓а на Д-ТЕ ▒алда е пове╖е ▒ :'+str(round(ndso1-nkso1,j1),j0,j1)
                         else
                           @ 23+ml0,18 say 'С│ма▓а на K-ТЕ ▒алда е пове╖е ▒ :'+str(round(nkso1-ndso1,j1),j0,j1)
                         endif
                         zvan() ;  pauza() ; @ 23+ml0,15 say space(51)
                     endif
enddo
           case v3=2
   ramka()
   open_obve(loc0:=32)
   @ 2, 7 say 'СПРАВKА ЗА РАВЕHСТВОТО МУЖДУ ОБОРОТИТЕ HА СИHТ. С-KИ И АHАЛ. ПАРТИДИ'
   @ 3, 6 say '----------------------------------------------------------------------'
                   l0='н'
                    @ 23+ml0,22 say 'С║▒ ▒▓║пка  д/н, о▓делна ▒ме▓ка "▒":'get l0 valid l0='д'.or.l0='н'.or.l0='▒'
                    chet()
                  if lastkey()=27 ; return ; endif
   @  8,15 say 'Деби▓ен обо░о▓                      K░еди▓ен обо░о▓'
   @ 13,11 say 'Деби▓ни анал. обо░о▓и                K░еди▓ни анал. обо░о▓и'
       do while .t.
             set cursor on
             if a='н'
                if .not. eof() ; skip ; loop ; else ; exit ; endif
             endif
       if l0='▒'
          sch0='   '
          @  5,21 say 'В║веде▓е ╕и┤║░а на ▒ме▓ка▓а  ' get sch0
          chet()
              if lastkey()=27 ; clos all ; set dele off ; exit ; endif
       else
          sch0=sch
       endif
          @ 10,10 say space(64) ;  @ 15,10 say space(64)
          store 0 to dsto0,ksto0,dast0,kast0
          ds0=sch0
          @  5,21 say '                                  '
          @  5,24 say 'Ши┤║░а на ▒ме▓ка▓а е : '+sch0
       *  raboti()
          @ 23+ml0,15 say '       П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е ...       '
          open_dobo(loc0:=43)
          set order to 2
          find '&ds0'
     if  found()
        do while sch=sch0
          dsto0=dsto0+dsto
          if .not. eof() ; skip ; else ; exit ; endif
        enddo
     endif
        @ 10,15 say str(dsto0,j0,j1)
        dsto0=round(dsto0,j1)
          open_kobo(loc0:=42)
          set order to 2
          find '&ds0'
     if  found()
      do while sch=sch0
          ksto0=ksto0+ksto
                      if .not. eof() ; skip ; else ; exit ; endif
      enddo
     endif
        @ 10,52 say str(ksto0,j0,j1)
        ksto0=round(ksto0,j1)
          open_dpar(loc0:=33)
          set order to 2
          find '&ds0'
     if  found()
      do while substr(part,1,3)=sch0
          dast0=dast0+dast
                      if .not. eof() ; skip ; else ; exit ; endif
      enddo
     endif
        @ 15,15 say str(dast0,j0,j1)
        dast0=round(dast0,j1)
         if .not. dsto0=dast0
            @ 18,15 say '   Разлика'
                if dsto0>dast0
            @ 20,12 say str(dsto0-dast0,j0,j1)
                else
            @ 20,12 say str(dast0-dsto0,j0,j1)
                endif
              @ 23+ml0,15 say '        H┐ма▓е ░авен▒▓во по Д-▓ни▓е обо░о▓и        '
              zvan()
              pauza()
              @ 18,14 clea to 20,28
              @ 23+ml0,15 say space(51)
         endif
          open_kpar(loc0:=33)
          set order to 2
          find '&ds0'
     if  found()
      do while substr(part,1,3)=sch0
          kast0=kast0+kast
                      if .not. eof() ; skip ; else ; exit ; endif
      enddo
     endif
        @ 15,53 say str(kast0,j0,j1)
        kast0=round(kast0,j1)
         if .not. ksto0=kast0
            @ 18,56 say 'Разлика'
                if dsto0>dast0
            @ 20,50 say str(ksto0-kast0,j0,j1)
                else
            @ 20,50 say str(kast0-ksto0,j0,j1)
                endif
              @ 23+ml0,15 say '       H┐ма▓е ░авен▒▓во по K-▓ни▓е обо░о▓и         '
              zvan()
              pauza()
              @ 18,52 clea to 20,72
              @ 23+ml0,15 say space(51)
         endif
                          if l0='д'
                            i0=inkey(1)
                          endif
                  if lastkey()=27
                       return
                  endif
          sele 7
          if .not. eof() ; skip ; else ; exit ; endif
       enddo
                      if l0='д'
                        @ 23+ml0,15 say '       H┐ма▓е пове╖е ▒ме▓ки ▒ анал. па░▓иди        '
                        i0=inkey(0)
                      endif
           case v3=3
          store data0 to data3

do while .t.
   ramka()

   @ 2,18 say 'СПРАВKА ЗА РАВЕHСТВОТО ПО СЧЕТОВОДHИ ОПЕРАЦИИ'
   @ 3,17 say '-----------------------------------------------'
   @ 5,28 say 'В║веде▓е да▓а▓а' get data3 pict "99/99"
   chet()
                   l0='н'
                    @ 23+ml0,30 say 'С║▒ ▒▓║пка  д/н :'get l0 valid l0='д'.or.l0='н'
                    chet()
                  if lastkey()=27
                       return
                  endif
        if lastkey()=27
        clos all
        set dele off
           exit
        endif
   @ 10,16 say 'Деби▓ен обо░о▓                       K░еди▓ен обо░о▓'
   @ 14,12 say 'Деби▓ни анал. обо░о▓и               K░еди▓ни анал. обо░о▓и'
        open_arhi(loc0:=47) && nari
           dn0=subs(data3,4,2)+data3
           find '&dn0'
       do while data=data3
          nom0=val(nom)
          @  7,26 say 'Hоме░а на опе░а╢и┐▓а '+str(nom0,4)
        * raboti()
          @ 23+ml0,15 say '       П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е ...       '
          store 0 to dsto0,ksto0,dast0,kast0
          ds0=subs(data3,4,2)+data3+str(nom0,4)
          sch_1='n'
          sch_2='n'
          open_dobo(loc0:=44)  && nsdi
          find '&ds0'
     if  found()
        do while nom=str(nom0,4).and.data=data3
          if .not.(sch='453'.or.substr(sch,1,1)='6')
              sch_1='y'
          endif
          if substr(sch,1,1)='6'
              sch_2='y'
          endif
          dsto0=dsto0+dsto
                      if .not. eof() ; skip ; else ; exit ; endif
        enddo
        @ 12,14 say '               '
        @ 12,14 say str(dsto0,j0,j1)
        dsto0=round(dsto0,j1)
     else
        @ 12,14 say '  H┐ма обо░о▓  '
     endif
          open_kobo(loc0:=43)
          find '&ds0'
     if  found()
      do while nom=str(nom0,4).and.data=data3
          ksto0=ksto0+ksto
                      if .not. eof() ; skip ; else ; exit ; endif
      enddo
        @ 12,52 say '               '
        @ 12,52 say str(ksto0,j0,j1)
        ksto0=round(ksto0,j1)
     else
        @ 12,52 say '  H┐ма обо░о▓  '
     endif
          open_dpar(loc0:=34)  && nadi
          find '&ds0'
     if  found()
      b0=0
      do while nom=str(nom0,4).and.data=data3
                         if .not. substr(part,1,3)='453'
                                b0=b0+1
                            if  b0 > 1
                                sch_1='y'
                            endif
                         endif
          dast0=dast0+dast
          if .not. eof() ; skip ; else ; exit ; endif
      enddo
        @ 16,14 say str(dast0,j0,j1)
     else
        @ 16,14 say '  H┐ма обо░о▓  '
     endif
          open_kpar(loc0:=34)  && naki
          find '&ds0'
     if  found()
      do while nom=str(nom0,4).and.data=data3
          kast0=kast0+kast
                      if .not. eof() ; skip ; else ; exit ; endif
      enddo
        @ 16,52 say str(kast0,j0,j1)
        kast0=round(kast0,j1)
     else
        @ 16,52 say '  H┐ма обо░о▓  '
     endif
      if .not. dsto0=ksto0
          @ 23+ml0,15 say '         H┐ма▓е ░авен▒▓во по ▓ази опе░а╢и┐         '
          zvan()
          pauza()
      endif
      if sch_1='y'.and. sch_2='y'.and.sc2='д'
          @ 23+ml0,15 say '         Hеп░авилно в║ведена ░-на опе░а╢и┐         '
          zvan()
          i0=inkey(0)
      endif
           @ 23+ml0,15 say space(51)
                  if lastkey()=27
                       return
                  endif
                          if l0='д'
                            i0=inkey(1)
                          endif
             sele 1
             if .not.eof()
                skip
             else
                @ 23+ml0,15 say '       K░ай на ▒ме▓ки▓е ▒ анали▓и╖ни па░▓иди       '
                i0=inkey(0)
                exit
             endif
       enddo
enddo
           case v3=4
          sch0='   '
          store data0 to data3
do while .t.
          set cursor on
          ramka()
          open_dobo(loc0:=45)
          set order to 2
          open_kobo(loc0:=44)
          set order to 2
          open_kpar(loc0:=35)
          set order to 2
          open_dpar(loc0:=35)
          set order to 2
          store 0 to nom0,nom1
          store space(1) to l1,l2,l3
   @ 2, 9 say 'СПРАВKА ЗА РАВЕHСТВОТО ПО ОПЕР. HА СИHТ. С-KИ И АHАЛ. ПАРТИДИ'
   @ 3, 8 say '---------------------------------------------------------------'
   @ 5,21 say 'В║веде▓е ╕и┤║░а на ▒ме▓ка▓а  ' get sch0
   @ 7,27 say 'В║веде▓е година▓а' get data3
   chet()
                   l0='н'
                    @ 23+ml0,30 say 'С║▒ ▒▓║пка  д/н :'get l0 valid l0='д'.or.l0='н'
                    chet()
        if substr(sch0,1,1)=' '.or.lastkey()=27
           clos all
           set dele off
           exit
        endif
   @  5,21 say 'П░ог░ама▓а п░ове░┐ва ▒ме▓ка   ' + sch0
   @ 11,15 say 'Деби▓ен обо░о▓                      K░еди▓ен обо░о▓'
 @ 15,11 say 'Деби▓ни анал. обо░о▓и                K░еди▓ни анал. обо░о▓и'
       do while  .not. l3='2'
          @ 13,10 say '                                                              '
          @ 17,10 say '                                                              '
          store 0 to dsto0,ksto0,dast0,kast0
          ds0=sch0+subs(data3,4,2)+data3
          ds1=sch0
     *    raboti()
          @ 23+ml0,15 say '       П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е ...       '
          sele 2
    if l1=' '
               l1='1'
               find '&ds0'
                 if  found()
                 endif
     endif
     if sch0=sch.and.data=data3
        l1='2'
        nom0=nom
       @ 19,13 say 'По опе░а╢и┐ Х '+nom0
          dsto0=dsto
        @ 13,15 say str(dsto0,j0,j1)
        dsto0=round(dsto0,j1)
     else
       l3='1'
     endif
          sele 3
    if l2=' '
               l2='1'
               find '&ds0'
                 if  found()
                 endif
     endif
     if sch0=sch.and.data=data3
        l2='2'
        nom1=nom
       @ 19,50 say 'По опе░а╢и┐ Х '+nom1
          ksto0=ksto
        @ 13,52 say str(ksto0,j0,j1)
        ksto0=round(ksto0,j1)
     else
      if l3='1'
       l3='2'
      endif
     endif
          sele 4
    if l1='2'
           find '&ds1'
     if found()
      do while substr(part,1,3)=sch0
          if nom=nom0.and.data3=data
              dast0=dast0+dast
          endif
          if .not. eof() ; skip ; else ; exit ; endif
      enddo
     endif
        @ 17,15 say str(dast0,j0,j1)
        l1='1'
    else
       @ 19,13 say '                         '
    endif
        dast0=round(dast0,2)
         if .not. dsto0=dast0
              @ 23+ml0,15 say '        H┐ма▓е ░авен▒▓во по Д-▓ни▓е обо░о▓и        '
              zvan()
              zvan()
              pauza()
              @ 23+ml0,15 say space(51)
         endif
          sele 5
    if l2='2'
           find '&ds1'
     if found()
      do while substr(part,1,3)=sch0
          if nom=nom1.and.data3=data
              kast0=kast0+kast
          endif
         if .not. eof() ; skip ; else ; exit ; endif
      enddo
     endif
        @ 17,52 say str(kast0,j0,j1)
        l2='1'
    else
       @ 19,50 say '                   '
    endif
        kast0=round(kast0,2)
         if .not. ksto0=kast0
              @ 23+ml0,15 say '        H┐ма▓е ░авен▒▓во по K-▓ни▓е обо░о▓и        '
              zvan()
              zvan()
              pauza()
              @ 23+ml0,15 say space(51)
         endif
          sele 2
          if .not. eof() ; skip ; else ; exit ; endif
          sele 3
          if .not. eof() ; skip ; else ; exit ; endif
                          if l0='д'
                            i0=inkey(1)
                          endif
                  if lastkey()=27
                       return
                  endif
       enddo
                      if l0='д'
                        go top
                        @ 23+ml0,15 say '        H┐ма пове╖е обо░о▓ по ▓ази ▒ме▓ка          '
                        i0=inkey(0)
                      endif
enddo
           case v3=5
          ramka()
          store 0 to nom0,nom1
   @ 2,19 say 'ЗАСЕЧKА ЗА ДУБЛИРАHИ И ЛИПСВАЩИ ПАРТИДИ'
   @ 3,18 say '-----------------------------------------'
                 open_obap(loc0:=68)  && aobi
                 izrab()
    ? space(30)+'ДУБЛИРАHИ ПАРТИДИ'
    ?
             do while .not. eof()
                 part0=part
                 skip
                 if part =part0
                   ? space(30)+part0+' '+name
                   del()
                   spri()
                 endif
             enddo
    open_obap(loc0:=69)  && aobi
    open_kpar(loc0:=36)
    set order to 0
    go top
    ?
    ? space(30)+'ЛИПСВАЩИ ПАРТИДИ'
    ?
   do while .not. eof()
      part0=part
      sele 6
      find '&part0'
      if .not. found()
         ? space(30)+' '+part0
         spri()
      endif
      sele 5
      skip
   enddo
    open_dpar(loc0:=36)
    set order to 0
      go top
   do while .not. eof()
      part0=part
      sele 6
      find '&part0'
      if .not. found()
         ? space(30)+' '+part0
         spri()
      endif
      sele 4
      skip
   enddo
     pech()
           case v3=6
                do dubl && pro1
           case v3=7
                do lipso  &&  sav8.prg
           endcase
      case v2=2

   do while .t.
   ramka()
   store 2 to l0,l1
   nom0='    '
   nom3=1401
   nom4=1410
   data1='01'+substr(data0,3,3)
   data2='01'+substr(data0,3,3)
   nom3=1
   nom4=9999
   data1='01'+substr(data0,3,3)
   data2='12'+substr(data0,3,3)
   disc0='&disc_0\god'+dt0+'\zkpo\'+go0
     set cursor on ; inkey(0.5) ; eras aaa.txt
     *    store 0 to line0,line1,line2, line9, sec0


   store 0 to b0, b4
   store 1 to b2,b3
   open_arhi(loc0:=48) && nari
   @ 2,25 say 'П Е Ч А Т  HА  МЕМОРИАЛHИ ОРДЕРИ'
   @ 3,24 say '----------------------------------'
                     @  6,30 say 'О▓ номе░ на СО:' get nom3 pict "9999"
                     @  8,30 say 'До номе░ на СО:' get nom4 pict "9999"
                     @ 10,29 say 'В║веде▓е ме▒е╢а:' get data1
                     @ 12,29 say 'В║веде▓е ме▒е╢а:' get data2
                     @ 14+ml0,33 say 'С па░▓иди ДА HЕ'
                     chet()
                     @ 14+ml0,43 prompt 'ДА'
                     @ 14+ml0,46 prompt 'HE'
                     menu to l1
                        if lastkey()=27 .or. nom3=0
                            set dele off
                            return
                        endif
          @ 23,15 say 'П░о╢ед│░а▓а ╣е п░од║лжи около 3 мин│▓и и 00 ▒ек│нди'
          inkey(2)
          raboti(sek0:=180)

             set dele on
          if file("s*.prn")
             !del s*.prn
          endif
             set cons off
             set prin on
             save_1='&us_0'+'s'+nulb4()+'.prn'
             set prin to &save_1 &&  да не ▒е п░омен┐
             b1=53
             br1=0


       open_arhi(loc0:=48) && nari
    *  find '&data1'
       dn0=subs(data1,4,2)+data1
       set marg to 0
       find '&dn0'
       timecount(sek2:=1) //  iztr  01  2.55 min. s 10sc poveche ako e izklucheno

         *  b1=80                         // ╡░оно
         *  set marg to 15                // ╡░оно
         *  ? 'M0'                      // ╡░оно
         *  ?
         *  ? space(24)+' ХРОHОЛОГИЧHИ ЗАПИСВАHИЯ'
         *  ? space(66)+'▒▓░. '+str(b2,3)
         *  ? repl('-',74)                // ╡░оно
         *  ?'No СО       ОПИСАHИЕ HА ОПЕРАЦИЯТА                   Д-Т К-Т         СТ-СТ'
         *  ? repl('-',74)                // ╡░оно
         *  ?'    1                 2                               3   4            5  '
         *  ? repl('-',74)                // ╡░оно
         *  b0=b0+9                       // ╡░оно
             *        count for val(substr(data1,1,2)) <= val(substr(data,1,2)).and.val(substr(data,1,2)) <= val(substr(data2,1,2)) to line1
           go top
       find '&dn0'
           if .not. found()
              go top
           endif
            do while val(substr(data1,1,2)) <= val(substr(data,1,2)).and.val(substr(data,1,2)) <= val(substr(data2,1,2))
                           *  timecount(sek2:=1)    // NIKOGA !!!!!
                           *      line()
       if 0 <= nom4
             if val(nom)<nom3.or.val(nom)>nom4 && .or.(.not.data=data0)
                  if .not. eof() ; skip ; loop ; else ; exit ; endif
             endif
       endif
           if papk='k  '.or.subs(dok,1,3)='г┤о'
             if .not. eof() ; skip ; loop ; else ; exit ; endif
           endif
      nom0=nom
      data3=data
      dano0=subs(data,4,2)+data+nom
       if b0=0
        ?? 'МО Х '+space(25)+nom0+'-'+ data3
       else
        ? 'МО Х '+space(25)+nom0+'-'+ data3
       endif
        ? dok
        ? '........................................'
        b0=b0+3
       * ? +nom0+'-'+ data3+'  '+subs(dok,1,39)        //  ╡░оно
       * p0=0                                          //  ╡░оно
      open_dobo(loc0:=46) &&  nsdi
                 find '&dano0'
      do while nom=nom0 .and. data=data3
           sch2=sch
           dsto1=dsto
           store space(4) to p1,p2,p3,p4,p5
           open_obve(loc0:=33)
           find '&sch2'
        if a='д'
           dp1=subs(data3,4,2)+data3+nom0+sch2
           open_dpar(loc0:=37)  && nadi
                 find '&dp1'
                br1=1
            do while data+nom+sch2=data3+nom0+substr(part,1,3)
                  do case
                     case br1=1
                      p1=substr(part,4,4)
                     case br1=2
                      p2=substr(part,4,4)
                     case br1=3
                      p3=substr(part,4,4)
                     case br1=4
                      p4=substr(part,4,4)
                     case br1=5
                      p5=substr(part,4,4)
                  endcase
                  br1=br1+1
                if .not. eof() ; skip ; else ; exit ; endif
            enddo
        endif
       if l1=1
        ? sch2+p1,p2,p3,p4+'    '+str(dsto1,j0,j1)
     *  ? sch2+chr(27)+'S'+chr(1)+p1,p2,p3,p4+'    '+chr(27)+'T'+str(dsto1,j0,j1)
       else
        ? sch2+space(23)+str(dsto1,j0,j1)  && +chr(27)+'S'+chr(1)+p1,p2,p3,p4,p5+' '+chr(27)+'T'
             *  if p0=0      // ╡░оно
             *     ?? space(2)+sch2+'    '+str(dsto1,j0,j1)  && +chr(27)+'S'+chr(1)+p1,p2,p3,p4,p5+' '+chr(27)+'T'   //╡░оно
             *     p0=p0+1   // ╡░оно
             *  else         // ╡░оно
             *     ?  space(53)+sch2+'    '+str(dsto1,j0,j1)  && +chr(27)+'S'+chr(1)+p1,p2,p3,p4,p5+' '+chr(27)+'T'   //╡░оно
             *  endif        // ╡░оно
       endif
       b0=b0+1
                 sele 2
             if .not. eof() ; skip ; else ; exit ; endif
      enddo
       open_kobo(loc0:=45)
       find '&dano0'
      do while nom=nom0 .and. data=data3
           sch2=sch
           ksto1=ksto
           sele 7
           find '&sch2'
           store space(4) to p1,p2,p3,p4,p5
        if a='д'
           dp1=subs(data3,4,2)+data3+nom0+sch2
           open_kpar(loc0:=37)
                 find '&dp1'
                br1=1
            do while data+nom+sch2=data3+nom0+substr(part,1,3)
                  do case
                     case br1=1
                      p1=substr(part,4,4)
                     case br1=2
                      p2=substr(part,4,4)
                     case br1=3
                      p3=substr(part,4,4)
                     case br1=4
                      p4=substr(part,4,4)
                     case br1=5
                      p5=substr(part,4,4)
                  endcase
                  br1=br1+1
                if .not. eof() ; skip ; else ; exit ; endif
            enddo
        endif
       if l1=1
          ? '  '+sch2+p1,p2,p3,p4+'  '+str(ksto1,j0,j1)
       else
          ? '  '+sch2+space(21)+str(ksto1,j0,j1) &&  +chr(27)+'S'+chr(1)+p1,p2,p3,p4,p5+' '+chr(27)+'T'
         *? space(57)+sch2+str(ksto1,j0,j1) &&  +chr(27)+'S'+chr(1)+p1,p2,p3,p4,p5+' '+chr(27)+'T' //╡░оно
       endif
       b0=b0+1
                  sele 3
           if .not. eof() ; skip ; else ; exit ; endif
      enddo
        *  timecount(sek2:=1)     //  nikoga
         ?
      spri()
         *  if b0=0                          // ╡░оно
         *     ? 'M0'                      // ╡░оно
         *     b2=b2+1                       // ╡░оно
         *     ? space(66)+'▒▓░. '+str(b2,3) // ╡░оно
         *     ? repl('-',74)                // ╡░оно
         *     ?'    1                 2                               3   4            5  '
         *     ? repl('-',74)                // ╡░оно
         *  endif                            // ╡░оно
            sele 1
                if .not. eof() ; skip ; else ; exit ; endif
            enddo

       do troi   //  pro5 ВАЖHО ВАЖHО



       inte0=4
       inte1=3
       deli0=7
       disgod0='&disc_0\god&dt0\zkpo\&go0\memo&vek0..pdf'
       do osmich
   enddo
      case v2=3
           do plat  &&  pro5
      case v2=4
          part0='       '
          nom1=0
          l6='н'
          data3='  /'+dt0
       do while .t.
          ramka()
          @ 2,26 say 'СПИСЪK HА ОСЧЕТОВОДЕHИ ПАРТИДИ'
          @ 3,25 say '--------------------------------'
          @ 17+ml0,14,24+ml0,66 box ram1
          @ 18+ml0,15 clea to 23+ml0,65
                @  8,28 say 'В║веде▓е да▓а▓а' get data3 pict '99/99'
                @ 10,28 say 'В║веде▓е па░▓ида' get part0
                @ 12,28 say 'В║веде▓е N на СО' get nom1 pict "9999"
                @ 18,23 say '      Ва░иан▓и за ▓║░▒ене              '
                @ 20,21 say '1. па░▓ида=_______ N/СО=___0           '
                @ 21,21 say '2. па░▓ида=xxxxxxx N/СО=___0 да▓а=xx/'+dt0
                @ 22,21 say '3. па░▓ида=_______ N/СО=xxxx да▓а=xx/'+dt0
                @ 23,21 say '4. па░▓ида=xxxxxxx да▓а=__/'+dt0
                chet() && read
                if lastkey()=27
                     set dele off
                     return
                endif
               @  8,28 say space(26); @ 12,28 say space (34); l0='к'; l1='н'
               @  8,25 say 'Деби▓ни - "д", к░еди▓ни - "к":' get l0 valid l0='д'.or.l0='к'
               @ 10,24 say 'За опе░а╢и┐ на кон▒игна▓о░ д/н :' get l1 valid l1='д'.or.l1='н'
                        chet()
            if nom1=0
               nom0='    '
            else
               nom0=str(nom1,4)
            endif
            if l0='к'
                l4='КРЕДИТА'
            else
                l4='ДЕБИТА '
            endif
            set dele off
            open_dobo(loc0:=1)  && nari
            set order to 2
            open_kobo(loc0:=1)  && nari
            set order to 2
            open_arhi(loc0:=50)  && nari
            open_obap(loc0:=70)  && aobi
            if l0='д'
                open_dpar(loc0:=38)
            else
                open_kpar(loc0:=38)
            endif
            ramka()
          @ 2,26 say 'СПИСЪK HА ОСЧЕТОВОДЕHИ ПАРТИДИ'
          @ 3,25 say '--------------------------------'
         do case
            case empty(part0).and.empty(nom0)
              set filter to data=data3
            case  (.not.empty(part0)) .and. empty(nom0) .and. (.not.empty(subs(data3,1,2)))
              set filter to data=data3 .and. part0=part
            set rela to data+nom into dobo, to data+nom into kobo
            case  empty(part0) .and. (.not. empty(nom0)) .and. (.not.empty(subs(data3,1,2)))
              set filter to data=data3 .and. nom=nom0
            case  (.not. empty(part0)) .and. empty(subs(data3,1,2))
              if empty(subs(part0,4,4))
                 set filter to part=subs(part0,1,3)
              else
                 set filter to part=part0
              endif
         endcase
         go bott
         if l1='д'
                declare fiel[4]
                fiel[1]='kol'
                fiel[2]='zena'
            if l0='д'
                fiel[3]='dast'
            else
                fiel[3]='kast'
            endif
                fiel[4]='part'
                declare imem[4]
                imem[1]='KОЛИЧЕСТВО'
                imem[2]='   ЦЕHА'
                imem[3]='  СТОЙHОСТ'
                imem[4]='ПАРТИДА'
                @  4, 2,20+ml0,77 box ram1
                @ 18, 3 say repl("-",74)
                dbedit( 5, 3,17+ml0,76,fiel,"pfunk4",'',imem,'-','|')  // pfunk4  pro4
         else
                declare fiel[9]
                fiel[1]='nom'
                fiel[2]='part'
                fiel[3]='mk'
                fiel[4]='kol'
                fiel[5]='zena'
            if l0='д'
                fiel[6]='dast'
            else
                fiel[6]='kast'
            endif
                fiel[7]='data'
              if field(3)='PARTP'
                fiel[8]='partp'
              endif
            if l0='д'
                fiel[8]='dobo->sch'
            else
                fiel[8]='kobo->sch'
            endif
                declare imem[9]
                imem[1]='HОМЕ1'
                imem[2]='&l4'
                imem[3]='М-KА'
                imem[4]='KОЛИЧЕСТВО'
                imem[5]='   ЦЕHА'
                imem[6]='  СТОЙHОСТ'
                imem[7]='ДАТА '
              if field(3)='PARTP'
                imem[8]='PARTP'
              endif
                imem[8]='SCH'
                @  4, 2,20+ml0,77 box ram1 // iiii
                @ 18, 3 say repl("-",74)
                dbedit( 5, 3,17+ml0,76,fiel,"pfunk4",'',imem,'-','|')  // pro4
            endif
                set dele off
                podr_0=1
                save all like podr_0 to podred
                podred()
       enddo
      case v2=5
          ll1='н' ; pt0='н' ; b0=0 ; nom3=0 ; nom4=9999 ; b1=52 ; b2=1 ; b3=52
          store space(8)  to tars0,tars1
      do while .t.
          ll1='н' ; l1='д' ; l2='' ; ramka()
        * open_dobo(loc0:=50)  && nari
        * open_kobo(loc0:=50)  && nari
        * open_arhi(loc0:=50)  && nari
        * set rela to subs(data0,4,2)+data+nom into dobo, to subs(data0,4,2)+data+nom into kobo
          tars1=tars0+space(10-len(tars0)) ; data3=subs(data0,1,3)+subs(us_0,6,2)
             if !sc9='д'
                @ 19+ml0,15 clea to 23+ml0,65
                @ 19+ml0,14,24+ml0,66 box ram1
                set key -2 to ddok    &&  pro0
                set key -3 to dnspis  &&  pro7
                set key -4 to izvl    &&  sav8
                set key -5 to ddok    &&  pro0
                @ 20+ml0,15 say 'F3 - под░ежда ▒пи▒║ка на док│мен▓и▓е по ┤-░ен номе░'
                @ 21+ml0,15 say 'F4 - ░едак╢и┐ идeн▓и┤ика╢онен наме░                '
                @ 22+ml0,15 say 'F5 - пе╖а▓ банкови изле╖ени┐                       '
                @ 23+ml0,15 say 'F6 - извежда опи▒ание на опе░а╢и┐▓а по ░еги▒▓║░    '
             endif
                set cons on
                @  2,24 say 'СПИСЪK HА ОСЧЕТОВОДЕHИТЕ ДОKУМЕHТИ'
                @  3,23 say '------------------------------------'
                @  8,28 say 'В║веде▓е да▓а▓а' get data3  pict '99/99'
                @ 10,26 say 'В║веди из░аза:' get tars1
                chet()

                if lastkey()=27
                     set key -2 to ; set key -3 to ; set key -4 to ; set key -5 to
                     set dele off
                     exit
               endif
          open_dobo(loc0:=50)
          open_kobo(loc0:=50)
          open_arhi(loc0:=50)
          set rela to subs(data3,4,2)+data+nom into dobo, to subs(data3,4,2)+data+nom into kobo
          @ 20,14 clea to 23,66 ; @ 22+ml0,14,24+ml0,66 box ram1 ; izrab()

               tars0=trim(tars1)
               if ekpr0=2
                     @ 14,28 say 'О▓ номе░ на СО : ' get nom3 pict'9999'
                     @ 16,28 say 'До номе░ на СО : ' get nom4 pict'9999'
                     chet()
               else
                  set cons on
               endif
                    @ 13, 6 clea to 21+ml0,78
               if ll1='д'

      *   do while .t.
      *      set key -3 to dnspis
      *      @ 12,25 say 'За дан║╖ен номе░: ' get dn2
      *        chet()
      *      set key -3 to dnspis
      *         if lastkey()=27
      *              t0='-'
      *              set dele off
      *              exit
      *        endif
      *   enddo
      *        keyboard chr(13)
               endif
                @  2,24 say 'СПИСЪK HА ОСЧЕТОВОДЕHИТЕ ДОKУМЕHТИ'
                @  3,23 say '------------------------------------'
                set key -2 to
                set key -3 to
            if data3='  /'
                        if .not. empty(tars0)
          *    set filter to papk<>'k  '.and. papk<>'к  '.and.dn=dn2
               set filter to papk<>'к  '.and.0 < at(tars0,dok)
                        else
               set filter to papk<>'k  '
                        endif
            else
                        if .not. empty(tars0)
               set filter to data=data3.and.papk<>'k  '.and.0 < at(tars0,dok)
                        else
               set filter to data=data3.and.papk<>'k  '
                        endif
            endif
               go top
            if eof()
               @ 23+ml0,15 say '           H┐ма▓е обо░о▓и за ▓ози ме▒е╢           '
               pauza()
               loop
            endif
                   if ekpr0=2
                     if nom3 > 1
                      nom_3=subs(data3,4,2)+data3+str(nom3,4)
                      find '&nom_3'
                      ll0='1'
                      b1=57
                     endif
  ??   '                        СПИСЪK HА ОСЧЕТОВОДЕHИТЕ ДОKУМЕHТИ'
  ? space(70)+'▒▓░. '+str(b2,3)
  ? '   '+repli('_',75)
  ? '   HОМЕР  ПАПKА              ДОKУМЕHТ                       Т   ФAKТУРА   ДАТА'
  ? '   '+repli('_',75)
  do while .not. eof()
             if val(nom) < nom3 .or. nom4 < val(nom)
                   skip
                   loop
              endif
       ?  '    '+nom+'  '+papk+'   '
              if ll1='д'
       ?? substr(dok,1,11)+substr(vid,17,32)+' '+dr+' '+substr(vid,6,10)
              else
       ?? dok+' '+f+'    '+fakt
              endif
       ?? ' '+data
  spri()
                                 if  b0=0
  ? space(70)+'▒▓░. '+str(b2,3)
  ? '   '+repli('_',75)
  ? '   HОМЕР  ПАПKА              ДОKУМЕHТ                       Т   ФAKТУРА   ДАТА'
  ? '   '+repli('_',75)
                                 endif
       skip
  enddo
       pech()
       return
                   endif
                declare fiel[9]
                fiel[1]='nom'
                fiel[2]='papk'
         if ll1='д'
                  fiel[3]='substr(dok,1,11)+substr(vid,17,32)'
                  fiel[4]='dr'
                  fiel[5]='substr(vid,6,10)'
         else
                fiel[3]='dok'
                fiel[4]='f'
                fiel[5]='fakt'
         endif
                fiel[6]='data'
                fiel[7]='dobo->sch'
                fiel[8]='kobo->sch'
                fiel[9]='kobo->ksto'
                declare imem[9]
                imem[1]='HОМЕР'
                imem[2]='ПАПKА'
                imem[3]='               ДОKУМЕHТ'
                imem[4]='Т'
                imem[5]='ФAKТУРА'
                imem[6]='ДАТА '
                imem[7]='д-▓'
                imem[8]='К-▓'
                imem[9]='СТОЙHОСТ'
                @  5, 4 say repl('-',74)
                dbedit( 6, 4,21+ml0,77,fiel,"pfunk1",'',imem,'-','|')
                clos data

      enddo
      case v2=6
               @  2+ml0,25 say 'П░ове░ка и ▒м┐на на ди░ек▓о░и┐▓а'
               @  3+ml0,24 say '----------------------------------'
               l4='y' ; l5=' ' ; dire()  && pro0
      case v2=7
            do mol   && pro5
      case v2=8
      *  dt0=substr(dtoc(date0),7,2)
         store data0 to data3
         ll4='л'
      do while .t.
          ramka()
          b0=0
          b3=13
          sch0='601'
   @  2,20 say 'СПРАВKА ЗА ПРИХОД-РАЗХОДИ ПО HАПРАВЛЕHИЯ'
   @  3,19 say '------------------------------------------'
            l0='░'
   @  8,25 say 'П░и╡од - "п" ░аз╡од - "░" :' get l0 valid l0='п'.or.l0='░'
   @ 14,19 say 'В║веде▓е б░о┐ ░едове▓е на ▒▓░ани╢а' get b3 pict "999"
            chet()
        if l0=' '.or.lastkey()=27
         set key -2 to
         set dele off
         exit
        endif
                             if l0='░'
                                 sch0='601'
                             else
                                 sch0='701'
         @ 18,24 say 'В║веде▓е ╕и┤║░а на ▒ме▓ка▓а ' get sch0
         chet()
                             endif
        sch1=sch0
        ds0=sch0
        open_obve(loc0:=34)
        find '&sch0'
           if found()
              if a='н'
                  @ 23+ml0,15 say '         Сме▓ка▓а н┐ма анали▓и╖ни па░▓иди          '
                  i0=inkey(0)
                  @ 23+ml0,15 say space(51)
                  loop
              endif
           else
                  @ 23+ml0,15 say '      H┐ма в ▒ме▓коплана ▒ме▓ка ▒ ▓ак║в ╕и┤║░     '
                  i0=inkey(0)
                  @ 23+ml0,15 say space(51)
               loop
           endif
           part0=1
         set key -2 to spisk1
         set key -32 to spisk1
         @  8,19 clea to 19,70
         nv0='4'
         l11='н'
         ik0='       '
         @  8,21 say 'В║веде▓е ╕и┤║░а на па░▓ида▓а по г░ 60' get part0 pict "9999"
         @ 10,24 say 'В║веде▓е ╕и┤║░а на ик.╡-ка ' get ik0
         @ 23+ml0,23 say 'F3 - изди░ива желана▓а анал. па░▓ида'
         @ 12,23 say 'Желае▓е ли ▒╖е▓оводни опе░а╢ии д/н' get l11  valid l11='д'.or.l11='н'
         @ 14,12 say 'В║веде▓е ниво▓о I-во - 1,II-░о - 2,III-▓о - 3,IV-▓о - 4 ' get nv0
         @ 16,22 say 'В лева "л" ╡ил. лева "╡"  млн. лева "м"' get ll4 valid ll4='л'.or.ll4='╡'.or.ll4='м'
         razr()
         chet()
         izrab()
                   if lastkey()=27
                        set key -2 to
                        set key -32 to
                        clos all
                        set dele off
                        exit
                   endif
                    if part0=0
                         loop
                    endif
         @ 23+ml0,15 say space(51)
         razr()
         do case
            case nv0='1'
                 part0=substr(str(part0,4),1,1)
                 dsp0='---'+part0+'---'
            case nv0='2'
                 part0=substr(str(part0,4),1,2)
                 dsp0='---'+part0+'--'
            case nv0='3'
                 part0=substr(str(part0,4),1,3)
                 dsp0='---'+part0+'-'
            case nv0='4'
                 part0=substr(str(part0,4),1,4)
                 dsp0=sch0+part0
         endcase
         prt0=sch0+part0
         part2=part0
         part1=part0
         open_obap(loc0:=71)  && aobi
         find '&dsp0'
           if .not.found()
               @ 23+ml0,15 say '             H┐ма па░▓ида ▒ ▓ози номе░             '
               i0=inkey(0)
               @ 23+ml0,15 say space(51)
               loop
           endif
           name0=name
           dsp0=sch0+part0
           part0=0
                   ll0='2'
            l0='н'
            @ 23+ml0,27  say 'Желае▓е ли из░або▓ка'
            @ 23+ml0,49 prompt 'HЕ'
            @ 23+ml0,53 prompt 'ДА'
            menu to l0
            chet()
            @ 23+ml0,15 say space(51)
       if l0=2
          podr_0=51
          save all like podr_0 to podred
          podred()
          open_kobp(loc:=35)
          open_kpap(loc:=35)
          set safety off
      if substr(sch1,1,1)='6'
         iz0=' 2'
      else
         iz0='17'
      endif
        * raboti()
          @ 23+ml0,15 say '       П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е ...       '
     do while .t.
      if substr(sch1,1,1)='6'
         open_dpar(loc0:=39)
      else
         open_kpar(loc0:=39)
      endif
         set order to 2
         find '&dsp0'
         do while part=prt0
           re0=recno()
           nom0=nom
           data3=data
           dn0=subs(data3,4,2)+data3+nom0
           dsd0='453'+dn0
      if substr(sch1,1,1)='6'
         open_dobo(loc0:=47)
         set order to 2
            find '&dsd0'
                 l4=' '
                if found()
                 l4='1'
                 dstoi0=dsto
                endif
         open_kobo(loc0:=46)
      else
          open_kobo(loc0:=47)
          set order to 2
            find '&dsd0'
                 l4=' '
                if found()
                 l4='1'
                 kstoi0=ksto
                endif
         open_dobo(loc0:=48)  &&  nsdi
      endif
            find '&dn0'
              do while data3=data.and.nom0=nom
                nom0=nom
                sch0=sch
                nvo0=nvo
          if substr(sch1,1,1)='6'
              if l4=' '
                ksto0=ksto
              else
                ksto0=ksto-dstoi0
              endif
          else
              if l4=' '
                ksto0=dsto
              else
                ksto0=dsto-kstoi0
              endif
          endif
                data3=data
                if (substr(sch0,1,1)='5'.or.substr(sch0,1,1)='4')  && .and.(.not.sch0='421')  да ▒е ▒пе░е за ▒л. б░┐г
                  if nvo0='   0'
                   sele 8
                   appe blank
       rec_lock()
       repl nom with nom0,sch with sch0,ksto with ksto0,data with data3
       rec_unlock()
                  else
                    open_kpap(loc:=36)
                    appe blank
       rec_lock()
       repl nom with nom0,part with '   '+nvo0,mk with 'лв',kast with ksto0,data with data3
       rec_unlock()
                  endif
                else
                   sele 8
                   appe blank
       rec_lock()
       repl nom with nom0,sch with sch0,ksto with ksto0,data with data3
       rec_unlock()
                endif
          if substr(sch1,1,1)='6'
                sele 3
          else
                sele 2
          endif
                      if .not. eof()
                         skip
                      else
                   sele 8
                   appe blank
       rec_lock()
       repl sch with '000',data with data3
       rec_unlock()
                         exit
                      endif
              enddo
             if substr(sch1,1,1)='6'
                open_kpar(loc0:=40)  && naki
             else
                open_dpar(loc0:=40)  && nadi
             endif
            find '&dn0'
              do while data3=data.and.nom0=nom
                nom0=nom
                part0=part
                sch0=substr(part,1,3)
                mk0=mk
                kol0=kol
          if substr(sch1,1,1)='6'
              if l4=' '
                kast0=kast
              else
                kast0=kast-dstoi0
              endif
          else
              if l4=' '
                kast0=dast
              else
                kast0=dast-kstoi0
              endif
          endif
                data3=data
           if .not.(substr(sch0,1,1)='5'.or.substr(sch0,1,1)='4')
                 open_kpap(loc:=37)
                 appe blank
             rec_lock()
             repl nom with nom0,part with part0,mk with mk0,kol with kol0,;
                  kast with kast0,data with data3
             rec_unlock()
           else
           endif
             if substr(sch1,1,1)='6'
                sele 5
             else
                sele 4
             endif
                      if .not. eof() ; skip ; else ; exit ; endif
              enddo
           if substr(sch1,1,1)='6'
              open_dpar(loc0:=41)
           else
              open_kpar(loc0:=41)
           endif
              set order to 2
           go re0
           skip
                 if  eof()
                    exit
                 endif
         enddo
         do case
            case iz0=' 2'
                 prt0='602'+part2
                 dsp0='602'+part2
                 iz0=' 3'
                 loop
            case iz0=' 3'
                 prt0='603'+part2
                 dsp0='603'+part2
                 iz0=' 4'
                 loop
            case iz0=' 4'
                 prt0='604'+part2
                 dsp0='604'+part2
                 iz0=' 5'
                 loop
            case iz0=' 5'
                 prt0='605'+part2
                 dsp0='605'+part2
                 iz0=' 9'
                 loop
            case iz0=' 9'
                 prt0='609'+part2
                 dsp0='609'+part2
                 iz0='10'
                 loop
            case iz0='10'
                 prt0='669'+part2
                 dsp0='669'+part2
                 iz0='11'
                 loop
            case iz0='11'
                 prt0='624'+part2
                 dsp0='624'+part2
                 iz0=' 0'
                 loop
*           case iz0='16'
 *               prt0='703'+part2
  *              dsp0='703'+part2
   *             iz0='17'
    *            loop
            case iz0='17'
                 prt0='721'+part2
                 dsp0='721'+part2
                 iz0='18'
                 loop
            case iz0='18'
                 prt0='724'+part2
                 dsp0='724'+part2
                 iz0=' 0'
                 iz0=' 0'
                 loop
            case iz0=' 0'
                  exit
         endcase
     enddo
         sele 8
         appe blank
         rec_lock()
         repl sch with '000',data with data3
         rec_unlock()
         @ 23+ml0,15 say space(51)
       endif
       open_arhi(loc0:=51) && nari
       open_obap(loc0:=72) && aobi
       open_obve(loc0:=35)
       open_kpap(loc0:=38)
       open_kobp(loc0:=36)
       ksto1=0
       ksto2=0
       kol2=0
       set marg to 1
                  if .not. ik0='       '
                      sele 9
                      find '&ik0'
                      if .not.found()
                         @ 23+ml0,15 say '           H┐ма движение по ▓ази ╡-▓ика            '
                         pauza()
                         loop
                      endif
                      sele 8
                  endif
           if ekpr0=2
              b1=55
           endif
      ?? '                      ОБЕKТ: '+part1+'  '+name0
      spri()
      ?
      spri()
      ? 'С-KА  П-ДА      HАИМЕHОВАHИЕ            ОПЕРАЦИЯ М-А    K-ВО       СТОЙHОСТ'
      spri()
      ?
      spri()
                 sch2=sch
                 sch3='---'
               do while .t.
            sch0=sch
            ksto0=ksto
              if sch0='   '
    ? '                                                     --------------------------'
    ? '              В▒и╖ко                                             '+str(ksto1,j0,j1)
    ?
                pech()
                exit
              endif
            sele 7
            find '&sch0'
           if found()
              name0=name
              a0=a
                if  (substr(sch0,1,1)='5'.or.substr(sch0,1,1)='4')    && .and.(.not.sch0='421')
                   a0='н'
                endif
           else
             a0='д'
             sch0='   '
           endif
              if a0='н'
              sele 8        && Само за о▓делна ╡а░ак▓е░и▒▓ика
              sch2=sch
              ksto3=0
            do while .not. eof()
                      dtno0=subs(data,4,2)+data+nom
                      sele 1
                        find '&dtno0'
                        dok0=dok
              sele 8
     if l11='д'
   ? ' '+substr(dok0,1,39)+' '+nom+'-'+substr(data,1,2)+'    лв'+'           '+str(ksto/ra0,j0,j1)
                   spri()
     endif
                   ksto1=ksto1+ksto/ra0  ; ksto3=ksto3+ksto/ra0
                   spri()
              skip
                             if sch=sch2
                                loop
                             else
        if l11='д'
 ? '                                                      -------------------------'
 spri()
 ? ' '+sch0+'       '+name0+'     '+'Об╣о'+'          '+str(ksto3,j0,j1)
 spri()
        else
 ? ' '+sch0+'       '+name0+'     '+'    '+'          '+str(ksto3,j0,j1)
 spri()
        endif
                              skip -1
                              exit
                             endif
            enddo
              else
           sele 8
               if .not.sch=sch3
                   sele 9
                   sch3=substr(part,1,3)
                  if ik0='       '
                     find '&sch0'
                     dw0='sch0=substr(part,1,3)'
                  else
                     find '&ik0'
                     dw0='part=ik0'
                  endif
                     ksto4=0
                   do while &dw0
                           if part='       '
                              exit
                           endif
                     part0=part
                       do while .not. eof()
                           if .not. part=part0
                              exit
                           endif
                      dp0=part
                      sele 6
                      find '&dp0'
                      name0=name
                      mk0=mk
                      sele 9
                      dtno0=subs(data,4,2)+data+nom
                      sele 1
                      find '&dtno0'
                      dok0=dok
                      sele 9
     if l11='д'
   ? ' '+substr(dok0,1,39)+' '+nom+'-'+substr(data,1,2)+' '+mk0+' '+str(kol,j2,j3)+' '+str(kast/ra0,j0,j1)
                   spri()
     endif
                   ksto1=ksto1+kast/ra0
                   ksto2=ksto2+kast/ra0
                   kol2=kol2+kol
                   ksto4=ksto4+kast/ra0
                             if .not. eof() ; skip ; else ; exit ; endif
                       enddo
        if l11='д'
 ? '                                                     --------------------------'
  spri()
 ? ' '+sch0+' '+substr(part0,4,4)+' '+name0+' '+'Об╣о  '+str(kol2,j2,j3)+' '+str(ksto2,j0,j1)
        else
 ? ' '+sch0+' '+substr(part0,4,4)+' '+name0+'    '+mk0+' '+str(kol2,j2,j3)+' '+str(ksto2,j0,j1)
        endif
        spri()
    if l11='д'
      ?
    endif
                ksto2=0
                kol2=0
                        if .not.ik0='       '
                              pech()
                              return
                        endif
                   enddo
            sele 7
            find '&sch0'
       if ksto4 <> 0
 ? '                                                     --------------------------'
spri()
 ? '    ВСИЧKО за ▒ме▓ка '+sch0+' '+name+'     '+str(ksto4,j0,j1)
spri()
 ?
spri()
       endif
            sele 9
                   sch3=sch0
               endif
              endif
           sele 8
           if .not. eof() ; skip ; else ; exit ; endif
         enddo
enddo
         case v2=9
            do suptot  &&  p6
      endcase    &&
      ************ По▓░еби▓ел▒ка ┤│нк╢и┐ **********
                function pfunk1
                parameters mode0,fld0
                private fld0
                cur0=fiel[fld0]
        do case
           case mode0 < 4
                         if dele()
                         @ 23+ml0,15 say '        Запи▒║▓ е ма░ки░ана за из▓░иване           '
                           i0=inkey(1)
                           eras &disc0\deklar.txt ; eras &disc0\pokupki.txt ; eras &disc0\prodagbi.txt
                         endif
                     *   @  4,24 say 'Кон▓и░овка '+dobo->sch+' / '+kobo->sch+str(kobo->ksto,j0,j1)
                         if ll1='51'   // moge da e problem
                            @ 23+ml0,15 say '  Ма░ки░ане - "м" в║з▒▓анов┐ване - "в" кон▓░аген▓а '
                         else
                            @ 23+ml0,15 say ' F7-╖е▓е док│мен▓а F8-код опе░а▓о░ да▓а на пла╣ане '
                         endif

                         if fieldname(1)='NOM'
                             @ 4+ml0,5 say arhi->nom
                         endif
           case lastkey()=27
                         return 0
           case lastkey()=-6
                if  .not. sele()=1
                    return 1
                endif
                for i0 = 1 to 29 && .and.(.not.subs(dok,12,i0)=' ')
                      if subs(dok,11+i0,1)=' '
                         exit
                      endif
                      dok4=subs(dok,12,i0)
                next
                do case
                   case subs(dok4,1,1)='c'
                      dok4='&disc_0\comp\&go0\contract\'+dok4+'.pdf'
                   case subs(dok4,1,1)='n'
                      dok4='&disc_0\comp\&go0\notar\'+dok4+'.pdf'
                   case subs(dok4,1,4)='zpl'
                      dok4='&disc_0\god&dt0\zapl\&go0\'+subs(dok4,1,3)+subs(dok4,10,2)+subs(dok4,13,2)+'.pdf'
                   case subs(dok4,1,1)='d'
                      dok4='&disc_0\god&dt0\dds\&go0\'+subs(dok4,1,3)+subs(dok4,10,2)+subs(dok4,13,2)+'.pdf'
                   case subs(dok4,1,4)='glkn'
                      dok4='&disc_0\god&dt0\zkpo\&go0\'+dok4+'.pdf'
                   case subs(dok4,1,4)='memo'
                      dok4='&disc_0\god&dt0\zkpo\&go0\'+dok4+'.pdf'
                   case subs(dok4,1,5)='banka'
                      dok4='&disc_0\god&dt0\zkpo\&go0\'+dok4+'.pdf'
                endcase
                 if file('&dok4')
                    ! cmd /c start &pdfxc_0  &dok4
                      set cursor on
                 else
                    @ 23+ml0,15 say '              Файл║▓ не е наме░ен.                 '
                     inkey(4)
                    @ 23+ml0,15 say ' F7-╖е▓е док│мен▓а F8-код опе░а▓о░ да▓а на пла╣ане '
                 endif
           case lastkey()=-7
                 save screen
                 @ 11, 5,13,74 box ram1
                 @ 12, 6 clea to 12,73
                 set curs on
                 dok01=val(subs(dok,24,4))
                 dok02=ctod(subs(dok,29,8))
                 dok03=val(subs(dok,12,11))
                 set confirm on
                 @ 12, 7 say 'Код на опе░а▓о░а:      ▒│ма:             да▓а:          на пла╣ане'
                 @ 12+ml0, 25 get dok01  pict "9999"
                 @ 12+ml0, 36 get dok03  pict "99999999.99"
                 @ 12+ml0, 54 get dok02
                 chet() &&  read
                 set confirm off
                       if lastkey()=13
                 store repl('0',4-len(ltrim(str(dok01))))+ltrim(str(dok01)) to dok01
                 dok0=subs(dok,1,10)+' '+str(dok03,11,2)+'-'+dok01+'-'+dtoc(dok02);
                 +subs(dok,37,5)
                  set curs off
                          rec_lock()
                          repl dok with dok0
                          rec_unlock()
                 dok0=space(40)
                 clea gets
                       endif
                 restore screen
           case lastkey()=13
                  set cursor on
                  rec_lock()
                  @ row(),col() get &cur0
                  @ 23+ml0,15 say '              В║веде▓е желани▓е п░омени            '
                  chet()
                  rec_unlock()
                  set cursor off
                  @ 23+ml0,15 say ' F7-╖е▓е док│мен▓а F8-код опе░а▓о░ да▓а на пла╣ане '
                  readinsert(.F.)
                  @ 0,60 say '   '
                  do case
                     case l2='2'
                          @ 23+ml0,15 say '             F10 - добав┐ банкова ▒ме▓ка           '
                     case tt0='50'
                         if sc9='н'
                           @ 23+ml0,15 say '  Ма░ки░ане - "м" в║з▒▓анов┐ване - "в" кон▓░аген▓а '
                         endif
                  endcase
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
           otherwise
                     return 1
           endcase
                return 1
