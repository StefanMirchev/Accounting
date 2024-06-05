   *SAV8.PRG  firm fzame pfzame izvl lipso mol2 mesexx nootst prov pfunk2 regt prehansi tehnol ustro zame
   *   @  0,15  say 'bbbb ' ; inkey(0) //kkk
     ****************** Prehwyrlqne ot asci w ansi na dbf******************
                             proc prehansi   && asci->ansi
              save screen
              ! &disc_1\preh\preh.exe

            *   zvan()
            @ 23,15 say "               ПРОГРАМАТА ПРИKЛЮЧИ                 "
              inkey(3)
               restore screen
                                  return
       ***************  Изди░ва кон▓░аген▓ в REGL   ****************
                            proc regt
           open_regl(loc0:=12)
           dn20=trim(dn2)
           find "&dn20"
         if .not. found()
           appe blank
               rec_lock()
           repl dn with dn2, vvid with substr(vid0,26,23)
               rec_unlock()
         else
             if br<99
               rec_lock()
               repl br with br+1
               rec_unlock()
             endif
         endif
                            return
   ************** П░о╢ед│░а за о▓пе╖а▓ване на банково извле╖ение ***********
                          proc izvl
   save screen
   clea gets
   ramka()
   store '    '  to nom0, imb0, data3
   sch1='503' ; data1='01'+substr(data0,3,3) ; data2='01'+substr(data0,3,3)

      *    store 0 to line0,line1,line2, line9, sec0
   disc0='&disc_0\god'+dt0+'\zkpo\'+go0
   ! cmd /c 'if not exist \disc\god&dt0\zkpo\&go0\nul md \DISC\GOD&dt0\ZKPO\&go0'
   set cursor on ; inkey(0.5) ; eras aaa.txt ; store 0 to b0
   store 1 to b2,b3,b4,part1
   open_arhi(loc0:=48) && nari
   @ 2,25 say 'ПЕЧАТ HА БАHКОВИ ИЗВЛЕЧЕHИЯ'
   @ 3,24 say '-----------------------------'
             do while .t.
                     @  6,27 say 'Сме▓ка:' get sch1 pict "999"  valid subs(sch1,1,1)='5'
                     @  6,40 say 'Па░▓ида:' get part1 pict "9999"
                     read
                     if sch1='503' ; l0=1 ; else ; l0=2 ; endif
                        if lastkey()=27 .or. part1=0
                            clea  gets
                            set dele off
                            return
                        endif
                     @  8,35 prompt 'ЛЕВА' ; @  8,41 prompt 'ВАЛУТА'
                     menu to l0
                     if lastkey()=27   ; set dele off ; return 0 ; endif
                   part2=sch1+str(part1,4)
                   open_obap(loc0:=46)
                  find '&part2'
                   if .not.found()
                     @ 23+ml0,24 say 'H┐ма па░▓ида ▒ ▓ози номе░: '+part2
                     i0=inkey(0)
                     loop
                   else
                     if l0=2   // valuta
                        asal0=kol
                     else      // leva
                        asal0=asal
                     endif
                     iban1=subs(name,14,4)+' '+subs(name,18,4)+' '+subs(name,22,4)+' '+subs(name,26,4)+' '+subs(name,30,4)+' '+subs(name,34,2)
                     do case
                        case mk='лв'
                        iban1=iban1+'    BGN'
                        case mk='ев'
                        iban1=iban1+'    EUR'
                        case mk='╣д'
                        iban1=iban1+'    USD'
                     endcase
                     do case
                        case subs(iban1,6,4)="RZBB"
                        imb0='Рай┤азенбанк (Б║лга░и┐) ЕАД'
                        other
                        imb0=' '
                     endcase
                   endif
                  exit
             enddo
            izrab()
                        if lastkey()=27
                            set dele off
                            return
                        endif
             raboti()
             set dele on
             b1=65
             store 0 to br1, dt0,kt0
             ll0='2'
             open_arhi(loc0:=48) && nari
             dn0=subs(data1,4,2)+data1
             find '&dn0'
             go top
             set cent on
             save_0='s0001'
      do while .t.        
            do case
               case data3='    '
                    data3='01/'+subs(data0,4,2)
                    peri0='01/01/'+str(year(date0),4)+'-'+'31/01/'+str(year(date0),4)
                    b2=1
               case data3='01/'+subs(data0,4,2)
                    data3='02/'+subs(data0,4,2)
                    peri0='01/02/'+str(year(date0),4)+'-'+'28/02/'+str(year(date0),4)
                    b2=1
               case data3='02/'+subs(data0,4,2)
                    data3='03/'+subs(data0,4,2)
                    peri0='01/03/'+str(year(date0),4)+'-'+'31/03/'+str(year(date0),4)
                    b2=1
               case data3='03/'+subs(data0,4,2)
                    data3='04/'+subs(data0,4,2)
                    peri0='01/04/'+str(year(date0),4)+'-'+'30/04/'+str(year(date0),4)
                    b2=1
               case data3='04/'+subs(data0,4,2)
                    data3='05/'+subs(data0,4,2)
                    peri0='01/05/'+str(year(date0),4)+'-'+'31/05/'+str(year(date0),4)
                    b2=1
               case data3='05/'+subs(data0,4,2)
                    data3='06/'+subs(data0,4,2)
                    peri0='01/06/'+str(year(date0),4)+'-'+'30/06/'+str(year(date0),4)
                    b2=1
               case data3='06/'+subs(data0,4,2)
                    data3='07/'+subs(data0,4,2)
                    peri0='01/07/'+str(year(date0),4)+'-'+'31/07/'+str(year(date0),4)
                    b2=1
               case data3='07/'+subs(data0,4,2)
                    data3='08/'+subs(data0,4,2)
                    peri0='01/08/'+str(year(date0),4)+'-'+'31/08/'+str(year(date0),4)
                    b2=1
               case data3='08/'+subs(data0,4,2)
                    data3='09/'+subs(data0,4,2)
                    peri0='01/09/'+str(year(date0),4)+'-'+'30/09/'+str(year(date0),4)
                    b2=1
               case data3='09/'+subs(data0,4,2)
                    data3='10/'+subs(data0,4,2)
                    peri0='01/10/'+str(year(date0),4)+'-'+'31/10/'+str(year(date0),4)
                    b2=1
               case data3='10/'+subs(data0,4,2)
                    data3='11/'+subs(data0,4,2)
                    peri0='01/11/'+str(year(date0),4)+'-'+'30/11/'+str(year(date0),4)
                    b2=1
               case data3='11/'+subs(data0,4,2)
                    data3='12/'+subs(data0,4,2)
                    peri0='01/12/'+str(year(date0),4)+'-'+'31/12/'+str(year(date0),4)
                    b2=1
               case data3='12/'+subs(data0,4,2)
                    exit
            endcase
            set cent off
            set marg to 5
            ?
            ? space(20)+' МЕСЕЧHО ИЗВЛЕЧЕHИЕ ПО СМЕТКА'
            ?
            ?
            ?
            ?
            ?
            ?
            ?  imb0
            ? 'Ти▓│л┐░ на ▒ме▓ка▓а '+ltrim(trim(fir))+' '+ltrim(trim(grad))
            ? 'Пе░иод на извле╖ение▓о '+peri0
            ? 'Банкова ▒ме▓ка (IBAN) '+iban1
            ? 'Да▓а на извле╖ение▓о '+subs(peri0,12,10)+space(33)+'▒▓░. '+str(b2,3)
            ? repl('-',72)
            ? space(49)+'С▓а░о ▒алдо'+str(asal0,12,j1)
            ? repl('-',72)
            ?'No. ВАЛЬОР   ОПИСАHИЕ HА ОПЕРАЦИЯТА                 K░еди▓         Деби▓'
            ? repl('-',72)
            ?' 1    2               3                                4             5  '
            ? repl('-',72)
            b0=b0+21
            store 0 to dt1,kt1
            do while data=data3
                  *   line()
          nom0=nom
          dano0=subs(data3,4,2)+data3+nom0+part2
          dok0=dok
          open_dpar(loc0:=46) &&  nsdi
          find '&dano0'
          if found()
             do case
                case subs(dok0,1,5)='ли╡ва'
                dok0='ли╡ва/interest'+space(18)+subs(dok0,33,8)
                case subs(dok0,1,11)='по▒▓е░минал'
                dok0='по▒▓е░минал/POS ACQ'+space(13)+subs(dok0,33,8)
                case subs(dok0,1,15)='о▓ ка▒а в банка'
                dok0='о▓ ка▒а в банка/cash deposit'+'    '+subs(dok0,33,8)
             endcase
             if l0=2      //  valuta
                ? subs(nom0,2,3)+' '+subs(dok0,33,8)+' '+subs(dok0,1,30)+'   '+str(kol,12,j1)+space(16)
                kt1=kt1+kol
                kt0=kt0+kol
             else          //  leva
                ? subs(nom0,2,3)+' '+subs(dok0,33,8)+' '+subs(dok0,1,30)+'   '+str(dast,12,j1)+space(16)
                kt1=kt1+dast
                kt0=kt0+dast
             endif
                 sele 10
                 use
             spri()
          endif
          open_kpar(loc0:=46) &&  nsdi
          find '&dano0'
          if found()
             do case
                case subs(dok0,1,8)='б. ▓ак▒а'.or.subs(dok0,1,7)='б.▓ак▒а'
                dok0='б. ▓ак▒а/charge'+space(17)+subs(dok0,33,8)
                case subs(dok0,1,15)='о▓ банка в ка▒а'
                dok0='о▓ банка в ка▒а/withdraw cash'+space(3)+subs(dok0,33,8)
             endcase
             if l0=2    // valuta
                ? subs(nom0,2,3)+' '+subs(dok0,33,8)+' '+subs(dok0,1,30)+space(17)+str(kol,12,j1)
                dt1=dt1+kol
                dt0=dt0+kol
             else        // leva
                ? subs(nom0,2,3)+' '+subs(dok0,33,8)+' '+subs(dok0,1,30)+space(17)+str(kast,12,j1)
                dt1=dt1+kast
                dt0=dt0+kast
             endif
             spri()
          endif
            if b0=0
               b2=b2+1
               ?
               ? space(64)+'▒▓░. '+str(b2,3)
               ? repl('-',72)
               ?'No. ВАЛЬОР   ОПИСАHИЕ HА ОПЕРАЦИЯТА                 K░еди▓         Деби▓'
               ? repl('-',72)
               ?' 1    2               3                                4             5  '
               ? repl('-',72)
               b0=b0+7
            endif
            sele 1
                if .not. eof() ; skip ; else ; exit ; endif
            enddo
            ? repl('-',72)
            ? space(28)+'Обо░о▓и за пе░иода'+str(kt1,12,j1)+'  '+str(dt1,12,j1)
            ? repl('-',72)
            ? space(29)+'Hа▓░│пани обо░о▓и'+str(kt0,12,j1)+'  '+str(dt0,12,j1)
            ? repl('-',72)
            ? space(50)+'Hово ▒алдо'+str(asal0+kt1-dt1,12,j1)
              asal0=asal0+kt1-dt1
            ? repl('-',72)
           for i0 = 1 to 64-b0
             ?
           next
         b0=b1
         save_1='&save_0'+'.prn'
         memowrit('s0099.prn', memoread('s0099.prn')+memoread('&save_1'))
         spri()
      enddo
           zvan()
           inkey(5)
          eras s0013.prn
          pech()
                          return    &&  izvl
   **************************  П░о╢ед│░а▓а н┐мал┐ва з║дл. ▒ о▓▒▓. ************
                                    proc nootst
           save screen
           set key -38 to
           @ 11,21,15,59 box ram1
           @ 12,22 clea to 14,58
          @ 12,24 say 'ПРОЦЕДУРАТА HАМАЛЯ ЗАДЪЛЖЕHИЯТЯ'
          @ 13,24 say 'ПО ПРОДАЖБИ С ТЪРГОВСКИ ОТСТЪПKИ'
          @ 14,24 say 'П░ог░ама▓а ░або▓и по: '
                       i0=inkey(0)
                        if lastkey()=27
                            set key -38 to  nootst
                            restore screen
                            @  3,42 get papk0  pict '999'
                            chet()
                            return
                        endif
            open_arhi(loc0:=14)
            do while .not.eof()   &&  п░оме░ка за опе░ за о▓▒▓║пка
               locate rest for subs(dok,40,1)='*'.or.subs(dok,39,1)='*'
               if found()
                 re0=recno()
               else
                 exit
               endif
       nom1=nom
       dn0=subs(data,4,2)+data+nom1
       @ 14,46 say ''+nom1+'-'+data0
       open_kpar(loc0:=14)
       find "&dn0"
       store 0 to dsto0, dast0
     do while data=data0.and.nom=nom1
            part0=part
            sch1=subs(part,1,3)
            mk0=mk
            dast0=((kast/1.2/(1-otst/100))*1.2-kast)*(-1)
            dsto0=dsto0+dast0
              if .not. dast0=0
                   @  7, 6 say sch1
                   @  7,23 say dsto0  pict "99999999999.99"
              endif
   if .not. dast0=0
      open_dpar(loc0:=14)
      appe blank
      rec_lock()
      repl  nom with str(nom0,4), part with part0,mk with mk0,;
      dast with dast0, data with data0
      rec_unlock()
   endif
         sele 5
                if .not. eof() ; skip ; else ; exit ; endif
         enddo
    if .not. dsto0=0
       open_dobo(loc0:=14)
       appe blank
       rec_lock()
       repl nom with str(nom0,4), sch with sch1, dsto with dsto0, data with data0
       rec_unlock()
       @  8,43 say '777'
       @  8,60 say  dsto0 pict "99999999999.99"
       open_kobo(loc0:=14)
       appe blank
       rec_lock()
       repl nom with str(nom0,4), sch with '777', ksto with dsto0,;
       data with data0
       rec_unlock()
       open_arhi(loc0:=15)
       appe blank
       rec_lock()
       repl nom with str(nom0,4), papk with str(papk0,3),data with data0, vek with subs(vek0,1,2);
      ,dok with 'Hамал.зад║лж.-п░одаж.▒ Т.О. '+nom1+'-'+data0,vid with+space(16)+dtoc(date0)
       rec_unlock()
       if .not. dsto0=0
         nom0=nom0+1
        endif
        @  3,19 say str(nom0,5)
    endif
            go re0
            rec_lock()
       if subs(dok,40,1)='*'
            repl dok with subs(dok,1,39)+' '
       else
            repl dok with subs(dok,1,38)+' '+subs(dok,40,1)
       endif
            rec_unlock()
                if .not. eof() ; skip ; else ; exit ; endif
            enddo
         *   zvan()
            @ 23+ml0,15 say '              П░ог░ама▓а п░икл╛╖и                 '
                       i0=inkey(0)
            @ 23+ml0,15 say space(51)
   restore screen
   set key -38 to  nootst
   @  3,19 say str(nom0,5)
   @  6, 0 clea to 17,36
   @  6,43 clea to 17,75
   @  3,42 get papk0  pict '999'
        chet()
               restore screen
                         return
  ******************   П░о╢ед│░а за зам┐на на па░▓иди *************
                              proc  zame
               ramka()
               podr_0=14
               save all like podr_0 to podred
               podred()
      open_zame()
      open_dparp()
      open_kparp()
      set rela to part into zame
      set filter to (part='702'.or.part='304').and.(.not.partp='       ').and.(zame->part2)='       ';
          && .and.(nom='5'.or.nom='8')
      go top
      store 0 to part0,part20
      store subs(us_0,1,3)+'M0'+subs(us_0,6,3) to us_1
      @  2,24 say 'ЗАМЯHА HА АHАЛИТИЧHИ ПАРТИДИ'
      @  3,23 say '------------------------------'
      @ 4,25 say 'В║веде▓е ди░ек▓о░и┐' get us_1 pict "N:\NNNN\"
    do while .t.
      set key -2 to prov
      set key -3 to prov
      set key -4 to prov
      @ 23+ml0,18 say 'П░ове░ка за нови па░▓иди F3 - 702 или F4 - 304'
      @  6,13 say 'Замени па░▓ида о▓ M0' get part0 pict "9999"
     *  chet()
        read
       if lastkey()=27
          set key -2 to
          set key -3 to
          set key -4 to
          set rela to
          set filter to
          return
       endif
      if  0 = part0
          @  6,18 say space(40)
         exit
      endif
        sele 7
        pt0='702'+str(part0,4)

        find '&pt0'
              part20=val(substr(part2,4,4))
              sele 6                                   && да не ▒е из▓░ива
              use '&us_1'+'obap' inde '&us_1'+'aobi'     && да не ▒е из▓░ива
              find '&pt0'
       if .not. found()
                @ 23+ml0,15 say space(51)
                @ 23+ml0,30 say 'Па░▓ида▓а е н┐ма в М0 '
                i0=inkey(0)
       else
                 @  6,40 say name
                 name0=subs(name,1,10)
                 i0=inkey(0)
       endif
              sele 6                                   && да не ▒е из▓░ива
              use '&us_0'+'obap' inde '&us_0'+'aobi'     && да не ▒е из▓░ива
              find '&pt0'
              if part20=0
                 store part0 to  part20
              endif
              set key -4 to prov
              @ 23+ml0,15 say 'F5 - па░▓ида кои па░иди замен┐                   '
              @  7, 7 say '▒ па░▓да о▓ ▒╖е▓овод▒▓во▓о'get part20 pict "9999"
              chet()
              @ 23+ml0,15 say space(51)
              set key -4 to
                 if part20 < 1
                    loop
                 endif
              pt0='702'+str(part20,4)
              open_obap(loc0:=65)  && aobi
              find '&pt0'
              @  7,40 say name
             if lastkey()=27
                exit
              endif
          pt0='702'+str(part0,4)
          open_zame()
          find '&pt0'
          if .not.found()
             appe blank
          endif
            if 0 < part20
              rec_lock()
              repl part with '702'+str(part0,4),part2 with '702'+str(part20,4)
              rec_unlock()
            endif
          pt0='304'+str(part0,4)
          open_zame()
          find '&pt0'
          if .not.found()
             appe blank
          endif
            if 0 < part20
              rec_lock()
              repl part with '304'+str(part0,4),part2 with '304'+str(part20,4)
              rec_unlock()
            endif
           do fzame
    enddo
          l1='н'
          @  6, 5 clea to 7,60
          @ 23+ml0,15 say space(51)
          @ 23+ml0,27  say 'Желае▓и ли ваз▒▓анов┐ване д/н' get l1  valid l1='д' .or. l1='н'
          chet()
          if lastkey()=27
             set key -2 to
             set filter to
             set rela to
             return
          endif
       if l1='д'   &&  в║з▒▓анов┐ване
    for i0=1 to 2
     if i0=1
      open_kpar()
     else
      open_dpar()
     endif
     set index to
     set rela to
     set filter to (part='702'.or.part='304')  && .and.subs(partp,1,2)='  '
     go top
        if .not.subs(partp,1,2)='  '
          @ 23+ml0,15 say space(51)
          @ 23+ml0,25  say 'В║з▒▓анов┐ване▓о е неп░иложимо !'
          i0=inkey(0)
          loop
        endif
        do while .not. eof()
    *     if part='702'
    *        partp0='702'+subs(partp,4,4)
    *     else
    *        partp0='304'+subs(partp,4,4)
    *     endif
          rec_lock()
        if .not.empty(subs(partp,4,4))
          if part='702'
             repl part with '702'+subs(partp,4,4),partp with '702'+subs(partp,4,4)
          else
             repl part with '304'+subs(partp,4,4),partp with '304'+subs(partp,4,4)
          endif
        endif
          rec_unlock()
            if .not.eof()
               skip
            else
               exit
            endif
        enddo
    next
       podr_0=1
       save all like podr_0 to podred
       podred()
       podr_0=14
       save all like podr_0 to podred
       podred()
       set rela to
       endif
      us_1=trim(us_1)
      open_zame()
      l0='н'
      @  6, 5 say space(50)
      @ 23+ml0,15 say space(51)
      @ 23+ml0,20  say 'Желае▓и ли изв║░╕ване▓о на зам┐на▓е д/н' get l0  valid l0='д' .or. l0='н'
      chet()
       if l0='д'
 *    open_zame()
    for i0=1 to 2
     if i0=1
      open_kparp()
     else
      open_dparp()
     endif
       set rela to part into zame
       set filter to (part='702'.or.part='304').and.(.not.partp='       ');
           .and.(zame->part2)='       '
       go top
       locate  for (part='702'.or.part='304').and.(.not.partp='       ').and.(zame->part2)='       '
       if found()
          @ 23+ml0,15 say space(51)
          @ 23+ml0,19 say 'ВHИМАHИЕ !'  color 'R+/B'
          @ 23+ml0,30  say 'Има▓е нео╡а░ак▓е░изи░ани па░▓иди'
          do  prov
          return
       else
          go top
       endif
    next

    for i0=1 to 2
     if i0=1
      open_kparp()
     else
      open_dparp()
     endif
      set rela to part into zame
      set filter to part='702'.or.part='304'
      go top
      @ 23+ml0,15  say space(51)
    do while .not. eof()
      if .not. partp=space(7)
          @ 23+ml0,18 say 'П░ог░ама▓а замен┐ па░▓ида '+subs(part,4,4)+' ▒ па░▓ида '+subs(zame->part2,4,4)
          rec_lock()
          if part='702'
             partp0='  7'+subs(part,4,4)
          else
             partp0='  3'+subs(part,4,4)
          endif
          repl part with zame->part2, partp with partp0
          rec_unlock()
       endif
      skip
    enddo
    next
      clos all
      podr_0=1
      save all like podr_0 to podred
      podred()
      endif
                              return
                 ************** П░о╢ед│░а за   *****************
                         proc fzame
               @ 10, 7 say space(60)
               @ 12, 7 say space(60)
                sele 7
                sele 6
                use '&us_1'+'obap' inde '&us_1'+'nami'     && да не ▒е из▓░ива
                set filter to .not. empty(zame->part)
                go top
                set relation to part into zame
                find "&name0"
                declare fiel[3]
                  fiel[1]='zame->part'
                  fiel[2]='subs(obap->name,1,32)'
                  fiel[3]='zame->part2'
                declare imem[3]
                  imem[1]='ОТ M0'
                  imem[2]='      '
                  imem[3]='СЧЕТОВ'
                @  8, 1 say repl('═',78)
                @ 10, 1 say repl('═',78)
                dbedit( 9, 1,21+ml0,48,fiel,"pfzame",'',imem,'═','╙')
                set rela to
                         return
                function pfzame
                parameters mode0,fld0
                private fld0
                cur0=fiel[fld0]
                 do case
                   case mode0 < 4
                re0=recno()
                store zame->part2 to pt0
                store val(subs(zame->part2,4,4)) to part20
                sele 6
                use '&us_0'+'obap' inde '&us_0'+'aobi'     && да не ▒е из▓░ива
                find "&pt0"
                 @ row(),49 say '╙'+subs(obap->name,1,23)+'╙'+str(obap->zena,5,2)
                sele 7
                sele 6
                use '&us_1'+'obap' inde '&us_1'+'nami'     && да не ▒е из▓░ива
                set relation to part into zame
                set filter to .not. empty(zame->part)
                go re0
                        return 1
                   case lastkey()=27.or.lastkey()=13
                         return 0
                 endcase
                return 1
    ************  П░о╢ед│░а за п░ове░ка  на незаменени па░▓иди ****************
                       proc prov
      save screen
      @ 8,1 clea to 21,78
      set key -2 to
      set key -3 to
      set key -4 to
      open_obap()
      open_zame()
     if lastkey()=-4
     *   sele 6
     *   use '&us_1'+'obap' inde '&us_1'+'nami'
      open_obap()
      set order to 2
      set rela to part into zame
      set filter to (part='702'.or.part='304')
      go top
                   declare fiel[5]
                   fiel[1]='obap->part'
                   fiel[2]='zame->part2'
                   fiel[3]='subs(obap->name,1,18)'
                   fiel[4]='obap->zena'
                   fiel[5]='obap->kkol'
                   declare imem[5]
                   imem[1]='ПАРТ.M0'
                   imem[2]='ЗАМЕHЕHИ С'
                   imem[3]='   HАИМЕHОВАHИЕ'
                   imem[4]='   ЦЕHА'
                   imem[5]=' K-ВО  '
                   dbedit( 8,10,21+ml0,71,fiel,"",'',imem,'═','╙')
                   set key -4 to prov
     else
      if lastkey()=-2
         open_kparp()
      else
         open_dparp()
      endif
      set rela to part into zame, to part into obap
      set filter to (part='702'.or.part='304').and.(.not.partp='       ').and.(zame->part2)='       '
      go top
                   declare fiel[5]
                   fiel[1]='nom'
                   fiel[2]='partp'
                   fiel[3]='zame->part2'
                   fiel[4]='data'
                   fiel[5]='subs(obap->name,1,18)'
                   declare imem[5]
                   imem[1]='HОМЕР'
                   imem[2]='HОВИ ПАРТИДИ'
                   imem[3]='ДА СЕ ЗАМЕHИ'
                   imem[4]='ДАТА'
                   imem[5]='   HАИМЕHОВАHИЕ'
                   dbedit(17,10,21+ml0,65,fiel,"",'',imem,'═','╙')
                   set key -2 to prov
                   set key -3 to prov
     endif
                   store val(subs(part,4,4)) to part0
                   @ 17,10 clea to 21,75
     clea gets
     l0='н'
     @ 23+ml0,15 say space(51)
     @ 23+ml0,25 say 'Желае▓и ли о▓пе╖а▓ване д/н' get l0  valid l0='д' .or. l0='н'
      chet()
       if l0='д'
          save screen
          do izrab
          go top
          set marg to 15
          ?  'HОМЕР СО  HОВИ ПАРТИДИ   ДА СЕ ЗАМЕHИ   ДАТА'
          ?
          do while .not. eof()
          ?  '   '+nom+'      '+partp+'       '+zame->part2+'     '+data
             if .not.eof()
                skip
            else
                exit
            endif
          enddo
        ?
        do pech
      @  0, 0 clea to 24,80
      open_zame()
      open_dparp()
      open_kparp()
      set rela to part into zame
      set filter to (part='702'.or.part='304').and.(.not.partp='       ').and.(zame->part2)='       ';
          && .and.(nom='5'.or.nom='8')
       endif
          restore screen
      @  6,13 say 'Замени па░▓ида о▓ M0' get part0 pict "9999"
        chet()
                       return
   *****************  П░о╢│де░а за изпла▓ени ┤-░и ***************
                        proc mol2
            do while .t.
                 ramka()
                 set dele on
                 @  2,27 say 'Изпла▓ени ┤ак▓│░и'
                 @  3,26 say '------------------'
                 @ 23+ml0,28 say 'Желае▓е ли из░або▓ване'
                 @ 23+ml0,52 prompt 'ДА'
                 @ 23+ml0,55 prompt 'HЕ'
                 menu to l0
                    if lastkey()=27
                      set dele off
                      return
                    endif
       izrab()
                 if l0=1
               open_obap(loc0:=35)  && aobi
               open_obve(loc0:=17)
               find '306'
               ra0=val(substr(name,34,2))
               open_kpap()
               podr_0=51
               save all like podr_0 to podred
               podred()
               set safety off
               open_kpar(loc0:=23)  && naki
               open_dobo(loc0:=26)
               set order to 2
               noda0='501'+subs(data0,4,2)+data0
              find '&noda0'
               do while sch='501'.and.data=data0
                     nom1=nom
                     sele 5
                     noda0=subs(data0,4,2)+data0+nom1+'3'
                     find '&noda0'
                  do while nom=nom1 .and. data=data0.and.part='3'
                       part0=part
                       mk0=mk
                       kol0=kol
                       sele 9
                       appe blank
     rec_lock()
 repl nom with nom1, part with part0, mk with mk0, kol with kol0, data with data0
     rec_unlock()
                         sele 5
                        if .not. eof() ; skip ; else ; exit ; endif
                  enddo
               sele 2
              if .not. eof()
                 skip
              else
                 exit
              endif
       enddo
       open_kpap()
       set order to 3
       total on substr(part,4,4) field kol  to kpapt
       open_kpapt()
?? '                               ИЗПЛАТЕHИ ФАKТУРИ'
? '                                 к║м  '+dtoc(date0)
? space(71)+'▒▓░. '+str(b2,3)
? repli('_',79)
? 'П-ДА          HАИМЕHОВАHИЕ            МЯРKА     K-ВО       ЦЕHА       СТ-СТ '
? repli('_',79)
         store 0 to kast0
         do while .not. eof()
            part0=part
            kol0=kol
            sele 6
            find '&part0'
             zena0=round(zena-zena*ra0/100,j4)
             name0=name
               sele 9
            rec_lock()
            repl zena with zena0, kast with round(kol*zena0,j1)
            rec_unlock()
   ?  substr(part,4,4)+' '+substr(name0,1,35)+mk+' '+str(kol,9,j3)+' '+str(zena,12,j4)+str(kast,12,j1)
            kast0=kast0+kast
    spri()
              if .not. eof() ; skip ; else ; exit ; endif
         enddo
                 endif
? space(63)+'--------------'
? space(41)+'Об╣о'+space(20)+str(kast0,12,j1)
        pech()
            enddo
                        return  && mol2
          ***************** Реиндек▒а╢и┐ ************************
                                 proc tehnol
       clea gets
       save screen to ek1
       i='1'
       set key 276 to
       open_tehno()
       open_obap(loc0:=77) && aobi
       @ 10,20,17,58 box ram1
       @ 11,21 clea to 16,57
       sch0='   '
       @ 11,26 say 'ТЕХHОЛОГИЧHА KАРТА HА' get sch0
       chet()
                        if  lastkey()=27
                            sele 14
                            clos data
                            return
                        endif
       find '&sch0'
       name0=name
       sch3='601'
       store sch0 to sch1
       stok1()
       sch2='302'
       @ 18, 0 say space(80)
       part2=1
       store 1 to l0,l1
   do while substr(part,1,3)=sch0
       ksto1=0
       if sc15='д'
          store val(substr(part,4,4)) to part0
       else
          store val(substr(part,4,4)) to part0, part2
       endif
       clear gets
       @ 10,20,17,58 box ram1
       @ 12,21 clea to 16,57
   @ 11,26 say 'ТЕХHОЛОГИЧHА KАРТА HА'
   @ 12,23 say name0
   @ 13,22 say 'В║веде▓е п-да▓а на п░од│к▓а  :' get part0 pict "9999"
   @ 14,22 say 'В║веде▓е п-да▓а ░-дна▓а ▒-ка :' get part2 pict '9999'
   @ 15,22 say 'В║веде▓е ╕и┤║░а на ▒▓ок. ▒-ка:' get sch2
   @ 16,22 say 'Цени СРЕДHИ ФИKС.  БР. 3А 1 ВСИЧKИ'
                     chet()
   @ 16,27 prompt 'СРЕДHИ'
   @ 16,34 prompt 'ФИKС.'
   menu to l0
   @ 16,45 prompt '3А 1'
   @ 16,50 prompt 'ВСИЧKИ'
   menu to l1
                        if  part0=0 .or. lastkey()=27
                            sele 14
                            clos data
                            set key -5 to
                            return
                        endif
       pt0=sch0+str(part0,4)
       sele 6
       find '&pt0'
       dok0=name
     if kkol <> 0
        if l1=1
            kol1=1     &&&  ПОЛЮСИ
        else
            kol1=kkol
        endif
       re0=recno()
     else
                  @ 18,23 say '   H┐ма▓е п░одажби по па░▓ида▓а !  '
                           i0=inkey(0)
                   if .not.eof()
                      skip
                      re1=recno()
                      part0=val(substr(part,4,4))
                      name0=name
                     loop
                   else
                       exit
                   endif
     endif
       sele 10
       set filter to stok=pt0
       go top
       @ 18,23 say 'П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е !'
       @  3,19 say str(nom0,5)
     do while stok=pt0
       part1=sch2+substr(part,4,4)
       kol0=kol
       zena0=zena
               sele 6
               find '&part1'
                if found()
                   if l0=1
                       zena0=zena
                   endif
                   mk0=mk
                else
                   if l0=1
                       zena0=0
                   endif
                   mk0='лв'
               endif
                  ksal1=ksal
               open_kpar(loc0:=44)
               appe blank
          if mk0='б░'
               ksal0=round(round(kol0*kol1,0)*zena0,j1)
               repl kol with round(kol0*kol1,0)
          else
               repl kol with round(kol0*kol1,j3)
               ksal0=round(round(kol0*kol1,j3)*zena0,j1)
               repl kol with round(kol0*kol1,j3)
          endif
               if abs(ksal0-ksal1) < 1
                  store ksal1 to ksal0
               endif
               rec_lock()
               repl nom with str(nom0,4),part with part1, mk with mk0,zena with zena0, kast with round(ksal0,j1),data with data0
               rec_unlock()
               ksto1=ksto1+round(ksal0,j1)
                  @  8,43 say sch2
                  @  8,60 say ksto1 pict "99999999999.99"
               sele 10
                            if .not.eof()
                               skip
                            else
                                exit
                             endif
     enddo
                          if .not.ksto1=0
      @  7, 6 say '601'
      @  7,23 say ksto1 pict "99999999999.99"
                  open_dpar(loc0:=44)
                  appe blank
            rec_lock()
            repl  nom with str(nom0,4), part with sch3+str(part2,4),mk with 'лв' ,;
            dast with ksto1, data with data0
            rec_unlock()
                 open_dobo(loc0:=51)
            appe blank
            rec_lock()
            repl nom with str(nom0,4), sch with sch3, dsto with ksto1, data with data0
            rec_unlock()
                 open_kobo(loc0:=50)
            appe blank
            rec_lock()
            repl nom with str(nom0,4), sch with sch2, ksto with ksto1,;
            data with data0
            rec_unlock()
                 open_arhi(loc0:=58)
            appe blank
            rec_lock()
            repl nom with str(nom0,4), papk with '  0',dok with subs(dok0,1,36)+subs(pt0,4,4),;
            vid with space(16)+dtoc(date0),data with data0, vek with vek0,reg with dtoc(date())
            rec_unlock()
                  @ 18,23 say '      Hа▓и▒не▓е кой да е клави╕    '
                           i0=inkey(0)
               @  6, 0 clea to 17,38
               @  6,43 clea to 17,75
                nom0=nom0+1
                @  3,19 say str(nom0,5)
                          endif
                   open_obap(loc0:=78) && aobi
                   if .not.eof()
                      go re0
                      skip
                      part0=val(substr(part,4,4))
                      name0=name
                     loop
                   else
                       exit
                   endif
   enddo
                sele 14
                clos data
                restore screen from ek1
                @  3,19 say str(nom0,5)
                set key 276 to tehnol
                @  3,42 get papk0  pict '999'
                    chet()
                                   return
     *************  ЛИПСВАЩА ОПЕРАЦИЯ  ************
                    proc lipso
                  nom0=0
                  nom1=9999
                  nom4='    '
                  data1='     '
                  ll11='н'
                  l0=' '
                  l1=0
                  store 'D'+subs(us_0,2,7) to us_1
                  eras s0001.prn
                 do while .t.
                  ramka()
                  @ 23+ml0,15 say 'F6-ак▓│ализа╢и┐ на па░▓иди'
                  @ 23+ml0,43 say 'F7-▒пи▒║к о▓ ди░ек▓о░ии'
                  @  2,30 say 'ПРОВЕРКА HА ОПЕРАЦИЯ'
                  @  3,29 say '----------------------'
                  set key -5 to aktdis
                      set key -6 to direk1
                  @  6,22 say 'О▓ ди░ек▓о░и┐ ' get us_1 pict "N:\NNNN\" valid 64<asc(us_1).and.asc(us_1)<123
                  chet() && read
                  us_1=trim(us_1)
                     if lastkey()=27
                       return
                     endif
                       set key -6 to direk0
                   @  8,22 say 'В  ди░ек▓о░и┐ ' get us_0 pict "N:\NNNN\" valid 64<asc(us_0).and.asc(us_0)<123
                   chet() && read
                   us_0=trim(us_0)
                     if lastkey()=27
                       return
                     endif
                             @ 23+ml0,15 say space(51)
                          if file("&us_1*.*").and.file("&us_0*.*")
                          else
                             @ 23+ml0,23 say ' Г░е╕и▓е ме▒е╢а или кода на ┤и░ма▓а '
                        *     zvan()
                             i0=inkey(0)
                             @ 23+ml0,15 say space(51)
                             return
                          endif
                          raboti()
              ***********   о▓ "H" в "С"  OBAP   *********************
                       memowrit('s0001.prn', memoread('s0001.prn')+'---------OBAP----------';
                       +chr(13)+chr(10))
                      copy file '&us_1'+'obap.dbf' to '&us_0'+'obapt.dbf'
                      copy file '&us_1'+'aobi.ntx' to '&us_0'+'aobit.ntx'
                      open_obap()
                      sele 10
                      use '&us_0'+'obapt' &&  inde '&us_0'+'aobit'
                      l1=0
                  do while .not. eof()
                      part0=part
                      name0=name
                      asal0=asal
                      sele 6
                       find "&part0"
                       if found()
                          if .not. name=name0
                             l0='1'
                             l1=l1+1
                             memowrit('s0001.prn', memoread('s0001.prn')+'Разл. HАИМ.'+subs(us_0,1,1)+'   '+part0+' ';
                             +chr(13)+chr(10))
                          endif
                          if .not. asal=asal0
                             l0='1'
                             l1=l1+1
                             memowrit('s0001.prn', memoread('s0001.prn')+'Разл.H.С-O '+subs(us_0,1,1)+'   '+part0+' ';
                             +chr(13)+chr(10))
                          endif
                       else
                          l0='1'
                          l1=l1+1
                          memowrit('s0001.prn', memoread('s0001.prn')+'Лип▒а ПАРТ '+subs(us_0,1,1)+'   '+part0+' ';
                          +chr(13)+chr(10))
                       endif
                                if 100 < l1
                                   @ 23,15 say '      Има недоп│▒▓имо много лип▒ва╣и па░▓иди!     '  color 'R+/B'
                                   inkey(5)
                                    raboti()
                                   exit
                                endif
                     sele 10
                       skip
                  enddo
                  ********************  ОБРАТHО  *********************
                       sele 10
                       use '&us_0'+'obapt' inde '&us_0'+'aobit'
                       go top
                       open_obap()
                      l1=0
                  do while .not. eof()
                      part0=part
                      name0=name
                      asal0=asal
                      sele 10
                       find "&part0"
                       if found()
                          if .not. name=name0
                             l0='1'
                             l1=l1+1
                             memowrit('s0001.prn', memoread('s0001.prn')+'Разл. HАИМ.'+subs(us_1,1,1)+'   '+part0+' ';
                             +chr(13)+chr(10))
                          endif
                          if .not. asal=asal0
                             l0='1'
                             l1=l1+1
                             memowrit('s0001.prn', memoread('s0001.prn')+'Разл.H.С-O '+subs(us_1,1,1)+'   '+part0+' ';
                             +chr(13)+chr(10))
                          endif
                       else
                          l0='1'
                          l1=l1+1
                          memowrit('s0001.prn', memoread('s0001.prn')+'Лип▒а ПАРТ '+subs(us_1,1,1)+'   '+part0+' ';
                          +chr(13)+chr(10))
                       endif
                                if 100 < l1
                                   @ 23,15 say '      Има недоп│▒▓имо много лип▒ва╣и па░▓иди!     '  color 'R+/B'
                                   inkey(5)
                                    raboti()
                                   exit
                                endif
                     sele 6
                       skip
                  enddo
               ***********   о▓ "H" в "С"  DOBO   *********************
                       memowrit('s0001.prn', memoread('s0001.prn')+'----------DOBO---------';
                       +chr(13)+chr(10))
               *       store 0 to p0,re0
                       dat1='1111'
                       copy file '&us_1'+'dobo.dbf' to '&us_0'+'dobot.dbf'
                       copy file '&us_1'+'dsdi.ntx' to '&us_0'+'dsdit.ntx'
                       open_dobo()
                       set order to 2
                       go top
                       sele 1
                       use '&us_1'+'arhi' inde '&us_1'+'nari'
                       go top
                       sele 10
                       use '&us_0'+'dobot' &&  inde '&us_0'+'dsdit'
                          go top
                      l1=0
                  do while .not. eof()
                       dat0=sch+subs(data,4,2)+data+nom
                       dat2=subs(data,4,2)+data+nom
                       dsto0=dsto
                       sele 1
                       find "&dat2"
                       dok0=subs(dok,1,8)
                       sele 2
                       find "&dat0"
                      if  found()
                           if .not. dsto=dsto0
                           l0='1'
                           l1=l1+1
                       memowrit('s0001.prn', memoread('s0001.prn')+'Разлика на '+subs(us_0,1,1)+' '+subs(dat0,11,4)+'-';
                       +subs(dat0,6,5)+chr(13)+chr(10))
                           endif
                      else
                       if  .not. dat0+nom=dat1
                           l0='1'
                           l1=l1+1
                           memowrit('s0001.prn', memoread('s0001.prn')+dok0+' Л '+subs(us_0,1,1)+' '+subs(dat0,11,4)+'-';
                           +subs(dat0,6,5)+chr(13)+chr(10))
                       endif
                      endif
                                if 100 < l1
                                   @ 23,15 say '      Има недоп│▒▓имо много лип▒ва╣и оп░а╢ии!     '  color 'R+/B'
                                   inkey(5)
                                    raboti()
                                   exit
                                endif
                        store dat0 to dat1
                        sele 10
                             skip
                  enddo
               ***********   о▓ "H" в "С"  KOBO   *********************
                       memowrit('s0001.prn', memoread('s0001.prn')+'----------KOBO---------';
                       +chr(13)+chr(10))
                       dat1='1111'
                       copy file '&us_1'+'kobo.dbf' to '&us_0'+'kobot.dbf'
                       copy file '&us_1'+'dski.ntx' to '&us_0'+'dskit.ntx'
                       open_kobo()
                       set order to 2
                       go top
                       sele 1
                       use '&us_1'+'arhi' inde '&us_1'+'nari'
                       go top
                       sele 10
                       use '&us_0'+'kobot' &&  inde '&us_0'+'dskit'
                          go top
                      l1=0
                  do while .not. eof()
                       dat0=sch+subs(data,4,2)+data+nom
                       dat2=subs(data,4,2)+data+nom
                       ksto0=ksto
                       sele 1
                       find "&dat2"
                       dok0=subs(dok,1,8)
                       sele 3
                       find "&dat0"
                      if  found()
                           if .not. ksto=ksto0
                           l0='1'
                           l1=l1+1
                       memowrit('s0001.prn', memoread('s0001.prn')+'Разлика на '+subs(us_0,1,1)+' '+subs(dat0,11,4)+'-';
                       +subs(dat0,6,5)+chr(13)+chr(10))
                           endif
                      else
                       if  .not. dat0+nom=dat1
                           l0='1'
                           l1=l1+1
                           memowrit('s0001.prn', memoread('s0001.prn')+dok0+' Л '+subs(us_0,1,1)+' '+subs(dat0,11,4)+'-';
                           +subs(dat0,6,5)+chr(13)+chr(10))
                       endif
                      endif
                                if 100 < l1
                                   @ 23,15 say '      Има недоп│▒▓имо много лип▒ва╣и оп░а╢ии!     '  color 'R+/B'
                                   inkey(5)
                                    raboti()
                                   exit
                                endif
                        store dat0 to dat1
                        sele 10
                             skip
                  enddo
                 ************ ОБРАТHО   *******************
               ***********   о▓ "C" в "H"  DOBO   *********************
                       memowrit('s0001.prn', memoread('s0001.prn')+'----------DOBO---------';
                       +chr(13)+chr(10))
                       dat1='1111'
                       open_arhi()
                       sele 10
                       use '&us_0'+'dobot' inde '&us_0'+'dsdit'
                       go top
                       open_dobo()
                       set order to 2
                       go top
                      l1=0
                  do while .not. eof()
                       dat0=sch+subs(data,4,2)+data+nom
                       dsto0=dsto
                       dat2=subs(data,4,2)+data+nom
                       sele 1
                       find "&dat2"
                       dok0=subs(dok,1,8)
                       sele 10
                       find "&dat0"
                      if  found()
                           if .not. dsto=dsto0
                           l0='1'
                           l1=l1+1
                       memowrit('s0001.prn', memoread('s0001.prn')+'Разлика на '+subs(us_1,1,1)+' '+subs(dat0,11,4)+'-';
                       +subs(dat0,6,5)+chr(13)+chr(10))
                           endif
                      else
                       if  .not. dat0=dat1
                           l0='1'
                           l1=l1+1
                           memowrit('s0001.prn', memoread('s0001.prn')+dok0+' Л '+subs(us_1,1,1)+' '+subs(dat0,11,4)+'-';
                           +subs(dat0,6,5)+chr(13)+chr(10))
                       endif
                      endif
                                if 100 < l1
                                   @ 23,15 say '      Има недоп│▒▓имо много лип▒ва╣и оп░а╢ии!     '  color 'R+/B'
                                   inkey(5)
                                    raboti()
                                   exit
                                endif
                        store dat0 to dat1
                        sele 2
                        skip
                  enddo
               ***********   о▓ "C" в "H"  KOBO   *********************
                       memowrit('s0001.prn', memoread('s0001.prn')+'----------KOBO---------';
                       +chr(13)+chr(10))
                       dat1='1111'
                       open_arhi()
                       sele 10
                       use '&us_0'+'kobot' inde '&us_0'+'dskit'
                       go top
                       open_kobo()
                       set order to 2
                       go top
                      l1=0
                  do while .not. eof()
                       dat0=sch+subs(data,4,2)+data+nom
                       dat2=subs(data,4,2)+data+nom
                       ksto0=ksto
                       sele 1
                       find "&dat2"
                       dok0=subs(dok,1,8)
                       sele 10
                       find "&dat0"
                      if  found()
                           if .not. ksto=ksto0
                           l0='1'
                           l1=l1+1
                       memowrit('s0001.prn', memoread('s0001.prn')+'Разлика на '+subs(us_1,1,1)+' '+subs(dat0,11,4)+'-';
                       +subs(dat0,6,5)+chr(13)+chr(10))
                           endif
                      else
                       if  .not. dat0=dat1
                           l0='1'
                           l1=l1+1
                           memowrit('s0001.prn', memoread('s0001.prn')+dok0+' Л '+subs(us_1,1,1)+' '+subs(dat0,11,4)+'-';
                           +subs(dat0,6,5)+chr(13)+chr(10))
                       endif
                      endif
                                if 100 < l1
                                   @ 23,15 say '      Има недоп│▒▓имо много лип▒ва╣и оп░а╢ии!     '  color 'R+/B'
                                   inkey(5)
                                    raboti()
                                   exit
                                endif
                        store dat0 to dat1
                        sele 3
                        skip
                  enddo
                        @ 23+ml0,15 say space(51)
                     if l0=' '
                        @ 23+ml0,32 say 'H┐ма о▓к░и▓и ░азли╖и┐'
                         inkey(4)
                        @ 23+ml0,32 say space(15)
                     else
                       @  5,48,21+ml0,74 box ram1
                       save1=memoedit(memoread("s0001.prn"),6,50,20+ml0,72,.t.,"fdobav",23,40,1,0)
                       copy file s0001.prn to &disc_1\job\mess.txt
                     endif
                 enddo

      *********************  mesechna spravka pdf   *********************
                             proc  mesexx
                       save screen
                       @ 10,20,12+ml0,60 box ram1

                  if pake='CHEF'
@ 18, 4 say 'Aко п░о╢ед│░а▓а не ░або▓и ▓о е з╣о▓о не е зададена оп╢и┐▓а-> Zan Image->'
@ 19, 4 say ' Settings-> General-> Generate a sentinel file after printing finishes'
                   endif
               @ 11+ml0,21 say '  П░ог░ама▓а из░або▓ва ме▒е╖ен о▓╖е▓.  '
                                set key -29 to
   ! cmd /c 'if not exist \disc\sync\doc\&go0\nul md \DISC\SYNC\DOC\&go0' > aaa.txt
              store subs(data0,1,2)+subs(data0,4,2) to data1
              if file("d:\sync\doc\&go0\&go0-MESE.PDF")
                      ! del d:\sync\doc\&go0\&go0-MESE.PDF
              endif
                  inkey(5)

                              do case
                                 case  go0='HO'
           if  file("&disc_0\god&dt0\dds\&go0\dds&data1..pdf")
            *  NE GO IZTRIWAI ! &disc_1\exe\pdf\pdftk.exe &disc_0\god&dt0\DDS\&go0\dds&data1..pdf CAT 1 output Z01.PDF  CAT 1 > KOQ STRANICA DA SE OTPECHATA
               ! &disc_1\exe\pdf\pdftk.exe &disc_0\god&dt0\dds\&go0\dds&data1..pdf  output Z01.PDF
           else
               @ 11+ml0,21 say '    Hе е из░або▓ена DDS ▒п░авка▓а!     '
                inkey(6)
           endif
           if  file("&disc_0\god&dt0\zapl\&go0\ZPL&data1..pdf")
              ! &disc_1\exe\pdf\pdftk.exe &disc_0\god&dt0\ZAPL\&go0\ZPL&data1..pdf output Z02.PDF
           else
               @ 11+ml0,21 say '    Hе е из░або▓ена ZAPL ▒п░авка▓а!    '
                inkey(6)
           endif
           if  file("Z01.PDF").and.file("Z02.PDF")
               ! &disc_1\exe\pdf\pdftk.exe Z01.PDF Z02.PDF  output D:\sync\doc\&go0\&go0-MESE.PDF
           else
               @ 11+ml0,21 say 'Ме▒е╖ни┐▓ о▓╖е▓ н┐ма да б║де из░або▓ен!'  color 'R+/B'
               inkey(3)
           endif
                                 case  go0='KO'
           if  file("&disc_0\god&dt0\DDS\ap\dds&data1..pdf")
      ! &disc_1\exe\pdf\pdftk.exe &disc_0\god&dt0\dds\ap\dds&data1..pdf output z01.pdf
           else
               @ 11+ml0,21 say '  Hе е из░або▓ена AP - DDS ▒п░авка▓а!  '
                inkey(6)
           endif

           if  file("&disc_0\god&dt0\DDS\eo\dds&data1..pdf")
      ! &disc_1\exe\pdf\pdftk.exe &disc_0\god&dt0\DDS\eo\dds&data1..pdf output z02.pdf
           else
               @ 11+ml0,21 say '  Hе е из░або▓ена EO - DDS ▒п░авка▓а!  '
                inkey(6)
           endif
           if  file("&disc_0\god&dt0\DDS\ko\dds&data1..pdf")
      ! &disc_1\exe\pdf\pdftk.exe &disc_0\god&dt0\DDS\ko\dds&data1..pdf output z03.pdf
           else
               @ 11+ml0,21 say '  Hе е из░або▓ена KO - DDS ▒п░авка▓а!  '
                inkey(6)
           endif
           if  file("&disc_0\god&dt0\DDS\to\dds&data1..pdf")
      ! &disc_1\exe\pdf\pdftk.exe &disc_0\god&dt0\DDS\to\dds&data1..pdf output z04.pdf
           else
               @ 11+ml0,21 say '  Hе е из░або▓ена TO - DDS ▒п░авка▓а!  '
                inkey(6)
           endif
           if  file("&disc_0\god&dt0\DDS\ka\dds&data1..pdf")
      ! &disc_1\exe\pdf\pdftk.exe &disc_0\god&dt0\DDS\ka\dds&data1..pdf output z05.pdf
           else
               @ 11+ml0,21 say '  Hе е из░або▓ена KA - DDS ▒п░авка▓а!  '
                inkey(3)
           endif
           if  file("&disc_0\god&dt0\ZAPL\&go0\ZPL&data1..pdf")
      ! &disc_1\exe\pdf\pdftk.exe &disc_0\god&dt0\ZAPL\&go0\ZPL&data1..pdf output z06.PDF
           else
               @ 11+ml0,21 say '  Hе е из░або▓ена KO - ZAPL ▒п░авка▓а! '
                inkey(6)
           endif

           if  file("Z01.PDF").and.file("Z02.PDF").and.file("Z03.PDF").and.file("Z04.PDF");
               .and.file("Z05.PDF").and.file("Z06.PDF")
      ! &disc_1\exe\pdf\pdftk.exe Z01.PDF Z02.PDF Z03.PDF Z04.PDF Z05.PDF Z06.PDF  output D:\sync\doc\&go0\&go0-MESE.PDF
           else
               @ 11+ml0,21 say 'Ме▒е╖ни┐▓ о▓╖е▓ н┐ма да б║де из░або▓ен!'  color 'R+/B'
               inkey(6)
           endif
                              otherwise
                      *       @  0,15  say 'BBBBBBBBBBBBBBBBBBBBBBBB ' ; inkey(0) //kkk
                              endcase
                                     if file("z??.pdf")
                                         ! del z??.pdf
                                     endif
           if  file("D:\sync\doc\&go0\&go0-mese.pdf")
               zvan()
               ! cmd /c start &pdfxc_0  D:\sync\doc\&go0\&go0-MESE.PDF
           endif
                                set key -29 to mesexx
                                restore screen
                             return


      ************** П░о╢ед│░а за │▒▓░ой▒▓во **********
		   proc ustro
  * set key -6 to
    set key -6 to ustro
    save screen       //  u
           set curs on
   @  7, 7,11,67 box ram1
   @  8, 8 clea to 10,66

   @  8, 8 say 'В║веде▓е cyr на клавиа▓│░а▓а:'
                 @  8,39 prompt 'BDS'
                 @  8,43 prompt 'PHO'
                 menu to cyr0
                   if  lastkey()=27
                       restore screen
                       return
                   endif
   @  8,48 say 'Рабо▓но м┐▒▓о:' get pake valid 64<asc(pake).and.asc(pake)<123
         	  chet()
   @ 10, 8 say 'В║веде▓е ░або▓на▓а ди░ек▓о░и┐: proced e sprqna ' // get us_0 valid direk0('us_0')
          inkey(2)
               @  8, 8 clea to 10,66
              @  8,11 say 'За да ▒е ▒мени ки░илиза╢и┐▓а ▒ледва да влезе▓е на ново'
              @ 10,17 say 'в п░ог░ама▓а. П░ог░ама▓а ▒ега ╣е п░ек║▒не!'
              inkey(5)

      *  	  chet()
      *   us_0=trim(us_0)
      *          l0=1
      *          @ 10,49 prompt 'ВРЕМЕHHО'
      *          @ 10,58 prompt 'ПОСТОЯHHО'
      *          menu to l0
      *           if l0=1
      *              erase sc10
      *           else
      *             *dd0=ltrim(str(nom1,4))+'-'+substr(data0,1,2)+'.o'
      *              han0=fcreate("sc10")
      *              fclose(han0)
      *           endif
      *   set curs off
      *   save all like us_0 to us_0
          save all like pake to &disc_1\job\pake
          save all like cyr0 to &disc_1\job\cyr
          memowrit('&disc_1\job\pake.txt','&pake')
          clos all

          inkey(1)
          quit
          set key -6 to ustro
          restore screen
	  return


      ************** П░о╢ед│░а за наименование на ┤и░ма▓а *************
		   proc firm

	   set key -8 to
	   save screen
	   @  3,17,21+ml0,63 box ram1
	   @  4,18 clea to 20+ml0,62
	   @  5,18 say repli('═', 45)
	   @ 18+ml0,18 say repli('═', 45)
	   set century on
           open_info(loc0:=13)
	   ii1='   '
	   locate for dn+go=dngo0
	   declare fiel[29]
	   fiel[1]='fir'
           fiel[2]='no'
	   fiel[3]='obst'
	   fiel[4]='dn'
	   fiel[5]='buls'
	   fiel[6]='adr'
	   fiel[7]='grad'
	   fiel[8]='tel'
	   fiel[9]='name'
	   fiel[10]='dlaz '
	   fiel[11]='p'
	   fiel[12]='go'
	   fiel[13]='lkar'
	   fiel[14]='datk'
	   fiel[15]='egn'
           fiel[16]='klon'
           fiel[17]='tdd '
	   fiel[18]='podr'
	   fiel[19]='repu'
	   fiel[20]='vvid'
	   fiel[21]='gr'
	   fiel[22]='bf'
	   fiel[23]='ba'+' '
	   fiel[24]='gb'
	   fiel[25]='dat1'
	   fiel[26]='dat2'
	   fiel[27]='lize'
	   fiel[28]='sas'
           fiel[29]='reg'
	   declare imem[29]
	   imem[1]='ОБЕКТ    Hаименование на ┤и░ма▓а      Р.МЯСТО'
	   imem[2]='Nо  '
	   imem[3]='HKИД    '
	   imem[4]=' Иде▓. No    '
	   imem[5]='  Б│л▒▓а▓  '
	   imem[6]='                  Ад░е▒   '
	   imem[7]='    Г░ад      '
	   imem[8]=' Теле┤он   '
	   imem[9]='      Име на п░езиден▓а'
	   imem[10]='        Дл║жно▒▓      '
	   imem[11]='П-од '
	   imem[12]='Ф.код  '
	   imem[13]='Ли╖на ка░▓а  '
	   imem[14]='Да▓а на изд. '
	   imem[15]='   E Г H    '
	   imem[16]='   Kлон    '
           imem[17]='       Т Д Д  '
	   imem[18]=' ID на ФУ '
	   imem[19]='П.код. '
	   imem[20]='Hаименование на ┤и░м. в║в ┤ак▓│░а▓а   '
	   imem[21]='      Ад░е▒ на ░еги▒▓░а╢и┐'
	   imem[22]='Банкова ▒ме▓ка           '
	   imem[23]='Банка'
	   imem[24]='Клон на банка▓а'
	   imem[25]='Реги▒▓░а╢и┐    '
	   imem[26]='e-mail'
	   imem[27]='    Ли╢е за кон▓ак▓'
	   imem[28]='   Ли╢е издало ┤ак▓│░а▓а    '
	   imem[29]='Сме▓ка на маг.'
		 dbedit( 6,18,17+ml0,62,fiel,"pfunk2",'',imem,'═','')
		set key -8 to firm
		dn1=dn
                dngo0=dn+go
		save  all like dngo0 to dannom
		set century off
		do firma
		restore screen
	  return
      ************ По▓░еби▓ел▒ка ┤│нк╢и┐ **********
		function pfunk2
		parameters mode0,fld0
		private fld0
		cur0=fiel[fld0]
		 do case
		   case mode0 < 4

                if .not.(p=' '.or.p='е')
       @ 19,18 say 'Kолона "П-од" ▓░┐бва де е или " " или ки░ "е"'
                inkey(3)
                endif
       @  4,18 say fir
       @  4,59 say str(recno(),3)
       @ 19+ml0,18 say '  Избо░ на поле '+'-'+chr(26)+' '+chr(25)+' '+chr(24)+' '+chr(27)+'-'+'"Enter" - ░едак╢и┐'
       @ 20+ml0,18 say 'F10-добав┐ нова ┤и░ма  F3-изди░ва ┤и░ма'
			return 1
		   case lastkey()=-2
                        set curs on
                        dn2=dn
                        save screen
	                @ 19,18 clea to 20,61
                        @ 19,25 say 'В║зеде▓е ИN или б│кви▓е на ┤и░ма▓а'
                        @ 20,35  get dn2
                        read
                        set curs off
                        dn2=trim(dn2)
                        locate for go=dn2 .or. dn=dn2
                        restore screen
		   case lastkey()=-9
			appe blank
		   case lastkey()=27
			return 0
		   case lastkey()=13
			 set cursor on
		         rec_lock()
        	      @ row(),col() get &cur0
	   @ 19+ml0,20 say '        В║веде▓е желани▓е п░омени         '
	   @ 20+ml0,18 say '                                            '
			 read   && chet()
		         rec_unlock()
        *			 keyboard chr(4)
			 set cursor off
			 return 1
		   otherwise
			 return 1
		 endcase
          		return 1
