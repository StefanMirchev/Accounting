   *PRO4.PRG  asci analobo avtteh. banko  chpa consig dds1 ddok1 edno joana
   **  neobkol oborot razdds1 spdds zanvi pfunk4
   * @  0,15  say 'bbbb ' ; inkey(0) //kkk
      ***************  До▒▓авки и п░одажби по дан║╖ни номе░а  *********

                          proc  joana
         store 0 to sch3,sch4,kast2
         nom0=0
       * sch3=702
       * sch4=702
         pr1=1
         pr2=9999
         dr0='д'
         l1='н'
         l2='н'
         date1=ctod('01/01/'+vek0)
         date2=ctod('31/12/'+vek0)
     do while .t.
                store 0 to kol2,kol0,ksto0,ksto1,ksto2
                vid0=space(23)
                ramka()
                @  2,24 say 'ЖУРHАЛ ПО АHАЛИТИЧHИ ПАРТИДИ'
                @  3,23 say '------------------------------'
          do while .t.
             l3=' '
             b0=0
             set key -3 to dnspis
             @  6,24 say 'За иден▓и┤ номе░: ' get dn2      &&  v01
             chet()
             if empty(dn2)
                l3='dr0=dr'
             else
               l3='dr0=dr.and.dn2=dn'
             endif
             set key -3 to     &&  dnspis
             if lastkey()=27.or.lastkey()=13
                 set dele off
                 exit
             endif
          enddo
               set cent on
                @ 23+ml0,25 say 'F3 - изди░ва желана▓а анал.п-да'
                set key -2 to spisk1
                set key -32 to spisk1
                @  8,24 say 'О▓ ▒ме▓ка' get sch3 pict "999"
                @  8,40 say 'До ▒ме▓ка' get sch4 pict "999"
                @ 10,23 say 'О▓ па░▓ида' get pr1 pict "9999"
                @ 10,39 say 'До па░▓ида' get pr2 pict "9999"
                @ 12,19 say 'О▓ да▓а' get date1
                @ 12,40 say 'До да▓а' get date2
                chet()
                    if lastkey()=27
                          exit
                    endif
                set cent off
                data1=subs(dtoc(date1),4,5)
                data2=subs(dtoc(date2),4,5)
                open_obve(loc0:=13)
                sch2=str(sch3,3)
                find "&sch2"
                if t='а'
                   dr0='д'
                else
                   dr0='п'
                endif
                @ 14,22 say 'По до▒▓авки "д", по п░одажби "п" '  get dr0  valid dr0='д'.or. dr0='п'
                @ 16,28 say 'С опе░е░а╢ии - д/н ' get l1  valid l1='д'.or. l1='н'
             if sc11='д'
                  l2='д'
                @ 18,23 say 'Сп░авка за кон▒игна▓о░ - д/н ' get l2  valid l2='д'.or. l2='н'
                @ 20,21 say 'В║веде▓е номе░а на опе░а╢и┐  ' get nom0 pict "9999"
             endif
                chet()
                set key -2 to
                set key -32 to
                izrab()
                    if lastkey()=27
                          exit
                    endif
                       if ekpr0=2
                           b1=65
             @ 23,22 say 'В║веде▓е б░ой ░едове на ▒▓░ани╢а' get b1 pict'999'
                 chet()
                           b1=b1-1
                       endif
         if dr0='д'
            podr_0=10
            save all like podr_0 to podred
            podred()
            open_dparjo()
         else
            podr_0=11
            save all like podr_0 to podred
            podred()
            open_dpar(loc0:=20)
            open_kparjo()
         endif
            @ 23+ml0,21 say '   П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е !   '
            dn0=subs(data,4,2)+data+nom
            open_dobo(loc0:=27)
            open_kobo(loc0:=27)
            open_obap(loc0:=27)
            open_arhi(loc0:=22)
            find "&dn0"
            do while .not. eof()
              if .not. dn=dn2
                 skip
                 loop
              else
                 vid0=substr(vid,26,23)
                 exit
              endif
            enddo
         if dr0='д'
            sele 4
         else
            sele 5
         endif
         set marg to 4
                       if ekpr0=2
                          ? norm0
                       endif
         if dr0='д'
       ? space(30)+'ДОСТАВKА  ОТ  '+vid0
         else
       ? space(30)+'ПРОДАЖБА  HА  '+vid0
         endif
       ? space(27)+'ЗА ПЕРИОДА ОТ ' + subs(dtoc(date1),4,5)+' ДО '+subs(dtoc(date2),4,5)
       ? space(66)+'▒▓░. '+str(b2,3)
       ? repli('_',74)
     if l1='д'
       ? 'Па░▓.  Hаименование    Фак▓│░а N   Да▓а       K-ВО    ЦЕHА   С▓ойно▒▓     СО'
     else
       ? 'Па░▓.         Hаименование               М-KА     K-ВО    ЦЕHА    С▓ойно▒▓  '
     endif
       ? repli('_',74)
        store 0 to kol0,ksto0,kol2,ksto2
   set filter to val(subs(data1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data2,1,2));
   .and.(sch3<=val(substr(part,1,3)).and.val(substr(part,1,3))<=sch4).and.;
   (pr1<=val(substr(part,4,4)).and.val(substr(part,4,4))<=pr2)
   go top
        b0=b0+7
        do while .not.eof()
            store 0 to l0
            part1=part
            part2='304'+subs(part,4,4)
            mk0=mk
            dn0=subs(data,4,2)+data+nom
            dok0=space(19)
            sele 1
            find "&dn0"
          if &l3
             dok0=substr(vid,6,19)
     if  ctod(subs(dok0,12,6)+subs(vek0,1,2)+subs(dok0,18,2)) < date1.or.date2 < ctod(subs(dok0,12,6)+subs(vek0,1,2)+subs(dok0,18,2)).and.sc11='д'

                if dr0='д'
                   sele 4
                else
                   sele 5
                endif
              if .not. eof()
                 skip
              else
                 exit
              endif
          if (.not. subs(part1,4,4)=subs(part,4,4))
           if .not. (kol2=0.and.ksto2=0.and.l0=0)
            if l1='д'
             ? space(58)+'------------'
             ? space(15)+'Об╣о'+space(23)+str(kol2,8,0)+space(9)+str(ksto2,10,2)
             ?
            else
             ?  subs(part1,4,4)+' '+name0+'  '+mk+'  '+str(kol2,8,0)+' '+str(zena0,8,2)+' '+str(ksto2,10,2)
               if 0 < nom0
                  mk0=mk
                  do consig
               endif
            endif
           endif
             ksto0=ksto0+ksto2
             store 0 to kol2,ksto2
          endif
               loop
     endif
             sele 6
             if l2='д'
                re0=recno()
                find "&part2"
                if found()
                   zena0=zena
                else
                   zena0=0
                endif
                go re0
             else
               find "&part1"
               zena0=zena
             endif
             find "&part1"
           if l1='д'
             name0=substr(name,1,17)
           else
             name0=name
           endif
                if dr0='д'
                   sele 3
                   find "&dn0"
                   sch0=sch
                   sele 4
    if l1='д'
     ? substr(part,4,4)+' '+name0+' '+dok0+str(kol,8,0)+' '+str(zena,7,2)+' '+str(dast,10,2)+'  '+nom+'-'+data+' '+sch0
    else
     zena0=zena
    endif
        if dast<>0
           l0=1
        endif
                else
                   sele 2
                   find "&dn0"
                   sch0=sch
                   sele 5

       if l1='д'
          if l2='д'
           ? substr(part,4,4)+' '+name0+' '+dok0+str(kol,8,0)+' '+str(zena0,7,2)+' '+str(round(kol*zena0,2),10,2)+'  '+nom+'-'+data+sch0
          else
           ? substr(part,4,4)+' '+name0+' '+dok0+str(kol,8,0)+' '+str(zena,7,2)+' '+str(kast,10,2)+'  '+nom+'-'+data+sch0
          endif
          spri()
       else
       endif
        if kast<>0
           l0=1
        endif

                endif
        if kol<>0
           l0=1
        endif
       kol2=kol2+kol
       kol0=kol0+kol
       if l2='н'
         if dr0='д'
            ksto2=ksto2+dast
         else
            ksto2=ksto2+kast
         endif
       else
          ksto2=round(kol2*round(zena0,2),2)
       endif
          endif
                if dr0='д'
                   sele 4
                else
                   sele 5
                endif
               if .not. eof()
                 skip
              else
                 exit
              endif
                                 if  b0=0
     b2=b2+1
       ? space(66)+'▒▓░. '+str(b2,3)
       ? repli('_',74)
     if l1='д'
       ? 'Па░▓.  Hаименование    Фак▓│░а N   Да▓а       K-ВО    ЦЕHА   С▓ойно▒▓     СО'
     else
       ? 'Па░▓.         Hаименование               М-KА     K-ВО    ЦЕHА    С▓ойно▒▓  '
     endif
       ? repli('_',74)
      b0=4
                                 endif




          if (.not. subs(part1,4,4)=subs(part,4,4))
           if .not. (kol2=0.and.ksto2=0.and.l0=0)
            if l1='д'
             ? space(58)+'------------'
             ?  space(15)+'Об╣о'+space(23)+str(kol2,8,0)+space(9)+str(ksto2,10,2)
             ?
             b0=b0+2
             spri()
            else
             ?  subs(part1,4,4)+' '+name0+'  '+mk+'  '+str(kol2,8,0)+' '+str(zena0,8,2)+' '+str(ksto2,10,2)
             spri()
               if 0 < nom0
                  mk0=mk
                  do consig
               endif
            endif
           endif
             ksto0=ksto0+ksto2
             store 0 to kol2,ksto2
          endif
        enddo
            if l1='д'
             ? space(58)+'------------'
             ?  space(13)+'В▒и╖ко'+space(23)+str(kol0,8,0)+space(9)+str(ksto0,10,2)
             b0=b0+1
             spri()
            else
             ? space(62)+'------------'
             ?  space(23)+'В▒и╖ко'+space(17)+str(kol0,8,0)+space(10)+str(ksto0,10,2)
             b0=b0+1
             spri()
            endif
             ?
             if sc11='д'.and.0 < nom0
      open_dobo(loc0:=21)
      appe blank
      rec_lock()
      repl nom with str(nom0,4), sch with '304', dsto with 0, data with data0
      rec_unlock()
      sele 1
      appe blank
      rec_lock()
      repl nom with str(nom0,4), papk with ' 14',dok with 'п░ом.▒▓оки.пок│п.-ев░ома░ке▓',;
      data with data0, vek with subs(vek0,1,2)
      rec_unlock()
             endif
        pech()
     enddo
                          return


      ************** Сп░авка за в║з▒▓анов┐ване на ДДС  *************
                           proc spdds
             b0=0
             open_bala()
             set filter to t='41'
             go top
             store recno() to br0
              go br0+6
           rec_lock()
           repl pola with substr(pola,1,45)+dt_0+substr(pola,53,6)+dt1+substr(pola,66,4)
           repl polp with substr(polp,1,3)+dt2+substr(polp,11,6)+dt3+substr(polp,24,6)+dt4+substr(polp,37,6)+dt5+substr(polp,50,6)+dt6+substr(polp,63,4)
             go br0+8    && 265
           rec_lock()
           repl pola with substr(pola,1,56)+str(dv1,12,j1)
           repl polp with substr(polp,1,1)+str(dv2,12,j1)+'╙'+str(dv3,12,j1)+'╙'+str(dv4,12,j1)+'╙'+str(dv5,12,j1)+'╙'+str(dv6,12,j1)+'╙'
             go br0+14   && 271
           rec_lock()
           repl pola with substr(pola,1,56)+str(dv1,12,j1)
           repl polp with substr(polp,1,1)+str(dv2,12,j1)+'╙'+str(dv3,12,j1)+'╙'+str(dv4,12,j1)+'╙'+str(dv5,12,j1)+'╙'+str(dv6+sald0,12,j1)+'╙'
             go br0+16   && 273
           rec_lock()
           repl polp with substr(polp,1,53)+str(abs(sald0),12,j1)+'╙'
             go br0+18   && 275
           rec_lock()
           repl polp with substr(polp,1,53)+sald2+'╙'
             go br0+20   && 277
           rec_lock()
           repl pola with substr(pola,1,43)+str(os_0,12,j1)+'╙'+str(dk1,12,j1)
           repl polp with substr(polp,1,1)+str(dk2,12,j1)+'╙'+str(dk3,12,j1)+'╙'+str(dk4,12,j1)+'╙'+str(dk5,12,j1)+'╙'+str(dk6,12,j1)+'╙'
             go br0+26   && 283
           rec_lock()
           repl pola with substr(pola,1,56)+str(dv1,12,j1)
           repl polp with substr(polp,1,1)+str(dv2,12,j1)+'╙'+str(dv3,12,j1)+'╙'+str(dv4,12,j1)+'╙'+str(dv5,12,j1)+'╙'+str(sald1,12,j1)+'╙'
             go br0+32   && 289
           rec_lock()
           repl pola with substr(pola,1,56)+str(sa1,12,j1)
           repl polp with substr(polp,1,1)+str(sa2,12,j1)+'╙'+str(sa3,12,j1)+'╙'+str(sa4,12,j1)+'╙'+str(sa5,12,j1)+'╙'+str(sa6,12,j1)+'╙'
             go br0+34   && 291
           rec_lock()
           repl polp with substr(polp,1,53)+str(os10,12,j1)+'╙'
           rec_unlock()
          ll0='1'
        @ 17,3 clea to 17,78
        save screen
        izrab()
                 if lastkey()=27
                   return
                 endif
                ? sbit0+'0'
                prn0=sbit0+'0'
                set marg to 3
 ? space(34)+'СПРАВKА ЗА ИЗВЪРШЕHОТО ПРИСПАДАHЕ HА ДАHЪK ВЪРХУ ДОБАВЕHАТА СТОЙHОСТ'
 ?
 ? space(47)+fir
 ?
                   open_bala()
                   set filter to t='41'
                   go top
                   do while t='41'
                        ? substr(pola,1,68)+trim(substr(polp,1,75)) && +'  '+str(recno(),4)
              if .not. eof()
                 skip
              else
                 exit
              endif
                   enddo
              pech()
              restore screen
                           return

    * ************** П░о╢ед│░а за из╖и▒л┐ване на data3      ***********
    *                     proc razdds1
    *                if ll6='▓'
    *                   data_1=val(substr(data0,1,2))-1
    *                   do case
    *                      case data_1 < 1
    *                        data_1='  '
    *                      case data_1 < 10
    *                        data_1='0'+str(data_1,1)
    *                      case data_1 > 9
    *                        data_1=str(data_1,2)
    *                   endcase
    *                   data3=data_1+'/'+substr(data0,4,2)
    *                else
    *                   store data1 to data3
    *                endif
    *                   return


      ************** П░о╢ед│░а за набл╛даване на ДДС вно▒ки  *************
                        proc dds1
                clea gets
                l1='д'
                save screen
          do case
             case lastkey()=-2
                sele 1
                set key -2 to
                declare fiel[13]
                fiel[1]='dk'
                fiel[2]='dv'
                fiel[3]='h'
                fiel[4]='osta'
                fiel[5]='por'
                fiel[6]='dat'
                fiel[7]='data'
                fiel[8]='dte'
                fiel[9]='dtep'
                fiel[10]='v'
                fiel[11]='i'
                fiel[12]='p'
                declare imem[13]
                imem[1]='ВЪЗСТАH.'
                imem[2]='ВHАСЯHЕ '
                imem[3]='H'
                imem[4]='ОСТАТЪK'
                imem[5]='МАРK'
                imem[6]='ТДАТА'
                imem[7]='ДATA'
                imem[8]='ДАТА ДЕKЛ.'
                imem[9]='ДАТА ПЛАТ.'
                imem[10]='ОБЛАГ.ОБОР'
                imem[11]='ИЗHОС    '
                imem[12]='P'
                @  3, 7,21+ml0,73 box ram1
                dbedit( 4, 8,20+ml0,72,fiel,"pfunk1",'',imem,'═','╙')  && pfunk1 sav5.prg
                keyboard chr(-3)
                inkey(0.5)
                set key -2 to dds1
             case lastkey()=-4
                  set key -4 to
     @  9+ml0,15 say '          П░ог░ама▓а из░бо▓ва DDSxxxx.PDF          '
            if file("&disc_0\zan.pdf")
               if file("&disgod0")=.T.
                     copy file &disgod0 to aaa.pdf
                    ! &disc_1\exe\pdf\pdftk.exe &disc_0\zan.pdf aaa.pdf output &disgod0
                      inkey(3)    // ne promenya
                      erase aaa.pdf
               else
                     copy file '&disc_0\zan.pdf' to &disgod0
               endif
               ! cmd /c start &pdfxc_0  &disgod0
               set cursor on ; inkey(3)
            else
               @ 11,23 say 'ВHИМАHИЕ!'  color 'R+/B' ; @ 11,33 say 'Уведомление▓о не ▒валено!' ; inkey(8)
               return
            endif
                  set key -4 to dds1
          endcase
                restore screen
                return

      ********** П░о╢ед│░а п░ави опе░а╢и┐ по о▓╖е▓ени п░одажби на кон▒иг****
                           proc consig
                           sele 1
                           dn0=subs(data0,4,2)+data0+str(nom0,4)
                           find "&dn0"
                           if found()
                              @ 23+ml0,15 say space(51)
                              do zvan
                              @ 23+ml0,24 say 'Има▓е опе░а╢и┐ ▒ номе░: '+str(nom0,4)
                              i0=inkey(0)
                              nom0=0
                              sele 5
                              return
                           endif
                              sele 4
      appe blank
      rec_lock()
      repl  nom with str(nom0,4), part with '304'+subs(part1,4,4), mk with mk0,;
      kol with kol2, zena with zena0, dast with round(kol*zena0,2), data with data0
      rec_unlock()
                    sele 5
                           return

      ************** П░о╢ед│░а за о▓пе╖а▓ване на ╖а▒▓ о▓ ▒ме▓ка **********
                   proc chpa
           save screen
           clear gets
                     @ 11,15 clea to 15,75
                do case
                   case lastkey()=-7
                     @ 11,23,16,55 box ram1
                     @ 12,27 say 'О▓пе╖а▓ва г░│па о▓ ▒ме▓ка'
                     @ 14,31 say 'О▓ па░▓ида :' get pt1  pict '9999'
                     @ 15,31 say 'До па░▓ида :' get pt2  pict '9999'
                     chet()
                restore screen
               @  8,21 say 'В║веде▓е ╕и┤║░а на желана▓а ▒ме▓ка :' get sch0
                chet()
                   case lastkey()=-9
                     store 0 to sch3,sch4,pt1,pt2
                     @ 10,23,16,60 box ram1
                     @ 11,27 say 'О▓пе╖а▓ва о▓ ▒ме▓ка до ▒ме▓ка'
                     @ 13,24 say 'О▓ ▒ме▓ка  :' get sch3  pict '999'
                     @ 13,42 say 'До ▒ме▓ка  :' get sch4  pict '999'
                     @ 15,24 say 'О▓ па░▓ида :' get pt1  pict '9999'
                     @ 15,42 say 'До па░▓ида :' get pt2  pict '9999'
                     chet()
                    store str(sch3,3) to sch0
                endcase
          return

      ***********   Из░або▓ване обо░о▓на ведомо▒▓ на ▒ин▓. ▒ме▓ки ***********
                           proc analobo
     if sc9='д'
        l0='д'
     else
         save screen
         sch0='   '
         set dele on
         clea gets
         ramka()
         @  2,18 say 'ИЗРАБОТВАHЕ HА ОБОРОТHА ВЕДОМОСТ HА АHАЛ. П-ДИ'
         @  3,17 say '------------------------------------------------'
            l0='д'
      endif
       if l0='д'
        if sc9='н'
         @ 12,9 clea to 21,60
         raboti()
        endif
         open_dpar(loc0:=21)
         set order to 2
         total on part to dpart fields kol,dast
         podr_0=15
         save all like podr_0 to podred
         podred()

         open_kpar(loc0:=21)
         set order to 2
         total on part to kpart fields kol,kast
         podr_0=15
         save all like podr_0 to podred
         podred()
       endif
     if sc9='н'
         open_arhi(loc0:=25)  && nari
         go bott
         @  6,20 say 'Обо░о▓на ведомо▒▓ к║м по▒ледна да▓а '+data
     endif
        open_obve(loc0:=14)
   do while .t.
        sele 7
        pr1=1
        pr2=9999
     if sc9='д'
        store sch00 to sch0,ds0
        find '&sch0'
        t0=t
        ds0=sch00
     else
            if a='д'
              sch0=sch
            else
              if .not.eof()
                 skip
                 loop
              else
                 @ 23+ml0,15  say '       K░ай на ▒ме▓ки▓е ▒ анали▓и╖ни па░▓иди       '
                 i0=inkey(0)
                 exit
              endif
            endif
         @  8,9 clea to 21,70
         @ 23+ml0,15 say  space(51)
         l0='н'
         @ 11,22  say 'В║веде▓е ╕и┤║░а на желана▓а ▒-ка ' get sch0
         @ 14,23 say 'Желае▓е ли из╖и▒л┐ване на ▒░.╢ена' get l0 valid l0='д'.or.l0='н'
         chet()
       if l0='д'
         @ 16,23 say 'О▓ па░▓ида:' get pr1 pict '9999'
         @ 16,42 say 'До па░▓ида:' get pr2 pict '9999'
         chet()
       endif
         raboti()
                           if lastkey()=27 .or. substr(sch0,1,1)=' '
                           set dele off
                           exit
                           endif
                           if substr(sch0,1,1)='*'
                              if .not.eof()
                                 skip
                                 loop
                              else
                                 @ 23+ml0,15  say '     K░ай на ▒ме▓ки▓е ▒ анали▓и╖ни па░▓иди     '
                                 i0=inkey(0)
                                 set dele off
                                 exit
                              endif
                              loop
                           endif
         @  8,34  say 'на ▒ме▓ка  '+sch0
         ds0=sch0
                        sele 7
                        find '&sch0'
                              if found()
                                 t0=t
                              else
                                 @ 23+ml0,15  say '    H┐ма в ▒ме▓коплана ▒ме▓ка ▒ ▓ак║в ╕и┤║░    '
                                 i0=inkey(0)
                                 loop
                              endif
         @ 12,9 clea to 21,70
     endif
         open_dpart()
         open_kpart()
         open_obap(loc0:=28)  && aobi
         find '&ds0'
     if sc9='д'
         @ 23+ml0,15 say '  П░ог░ама▓а п░ави обо░о▓на по анал. п-да:         '
         l0='н'
      else
                     if .not. found()
                      @ 23+ml0,15 say '       Тази ▒ме▓ка н┐ма анали▓и╖ни па░▓иди !       '
                        i0=inkey(0)
                      @ 23+ml0,15 say space(51)
                      sele 7
                           if .not.eof()
                              skip
                           else
                              @ 23+ml0,15  say '      K░ай на ▒ме▓ки▓е ▒ анали▓и╖ни па░▓иди       '
                              i0=inkey(0)
                              set dele off
                              exit
                           endif
                      loop
                    endif
         @ 13,15 say space(60)
         @ 13,21  say 'П░ог░ама▓а ░або▓и по анал. п-да :'
     endif
                     do while substr(part,1,3)=sch0
                 if val(substr(part,4,4))<pr1.or.val(substr(part,4,4))>pr2
                          if .not. eof()
                             skip
                             loop
                          else
                              exit
                          endif
                 endif
                    store 0 to kol1,asal1,kold1,dast1,kolk1,kast1,kkol1,ksal1
                        part1=part
                        name0=name
                        mk0=mk
                        kol1=kol
                        asal1=asal
                        t1=t
                        ts1=ts
                        dp0=part1
                    if sc9='д'
                        @ 23+ml0,57 say part
                    else
                        @ 13,57 say part
                    endif
                        sele 4
                        go top
                        find '&dp0'
                        kold1=kol
                        dast1=dast
                        sele 5
                        go top
                        find '&dp0'
                        kolk1=kol
                        kast1=kast
                        sele 6
                        rec_lock()
                           if t0='а'
                            kkol1=kol1+kold1-kolk1
                            ksal1=asal1+dast1-kast1
                             repl kkol with kkol1,ksal with ksal1
                           endif
                           if t0='п'
                             kkol1=kol1+kolk1-kold1
                             ksal1=asal1+kast1-dast1
                             repl kkol with kkol1,ksal with ksal1
                           endif
                        rec_unlock()
                           if t0=' '
                              if  t1='д'
                                  ts1='д'
                                  kkol1=kol1+kold1-kolk1
                                  ksal1=asal1+dast1-kast1
                                     if ksal1<0
                                        kkol1=abs(kkol1)
                                        ksal1=abs(ksal1)
                                        ts1='к'
                                     endif
                              endif
                              if  t1='к'
                                  ts1='к'
                                   kkol1=kol1+kolk1-kold1
                                   ksal1=asal1+kast1-dast1
                                     if ksal1<0
                                        kkol1=abs(kkol1)
                                        ksal1=abs(ksal1)
                                        ts1='д'
                                     endif
                              endif
                             rec_lock()
                             repl ts with ts1,kkol with kkol1,ksal with ksal1
                             rec_unlock()
                           endif
                     sele 6
                             rec_lock()
                           if sc15='д'
                                  if  0 < dast1.and.0 < kold1
                                   repl zena with round(abs(dast1)/abs(kold1),j4)
                                  endif
                           else
                                if l0='д'.and.(ksal/kkol>-10000000.00.or.ksal/kkol<100000000.00).and.kkol<>0
                                   repl zena with round(abs(ksal)/abs(kkol),j4)
                                endif
                           endif
                             rec_unlock()
              if .not. eof()
                 skip
              else
                 exit
              endif
                     enddo
                     if sc9='д'
                        return
                     endif
              sele 7
              if .not.eof()
                 skip
              else
                 @ 23+ml0,15  say '       K░ай на ▒ме▓ки▓е ▒ анали▓и╖ни па░▓иди       '
                 i0=inkey(0)
                 set dele off
                 exit
              endif
                  @ 23+ml0,15 say '                П░ог░ама▓а п░икл╛╖и                '
               i0=inkey(0)
   enddo
   restore screen
               keyboard chr(5)
               i0=inkey(0)
               @  8,15 say '      В║веде▓е ╕и┤║░а на желана▓а ▒ме▓ка :' get sch0
               chet()
                           return


    ************  П░о╢ед│░а за п░ове░ка  на незаменени па░▓иди ****************
                       proc kriti
               sch0='   '
               ko0=0
           do while .t.
               store 0 to pt1,pt2
               ramka()
               @  2,30 say 'ОБОРОТHОСТ HА СТОKАТА'
               @  3,29 say '-----------------------'
               @ 20,14,24,66 box ram1
               @ 21,15 clea to 23,65
               set key -2 to analobo
               set key -6 to ddok
               set key -7 to chpa
               @ 21,19 say 'F3 - из░аб. на обо░. ведомо▒▓ на анал.п-ди'
               @ 22,19 say 'F7 - оп░едел┐ под░едено▒▓▓а на анал. п-ди'
               @ 23+ml0,19 say 'F8 - о▓пе╖а▓ва г░│па о▓ анал. па░▓иди'
               @  8,21 say 'В║веде▓е ╕и┤║░а на желана▓а ▒ме▓ка :' get sch0
               chet()
               @ 10,24 say 'В║веде▓е п░о╢ен▓а :' get ko0 pict "99"
               chet()
               @ 10,50 prompt 'HАД'
               @ 10,55 prompt 'ПОД'
               menu to l3
               set key -2 to
               set key -6 to
               set key -7 to
               save screen  to ek1
                       if lastkey()=27
                          set dele off
                          exit
                       endif
               open_dpart()
               open_kpart()
               open_obap(loc0:=29)
             do case
                case ll2='п'
                     set order to 1
                case ll2='н'
                     set order to 3
             endcase
             do case
                case l3=1
                     pp0="ko0 < round((kolk1/kol1)*100,2)"
                case l3=2
                     pp0="0 < round((kolk1/kol1)*100,2) .and. round((kolk1/kol1)*100,2) < ko0"
             endcase
               find '&sch0'
                    if .not. found()
                      @ 23+ml0,15 say '       Тази ▒ме▓ка н┐ма анали▓и╖ни па░▓иди !       '
                        i0=inkey(0)
                       @ 23+ml0,20 say '                                       '
                      loop
                    else
                      restore screen  from ek1
                    endif
                    b0=0
                    izrab()
                       if ekpr0=2
                           b1=54
   @ 11,20 say 'В║веде▓е б░о┐ на ░едове▓е на ▒▓░ани╢а' get b1 pict "999"
   chet()
                           set marg to 2
                       endif


 ? '                   ОБОРОТHОСТ HА СТОKАТА ПО '+ sch0+' KЪМ '+data0
 ? 'П-ДА       HАИМЕHОВАHИЕ           М-KА     ДОСТАВKИ     ПРОДАЖБИ      %'
 ?
                     do while  subs(part,1,3)=sch0
                            if .not. pt1=0
                              if   val(substr(part,4,4))<pt1 .or. val(substr(part,4,4))>pt2
                                 if .not. eof()
                                    skip
                                    loop
                                 else
                                     exit
                                 endif
                              endif
                            endif
                        dp0=part
                        store 0 to kolk1,kol1
                        part1=substr(part,4,4)
                        mk1=mk
                        name1=subs(name,1,30)
                        kol1=kol
                        sele 4
                        find '&dp0'
                        kol1=kol1+kol
                        sele 5
                        find '&dp0'
                        kolk1=kol
                     sele 6
      if  &pp0
 ? part1+' '+name1+' '+mk1+' '+str(kol1,j2,j3)+' '+str(kolk1,j2,j3)+' '+str(round((kolk1/kol1)*100,2),6)
               spri()
      endif
              if .not. eof()
                 skip
              else
                 exit
              endif
                     enddo
         pech()
           enddo
                       return

      ************* П░о╢ед│░а за ОТСТЪПKИ ****************
                       proc otstap
      nv0=' '
      pt0=1
      pt1=9999
      do while .t.
        proz0=0
      ramka()
      store 0 to part0,part20
      @  2,31 say 'О Т С Т Ъ П K И '
      @  3,30 say '-----------------'
      @  6,30 say 'В║веде▓и ниво▓о ' get nv0
      @  8,23 say 'В║веде▓е ОТ      ДО      па░▓ида'
      @  8,35 get pt0  pict "9999"
      @  8,43 get pt1  pict "9999"
      @ 10,20 say 'В║веде▓и п░о╢ен▓а на о▓▒▓║пка▓а' get proz0 pict "99.99"
        chet()
                       if lastkey()=27
                          exit
                       endif
       open_obap(loc0:=30)
       set filter to part='702'
       go top
       open_prot(loc0:=11)
           if 0 < proz0
              set filter to nv0=nv.and.pt0-1 < val(part).and.val(part) < pt1+1
              go top
              do while .not. eof()
                 rec_lock()
                 repl proz with proz0
                 rec_unlock()
                 skip
              enddo
           endif
       set rela to '702'+part into obap
       @ 20,14 clea to 23,66
       @ 21,14,24,66 box ram1
       @ 22,16 say 'F3 - за ниво F4 - за па░▓иди F5 - за н│лев ▓о▒▓.'
       @ 23+ml0,16 say 'F6 - добав┐не на па░▓иди о▓ по▒о╖ено ниво'
       i0=inkey(0)
       do case
          case lastkey()=-2
       set filter to nv0=nv.and.pt0-1 < val(part).and.val(part) < pt1+1
          case lastkey()=-3
       set filter to pt0-1 < val(part).and.val(part) < pt1+1
          case lastkey()=-4
       set filter to proz=0.and.pt0-1 < val(part).and.val(part) < pt1+1
          case lastkey()=-5
          sele 6
          go top
          do while .not. eof()
             part0=subs(part,4,4)
             sele 14
             ptn0=nv0+part0
             find("&ptn0")
             if .not.found()
                appe blank
                rec_lock()
                repl nv with nv0,part with part0
                rec_unlock()
             endif
             sele 6
             skip
          enddo
       sele 14
       set filter to nv0=nv.and.pt0-1 < val(part).and.val(part) < pt1+1
       endcase
       go top
       @ 20,14 clea to 23,66
       @ 22,14,24,66 box ram1
                declare fiel[4]
                fiel[1]='prot->nv'
                fiel[2]='prot->proz'
                fiel[3]='prot->part'
                fiel[4]='obap->name'
                declare imem[4]
                imem[1]='HИВО'
                imem[2]='ПРОЦЕHТ'
                imem[3]='    '
                imem[4]='        С Т О K А'
                @  4,12,20+ml0,68 box ram1
                dbedit( 5,13,19+ml0,67,fiel,"pfunk1",'',imem,'═','╙')  && pfunk1 sav5.prg

      enddo
                       return


    ************  П░о╢ед│░а за п░ове░ка  на незаменени па░▓иди ****************
                       proc neobkol
               sch0='   '
           do while .t.
               ramka()
               store 0 to pt1,pt2
               @  2,30 say 'HЕОБХОДИМИ KОЛИЧСТВА'
               @  3,29 say '----------------------'
               @ 20,14,24,66 box ram1
               @ 21,15 clea to 23,65
               set key -2 to analobo
               set key -6 to ddok
               set key -7 to chpa
               @ 21,19 say 'F3 - из░аб. на обо░. ведомо▒▓ на анал.п-ди'
               @ 22,19 say 'F7 - оп░едел┐ под░едено▒▓▓а на анал. п-ди'
               @ 23+ml0,19 say 'F8 - о▓пе╖а▓ва г░│па о▓ анал. па░▓иди'
               @  8,21 say 'В║веде▓е ╕и┤║░а на желана▓а ▒ме▓ка :' get sch0
               chet() && read
               set key -2 to
               set key -6 to
               set key -7 to
               save screen  to ek1
                       if lastkey()=27
                          set dele off
                          exit
                       endif
               ko0=val(subs(data0,1,2))
               ds0=sch0
               open_dpart()
               open_kpart()
               open_obap(loc0:=66)
             do case
                case ll2='п'
                     set order to 1
                case ll2='н'
                     set order to 3
             endcase
               find '&sch0'
                    if .not. found()
                      @ 23+ml0,15 say '       Тази ▒ме▓ка н┐ма анали▓и╖ни па░▓иди !       '
                        i0=inkey(0)
                      @ 23+ml0,15 say space(51)
                      loop
                    else
                      restore screen  from ek1
                    endif
                    b0=0
                    izrab()
                       if ekpr0=2
                           b1=54
   @ 11,20 say 'В║веде▓е б░о┐ на ░едове▓е на ▒▓░ани╢а' get b1 pict "999"
   chet()
                           set marg to 2
                       endif


 ? '                       КОЛИЧЕСВА ЗА ЗАЯВКА ПО '+ sch0+' KЪМ '+data0
 ? 'П-ДА       HАИМЕHОВАHИЕ           М-KА   HАЛИЧHОСТИ   СР.МЕС.ПРД.      ЗАЯВКИ'
 ?
                     do while  subs(part,1,3)=sch0
                            if .not. pt1=0
                              if   val(substr(part,4,4))<pt1 .or. val(substr(part,4,4))>pt2
                                 if .not. eof()
                                    skip
                                    loop
                                 else
                                     exit
                                 endif
                              endif
                            endif
                        store 0 to kolk1,kkol1
                        part1=substr(part,4,4)
                        dp0=sch0+subs(part,4,4)
                        name1=subs(name,1,30)
                        mk1=mk
                        kkol1=kkol
                        sele 5
                        find '&dp0'
                        kolk1=round(kol/ko0,j3)
                     sele 6
   if 0 < round(kolk1-kkol1,j3)
 ? part1+' '+name1+' '+mk1+' '+str(kkol1,j2,j3)+' '+str(kolk1,j2,j3)+' '+str(kolk1-kkol1,j2,j3)
               spri()
   endif
               if .not. eof()
                 skip
              else
                 exit
              endif
                     enddo
         pech()
           enddo
                       return


        **********************Bankovi operacii********************
                               proc banko
           clear gets
           mat0='▒▓░. м-ли '
           kol0=0
           kur0=1.95583
           sch1='503'
           part1=1
           sch0='   '
           part0=0
           ramka()
           open_obve(loc0:=12)
           open_obap(loc0:=12)
      do while .t.
           @  3,30 say 'По БАHKА'
           @  3,40 get sch1 pict "999"
           @  3,45 get part1 pict "9999"
          chet()
           set confirm off
           part10=sch1+str(part1,4)
           open_obap(loc0:=12)
           find "&part10"
              if .not. found()
                  @  8,28 say 'H┐м┐ па░▓ида ▒ ▓ози номе░'
                  inkey(3)
                  @  8,28 say '                         '
                  loop
              endif
              if lastkey()=27
                 restore screen
                 set cent off
                 return
              endif
         if  found()
           nam0=name
           mk0=mk
           kkol0=kkol
           ksal0=ksal
           @  5,22 say nam0
         else
           @  8,28 say 'H┐м┐ па░▓ида ▒ ▓ози номе░'
              inkey(3)
           @  8,28 say '                         '
              loop
         endif
              if lastkey()=13
                 exit
              endif
      enddo
          open_arhi(loc0:=11)
          open_dobo(loc0:=11)
          open_kobo(loc0:=11)
          open_dpar(loc0:=11)
          open_kpar(loc0:=11)
          open_obap(loc0:=82)
          open_bank(loc0:=82)
          set cent off
          set filter to subs(datb,4,3)+subs(datb,9,2)=data0
             do case
                case subs(bf00,5,4)='RZBB'
                      go bott
                      gb0='bof()'
                      sk0=-1
                case subs(bf00,5,4)='UBBS'.or.subs(bf00,5,4)='BUIN'
                      go top
                      gb0='eof()'
                      sk0=1
             endcase
   do while .not. &gb0
        store iban to iban0
        store subs(datb,1,6)+subs(datb,9,2) to data1
        store reas to ra0
        store reas1 to ra1
        rupper()

        if 0 < val(dt)
               store val(dt) to sto0
          if .not.empty(iban0) &&  prwerka za bankowa smetka
               do case
                  case 0<at('NBISERA',reas0)
                      sch0='411'
                      part0='   1'
                      nam0=subs(reas1,1,31)+' '
                  other
                    sele 6
                    locate for trim(iban)=trim(iban0)
                    if found()      &&   ako ya nameri
                         sch0=subs(part,1,3)
                         part0=subs(part,4,4)
                         nam0='о▓ '+subs(name,1,28)+' '
                    else            &&  ako ne ya nameri
                         sch0='411'
                         part0='9999'
                         nam0='??1 '+subs(reas0,1,27)+' '
                    endif
               endcase

          else                &&  bez bankowa smetka
       do case
          case 0<at('501',reas0)
                 sch0='501'
                 nam0='о▓ ка▒а в банка'+space(17)
          case 0<at('INTEREST',reas0).or.0<at('ли╡ва',reas0).or.;
               (empt(reas0).and.empty(reas10)).or.0<at('▓ак▒и по паке▓',reas0)
                 sch0='721'
                 nam0='ли╡ва'+space(27)
          case 0<at('POS ACQ',reas0).or.0<at('пла╣ане (по▒)',reas0)
                 sch0='411'
                 part0='   9'
                 nam0='по▒▓е░минал'+space(21)
          other
                 sch0='501'
                 nam0='??2 '+subs(reas0,1,27)+' '
       endcase

          endif               &&  kray bez bankowa smetka
               sele 2
               appe blank
               rec_lock()
               repl nom with str(nom0,4),sch with sch1, nvo with '   0',;
               dsto with sto0,data with data0
               sele 4
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch1+str(part1,4),;
               mk with mk0, dast with sto0,data with data0
               sele 3
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch0,nvo with '   0',;
               ksto with sto0, data with data0
              if sch0='411'.or.sch0='453'
               sele 5
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch0+part0,;
               mk with 'лв', kast with sto0,data with data0
              endif

        else            && RAZHOOOOOOOOOOOOOOOOOOOOOOOOOOOD     bank

               if  val(dt) < 0
                  store abs(val(dt)) to sto0
               else
                  store val(kt) to sto0
               endif
          if .not.empty(iban0) &&  prowerka za bankowa smetka
                  do case
                  case 0<at('BISERACOMM',reas0).or.0<at('COMMVIS POS',reas0).or.0<at('Так▒а',reas0).or.(sto0<2.50)
                      sch0='601'
                      part0='   1'
                      nam0='б. ▓ак▒а'+space(24)
                  case 0<at('ДОО',reas0).or.0<at('ДОО',reas1)  // .or.0<at('ДОО',reas1)
                      sch0='455'
                        if  0<at('11',reas0).or.0<at('11',reas1).or.0<at('СОЛ',reas0).or.0<at('СОЛ',reas1)
                            part0='  11'
                            nam0='11 доо ▒ол            '+space(10)
                        else
                            part0='  13'
                            nam0='13 доо                '+space(10)
                        endif
                  case 0<at('ДЗПО',reas0).or.0<at('ДЗПО',reas1)
                      sch0='455'
                        if  0<at('30',reas0).or.0<at('30',reas1).or.0<at('СОЛ',reas0).or.0<at('СОЛ',reas1)
                            part0='  30'
                            nam0='30 дзпо ▒ол           '+space(10)
                        else
                            part0='  31'
                            nam0='31 дзпо               '+space(10)
                        endif
                  case  0<at('HЗОК',reas0).or.0<at('HЗОК',reas1)
                      sch0='455'
                        if  0<at('50',reas0).or.0<at('50',reas1).or.0<at('СОЛ',reas0).or.0<at('СОЛ',reas1)
                            part0='  50'
                            nam0='50 нзок ▒ол           '+space(10)
                        else
                            part0='  51'
                            nam0='51 нзок               '+space(10)
                        endif
                  case 0<at('51',reas0).or.0<at('51',reas1).or.0<at('HЗОК',reas1)
                      sch0='455'
                      part0='  51'
                      nam0='51 нзок               '+space(10)
                  case 0<at('94',reas0).or.0<at('94',reas1).or.0<at('ДАHЪЦИ',reas0).or.0<at('ДАHЪЦИ',reas1)
                      sch0='453'
                      part0='   9'
                      nam0='ДАHЪЦИ                '+space(10)
                  other
                     sele 6
                     locate for trim(iban)=trim(iban0)
                     if found()      &&   ako ya nameri
                        sch0=subs(part,1,3)
                        part0=subs(part,4,4)
                        nam0=subs(reas10,1,31)+' '
                     else            &&  ako ne ya nameri
                        sch0='401'
                        part0='9999'
                        nam0='??3 '+subs(reas0,1,27)+' '
                     endif
               endcase
          else                &&  bez bankowa smetka

       do case

          case 0<at('вно▒ка',reas0).or.0<at('вно▒ка',reas10);
              .or.(0<at('A5200049',reas10).and.100<sto0).or.;
               0<at('▓еглен',reas0).or.0<at('501',reas10).or.0<at('7711046790',reas10)
                 sch0='501'
                 nam0='о▓ банка в ка▒а '+space(16)
          case 0<at('коми▒ионна',reas0).or.0<at('▓ак▒а',reas0).or.0<at('MONT',reas0);
               .or.0<at('POS',reas0).or.0<at('BISERACOMM',reas0);
               .or.(empt(reas0).and.empty(reas10));
               .or.0<at('деби▓на ли╡ва',reas0)
                 sch0='602'
                 part0='   1'
                 nam0='б. ▓ак▒а       '+space(17)
          other
                 sch0='501'
                 nam0='??4 '+subs(reas0,1,27)+' '
       endcase

          endif               &&  kray bez bankowa smetka

               sele 2
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch0, nvo with '   0',;
               dsto with sto0,data with data0
              if sch0='401'.or.sch0='453'.or.sch0='454'.or.sch0='455'.or.sch0='504'.or.sch0='602'
               sele 4
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch0+part0,;
               mk with 'лв', dast with sto0,data with data0
              endif
               sele 3
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch1,nvo with '   0',;
               ksto with sto0, data with data0
               sele 5
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch1+str(part1,4),;
               mk with 'лв', kast with sto0,data with data0


        endif           && proverka za prihod razhod
               dok0=nam0+data1
               open_arhi(loc0:=11)
               appe blank
               rec_lock()
               repl nom with str(nom0,4),papk with '  0',dok with dok0,;
               data with data0,vek with subs(vek0,1,2)
               if subs(dok0,1,2)='??'
                   @ 23+ml0,18 say str(nom0,4)+' '+dok0
                   inkey(1)
               endif
                   @ 23+ml0,15 say '     П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е........     '
               nom0=nom0+1
         sele 13
      if  .not. &gb0
         skip sk0
      else
         exit
      endif
   enddo
                               return
  ************************ Ot glawni na malki **************************
                             proc rupper
   store '' to reas0, reas10
       for i = 1 to len(ra0)
          if 127 < asc(subs(ra0,i,1)) .and. asc(subs(ra0,i,1)) < 160
             reas0=reas0+chr(asc(subs(ra0,i,1))+32)
          else
             reas0=reas0+subs(ra0,i,1)
          endif
       next

       for i = 1 to len(ra1)
          if 127 < asc(subs(ra1,i,1)) .and. asc(subs(ra1,i,1)) < 160
             reas10=reas10+chr(asc(subs(ra1,i,1))+32)
          else
             reas10=reas10+subs(ra1,i,1)
          endif
       next
                             return



      ***********   Из░або▓ване обо░о▓на ведомо▒▓ на ▒ин▓. ▒ме▓ки ***********
                           proc oborot

      *     us_1=subs(us_1,1,7)
      *   if dirchange("&us_1")=0    &&  , makedir("\DISC"),dirchange("&ac_0"))
      *      us_1=us_1+'\'
      *       sele 7
      *       filee='&us_1'+'obve'
      *       file_lock ()
      *       sum ndso,nkso to l1,l2
      *       sele 2
      *       filee='&us_1'+'dobo'
      *       file_lock ()
      *       sum dsto to l3
      *       sele 3
      *       filee='&us_1'+'kobo'
      *       file_lock ()
      *       sum ksto to sald1
      *       red0=space(20)+'Об╣о на '+us_1+space(4)+str(l1*(-1),j0,j1)+' '+str(l2*(-1),j0,j1);
      *       +' '+str(l3*(-1),j0,j1)+' '+str(sald1*(-1),j0,j1)
      *     endif
      *     if len(us_1)=7
      *         us_1=us_1+'\'
      *     endif
      *     dirchange("&ac_0")
         set key -2 to
         set dele on
         @ 23+ml0,15 say space(51)
         raboti()
         open_dobo(loc0:=42)
         set order to 2
         total on sch to dobot fields dsto
         podr_0=16
         save all like podr_0 to podred
         podred()
         open_kobo(loc0:=41)
         set order to 2
         total on sch to kobot  fields ksto
         podr_0=16
         save all like podr_0 to podred
         podred()
         open_kobot()
         open_dobot()
         open_obve(loc0:=30)
                     store 0 to dsto2,ksto2,ksto3
                     do while .not. eof()
                        store 0 to ndso1,nkso1,dsto1,ksto1,kdso1,kkso1
                        sch0=sch
                        ndso1=ndso
                        nkso1=nkso
                        name0=name
                        t0=t
                        ds0=sch0
                        sele 2
                        go top
                        find '&ds0'
                        dsto1=dsto
                        sele 3
                        go top
                        find '&ds0'
                        ksto1=ksto
                        sele 7
                           rec_lock()
                           if t0='а'
                             kdso1=ndso1+dsto1-ksto1
                             repl kdso with kdso1,kkso with 0
                           endif
                           if t0='п'
                             kkso1=nkso1+ksto1-dsto1
                             repl kkso with kkso1,kdso with 0
                           endif
                           if t0=' '
                                  kkso1=nkso1+ksto1   &&-dsto1
                                  kdso1=ndso1+dsto1   &&-ksto1
                              if kdso1>kkso1
                                 kdso1=kdso1-kkso1
                                 repl kdso with kdso1,kkso with 0
                              else
                                 kkso1=kkso1-kdso1
                                 repl kkso with kkso1,kdso with 0
                              endif
                           endif
                           rec_unlock()
              if .not. eof()
                 skip
              else
                 exit
              endif
                     enddo
         @ 23+ml0,15 say '              П░ог░ама▓а п░икл╛╖и                  '
         @ 23+ml0,15 say '      F3 - из░або▓ване на обо░о▓на ведомо▒▓        '
         set dele off
         set key -2 to oborot
                           return

      ****************  Изли▒▓ва н│леви па░▓иди  *******************
                           proc  ddok1
             do case
                case lastkey()=-2
                case lastkey()=-3
                clea gets
                l2='д'
                @ 11,15 say space(55)
                @ 11,24 say 'Желае▓е ли ▓┐╡оно▓о из▓░иване :' get l3 valid l3='д'.or.l3='н'
                chet()
               @  8,21 say 'В║веде▓е ╕и┤║░а на желана▓а ▒ме▓ка :' get sch0
               chet()
                case lastkey()=-4
                     l1='д' ; sch0='501'
                case lastkey()=-6
              save screen ; @ 11, 5,13,74 box ram1 ; @ 12, 6 clea to 12,73
     @ 12,12 say 'П░о╢ед│░а▓а за Д-▓ни об-▓и 304 и K-▓ни об-▓и 702 за░едена '
                  l1='д' ; inkey(2) ; restore screen
                case lastkey()=9
              save screen
     ! cmd /c 'if not exist &us_0\IZHO\nul md &us_0\IZHO'  > aaa.txt
     ! cmd /c 'copy &us_0\*.* &us_0\IZHO'  > aaa.txt
     set cursor on
     @ 11, 5,13,74 box ram1 ; @ 12, 6 clea to 12,73
     @ 12,12 say '             Копи░ане на папка▓а в IZHO                   '
                eras aaa.txt ; inkey(2) ; restore screen
             endcase
                           return


    *********************** Funkciqta pusk i spira dialoga na zan ******************
                                    func zanvi
! cmd /c echo '%UserProfile:~0,8%\Public\Documents\zvprt50\Zan Image Printer (BW)' > aaa.txt
    ssss=subs(memoline(memoread("aaa.txt"),60,1),2,56)
         do case
           case zan0='vkl'
            * memowrit('aaa.bat',' cmd /c xcopy /y C:\DISC\HLP\ZAN\VKL\*.ini "&ssss"')
              memowrit('aaa.bat',' cmd /c xcopy /y &disc_1\ZAN\VKL\*.ini "&ssss"')
             ! cmd /c aaa.bat > aaa.txt
          case zan0='izkl'
            *  memowrit('aaa.bat',' cmd /c xcopy /y C:\DISC\HLP\ZAN\IZKL\*.ini "&ssss"')
               memowrit('aaa.bat',' cmd /c xcopy /y &disc_1\ZAN\IZKL\*.ini "&ssss"')
              ! cmd /c aaa.bat > aaa.txt
       endcase
         *     @  0,15  say '     ' ; inkey(2) //kkk
       set cursor on ; inkey(6) ; eras aaa.txt ; inkey(2) ; eras aaa.bat
                                       return

       ***************  Transform ot asci->ansi     ****************
                            func asci
      * asci-> 128 - 191  ansi-> 192 - 255
     do case
        case as0=1  &&  l0=1



         store ''   to asci1
        for i0 = 1 to len(asci0)                  &&   asci -> ansi
           if 127 < asc(subs(asci0,i0,1)) .and. asc(subs(asci0,i0,1)) < 192
              asci1=asci1+chr(asc(subs(asci0,i0,1))+64)
           else
              asci1=asci1+subs(asci0,i0,1)
           endif
        next
        case as0=2  && l0=2
         store ''   to asci1
         for i0= 1 to len(asci0)                  &&   ansi->asci
            if 191 < asc(subs(asci0,i0,1)) .and. asc(subs(asci0,i0,1)) < 256
               asci1=asci1+chr(asc(subs(asci0,i0,1))-64)
            else
               asci1=asci1+subs(asci0,i0,1)
            endif
          next
        endcase
                            return    // asci



      ************ По▓░еби▓ел▒ка ┤│нк╢и┐ **********
                function pfunk4
                parameters mode0,fld0
                private fld0
                cur0=fiel[fld0]
                 do case
                   case mode0 < 4
                         if dele()
                         @ 23+ml0,15 say '          Запи▒║▓ е ма░ки░ан за из▓░иване          '
                           i0=inkey(1)
                         endif
                               if l0='д'
                                     kast0=dast
                            rec_lock()
                                     set rela to subs(part,1,3)+data+nom into dobo
                            rec_unlock()
                               else
                                     kast0=kast
                            rec_lock()
                                     set rela to subs(part,1,3)+data+nom into kobo
                            rec_unlock()
                               endif
                  if 0<>kol.and.0<>zena
                    if .not.(round(kol*zena,j1)=kast0)
                         @ 23+ml0,15 say ' Kоли╖е▒▓во по ╢ена <> о▓ ▒▓-▓а  ░-ка='+str(round(kol*zena,j1)-kast0)
                           i0=inkey(1)
                    endif
                  endif
                set rela to part into obap
             if empty(obap->name)
       @ 19,3  say ' Па░▓ида▓а не е в ▒пи▒║ка. Добаве▓е ┐ п░ез ко░ек╢и┐ на ▒╖е▓оводна опе░а╢и┐' color 'R+/B'
             else
       @ 19,4  say 'Hали╖ни коли╖е▒▓ва:  '+str(obap->kkol,j2,j3)+'  '+obap->name+'   '
             endif 
                set rela to subs(data,4,2)+data+nom into arhi
         @ 21, 3 say 'Рег.:'+subs(arhi->vid,6,35)+' '+arhi->dr+'/'+arhi->sd+'/'+arhi->vd+' '+subs(arhi->dok,1,25)
       @ 23+ml0,15 say '      Избо░ на поле-колона ▒▓░елки - '+'-'+chr(26)+' '+chr(25)+' '+chr(24)+' '+chr(27)+'-     '
                        return 1
                   case lastkey()=27
                         return 0
                   case lastkey()=13.and.(.not.(eof().or.bof()))
                       if .not.bof().or.eof()
                         set cursor on
                         kol0=kol
                         @  6+ml0,15 say '             В║веде▓е желани▓е п░омени             '
                         @ row(),col() get &cur0
                         chet()
                       endif
                            rec_lock()
                            if .not. empty(obap->name)
                            if l6='д'
                               if l0='д'
                                     repl dast with round(kol*zena,2)
                               else
                                     repl kast with round(kol*zena,2)
                               endif
                            else
                            endif
                            rec_unlock()
                            sele 6
                            rec_lock()
            if l0='д'
                repl obap->kkol with obap->kkol+kol0-dpar->kol
            else
                repl obap->kkol with obap->kkol+kol0-kpar->kol
            endif
                            rec_unlock()
                            if l0='д'
                                sele 4
                            else
                                sele 5
                            endif
                            re0=recno()
                               if l0='д'
                                     sum  dast to kast0  for .not.dele()
                               else
                                     sum  kast to kast0  for .not. dele()
                               endif
                               @ 21,55 say 'ОЩА СУМА ' +str(kast0,12,2)
                            else
                            endif
                            go re0
                         set cursor off
                         @ 19,4  say 'Hали╖ни коли╖е▒▓ва:  '+str(obap->kkol,j2,j3)+'  '+obap->name
                         @ 23+ml0,17 say '    Избо░ на поле-колона ▒▓░елки - '+'-'+chr(26)+' '+chr(25)+' '+chr(24)+' '+chr(27)+'-   '
                         return 1
                   case lastkey()=172.or.lastkey()=162
                         do case
                           case lastkey()=172  &&  м
                         @ 23+ml0,15 say '         Запи▒║▓ е ма░ки░ан за из▓░иване           '
                                 del()
                           case lastkey()=162  &&  в
                           @ 23+ml0,15 say '            Запи▒║▓ е в║з▒▓ановен                '
                                 reca()
                         endcase
                                 i0=inkey(1)
                   case lastkey()=28
                      if l6='н'
                         l6='д'
                          @ 21,14 say ' С  УМHОЖЕHИE'
                      return
                          l6='н'
                          @ 21,14 say 'БЕЗ УМHОЖЕHИE'
                      endif
                   otherwise
                         return 1
                 endcase
                return 1  // pfunk4
