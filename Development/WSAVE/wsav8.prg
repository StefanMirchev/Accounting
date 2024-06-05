   **  fzame izvl lipso mol2 nootst prov regt  ISFLOPPYRE tehnol zame
       

       ***************  Издирва контрагент в REGL   ****************
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




   ************** Процедура за отпечатване на банково извлечение ***********
                          proc izvl
   save screen
   clea gets
   ramka()
   store 2 to l0,l1
   store '    '  to nom0, imb0, data3 
   sch1='503'
   nom3=1999
   nom4=3000
   data1='01'+substr(data0,3,3)
   data2='01'+substr(data0,3,3)
   store 0 to line0,line1,line2, line9, sec0
   store 0 to b0
   store 1 to b2,b3,b4,part1
   open_arhi(loc0:=48) && nari
   @ 2,25 say 'ПЕЧАТ HА БАНКОВИ ИЗВЛЕЧЕНИЯ'
   @ 3,24 say '-----------------------------'
                     @  6,27 say 'Сметка:' get sch1 pict "999"  valid subs(sch1,1,1)='5'
                     @  6,40 say 'Партида:' get part1 pict "9999"
                     read
                        if lastkey()=27 .or. part1=0
                            clea  gets
                            set dele off
                            return
                        endif
                      part2=sch1+str(part1,4)
                      open_obap(loc0:=46)
                  find '&part2'
                   if .not.found()
                     @ 23+ml0,24 say 'Hяма партида с този номер: '+part2
                     i0=inkey(0)
                     return 0
                   else
                     if sch1='504'
                        asal0=kol
                     else
                        asal0=asal
                     endif
                     iban1=subs(name,14,4)+' '+subs(name,18,4)+' '+subs(name,22,4)+' '+subs(name,26,4)+' '+subs(name,30,4)+' '+subs(name,34,2)
                     do case
                        case mk='лв'
                        iban1=iban1+'    BGN'
                        case mk='ев'
                        iban1=iban1+'    EUR'
                        case mk='щд'
                        iban1=iban1+'    USD'
                     endcase
                     do case
                        case subs(iban1,6,4)="RZBB"
                        imb0='Райфазенбанк (България) ЕАД'
                        other
                        imb0=' '
                     endcase
                   endif
            do case
               case sch1='503'
                    nom3=2000
                    nom4=2999
               case sch1='504'
                    nom3=4000
                    nom4=4999
            endcase
                     @  8,30 say 'От номер на СО:' get nom3 pict "9999"
                     @ 10,30 say 'До номер на СО:' get nom4 pict "9999"
                     read
                        if lastkey()=27 .or. nom3=0
                            set dele off
                            return 0
                        endif
                     izrab()
                        if lastkey()=27 
                            set dele off
                            return 0
                        endif
             set dele on
             b1=65
             store 0 to br1, dt0,kt0
             ll0='2'
             open_arhi(loc0:=48) && nari
             dn0=subs(data1,4,2)+data1
             find '&dn0'
             count for nom3 <= val(nom) .and. val(nom) < nom4+1 to line1
             go top
             set cent on
      do while .t.        &&  aaaaaa
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
            ? space(20)+' МЕСЕЧНО ИЗВЛЕЧЕНИЕ ПО СМЕТКА'
            ?
            ?
            ?
            ?
            ?
            ?
            ?  imb0
            ? 'Титуляр на сметката '+ltrim(trim(fir))+' '+ltrim(trim(grad))
            ? 'Период на извлечението '+peri0
            ? 'Банкова сметка (IBAN) '+iban1
            ? 'Дата на извлечението '+subs(peri0,12,10)+space(33)+'стр. '+str(b2,3)
            ? repl('-',72)
            ? space(49)+'Старо салдо'+str(asal0,12,j1)
            ? repl('-',72)
            ?'No. ВАЛЬОР   ОПИСАНИЕ НА ОПЕРАЦИЯТА                 Kредит         Дебит'
            ? repl('-',72) 
            ?' 1    2               3                                4             5  '
            ? repl('-',72)
            b0=b0+21
            store 0 to dt1,kt1
            do while data=data3
               if  val(nom) <= nom3 .or. nom4 < val(nom)
                  if .not. eof()
                     skip
                     loop
                  else
                      exit
                  endif
               endif
               line()
          nom0=nom
          dano0=subs(data3,4,2)+data3+nom0+part2
          dok0=dok
          open_dpar(loc0:=46) &&  nsdi
          find '&dano0'
          if found()
             do case
                case subs(dok0,1,5)='лихва'
                dok0='лихва/interest'+space(18)+subs(dok0,33,8)
                case subs(dok0,1,11)='постерминал'
                dok0='постерминал/POS ACQ'+space(13)+subs(dok0,33,8)
                case subs(dok0,1,15)='от каса в банка'
                dok0='от каса в банка/cash deposit'+'    '+subs(dok0,33,8)
             endcase
             if sch1='504'
                ? subs(nom0,2,3)+' '+subs(dok0,33,8)+' '+subs(dok0,1,30)+'   '+str(kol,12,j1)+space(16)
                kt1=kt1+kol
                kt0=kt0+kol
             else
                ? subs(nom0,2,3)+' '+subs(dok0,33,8)+' '+subs(dok0,1,30)+'   '+str(dast,12,j1)+space(16)
                kt1=kt1+dast
                kt0=kt0+dast
             endif
             spri()
          endif
          open_kpar(loc0:=46) &&  nsdi
          find '&dano0'
          if found()
             do case
                case subs(dok0,1,8)='б. такса'.or.subs(dok0,1,7)='б.такса'
                dok0='б. такса/charge'+space(17)+subs(dok0,33,8)
                case subs(dok0,1,15)='от банка в каса'
                dok0='от банка в каса/withdraw cash'+space(3)+subs(dok0,33,8)
          *     wait '333333333333333333333333'
             endcase
             if sch1='504'
                ? subs(nom0,2,3)+' '+subs(dok0,33,8)+' '+subs(dok0,1,30)+space(17)+str(kol,12,j1)
                dt1=dt1+kol
                dt0=dt0+kol
             else
                ? subs(nom0,2,3)+' '+subs(dok0,33,8)+' '+subs(dok0,1,30)+space(17)+str(kast,12,j1)
                dt1=dt1+kast
                dt0=dt0+kast
             endif
             spri()
          endif

            if b0=0
               b2=b2+1
               ?
               ? space(64)+'стр. '+str(b2,3)
               ? repl('-',72)
               ?'No. ВАЛЬОР   ОПИСАНИЕ НА ОПЕРАЦИЯТА                 Kредит         Дебит'
               ? repl('-',72)
               ?' 1    2               3                                4             5  '
               ? repl('-',72)
               b0=b0+7
            endif
            sele 1
                if .not. eof()
                   skip
                else
                   exit
                endif
            enddo
            ? repl('-',72)
            ? space(28)+'Обороти за периода'+str(kt1,12,j1)+'  '+str(dt1,12,j1)
            ? repl('-',72)
            ? space(29)+'Натрупани обороти'+str(kt0,12,j1)+'  '+str(dt0,12,j1)
            ? repl('-',72)
            ? space(50)+'Ново салдо'+str(asal0+kt1-dt1,12,j1)
              asal0=asal0+kt1-dt1
            ? repl('-',72)
         b0=b1
         spri()
      enddo   &&  aaaaaa
          pech()



                          return


   **************************  Процедурата нямалява зъдл. с отст. ************
                                    proc nootst
           save screen
           set key -38 to
           @ 11,21,15,59 box ram1
           @ 12,22 clea to 14,58
          @ 12,24 say 'ПРОЦЕДУРАТА HАМАЛЯ ЗАДЪЛЖЕHИЯТЯ'
          @ 13,24 say 'ПО ПРОДАЖБИ С ТЪРГОВСКИ ОТСТЪПKИ'
          @ 14,24 say 'Програмата работи по: '
                       i0=inkey(0)
                        if lastkey()=27
                            set key -38 to  nootst
                            restore screen
                            @  3,42 get papk0  pict '999'
                            chet()
                            return
                        endif
            open_arhi(loc0:=14)
            do while .not.eof()   &&  промерка за опер за отстъпка
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
                if .not. eof()
                   skip
                else
                   exit
                endif
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
      ,dok with 'Hамал.задълж.-продаж.с Т.О. '+nom1+'-'+data0,vid with+space(16)+dtoc(date0)
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
                if .not. eof()
                   skip
                else
                   exit
                endif
            enddo
            zvan()
            @ 23+ml0,15 say '              Програмата приключи                 '
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

  ******************   Процедура за замяна на партиди *************
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
      @  2,24 say 'ЗАМЯHА НА АHАЛИТИЧHИ ПАРТИДИ'
      @  3,23 say '------------------------------'
      @ 4,25 say 'Въведете директория' get us_1
    do while .t.
      set key -2 to prov
      set key -3 to prov
      set key -4 to prov
      @ 23+ml0,18 say 'Проверка за нови партиди F3 - 702 или F4 - 304' 
      @  6,13 say 'Замени партида от M0' get part0 pict "9999"
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
              sele 6                                   && да не се изтрива
              use '&us_1'+'obap' inde '&us_1'+'aobi'     && да не се изтрива
              find '&pt0'
       if .not. found()
                @ 23+ml0,15 say space(51)
                @ 23+ml0,30 say 'Партидата е няма в М0 '
                i0=inkey(0)
       else
                 @  6,40 say name
                 name0=subs(name,1,10)
                 i0=inkey(0)
       endif
              sele 6                                   && да не се изтрива
              use '&us_0'+'obap' inde '&us_0'+'aobi'     && да не се изтрива
              find '&pt0'
              if part20=0
                 store part0 to  part20
              endif
              set key -4 to prov
              @ 23+ml0,15 say 'F5 - партида кои париди заменя                   '
              @  7, 7 say 'с партда от счетоводството'get part20 pict "9999"
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
          @ 23+ml0,27  say 'Желаети ли вазстановяване д/н' get l1  valid l1='д' .or. l1='н'
          chet()
          if lastkey()=27
             set key -2 to
             set filter to
             set rela to
             return
          endif
       if l1='д'   &&  възстановяване
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
          @ 23+ml0,25  say 'Възстановяването е неприложимо !'
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
      @ 23+ml0,20  say 'Желаети ли извършването на замянате д/н' get l0  valid l0='д' .or. l0='н'
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
          setcolors(zv0+2)
          @ 23+ml0,19 say 'ВHИМАHИЕ !'
          setcolors(zv0)
          @ 23+ml0,30  say 'Имате неохарактеризирани партиди'
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
          @ 23+ml0,18 say 'Програмата заменя партида '+subs(part,4,4)+' с партида '+subs(zame->part2,4,4)
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


                 ************** Процедура за   *****************
                         proc fzame
               @ 10, 7 say space(60)
               @ 12, 7 say space(60)
                sele 7
                sele 6
                use '&us_1'+'obap' inde '&us_1'+'nami'     && да не се изтрива
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
                @  8, 1 say repl('=',78)
                @ 10, 1 say repl('=',78)
                dbedit( 9, 1,21+ml0,48,fiel,"pfzame",'',imem,'=','L')
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
                use '&us_0'+'obap' inde '&us_0'+'aobi'     && да не се изтрива
                find "&pt0"
                 @ row(),49 say 'L'+subs(obap->name,1,23)+'L'+str(obap->zena,5,2)
                sele 7
                sele 6
                use '&us_1'+'obap' inde '&us_1'+'nami'     && да не се изтрива
                set relation to part into zame
                set filter to .not. empty(zame->part)
                go re0
                        return 1
                   case lastkey()=27.or.lastkey()=13
                         return 0
                 endcase
                return 1


    ************  Процедура за проверка  на незаменени партиди ****************
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
                   dbedit( 8,10,21+ml0,71,fiel,"",'',imem,'=','L')
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
                   imem[3]='ДА СЕ ЗАМЕНИ'
                   imem[4]='ДАТА'
                   imem[5]='   HАИМЕHОВАHИЕ'
                   dbedit(17,10,21+ml0,65,fiel,"",'',imem,'=','L')
                   set key -2 to prov
                   set key -3 to prov
     endif
                   store val(subs(part,4,4)) to part0
                   @ 17,10 clea to 21,75
     clea gets
     l0='н'
     @ 23+ml0,15 say space(51)
     @ 23+ml0,25 say 'Желаети ли отпечатване д/н' get l0  valid l0='д' .or. l0='н'
      chet()
       if l0='д'
          save screen
          do izrab
          go top
          set marg to 15
          ?  'HОМЕР СО  HОВИ ПАРТИДИ   ДА СЕ ЗАМЕНИ   ДАТА'
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
       clea
      open_zame()
      open_dparp()
      open_kparp()
      set rela to part into zame
      set filter to (part='702'.or.part='304').and.(.not.partp='       ').and.(zame->part2)='       ';
          && .and.(nom='5'.or.nom='8')
       endif
          restore screen
      @  6,13 say 'Замени партида от M0' get part0 pict "9999"
        chet()
                       return



   *****************  Процудера за изплатени ф-ри ***************
                        proc mol2
            do while .t.
                 ramka()
                 set dele on
                 @  2,27 say 'Изплатени фактури'
                 @  3,26 say '------------------'
                 @ 23+ml0,28 say 'Желаете ли изработване'
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
                        if .not. eof()
                           skip
                        else
                           exit
                        endif
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
? '                                 към  '+dtoc(date0)
? space(71)+'стр. '+str(b2,3)
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
              if .not. eof()
                 skip
              else
                 exit
              endif
         enddo
                 endif
? space(63)+'--------------'
? space(41)+'Общо'+space(20)+str(kast0,12,j1)
        pech()
            enddo
                        return  && mol2



          ***************** Реиндексация ************************
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
       @ 18,23 say '                                   '
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
   @ 13,22 say 'Въведете п-дата на продукта  :' get part0 pict "9999"
   @ 14,22 say 'Въведете п-дата р-дната с-ка :' get part2 pict '9999'
   @ 15,22 say 'Въведете шифъра на сток. с-ка:' get sch2
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
                  @ 18,23 say '   Hямате продажби по партидата !  '
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
       @ 18,23 say 'Програмата работи, моля почакайте !'
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
          if mk0='бр'
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
                  @ 18,23 say '      Hатиснете кой да е клавиш    '
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
***************************************************************
FUNCTION   ISFLOPPYRE (_LOC1)
***************************************************************
 *  LOCAL _LOC2 := .F., _LOC3 := -1, _LOC4, _LOC5, _LOC6, _LOC7 := 7, _LOC8 := 15, _LOC9 := _LOC7 + 6, _LOC10 := 55, _LOC11

    LOCAL _LOC2 := .F., _LOC4, _LOC5     && , _LOC6, _LOC7 := 7, _LOC8 := 15, _LOC9 := 13, _LOC10 := 55, _LOC11
    set prin off
    set prin to
    set cons on
    _LOC11 := {}
    _LOC3 := -1
    IF _LOC1 == 0
        _LOC5 := "A:"
    ELSE
        IF _LOC1 == 1
            _LOC5 := "B:"
        ENDIF
    ENDIF

    do while (_LOC3 != 0)
        IF (NHANDLE := FCREATE (_LOC5 + "a!")) == -1
            _LOC3 := FERROR ()
            do case
                case  (_LOC3 == 5)
                    _LOC4 := "ДИСКЕТАТА Е ЗАЩИТЕНА ИЛИ HЕ Е ПОСТАВЕНА"
                 *   LOC3=5
                case  (_LOC3 == 3)
                    _LOC4 := _LOC5 + " УСТРОЙСТВО НЕ Е ГОТОВО "
                case  (_LOC3 == 13)
                    _LOC4 := "ДНИТЕ, ЗАЧЕТЕНИ ЗА ТРУДОВ СТАЖ, СА С О.В. А ТР. ВЪЗН. Е 0 ЗА " + _LOC5
                otherwise
                    _LOC4 := " НЕРАБОТОСПОСОБНО УСТРОЙСТВО " + _LOC5
            endcase
            if _LOC3 != 0
               @ 21,14,24,66 box ram1
               @ 22,15 clea to 23,65
                   setcolors (zv0+=2)
               @ 22,15 say 'ВHИМАHИЕ !'
                   setcolors (zv0)
               @ 22,26 say _LOC4
               @ 23+ml0,25 say " RETURN - ПРОДЪЛЖЕНИЕ  ESC - ОТКАЗ "
                inkey (0)
                if lastkey () == 27
                     fclose(NHANDLE)
                    _LOC3 := 5
                     return
                endif
                if lastkey () == 13
                     exit
                endif
            endif
        else
        exit
        endif
    enddo
    fclosE(NHANDLE)
return   

     *************  ЛИПСВАЩА ОПЕРАЦИЯ  ************

                    proc lipso
                  nom0=0
                  nom1=9999
                  nom4='    '
                  data1='     '
                  ll11='н'
                  l0=' '
                  store 'D'+subs(us_0,2,7) to us_1
                  eras s0001.prn
                 do while .t.
                  ramka()
                  @ 23+ml0,15 say 'F6-актуализация на партиди'
                  @ 23+ml0,43 say 'F7-списък от директории'
                  @  2,30 say 'ПРОВЕРКА HА ОПЕРАЦИЯ'
                  @  3,29 say '----------------------'
                  set key -5 to aktdis
                  set key -6 to direk1
                  @  6,22 say 'От директория ' get us_1  valid 64<asc(us_1).and.asc(us_1)<123
                  chet() && read
                  us_1=trim(us_1)
                     if lastkey()=27
                       return
                     endif
                   set key -6 to direk0
                   @  8,22 say 'В  директория ' get us_0 valid 64<asc(us_0).and.asc(us_0)<123
                   chet() && read
                   us_0=trim(us_0)
                     if lastkey()=27
                       return
                     endif
                             @ 23+ml0,15 say space(51)
                          if file("&us_1*.*").and.file("&us_0*.*")
                          else
                             @ 23+ml0,23 say ' Грешите месеца или кода на фирмата '
                             zvan()
                             i0=inkey(0)
                             @ 23+ml0,15 say space(51)
                             return
                          endif
                          @ 23+ml0,15 say '        Програмата работи, моля почакайте !        '

              ***********   от "H" в "С"  OBAP   *********************
                       memowrit('s0001.prn', memoread('s0001.prn')+'---------OBAP----------';
                       +chr(13)+chr(10))
                      copy file '&us_1'+'obap.dbf' to '&us_0'+'obapt.dbf'
                      copy file '&us_1'+'aobi.ntx' to '&us_0'+'aobit.ntx'
                      open_obap()
                      sele 10
                      use '&us_0'+'obapt' &&  inde '&us_0'+'aobit'
                  do while .not. eof()
                      part0=part
                      name0=name
                      asal0=asal
                      sele 6
                       find "&part0"
                       if found()
                          if .not. name=name0
                             l0='1'
                             memowrit('s0001.prn', memoread('s0001.prn')+'Разл. НАИМ.'+subs(us_0,1,1)+'   '+part0+' ';
                             +chr(13)+chr(10))
                          endif
                          if .not. asal=asal0
                             l0='1'
                             memowrit('s0001.prn', memoread('s0001.prn')+'Разл.Н.С-O '+subs(us_0,1,1)+'   '+part0+' ';
                             +chr(13)+chr(10))
                          endif
                       else
                          l0='1'
                          memowrit('s0001.prn', memoread('s0001.prn')+'Липса ПАРТ '+subs(us_0,1,1)+'   '+part0+' ';
                          +chr(13)+chr(10))
                       endif
                     sele 10
                       skip

                  enddo
                  ********************  ОБРАТНО  *********************
                       sele 10
                       use '&us_0'+'obapt' inde '&us_0'+'aobit'
                       go top
                       open_obap()

                  do while .not. eof()
                      part0=part
                      name0=name
                      asal0=asal
                      sele 10
                       find "&part0"
                       if found()
                          if .not. name=name0
                             l0='1'
                             memowrit('s0001.prn', memoread('s0001.prn')+'Разл. НАИМ.'+subs(us_1,1,1)+'   '+part0+' ';
                             +chr(13)+chr(10))
                          endif
                          if .not. asal=asal0
                             l0='1'
                             memowrit('s0001.prn', memoread('s0001.prn')+'Разл.Н.С-O '+subs(us_1,1,1)+'   '+part0+' ';
                             +chr(13)+chr(10))
                          endif
                       else
                          l0='1'
                          memowrit('s0001.prn', memoread('s0001.prn')+'Липса ПАРТ '+subs(us_1,1,1)+'   '+part0+' ';
                          +chr(13)+chr(10))
                       endif
                     sele 6
                       skip

                  enddo


               ***********   от "H" в "С"  DOBO   *********************
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
                       memowrit('s0001.prn', memoread('s0001.prn')+'Разлика на '+subs(us_0,1,1)+' '+subs(dat0,11,4)+'-';
                       +subs(dat0,6,5)+chr(13)+chr(10))
                           endif
                      else
                       if  .not. dat0+nom=dat1
                           l0='1'
                           memowrit('s0001.prn', memoread('s0001.prn')+dok0+' Л '+subs(us_0,1,1)+' '+subs(dat0,11,4)+'-';
                           +subs(dat0,6,5)+chr(13)+chr(10))
                       endif
                      endif
                        store dat0 to dat1
                        sele 10
                             skip
                  enddo
               ***********   от "H" в "С"  KOBO   *********************
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
                       memowrit('s0001.prn', memoread('s0001.prn')+'Разлика на '+subs(us_0,1,1)+' '+subs(dat0,11,4)+'-';
                       +subs(dat0,6,5)+chr(13)+chr(10))
                           endif
                      else
                       if  .not. dat0+nom=dat1
                           l0='1'
                           memowrit('s0001.prn', memoread('s0001.prn')+dok0+' Л '+subs(us_0,1,1)+' '+subs(dat0,11,4)+'-';
                           +subs(dat0,6,5)+chr(13)+chr(10))
                       endif
                      endif
                        store dat0 to dat1
                        sele 10
                             skip
                  enddo
                 ************ ОБРАТНО   *******************
               ***********   от "C" в "H"  DOBO   *********************
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
                       memowrit('s0001.prn', memoread('s0001.prn')+'Разлика на '+subs(us_1,1,1)+' '+subs(dat0,11,4)+'-';
                       +subs(dat0,6,5)+chr(13)+chr(10))
                           endif
                      else
                       if  .not. dat0=dat1
                           l0='1'
                           memowrit('s0001.prn', memoread('s0001.prn')+dok0+' Л '+subs(us_1,1,1)+' '+subs(dat0,11,4)+'-';
                           +subs(dat0,6,5)+chr(13)+chr(10))
                       endif
                      endif

                        store dat0 to dat1
                        sele 2
                        skip
                  enddo
               ***********   от "C" в "H"  KOBO   *********************
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
                       memowrit('s0001.prn', memoread('s0001.prn')+'Разлика на '+subs(us_1,1,1)+' '+subs(dat0,11,4)+'-';
                       +subs(dat0,6,5)+chr(13)+chr(10))
                           endif
                      else
                       if  .not. dat0=dat1
                           l0='1'
                           memowrit('s0001.prn', memoread('s0001.prn')+dok0+' Л '+subs(us_1,1,1)+' '+subs(dat0,11,4)+'-';
                           +subs(dat0,6,5)+chr(13)+chr(10))
                       endif
                      endif

                        store dat0 to dat1
                        sele 3
                        skip
                  enddo
 
                        @ 23+ml0,15 say space(51)
                     if l0=' '
                        @ 23+ml0,32 say 'Няма открити различия'
                         inkey(4)
                        @ 23+ml0,32 say space(15)
                     else
                       @  5,48,21+ml0,74 box ram1
                       save1=memoedit(memoread("s0001.prn"),6,50,20+ml0,72,.t.,"fdobav",23,40,1,0)
                       copy file s0001.prn to \hlp\job\mess.txt
                     endif
                 enddo
                    return
 
