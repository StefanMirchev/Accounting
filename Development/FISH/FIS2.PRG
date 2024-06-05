   *FIS2.PRG   gragd line promime slbel smetka smettd tdog uvedom zapov

                      store 0 to v2
                      @ 6,23,18,56 box ram1
                      @ 7,24 clea to 17,55
                      @ 7,31 say 'СУМИ ЗА ПЛАЩАHЕ'
                      @ 8,30 say '-----------------'
                      @ 10,30 prompt '1. Аван▒и'
                      @ 12,30 prompt '2. О▒▓а▓║к за пол│╖ававе'
                      @ 14,30 prompt '3. Заглавна ▒▓░ани╢а'
                      @ 17,30 prompt 'ESC - Из╡од о▓ мен╛'
                      save screen
                          menu to v2
                       if lastkey()=27
                          return
                       endif
        tt0='20'
        do case
           case v2=1.or.v2=2
    ramka()
    store 0 to nom1,nom2
           if v2=1
            @ 2,25 say '  А В А H С  З А   МЕСЕЦ '+data0
            @ 3,24 say '----------------------------------'
            l0='н'
            @  9,25 say 'Само ▒пи▒║к на пе░▒онала д/н ' get l0 valid l0='д'.or.l0='н'
           else
            @ 2,25 say 'СУМИ ЗА ИЗПЛАЩАHЕ ЗА МЕСЕЦ '+data0
            @ 3,24 say '----------------------------------'
           endif
            @ 11,32 say 'О▓ номе░ :' get nom1 pict '999999'
            @ 13,32 say 'До номе░ :' get nom2 pict '999999'
            read
                       if lastkey()=27.or.nom1=0
                           return
                       endif
              sele 1
                use spis inde nomi
              sele 2
                use mese inde sdni
                vd0=vek0+data0
          if v2=1
             find "308&vd0"
          else
             find " 99&vd0"
          endif
    izrab()
    b0=0
    b1=55
 if v2=1
  ? space(20)+'А  В   А   H   С  ЗА МЕСЕЦ '+data0
 else
  ? space(20)+'СУМИ ЗА ИЗПЛАЩАHЕ ЗА МЕСЕЦ '+data0
 endif
  ? space(19)+'----------------------------------'
  ? repli('-',73)
    if v2=1
  ? '  ТАБ.N    СОБСТВЕHО БАЩИHО И ФАМИЛHО ИМЕ       А В А H С          ПОДПИС'
    else
  ? '  ТАБ.N    СОБСТВЕHО БАЩИHО И ФАМИЛHО ИМЕ    СУМА ЗА ПОЛУЧАВАHЕ    ПОДПИС'
    endif
  ? repli('-',73)
    store 0 to suma0,b0,b3
    b1=48
   if v2=1
    sch1='308'
   else
    sch1=' 99'
   endif
   do while sch=sch1
         if val(nom)<nom1 .or. val(nom)>nom2
                         if .not.eof()
                             skip
                             loop
                         else
                           exit
                         endif
         endif
      nom0=nom
      sele 1
        find "&nom0"
        name0=name
        egn0=egn
      sele 2
   if v2=1
     if .not. stoi=0.and.l0='н'
       ? ' '+nom+'    '+name0+'        '+str(stoi,10,2)
       spri()
       ?
     else
       ? ' '+nom+'    '+name0
       spri()
       ?
     endif
   else
    if .not. suma=0
     * ? ' '+nom+'    '+name0+'        '+str(suma,10,2)  && п░и молба за ДОО да ▒е ▒п░е
       ? '          '+name0+'             '+egn0   && молба зо ДОО
      spri()
   * ?                       && п░и молба за ДОО да ▒е ▒п░е
    endif
   endif
     if v2=1
       suma0=suma0+stoi
     else
       suma0=suma0+suma
     endif
      spri()
                                 if b0=0
      if sch=sch1
  ? repli('-',73)
    if v2=1
  ? '  ТАБ.N    СОБСТВЕHО БАЩИHО И ФАМИЛHО ИМЕ       А В А H С          ПОДПИС'
    else
  ? '  ТАБ.N    СОБСТВЕHО БАЩИHО И ФАМИЛHО ИМЕ    СУМА ЗА ПОЛУЧАВАHЕ    ПОДПИС'
    endif
  ? repli('-',73)
     endif
                                 endif

                         if .not.eof()
                             skip
                         else
                           return
                         endif
   enddo
  ? repli('-',73)
     if l0='н'
  ? '            ВСИЧKО СУМА ЗА ИЗПЛАЩАHЕ'+space(11)+str(suma0,12,2)
     else
  ? '            ВСИЧKО СУМА ЗА ИЗПЛАЩАHЕ'+space(11)+str(suma0,12,2)
     endif
       pech()
           case v2=3
             ramka()
            @ 2,25 say ' З А Г Л А В H А  С Т Р А H И Ц А '
            @ 3,24 say '-----------------------------------'
       izrab()
       ?
       ?
       ? ''+fir
       ? '----------------------------------------'
         b0=0
         do while b0<11
          ?
          b0=b0+1
         enddo
       ? space(10)+'УТВЪРДИЛ:.........'
         b0=0
         do while b0<13
          ?
          b0=b0+1
         enddo
       ? space(20)+'ВЕДОМОСТ ЗА ЗАПЛАТИ'
         b0=0
         do while b0<4
          ?
          b0=b0+1
         enddo
       ? space(25)+'ЗА МЕСЕЦ '+data0
         b0=0
         do while b0<23
          ?
          b0=b0+1
         enddo
       ? space(5)+ 'ИЗГОТВИЛ:....  ГЛ.СЧЕТОВОДИТЕЛ:....'
        pech()
        endcase

          ***************  Изли▒▓ване на ТРУДОВ ДОГОВОР *************
                               proc tdog
          nom0=str(nom0,6)
          sele 2
          use mese inde sdni
          vd0=vek0+data0
          vd0='  7'+vek0+data0+nom0
          find "&vd0"
                if found()
                   pnv0=suma
                endif
          sele 1
          set cent on
          use spis inde nomi
          set cons on
          find "&nom0"
            do case
               case vod=1
                    kat0=' ТРЕТА'
               case vod=2
                    kat0=' ПЪРВА'
               case vod=3
                    kat0=' ВТОРА'
               other
                    kat0='      '
            endcase
          izrab()
       set marg to 7
      for i0 = 1 to 7
      ?
      next
   * ? space(42-len(trim(ltrim(fir))))+trim(ltrim(fir))
   * ? space(45-len(trim(ltrim(adr00))))+trim(ltrim(adr00))
     ? space(12)+fir
     ? space(15)+adr00
     ? '     '+repl('-',58)
     ?
     ?
     ?
     ? '                        ТРУДОВ ДОГОВОР'+nom0
     ?
     ?
     ?
     ? '          Дне▒ '+dtoc(datn)+' г. в г░.  '+trim(ltrim(grad))+ ' на о▒нование'
     ? '   '+trim(chln)+' о▓ Kодек▒а на ▓░│да ▒е ▒кл╛╖и на▒▓о┐╣и┐▓'
     ? '   ▓░│дов догово░ межд│ ┤и░ма▓а п░ед▒▓авл┐вана о▓ п░езиден▓а й'
     ? '   '+trim(ltrim(nam))+' ЕГH '+egn00+'   и '
     ? '   '+trim(name)+'  на░и╖ана ░або▓ник'
     ? '   ▒ ад░е▒,  '+trim(nasm)+' '+trim(adr)+' обла▒▓ '+trim(obl)
     ? '   EГH  '+egn+ ', л.к. Х '+lkn
     ? '   издаден на  '+dtoc(lkd)+' год. в г░. '+trim(izd)+'.'
     ? '   ▒ об░азование :  '+trim(ltrim(obra))+', ▒ ▓░│дов ▒▓аж: '+str(gg,2)+'г,'+str(mm,2)+'м,'+str(dd,2)+'дни'
     ? '   за ▒ледно▓о:'
     ? '   1. П░едп░и┐▓ие▓о в║злага и ░або▓ника п░иема да изп║лн┐ва в:'
     ? '              '+fir
     ? '   дл║жно▒▓▓а:  '+rabo
     ? '   ка▓его░и┐ пе░▒онал'+kat0+', ▒ ╕и┤║░ по HKП '+nkp+'.'
           if osnn='01'
     ? '   за    неоп░еделено в░еме '
           else
     ? '   за пе░иода о▓ '+dtoc(datp)+' до '+dtoc(srok)
           endif
         if pnv0 < 8
     ? '   за    неп║лно ░або▓но в░еме, '+str(pnv0,1)+' ╖а▒а.'
         else
     ? '   за    п║лно ░або▓но в░еме, '+str(pnv0,1)+' ╖а▒а.'
         endif
     ? '   ▒ о▒новно ме▒е╖но ▓░│дово в║знаг░аждение   '+str(vazn,8,2)+' лв.'
     ? '   2. Доп║лни▓елно в║знаг░аждание за п░од║лжи▓елна ░або▓а в ░азме░'
     ? '   на 0.6 п░о╢ен▓а за в▒┐ка п░о▒л│жена година.'
     ? '   3. В║знаг░аждение▓о ▒е изпла╣а еднок░а▓но в▒еки ме▒е╢.'
     ? '   4. С о▒новен пла▓ен годи╕ен о▓п│▒к в ░азме░ на 20 ░або▓ни дни.'
     ? '   5. Рабо▓ник║▓ ▒е зад║лжава да по▒▓║пи на ░або▓а в ▓░идневен ▒░ок'
     ? '   о▓ подпи▒ване на догово░а'
          if  chln='╖л.70'
     ? '   6. С░ок║▓ за за изпи▓ване e 6 ме▒е╢а'
          else
     ? '   6. С░ок║▓ за п░едизве▒▓ие▓о п░и п░ек░а▓┐ване на догово░║▓ ▒е'
     ? '   оп░едел┐ на  ЕДИH  ме▒е╢'
          endif
  *  ? '   7. За не│░едени▓е в на▒▓о┐╣и┐ ▓░│дов догов░ │▒лови┐ ▒е п░илага▓'
  *  ? '   ░азпо░едби▓е на Kодек▒а на ▓░│да, но░ма▓ивни▓е ак▓ове п░и п░илага-'
  *  ? '   не▓о м│, колек▓ивни┐ ▓░│дов догово░, п░авилника за в║▓░е╕ни┐ ▓░│дов'
  *  ? '   ░ед на ┤и░ма▓а, дл║жно▒▓на▓а ╡а░ак▓е░и▒▓ика и в║▓░е╕ни▓е п░авила за'
  *  ? '   ░або▓на запла▓а.'
  *  ? '     Hа▒▓о┐╣и┐▓ догово░ ▒е ▒║▒▓ави в два екземпл┐░а, по един за в▒┐ка'
  *  ? '   ▒▓░ана.'
     ?
     ? '           Подпи▒али: '
     ?
     ?
     ?
     ? ' Рабо▓ник:...............              Р║ководи▓ел...............'
  *  ? '         /'+ime+ ' '+family+'/'  &&  +space(9+len(name)-len(trim(name)))+'/'+ltrim(trim(nam))+'/'
     ?
     ?
     ? '     Подпи▒ан о▓ две▓е ▒▓░ани екземпл┐░ на на▒▓о┐╣и┐ ▓░│дов догово░ и'
     ? '  заве░ено │ведомление о▓ ТП на HОИ г░. Б│░га▒ ▒е в░║╖и на ░або▓ника'
     ? '  '+dtoc(datp)+' год.'
     ?
     ? '     Рабо▓ник║▓ по▒▓║пил на ░або▓а на  '+dtoc(datp)+' год.'
     ?
     ? '                                    Подпи▒ на ░або▓ника:..............'
      for i0 = 1 to 13
      ?
      next
    pech()

          set marg to 9
          set prin on
          set prin to s0002

      for i0 = 1 to 2
      ?
      next
      ? '                                             П░иложение No:4'
      ?
      ?
      ? '         '+fir
      ? '  ----------------------------------------------------------'
      ?
      ?
      ? '                       СЛУЖЕБHА БЕЛЕЖКА'
      ? '                          No '+ltrim(nom0)+'/'+str(year(datn),4)
      ?
      ?
      ? '                                        ДО РЪКОВОДИТЕЛЯ'
      ? '                                        HА '+obek0
      ?
      ?
      ? '         Hа г-н/г-жа '+ name
      ? '   п░о┤е▒и┐ '+trim(rabo)+' е п░оведен на╖ален ин▒▓░│к▓аж по'
      ? '   безопа▒но▒▓, ╡игиена на ▓░│да и п░о▓ивопожа░на o╡░┐на'
      ? '   на '+dtoc(datp)+'г.'
      ? '        Сл│жи▓ел┐▓ ▒е ┐ви и изд║░жа │▒пе╕но изпи▓ за п░ове░ка'
      ? '   на знани┐▓а по безопа▒ни▓е ме▓оди на ░або▓а.'
      ?
      ?
      ?
      ?
      ? '          П░овел на╖ални┐ ин▒▓░│к▓аж:....................'
      ? space(27)+'/'+ltrim(trim(nam))+'/ РЪКОВОДИТЕЛ'
      ?
      ?
      ?
      ? '          Ин▒▓░│к▓и░ано ли╢е.............................'
      ? space(27)+'/'+trim(ime)+ ' '+trim(family)+'/ '+rabo
      ?



      for i0 = 1 to 2
      ?
      next

    set marg to 7
    ? space(15)+ '            УВЕДОМЛЕHИЕ'
    ? space(15)+'   по ╖л.62, ал.2 о▓ Kодек▒а на ▓░│да'  &&  П░иложение 1
    ? 'ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДП'
    ? '╙ Уведомление - HОИ - 2003 г.    ╙'
    ? 'АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩ'
    ? '1.Kод ко░ек╢и┐: ' + kd +space(17)+'             2. Тип на док│мен▓а ' + pd
    ? 'Данни за ░або▓ода▓ел┐:                         3. БУЛСТАТ: ' + buls
    ?  ltrim(fir)
    ? '____________________________________________________________________'
    ? 'Данни за нае▓о▓о ли╢е                        4. ЕГH / ЛHЧ:' + egn
    ? '5. Име      ' + ime
    ? '6. П░езиме  ' + prime
    ? '7. Фамили┐  ' + family
    ? '____________________________________________________________________'
    ? 'Данни за ▓░│дови┐ догово░:                8. О▒нование на догово░а ' + STR (val(osnn),1)
    ? '9.Х на догово░а  ' + nom + '            10.Да▓а на ▒кл╛╖ване:  ' + dtoc(datn)
    ? '11.О▒новна запла▓а по догово░: ' + STR (vazn,7.2) + ' лв.'
    ? '12.С░ок на догово░а    ' + dtoc(srok)
    ? '13.Дл║жно▒▓но наименование '
    ? rabo
    ? '14.Kод по HKПД: ' + nkp
    ? '15. Икономи╖е▒ка дейно▒▓, в ко┐▓о е зае▓о ли╢е▓о '
    sele 7
    use &disc_1\fish\fhlp
    locate for subs(nam,70,4)='&nkid0'.and.kod='400'
    if found()
    ? trim(subs(nam,1,69))
    endif
     sele 1
    ? '16.Kод по HKИД: ' + nkid
    ? '17. Да▓а на п░ек░а▓┐ване ' + dtoc(datu)
    ?
    ?
    ?
    ?
    ? 'Да▓а '+dtoc(datp)+'           Подпи▒ на ░або▓ода▓ел┐:..................'
    ? space(67)+' пе╖а▓'


          set prin off
          set cons off
          set marg to
          nom0=val(nom0)
          set cent on
          memowrit('s0099.prn', memoread('s0001.prn');
          +memoread('s0001.prn')+memoread('s0002.prn'))
                               return
          ************  Изли▒▓ване на ЗАПОВЕД ЗА УВОЛHЕHИЕ **********
                               proc zapov
          sele 1
          set cent on
          save screen
          use spis inde nomi
          nom0=str(nom0,6)
          set cons on
          find "&nom0"
          izrab()
       set marg to 7

      for i0 = 1 to 7
      ?
      next
      ? '         '+fir
      ? '  ----------------------------------------------------------'
      ?
      ?
      ?'                      З  А  П  О  В  Е  Д'
      ?
      ?
      ?
      ? space(23+len(nom0)-len(trim(nom0)))+' N '+ltrim(nom0)+'/'+dtoc(datu)+'г. '
      ?
      ?
      ?
      ?'       Hа о▒нование ╖л. '+trim(chlu)+' о▓ Kодек▒а на ▓░│да'
      ?
      ?
      ?'          ПРЕKРАТЯВАМ  ТРУДОВОТО  ПРАВООТHОШЕHИЕ '
      ?
      ?
      ?'  ▒  '+trim(name)+ ' ▒╖и▓ано о▓  '+dtoc(datu)+' г.'
      ?
      ?'  о▓  '+ltrim(trim(fir))+' , ЕГH  '+egn
      ?
      ?'  на дл║жно▒▓:  '+trim(rabo)+'.'
      ?
      ?
      ?'      Kопие о▓ заповед▓а да ▒е в░║╖и на ли╢е▓о.'
      ?
      ?
      ?
      ?'      Подпи▒али:'
      ?
      ?
      ? 'Рабо▓ник:...............        Р║ководи▓ел:.............'
      *
      ? '        /'+trim(ime)+' '+trim(family)+'/'+space(30-len(trim(ime)-trim(family)))+'/'+ltrim(trim(nam))+'/'
      ?
      ?
      ?
      ?'      Да▓а на в░║╖ване на заповед▓а  '+dtoc(datu)+' г.'
      for i0 = 1 to 25
      ?
      next
       pech()
          memowrit('s0099.prn', memoread('s0001.prn')+memoread('s0001.prn'))
          set marg to
          nom0=val(nom0)
          set cent on
                               return
          ************  г░аждан▒ки догово░ *****************
                               proc gragd
          sele 1
          set cent on
          use spis inde nomi
          nom0=str(nom0,6)
          set cons on
          find "&nom0"
          izrab()
       if ekpr0=2
           set marg to 7
           b1=0
       endif
   ?   '       ГРАЖДАHСKИ  ДОГОВОР'
   ?   '                                                                    '
   ?   '                                                                    '
   ?   '    Дне▒ '+dtoc(datn)+'  г. в г░.  '+grad+ ' на о▒нование'
   ?   '╖л.280-292 о▓ ЗЗД ▒е ▒кл╛╖и на▒▓о┐╣и┐▓ догово░ межд│ ┤и░ма▓а        '
   ?   'п░ед▒▓авл┐вана о▓ п░езиден▓а й '+ '    '+ltrim(nam)+' '
   ?   'на░и╖ан за к░а▓ко▒▓ ВЪЗЛОЖИТЕЛ                                      '
   ?   'и   '+trim(name)+' '
   ?   '▒ ад░е▒,  '+trim(nasm)+' '+trim(adr)+' обла▒▓ '+trim(obl)
   ?   'EГH  '+egn+ ', л.к. Х '+lkn
   ?   'издаден на  '+dtoc(lkd)+' год. в г░. '+trim(izd)+'.'
   ?   'на░и╖ан за к░а▓ко▒▓ ИЗПЪЛHИТЕЛ.                                                    '
   ?   '     I. П░едме▓ на догово░а                                         '
   ?   '        Чл.1  С▓░ани▓е ▒е ▒по░аз│м┐╡а за ▒ледно▓о:                  '
   ?   '           ВЪЗЛОЖИТЕЛЯТ в║злага, а ИЗПЪЛHИТЕЛЯТ п░иема да ......    '
   ?   '                                                                    '
   ?   '................................................................    '
   ?   '     II. П░ава и зад║лжени┐ на ВЪЗЛОЖИТЕЛЯ                          '
   ?   '        Чл.2  ВЪЗЛОЖИТЕЛЯ ▒е зад║лжава:                             '
   ?   '             а/ да запла▓и на ИЗПЪЛHИТЕЛЯ в║знаг░аждение в ░азме░   '
   ?   '                                                                    '
   ?   'на ........... лева ▒ловом .......................................  '
   ?   '             б/ ВЪЗЛОЖИТЕЛЯ има п░аво в║в в▒еки момен▓ о▓ изп║лне-  '
   ?   'ние▓о на догово░а да изв║░╕ва п░ове░ка о▓но▒но ка╖е▒▓во▓о, ▒▓ади┐ на'
   ?   'изп║лнение и ▓е╡ни╖е▒ки▓е па░аме▓░и на изв║░╕ена▓а ░або▓а           '
   ?   '             в/ п░и неизп║лнение на пое▓и▓е зад║лжени┐ по ▓ози      '
   ?   'догово░ о▓ ▒▓░ана на ИЗПЪЛHИТЕЛЯ, ВЪЗЛОЖИТЕЛЯ има п░аво да го п░е-  '
   ?   'к░а▓и                                                               '
   ?   '     III. П░ава и зад║лжени┐ на ИЗПЪЛHИТЕЛЯ                         '
   ?   '        Чл.3  ИЗПЪЛHИТЕЛЯ ▒е зад║лжава:                             '
   ?   '             а/ да изв║░╕и ░або▓а▓а по ╖л.1 о▓ на▒▓о┐╣и┐▓ догово░   '
   ?   'ка▓о доб║░ ▒▓опанин и да пази им│╣е▒▓во▓о, кое▓о пол│╖ава в║в       '
   ?   'в░║зка ▒ не┐.                                                       '
   ?   '             б/ИЗПЪЛHИТЕЯТ е им│╣е▒▓венно о▓гово░ен за виновно      '
   ?   'п░и╖инени ╣е▓и на ВЪЗЛОЖИТЕЛЯ                                       '
   ?   '             б/ да изв║░╕и в║зложена▓а ░або▓а в ▒░ок и ка╖е▒▓вено   '
   ?   '             в/ да │ведоми незабавно ВЪЗЛОЖИТЕЛЯ за ░ез│л▓а▓и▓е     '
   ?   'о▓ ░або▓а▓а                                                         '
   ?   '             г/ да изв║░╕и ░або▓о▓а▓а ли╖но                         '
   ?   '             д/ да пол│╖и │гово░ено▓о в Чл.2 о▓ на▒▓о┐╣и┐ догово░   '
   ?   'в║знаг░аждение                                                      '
   ?   '     IV. Доп║лни▓елни ░азпо░едби                                    '
   ?   '        Чл.4  С░ок║▓ за изв║░╕ване на в║зложена▓а ░або▓а е .....    '
   ?   '                                                                    '
   ?   '................................................................    '
   ?   '        Чл.5  О▒иг│░┐ване▓о, за▒▓░а╡овка▓а, как▓о и дан║╖ни▓е за-   '
   ?   'д║лжени┐ на ИЗПЪЛHИТЕЛЯ п░оиз▓и╖а╣и в ░ез│л▓а▓ на ▓ози догово░      '
   ?   '▒а за негова ▒ме▓ка.                                                '
   ?   '        Чл.6 За в▒и╖ки не│░едени ▒л│╖аи по на▒▓о┐╣и┐▓ догово░       '
   ?   'важа▓ ░азпо░едби▓е на Закона за зад║лжени┐▓а и догово░и▓е.          '
   ?   '         Hа▒▓о┐╣и┐▓ догово░ ▒е подпи▒ва в два еднооб░азни екзем-    '
   ?   'пл┐░а по един за в▒┐ка о▓ ▒▓░ани▓е.                                 '
   ?   '                                                                    '
   ?   '                                                                    '
   ?   '       ВЪЗЛОЖИТЕЛ: ...............    ИЗПЪЛHИТЕЛ:.............      '
      spri()
   ? '                          - 2 -                                     '
   ? '                                                                    '
   ? '                                                                    '
   ? '                                                                    '
   ? '                      Д  Е  K  Л  А  Р  А  Ц  И  Я                  '
   ? '                                                                    '
   ? '                                                                    '
   ? '   Подпи▒ани┐▓/а▓а/   '+trim(name)+' ,'
   ? 'за┐в┐вам, ╖е ▒а ми изве▒▓ни │▒лови┐▓а по догово░а, ▒ани▓а░но-╡иги-  '
   ? 'енни▓е изи▒квани┐, кои▓о ▒ледва да ▒пазвам в ░або▓а▓а ми по ▓ози    '
   ? 'догово░. Запозна▓/а/ ▒║м ▒ евен▓│ални▓е ░и▒кове за зд░аве▓о ми,     '
   ? 'за кое▓о б┐╡ ин▒▓░│к▓и░ан/а/ по ▓е╡ника▓а за безопа▒но▒▓.           '
   ? '                                                                    '
   ? '                                                                    '
   ? '   Б│░га▒, '+dtoc(datn)+'  г.'
   ? '                                     ДЕKЛАРАТОР: ............       '
       pech()
          set marg to
          nom0=val(nom0)
          set cent on
          restore screen
                               return



   *************** П░о╢ед│░а за п░ом┐на на име▓о *************************
                           proc  promime

                    save screen
                    set key 28 to
                    set key -1 to
                    set key -2 to
                    set key -3 to
                    set key -4 to
                    set key -5 to
                    set key -6 to
                    set key -31 to
                    set key -32 to
                    set key -35 to
                    set key 28 to
                    set key 172 to
                    set key 162 to
                    clea gets
                    set cons on
                    sele 7
                    use &disc_1\fish\fhlp
                    sele 1
                    use spis inde nomi,namz
                  nom1=str(nom0,6)
                  find '&nom1'
                  set key 28 to helpproba
                    @  6, 2 clea to 21,77
                    @ 22,15 clea to 23,65
                    @  5, 1,20,78 box ram1
                    @ 22,14,24,66 box ram1
                    set cent on
                    @  4,43 get name
                    @  6, 2 say 'ИМЕ' get ime pict  "@S15"
                    @  6,22 say 'ПРЕЗИМЕ' get prime pict  "@S15"
                    @  6,46 say 'ФАМИЛИЯ' get family  pict  "@S15"
                    @  6,70 say 'ИHИЦ.' get inic
                    @  8, 2 say 'ЕГH' get egn
                    @  8,17 say 'Л.K.' get lkn
                    @  8,35 say 'ИЗДАДЕHА HА' get lkd
                    @  8,59 say 'МВР' get izd
                    @ 10, 2 say 'БЪЛГАРИH/ЧУЖДЕHЕЦ'  get bch  message  'БЪЛГАРИH - 0   ЧУЖДЕHЕЦ - 2'  valid bch=0 .or. bch=2
                    @ 10,24 say 'ОБЛСТ' get obl
                    @ 10,48 say 'HАСЕЛЕHО МЯСТО' get nasm
                    @ 12, 2 say 'АДРЕС' get adr pict "@S32"
                    @ 12,43 say 'П.K.' get pk
                    @ 12,56 say 'ОБРАЗОВАHИЕ' get obra
                    @ 14, 2 say 'ГОДИHА HА РАЖДАHЕ' get god pict '99' valid 0 < god
                    @ 14,24 say 'СТАЖ ГГ' get gg
                    @ 14,35 say 'ММ' get mm
                    @ 14,41 say 'ДД' get dd
                    @ 16, 2 say 'ОСHОВHО ТРУДОВО ВАЗHАГРАЖДHИЕ' get vazn pict "9999999.99"
                    @ 16,43 say 'ПОЛ' get mg message  'МЪЖ - М   ЖЕHА - Ж'  valid  mg='М' .or. mg='Ж'
                    @ 18, 2 say 'КОД    ТИП    HA ДОКУМЕHТА'
                    @ 18, 6 get kd pict "9"  valid helpproba ("kd") message '   F1 - ПОМОЩ'
                    @ 18,13 get pd pict "9"  valid helpproba ("pd") message '   F1 - ПОМОЩ'
                    @ 14,57 say ' КРАЙHА ДАТА HА:'
                    @ 15,55 say 'БОЛHИЧЕH  ' get bold
                    @ 16,55 say 'МАЙЧЕHСТВО' get mayd
                    @ 17,55 say 'ДЕТСKИ    ' get detd
                 if bch=2
                    @ 18,35  get godc  message  'ДАТА HА РАЖДАHЕ САМО ЗА ЧУЖДЕHЕЦ'
                 endif
                    read  msg at 23,15,65
                     if god=0
                        repl god with val(subs(egn,1,2))
                     endif

              ******** Hова ▒▓░ани╢а ****************
                    @  6, 2 clea to 21,77
                    @ 22,15 clea to 23,65
                    @  5, 1,20,78 box ram1
                    @ 22,14,24,66 box ram1
                    @ 23,15 say space(15)+'F1 - ПОМОЩ'+space(15)
                @  6, 2 say 'ВИД ОСИГУРЕH ДОО' get vod pict "99" valid helpproba ("vod") message '   F1 - ПОМОЩ'
                @  6,29 say 'МЕСЕЦ'            get pnm pict "9" valid helpproba ("pnm") message '   F1 - ПОМОЩ'
                @  6,37 say 'ЧАСОВЕ'           get rs  pict "9" valid helpproba ("rs")  message '   F1 - ПОМОЩ'
                @  6,46 say 'ЧАСА HА ДЕH'      get pnv pict "9" valid helpproba ("pnv") message '   F1 - ПОMOЩ'
                @  6,62 say 'HKИД'        get nkid pict "9999" valid helpproba ("nkid") message '   F1 - ПОМОЩ'
                @  6,72 say 'ОИД ' + oid
                @  8, 2 say 'ДЛЪЖHОСТ'     get rabo pict "@S12" valid helpproba ("rabo") message'   F1 - ПOMOЩ'
                @  8,24 get td  pict "9" valid helpproba ("td")  message '   F1 - ПОМОЩ'
                @  8,26 say 'HKПД ' + nkp
                @  8,42 say 'ЕКАТТЕ' get dvz pict "99999" valid helpproba ("dvz") message '   F1 - ПОMOЩ'
                @  9,70 say 'поле 21'
                @  8,57 say 'ОСИГ. ДОХОД'  get osig pict "999999.99" valid helpproba ("osig")  message'   F1 - ПОМОЩ'
                @ 10, 2 say 'HАЗHАЧЕH HА' get datn
                @ 10, 27 say 'HА ОСHОВАHИЕ' get osnn pict "99" valid helpproba ("osnn") message '   F1 - ПОМОЩ'
                @ 10,46 say 'ЧЛ.' get chln
                @ 10,67 say 'ОТ ДАТА '    get dvd pict "99"
                @ 12, 2 say 'KОД ПРОДЪЛЖ. ОСИГ ДОО/ЗОВ' get kpd pict "9" valid helpproba ("kpd") message '   F1 - ПОМОЩ'
                @ 12,31 say 'ПОСТЪПИЛ/А/  HА' get datp
                @ 12,59 say 'СЪС СРОK' get srok
                @ 14, 2 say 'УВОЛHЕH  HА' get datu
                @ 14,27 say 'HА ОСHОВАHИЕ'  get osnp pict "99" valid helpproba ("osnp")  message '   F1 - ПОМОЩ'
                @ 14,46 say 'ЧЛ.' get chlu
                @ 14,67 say 'ОТ ДАТА ' get dpd pict "99"
                @ 15,27 say 'ЗА УВОЛHЕHИЕ HЯМА ОСHОВАHИЕ             МИHУС 1 ДЕH'
                    read  msg at 23,15,65
                    set cent off

                    t38=0
                    store god to god_0
                    store td to td_0
                    store vazn to vazn0
                    store osig to osig0
                  * v01
                    @  5, 1  clea to 20,78
                    @ 22,15 clea to 23,65
                    @ 21,14,24,66 box ram1
                     if (.not.dvd=0).or.(.not.dpd=0).and.pnm=0
                         @ 22,17 say 'ВHИМАHИЕ!' color 'R+/B'
                         @ 22,28 say 'ПРИ HЕПЪЛЕH МЕСЕЦ ПОЛЕ "МЕСЕЦ!"'
                         @ 23,32 say 'СЛЕДВА ДА Е 1'
                     inkey(0)
                      endif

                    l0=' '
                    @ 22,17 say 'ТРУДОВ ДОГОВОР - 1   ЗАПОВЕД ЗА УВОЛHЕJИЕ - 2'
                    @ 23,17 say 'ГРАЖДАHСKИ ДОГОВОР - 3  ДОПЪЛ.ТР.СПОР.- 4 ' get l0
                    read
                    set cent off
                       do case
                          case l0='1'
                            tdog()
                          case l0='2'
                            zapov()
                          case l0='3'
                            gragd()
                          case l0='4'
                            dtve()
                          other
                       endcase
                    set key 28 to
                    set key 162 to mark
                    set key 172 to mark
                    restore screen
                             return

     ***************************************************************
        func  helpproba
     ***************************************************************
               save screen to ek0
     do while .t.
      kod0='   '
          if readvar()='KD'
                 kod0='201'

            if kd='0'.or.kd='1'.or.kd='2'.or.kd='3'.or.kd='8'
               if !lastkey()=28
                return .T.
               endif
            else
                   restore screen from ek0
                   @ 23,15 say space(15)+'ГРЕШИТЕ КОД KОРЕKЦИЯ'+space(10)
                   inkey(3)
            endif
          endif

          if readvar()='PD'
                 kod0='202'
            if pd='0'.or.pd='1'.or.pd='2'.or.pd='3'.or.pd=' '
               if !lastkey()=28
                return .T.
               endif
            else
                   restore screen from ek0
                   @ 23,15 say space(15)+'ГРЕШИТЕ ТИП ДОКУМЕHТ'+space(10)
                   inkey(3)
            endif
          endif

          if readvar()='VOD'
                 kod0='203'
             if 0 < vod .and. vod < 100
               if !lastkey()=28
                return .T.
               endif
            else
                   restore screen from ek0
                   @ 23,15 say space(15)+'ГРЕШИТЕ ВИД ОСИГУРЕH'+space(10)
                   inkey(3)
            endif
          endif

          if readvar()='PNM'
                 kod0='204'
            if pnm=0.or.pnm=1
               if !lastkey()=28
                return .T.
               endif
            else
                   restore screen from ek0
                   @ 23,15 say space(10)+'ГРЕШИТЕ ДHИ В ОСИГУРЯВАHЕ'+space(10)
                   inkey(3)
            endif
          endif

          if readvar()='RS'
                 kod0='205'
             if -1 < rs .and. rs < 9
               if !lastkey()=28
                return .T.
               endif
            else
                   restore screen from ek0
                   @ 23,15 say space(5)+'ГРЕШИТЕ ЗАKОHОУСТАHОВЕHОТО РАБОТHО ВРЕМЕ'+space(5)
                   inkey(3)
            endif
          endif

          if readvar()='PNV'
                 kod0='206'
             if -1 < pnv.and. pnv < 9
               if !lastkey()=28
                return .T.
               endif
            else
                   restore screen from ek0
                   @ 23,15 say space(10)+'ГРЕШИТЕ ДHЕВHОТО РАБОТHО ВРЕМЕ'+space(5)
                   inkey(3)
            endif
          endif

          if readvar()='NKID'
             kod0='207'
             nkid0=nkid
             sele 7
             locate for subs(nam,45,4)='&nkid0'.and.kod=kod0
             @ 17, 2 say 'HKИД: '+subs(nam,1,44)
             sele 1
             @  6,72 say 'ОИД ' + oid
             oid0=oid
             if !nkid='    '
               if !lastkey()=28
                return .T.
               endif
            else
                   restore screen from ek0
                   @ 23,18 say 'КОДА HА ИКОHОМИЧЕСКАТА ДЕЙHОСТ Е ЗАДЪЛЖИТЕЛЕH'
                   inkey(3)
            endif
          endif

          if readvar()='RABO'
             kod0='208'
             nkp0=nkp
             sele 7
             locate for subs(nam,44,8)='&nkp0'.and.kod=kod0
             @ 18, 2 say 'HKПД: '+subs(nam,1,43)
                sele 1
             @  8,26 say 'HKПД ' + nkp

             if !empty(rabo).or.!empty(oid)
               if !lastkey()=28
                return .T.
               endif
            else
                   restore screen from ek0
                   @ 23,15 say space(10)+'HЕ СТЕ ВЪВЕЛИ ДЛЪЖHОСТТА'+ space(15)
                   inkey(3)
            endif
          endif

          if readvar()='DVZ'
                 kod0='214'

            if !empty(osnn) .or. !td='T'
               if !lastkey()=28
                return .T.
               endif
            else
                   restore screen from ek0
                   @ 23,22 say space(5)+'HЕ СТЕ ВЪВЕЛИ Код по ЕКАТТЕ'
                   inkey(3)
            endif
          endif

          if readvar()='TD'
                 kod0='209'
            if td='Р'.or.td='Т'.or.td='Г'
               if !lastkey()=28
                return .T.
               endif
            else
                   restore screen from ek0
                   @ 23,15 say space(10)+'ГРЕЩИТЕ ВИДА HА ТРУДА'+space(15)
                   inkey(3)
            endif
          endif


          if readvar()='OSIG'
                 kod0='210'
             sele 7



             locate for subs(nam,2,2)='&oid0'.and.kod=kod0
             osig0=val(subs(nam,2+5*val(subs(nkp0,1,1)),5))
             sele 1
             if osig0 < osig .or. osig0 = osig
               if !lastkey()=28
                return .T.
               endif
            else
                    *  v01
                   restore screen from ek0
                   @ 23,15 say '  МИH.ОСИГ.ПРАГ Е ПО-МАЛЪK ОТ HОРМАТИВHИЯ   '+str(osig0,6,2)
                   inkey(3)
                       if lastkey()=27
                          @ 23,15 say space(50)
                          return .T.
                       endif
            endif
          endif
          if readvar()='OSNN'
                 kod0='211'
            if !empty(osnn) .or. !td='T'
               if !lastkey()=28
                return .T.
               endif
            else
                   restore screen from ek0
                   @ 23,15 say space(5)+'HЕ СТЕ ВЪВЕЛИ ОСHОВАHИЕТО ЗА HАЗАЧАВАHЕ'+space(5)
                   inkey(3)
            endif
          endif
          if readvar()='KPD'
                 kod0='212'
            if kpd=0.or.kpd=1
               if !lastkey()=28
                return .T.
               endif
            else
                   restore screen from ek0
                   @ 23,15 say '  HЕ СТЕ ВЪВЕЛИ KОД ПРОДЪЛЖАВАHЕ HА ОСИГУРЯВАHЕТО  '
                   inkey(3)
            endif
          endif
          if readvar()='OSNP'
                 kod0='213'
            if val(osnp) < 11
               if !lastkey()=28
                return .T.
               endif
            else
                   restore screen from ek0
                *  @ 23,15 say space(5)+'HЕ СТЕ ВЪВЕЛИ ОСHОВАHИЕТО ЗА УВОЛHЕHИЕ'+space(5)
                   @ 23,15 say space(3)+'ВЪВЕЛИ СТЕ ГРЕШHО ОСHОВАHИЕТО ЗА УВОЛHЕHИЕ'+space(3)
                   inkey(3)
            endif
          endif




      *-----------------------------------------------------------
               if kod0='   '
                   return .T.         &&  helpproba
               endif
                  sele 7
                  use &disc_1\fish\fhlp
                  p0=0
               @ 19,14,24,66 box ram1
               @ 20,15 clea to 23,65

              if  readvar()='KD'
                @  20,25 say ' 1. KОД KОРЕKЦИЯ - поп║лва ▒е:  '
              endif
              if readvar()='PD'
                @  20,25 say ' 2. ТИП HА ДОKУМЕТА - по║лва ▒е:'
              endif
              if readvar()='VOD'
                @  20,25 say ' 12. ВИД ОСИГУРЕH  - по║лва ▒е: '
              endif
              if readvar()='PNM'
                @  20,25 say '16. ДHИ В ОСИГУРЯВАHЕ ПОЗИЦИЯ 1:'
              endif
              if readvar()='RS'
                @  20,20 say '16. ЗАКОHОУСТАHОВЕHО РАБОТHО ВРЕМЕ ПОЗИЦИЯ 4:'
              endif
              if readvar()='PNV'
                @  20,25 say '16. ДHЕВHО РАБОТHО ВРЕМЕ ПОЗИЦИЯ 5:'
              endif
              if readvar()='NKID'
                @ 20,25 say '12.2 КОДА HА ИКОHОМИЧЕСКАТА ДЕЙHОСТ'
              endif
              if readvar()='RABO'
                locate for subs(nam,44,8)='&nkp0'.and.kod=kod0
                @  20,40 say 'ДЛЪЖHОСТ:'
              endif
              if readvar()='TD'
                @  20,35 say 'ВИД ТРУД: '
              endif
              if readvar()='DVZ'
                @  20,31 say '15.Код по ЕКАТТЕ: '

            ! notepad.exe &disc_1\fish\Ek_atte.txt

              endif
              if readvar()='OSIG'
                @  20,15 say 'ОИД      1    2    3    4    5    6    7    8    9'
              endif
              if readvar()='OSNN'
                @  20,30 say 'ОСHОВАHИЕ ЗА HАЗАЧАВАHЕ'
              endif
              if readvar()='KPD'
                @  20,26 say 'KОД ПРОДЪЛЖАВАHE HА ОСИГУРЯВАHЕТО'
              endif
              if readvar()='OSNP'
                @  20,30 say 'ОСHОВАHИЕ ЗА УВОЛHЕHИЕ'
              endif

         *--------------------------------------------------------------------
                 locate for kod=kod0
                 do while  kod=kod0
                       p0=p0+1
                    if .not.eof()
                      skip
                    else
                       exit
                   endif
                 enddo
                 declare izb[p0]
                 sele 7
                 use &disc_1\fish\fhlp
                 q0=0
                 go top
                 locate for kod=kod0
                 do while  kod=kod0
                       q0=q0+1
                    izb[q0]=subs(nam,1,51)
                    if .not.eof()
                      skip
                    else
                       exit
                   endif
                 enddo
              iz0=achoice(21,15,23,65,izb,,"")
              sele 1
              var00=readvar()
        if (lastkey()=10.or.lastkey()=13).and.(.not.iz0=0)
          if readvar()='KD'.or.readvar()='PD'.or.readvar()='TD'
            repl &var00 with subs(izb[iz0],1,1)
          endif
          if readvar()='PNM'.or.readvar()='RS'.or.readvar()='PNV'.or.readvar()='KPD'
            repl &var00 with val(subs(izb[iz0],1,1))
          endif
          if readvar()='VOD'
           repl vod with val(subs(izb[iz0],1,2))
          endif
          if readvar()='NKID'
            repl nkid with subs(izb[iz0],45,4), oid with subs(izb[iz0],50,2)
          endif
          if readvar()='RABO'
           repl rabo with subs(izb[iz0],1,12), nkp with subs(izb[iz0],44,8)
          endif
          if readvar()='DVZ'
           repl dvz with subs(izb[iz0],44,5)

          endif
          if readvar()='OSIG'
             repl osig with val(subs(izb[iz0],2+5*val(subs(nkp0,1,1)),5))
          endif
          if readvar()='OSNN'
             repl osnn with subs(izb[iz0],1,2), chln with subs(izb[iz0],30,12)
          endif
          if readvar()='OSNP'
             repl osnp with subs(izb[iz0],1,2), chlu with subs(izb[iz0],30,12)
          endif
        endif
               restore screen from ek0
     enddo


        return .T.         &&  helpproba


          izrab()

          ************  Пи▒мо за назна╖аване/│волнение *************
                               proc prpismo


  do while .t.
      ramka()
     store 0 to dooh0,zovh0,pkbh0,doph0,dood0,zovd0,pkbd0,dopd0,doov0,zovv0,pkbv0,dopv0
     @ 2,30 say 'ПРИДРУЖИТЕЛHО ПИСМО'
     @ 3,29 say '---------------------'
       izrab()
       if ekpr0=2
           set marg to 4
           b1=0
       endif
       set cent on
         if lastkey()=27
            exit
         endif
     ? norm0
       if ekpr0=2
           set marg to 10
           b1=0
       endif
     ? space(17)+'F16 ПРИДРУЖИТЕЛHО ПИСМО F11  1111111'
     ?
     ? space(11)+'(Подаване на │ведомление по ╖л.62, ал.5 о▓ Кодек▒а на ▓░│да)'
     ?
     ?
     ?
     ? 'Рабо▓ода▓ел:  B'+ltrim(fir)+'b'
     ?
     ? 'ЕИК по БУЛСТАТ/ЕИК на ▓║░гове╢а,▒л│жебен номе░, издаден о▓ HАП: '+ buls
     ?
     ? 'Hа▒елено м┐▒▓о: '+trim(grad)+space(15)+'По╣ен▒ки код: 8000'
     ?
     ? 'Ад░е▒ за ко░е▒понден╢и┐: '+trim(adr00)
     ?
     ? 'Теле┤он: '+tel+space(10)+'Ел.ад░е▒:'
     ?
     ? 'ТД на HAP, к║де▓о е ░еги▒▓░и░ан о▒иг│░и▓ел┐▓: ТД БУРГАС'
     ?
     ? 'П░едо▒▓ав┐на▓а ин┤о░ма╢и┐ е:  1.Б░ой │ведомлени┐ (запи▒и)-░едовни: '
     ?
     ? '                              2.Б░ой │ведомлени┐ (запи▒и)-ко░ек╢ии:'
     ?
     ? '                              3.Б░ой │ведомлени┐ (запи▒и)-зали╖аване:'
     ?
     ? '                              4.Б░ой │ведомлени┐ по п░ил.5 за б░ой ли╢а:'
     ?
     ?
     ? space(8)+'ЪДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДП'
     ? space(8)+'╙Данни за ли╢е▓о, кое▓о п░ед▒▓ав┐ ин┤о░ма╢и┐▓а:           ╙'
     ? space(8)+'╙                                                         ╙'
     ? space(8)+'╙'+name0+'                           ╙'
     ? space(8)+'╙.........................................................╙'
     ? space(8)+'╙ ( Име, П░езиме, Фамили┐ )                               ╙'
     ? space(8)+'╙                                                         ╙'
     ? space(8)+'╙ЕГH: '+egn0+'  ЛК-No '+lkn0+' Издадена: '+dtoc(lkd0)+' ╙'
     ? space(8)+'АДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДЩ'
     ?
     ?
     ?
     ? 'Да▓а:                                   Подпи▒:...............'
     ? '                                                   (пе╖а▓)'
     ?
     ? 'Ин┤о░ма╢и┐, поп║лвана о▓ ▒л│жи▓ел в ТД на HАП'
     ?
     ?
     ? 'В╡од┐╣ No..............................'
     ?
     ?
     ? 'П░едо▒▓ав┐на▓а ин┤о░ма╢и┐ е:  1.Б░ой │ведомлени┐ (запи▒и)-░едовни: '
     ?
     ? '                              2.Б░ой │ведомлени┐ (запи▒и)-ко░ек╢ии:'
     ?
     ? '                              3.Б░ой │ведомлени┐ (запи▒и)-зали╖аване:'
     ?
     ? '                              4.Б░ой │ведомлени┐ по п░ил.5 за б░ой ли╢а:'
     ?
     ?
     ? ' 5. Б░ой │ведомлени┐ по п░иложение No.5............. за......б░ой ли╢а.'
     ?
     ? ' 5. Б░ой г░е╕ни │ведомлени┐ по п░иложение Nо.5........... за.......б░ой ли╢а.'
     ?
     ?
     ?
     ? 'Да▓а:................    Подпи▒ на ▒л│жи▓ел┐:................................'
     ? '                                                  (име, подпи▒, пе╖а▓)'
     ?
     ?
     ? ?'P16 П░ид░│жи▓елно▓о пи▒мо ▒е изго▓в┐ в два екземпл┐░а, о▒вен кога▓о │ведомлени┐▓а ▒е изп░а╣а▓ по Ин▓е░не▓.P10'
     pech()
     set device to screen
  enddo
       set cent off
                               return


          ************  Сме▓ка за изпла▓ени ▒│ми *************
                               proc smettd
        sele 3
        use &disc_1\fish\nome inde &disc_1\fish\nosi
        find ' 94'
          bss0=substr(bss0,1,12)+obst00
      store data0 to data7
      store data5 to data0
      messec()
      store ms0 to ms3
      store data6 to data0
      messec()
      store ms0 to ms4
      store data7 to data0
      nom0=0
   do while .t.
      set cent on
     store 0 to x8,x9,x160,x14,x16,x32,x52,x94,x95,x99
     ramka()

     @  2,20 say 'СМЕТKА ЗА ИЗПЛАТЕHИ СУМИ ПО ТР.ДОГОHОР'
     @  3,19 say '----------------------------------------'
   * chaper()
     @  4, 3 say 'Таб│лен номе░' get nom0 pict "999999"
     read
                       if lastkey()=27.or.nom0=0
                           set cent off
                           return
                       endif
             mego(meg0:=-35)
             set order to 2
             set filter to nom=str(nom0,6) .and.vek=vek0
             go top

        do while .not. eof()
          do case
             case sch='  9'
                 x9=x9+suma
             case sch=' 14'
                 x14=x14+suma
             case sch=' 16'
                 x16=x16+suma
             case sch=' 32'
                 x32=x32+suma
             case sch=' 52'
                  x52=x52+suma
             case sch=' 94'
                 x94=x94+suma
             case sch=' 95'
                  x95=x95+suma
          endcase
           skip
        enddo
             mego(meg0:=-5)
             set order to 2
             set filter to nom=str(nom0,6) .and.vek=vek0
             go top
        do while .not. eof()
          do case
             case sch='  9'
                 x9=x9+suma
             case sch=' 14'
                 x14=x14+suma
             case sch=' 16'
                 x16=x16+suma
             case sch=' 32'
                 x32=x32+suma
             case sch=' 52'
                  x52=x52+suma
             case sch=' 94'
                 x94=x94+suma
             case sch=' 95'
                  x95=x95+suma
          endcase
           skip
        enddo
     sele 1
     use spis inde nomi
     nom1=str(nom0,6)
     find "&nom1"
     if .not.found()
         @ 23,15 say space(51)
         @ 23,16 say '          H┐ма ли╢е ▒ ▓ози ▓аб│ла номе░           '
         i0=inkey(0)
         return
     endif
         name0=name
          egn0=egn
           lkn=lkn
           lkd=lkd
           izd=izd
          nasm=nasm
           adr=adr
           tel=tel
     sele 1
     use &disc_1\job\bala
     set filter to t='64'
     go top
     br0=recno()

     go  br0
     repl pola with 'HАИМЕHОВАHИЕ HА ПРЕДПРИЯТИЕТО  '+ltrim(trim(fir))+space(44-len(ltrim(trim(fir))))
     go  br0+1
     repl pola with 'АДРЕС ЗА KОРЕСПОHДЕHЦИЯ  '+ltrim(trim(adr00))+space(50-len(ltrim(trim(adr00))))
     go  br0+2
     repl pola with 'ЕИК '+subs(buls,1,9)+' Те░и▓о░иална ди░ек╢и┐ на HAП: БУРГАС'
     go  br0+6
     repl pola with 'Hа▒▓о┐╣а▓а ▒л│жебна бележка ▒е издава на '+name0
     go  br0+8
     repl pola with 'ЕГH: '+egn0+', ли╖на ка░▓а (па▒по░▓) ▒е░и┐___ No: '+subs(lkn,1,9)+', издадена'
     go  br0+9
     repl pola with 'на '+dtoc(lkd)+'год. о▓ МВР '+trim(izd)+', по▒▓о┐нен ад░е▒: г░./▒.'+trim(nasm)+space(75-len('на '+dtoc(lkd)+'год. о▓ МВР '+trim(izd)+', по▒▓о┐нен ад░е▒: г░./▒.'+trim(nasm)))+','
     go  br0+10
     repl pola with trim(adr)+', в │ве░ение на ▓ова, ╖е п░ез '+vek0+' год.'    &&+space(75-len(trim(adr)+', в │ве░ение на ▓ова, ╖е п░ез '+vek0+' год.'))
     go  br0+11
     repl pola with 'е п░идобил/а/ облагаем до╡од о▓ ▓░│дови п░авоо▓но╕ени┐,как▓о ▒ледва:'+space(6)
     go  br0+14
     repl pola with subs(pola,1,72)+subs(str(x9,9,2),1,3)
     repl polp with subs(str(x9,9,2),4,6)+' лв.'
     go  br0+15
     repl pola with subs(pola,1,72)+subs(str(x14+x16+x32+x52,9,2),1,3)
     repl polp with subs(str(x14+x16+x32+x52,9,2),4,6)+' лв.'
     go  br0+16
     repl pola with subs(pola,1,72)+subs(str(x14+x16,9,2),1,3)
     repl polp with subs(str(x14+x16,9,2),4,6)+' лв.'
     go  br0+17
     repl pola with subs(pola,1,72)+subs(str(x32,9,2),1,3)
     repl polp with subs(str(x32,9,2),4,6)+' лв.'
     go  br0+18
     repl pola with subs(pola,1,72)+subs(str(x52,9,2),1,3)
     repl polp with subs(str(x52,9,2),4,6)+' лв.'
     go  br0+32
     repl pola with subs(pola,1,72)+subs(str(x9,9,2),1,3)
     repl polp with subs(str(x9,9,2),4,6)+' лв.'
     go  br0+36
     repl pola with subs(pola,1,72)+subs(str(x14+x16+x32+x52,9,2),1,3)
     repl polp with subs(str(x14+x16+x32+x52,9,2),4,6)+' лв.'
     go  br0+37
     repl pola with subs(pola,1,72)+subs(str(x14+x16,9,2),1,3)
     repl polp with subs(str(x14+x16,9,2),4,6)+' лв.'
     go  br0+38
     repl pola with subs(pola,1,72)+subs(str(x32,9,2),1,3)
     repl polp with subs(str(x32,9,2),4,6)+' лв.'
     go  br0+39
     repl pola with subs(pola,1,72)+subs(str(x52,9,2),1,3)
     repl polp with subs(str(x52,9,2),4,6)+' лв.'
     go  br0+41
     repl pola with subs(pola,1,72)+subs(str(x95,9,2),1,3)
     repl polp with subs(str(x95,9,2),4,6)+' лв.'
     go  br0+42
     repl pola with subs(pola,1,72)+subs(str(x95,9,2),1,3)
     repl polp with subs(str(x95,9,2),4,6)+' лв.'
     go  br0+60
     repl pola with subs(pola,1,72)+subs(str(x95,9,2),1,3)
     repl polp with subs(str(x95,9,2),4,6)+' лв.'
     go  br0+61
     repl pola with subs(pola,1,72)+subs(str(x94,9,2),1,3)
     repl polp with subs(str(x94,9,2),4,6)+' лв.'
     go  br0+62
     repl pola with subs(pola,1,72)+subs(str(x94,9,2),1,3)
     repl polp with subs(str(x94,9,2),4,6)+' лв.'
     go  br0+65
     repl pola with subs(pola,1,72)+subs(str(x94,9,2),1,3)
     repl polp with subs(str(x94,9,2),4,6)+' лв.'
            izrab()
            if lastkey()=27
               set dele off
               return
            endif
            ll0='2'
            save screen
            ?? 'P12A45'
         for i0 = 1 to 1
           ?
         next
            set marg to 6
            *  b1=77
               set filter to  t='64'
               go top
               store recno() to bro
         ?
       do while t='64'
               ? substr(pola,1,75)+trim(substr(polp,1,75))
             * ? str(recno()-br0,3)+substr(pola,1,75)+trim(substr(polp,1,75))
             if .not.eof()
                skip
             else
             exit
          endif
       enddo
         for i0 = 1 to 9
           ?
         next
   * ? ' Да▓а: '+dtoc(date())+'  Гл. ▒╖е▓оводи▓ел:................  Р║ководи▓ел:...........'
     ? '   Да▓а: '+dtoc(date())+'  Гл. ▒╖е▓оводи▓ел:................  Р║ководи▓ел:...........'
         for i0 = 1 to 3
           ?
         next
       pech()
          mego(meg0:=-5)
          set marg to
          set cent off


  enddo
                               return
          ************  Сл│жебна бележка за до╡оди▓е на ░або▓ник *************
                               proc slbel

     mego(meg0:=-35)
    nom0=0
    odia1=repl('.',25)
    odia2=repl('.',58)
  do while .t.
      ramka()
     store 0 to dooh0,zovh0,pkbh0,doph0,dood0,zovd0,pkbd0,dopd0,doov0,zovv0,pkbv0,dopv0
     @ 2,30 say 'СЛУЖЕБHА БЕЛЕЖKА'
     @ 3,29 say '-------------------'
     @  6, 3 say 'Таб│лен номе░' get nom0 pict "999999"
     @  6,33 say 'Повод за издавене' get odia1
     @  8, 2 say 'Повод за издавене' get odia2
     read
                       if lastkey()=27.or.nom0=0
                           set cent off
                           return
                       endif
     sele 1
     use spis inde nomi
     nom1=str(nom0,6)
     find "&nom1"
     if .not.found()
         @ 23,15 say space(51)
         @ 23,16 say '          H┐ма ли╢е ▒ ▓ози ▓аб│ла номе░           '
         i0=inkey(0)
         return
     endif
       izrab()
           set marg to 11
       if ekpr0=2
           ?? norm0
           b1=0
       endif
       set cent on
         if lastkey()=27
            exit
         endif
   ?
   ?
   ? ltrim(fir)
   ? 'г░. /▒./ : '+grad+' п.к. '
   ?  trim(adr00)
   ? 'БУЛСТАТ: '+ buls+space(20)+'Из╡.N'+ nom1+'/'+dtoc(date())
   ?
   ?
   ?
   ?
   ?
   ?   space(15)+'С Л У Ж Е Б H А  Б Е Л Е Ж K А'
   ?
   ?
   ?
   ?
   ?   '    '+trim(fir)+' издава '
   ?
   ?   'на▒▓о┐╣а▓а ▒л│жебна бележка на '+trim(name)+','
   ?
   ?   'ЕГH '+egn+' в │ве░ение на ▓ова, ╖е ▒║╣и┐▓/a/ е назна╖ен/a/ '
   ?
     if vod=12
   ?   'на о▒нование на ╖л.4, ал.3, ▓.2 о▓ КСО.'
     else
   ?   '▒ ▓░│дов догово░ N: '+ltrim(nom1)+' на о▒нование '+chln+ ' о▓ KТ'
      endif
   ?
           if l4=1
   ?   'и пол│╖ава ▒ледно▓о б░│▓но ме▒е╖но в║знаг░аждение, как▓о ▒ледва:'
           else
   ?   'и пол│╖ава ▒ледно▓о не▓но ме▒е╖но в║знаг░аждение, как▓о ▒ледва:'
           endif
   ?
             mego(meg0:=-35)
             set order to 2

           if l4=1
             set filter to (data_3 < ctod('01/'+subs(data,1,2)+'/'+vek)).and.;
                 (ctod('01/'+subs(data,1,2)+'/'+vek) < data_4).and.sch=' 10';
                 .and.nom=nom1
           else
             set filter to (data_3 < ctod('01/'+subs(data,1,2)+'/'+vek)).and.;
                 (ctod('01/'+subs(data,1,2)+'/'+vek) < data_4).and.sch=' 99';
                 .and.nom=nom1
           endif
             go top
        store data0 to data3
         kast0=0
           set cons off
        do while .not. eof()
           store data to data0
           messec()
           ? '   '+ ms0+'       '+vek+'г.  - '+str(suma,10,2)+' лв.'
           kast0=kast0+suma
           skip
        enddo
             mego(meg0:=-5)
             set order to 2
           if l4=1
             set filter to (data_3 < ctod('01/'+subs(data,1,2)+'/'+vek)).and.;
                 (ctod('01/'+subs(data,1,2)+'/'+vek) < data_4).and.sch=' 10';
                 .and.nom=nom1
           else
             set filter to (data_3 < ctod('01/'+subs(data,1,2)+'/'+vek)).and.;
                 (ctod('01/'+subs(data,1,2)+'/'+vek) < data_4).and.sch=' 99';
                 .and.nom=nom1
           endif
             go top
        do while .not. eof()
            store data to data0
           messec()
           ? '   '+ ms0+'       '+vek+'г.  - '+str(suma,10,2)+' лв.'
           kast0=kast0+suma
           skip
        enddo
     store data3 to data0
     do slovom
     do messec
   ? '                            ------------'
   ? '         ВСИЧKО:            '+str(kast0,11,2)+' лв.'
   ?
   ? '   СЛОВОМ: '+ss0+' ЛЕВА и '+substr(x,N0,2)+' СТ.'
   ?
   ?
   ? '   Hа▒▓о┐╣а▓а да м│/й/ по▒л│жи п░ед '+odia1
   ?
   ? '   '+odia2
   ?
   ?
   ?
   ?
   ? space(36)+'СЧЕТОВОДИТЕЛ:................'
   ?
   ? dtoc(date())+'год.'
   ? 'г░.'+grad+space(24)+'УПРАВИТЕЛ:................'
   ?

     pech()
          mego(meg0:=-5)
          set marg to
          set cent off
  enddo

                               return

          ***************  Доп║лни▓елно ▓▓░│дово в║знаг░аждение **********
                               proc dtve
          sele 1
          set cent on
          use spis inde nomi
          nom0=str(nom0,6)
          set cons on
          find "&nom0"
          izrab()
          ime0=ime
          family0=family

       set marg to 7
     ? '            '+fir
     ? '     ----------------------------------------------------------'
     ?
     ?
     ?
     ? '             ДОПЪЛHИТЕЛHО ТРУДОВО СПОРАЗУМЕHИЕ'+nom0
     ?
     ?
     ?
     ? '       Дне▒  01'+subs(dtoc(date0),3,8)+' г.'+' в г░.  '+grad+ ' на о▒нование'
     ? '    ╖л.119  о▓ Kодек▒а на ▓░│да ▒е ▒кл╛╖и на▒▓о┐╣о▓о'
     ? '   доп║лни▓елно ▓░│дово ▒по░аз│мение к║м ▓░│дов догово░ номе░ '+ltrim(nom0)
     ? '   межд│ ┤и░ма▓а, п░ед▒▓авл┐вана о▓ п░езиден▓а й'
     ? '    '+ltrim(nam)+'   и '
     ? '    '+trim(name)+'  на░и╖ана ░або▓ник'
     ? '   ▒ ад░е▒,  '+trim(nasm)+' '+trim(adr)+' обла▒▓ '+trim(obl)
     ? '   EГH  '+egn+ ', л.к. Х '+lkn
     ? '   издаден на  '+dtoc(lkd)+' год. в г░. '+trim(izd)+'.'
     ? '   ▒ об░азование :  '+obra+','
     ? '   ▒е ▒по░аз│м┐╡а за ▒ледни▓е изменени┐ на ▓░│дови┐ догово░, ▒╖и▓ано'
   * ? '   о▓.......................г.'
     ? '   о▓ 01'+subs(dtoc(date0),3,8)
     ?
     ? '  1. За п░ом┐на на м┐▒▓о▓о на ░або▓а '
     ? '     о▓'
     ? '     в '
     ?
     ? '  2. За п░ом┐на на дл║жно▒▓▓а:'
     ? '     о▓'
     ? '     на'
     ?
     ? '  3. За п░ом┐на на п░од║лжи▓елно▒▓▓а на ░або▓но▓о в░еме, ▒║гл.╖л.138'
     ? '     о▓'
     ? '     на'
     ?
     ? '  4. За п░ом┐на на о▒новно▓о ме▒е╖но ▓░│дово в║знаг░аждение:'
     ? '     о▓    240.00 лв.'
     ? '     на  '+str(vazn,8,2)+' лв.'
     ?
     ? '  5. За доп║лни▓елни в║знаг░аждени┐:'
     ? '     за'
     ?
     ? '  6. Д░│ги │▒лови┐ на ▓░│дови┐ догово░:'
     ?
     ?
     ? '    Hа▒▓о┐╣о▓о доп║лни▓елно ▒по░аз│мение ▒е ▒║▒▓ави в два екземпл┐░а,'
     ? '  по един за в▒┐ка ▒▓░ана и е неделима ╖а▒▓ о▓ ▓░│дов догово░ N '+ltrim(nom0)
     ?
     ? '    Подпи▒ан о▓ две▓е ▒▓░ани екземпл┐░ на на▒▓о┐╣о▓о доп║лни▓елно'
     ? '  ▒по░аз│мение е в░║╖ен на ░або▓ника на 01'+subs(dtoc(date0),3,8)+'год.'
     ?
     ? '           Подпи▒али: '
     ?
     ?
     ?
     ? '        РАБОТHИK:...............        ПРЕЗИДЕHТ:...............'
     ? '                /'+trim(ime0)+' '+trim(family0)+'/'+space(17+len(ime0+family0)-len(trim(name)+' '+trim(family0)))+'/'+ltrim(trim(nam))+'/'
    pech()
          set marg to
          nom0=val(nom0)
          set cent on
                               return



********************** К░ай П░ове░ка за б│л▒▓а▓ **********************
      ****************  Лини┐ за п░о╢е▒ *****************
                         func line

             if line0=-1
                @ 23,15 say space(51)
                return
             endif
             if line0=0
                @ 23,15 say space(51)
             endif

             @ 23,15 say str(line0,4)+'%'
              if pake='CHEF'
                 @ 21,37 say str(line1,5)
                 @ 21,44 say str(line9,5)
              endif
             line9=line9+1

         *   setcons()

         do case
            case round(line1/20* 1,0) < line9 .and. line0 =  0
                 sec0=round(seconds(),0)
                 line(line0:=5)
            case round(line1/20* 2,0) < line9 .and. line0 =  5
                 line(line0:=10)
            case round(line1/20* 3,0) < line9 .and. line0 = 10
                 line(line0:=15)
            case round(line1/20* 4,0) < line9 .and. line0 = 15
                 line(line0:=20)
            case round(line1/20* 5,0) < line9 .and. line0 = 20
                 line(line0:=25)
            case round(line1/20* 6,0) < line9 .and. line0 = 25
                 line(line0:=30)
            case round(line1/20* 7,0) < line9 .and. line0 = 30
                 line(line0:=35)
            case round(line1/20* 8,0) < line9 .and. line0 = 35
                 line(line0:=40)
            case round(line1/20* 9,0) < line9 .and. line0 = 40
                 line(line0:=45)
            case round(line1/20*10,0) < line9 .and. line0 = 45
                 line(line0:=50)
            case round(line1/20*11,0) < line9 .and. line0 = 50
                 line(line0:=55)
            case round(line1/20*12,0) < line9 .and. line0 = 55
                 line(line0:=60)
            case round(line1/20*13,0) < line9 .and. line0 = 60
                 line(line0:=65)
            case round(line1/20*14,0) < line9 .and. line0 = 65
                 line(line0:=70)
            case round(line1/20*15,0) < line9 .and. line0 = 70
                 line(line0:=75)
            case round(line1/20*16,0) < line9 .and. line0 = 75
                 line(line0:=80)
            case round(line1/20*17,0) < line9 .and. line0 = 80
                 line(line0:=85)
            case round(line1/20*18,0) < line9 .and. line0 = 85
                 line(line0:=90)
            case round(line1/20*19,0) < line9 .and. line0 = 90
                 line(line0:=95)
            case round(line1/20*20,0) < line9 .and. line0 = 95
                line(line0:=100)
            case round(line1/20*20+5,0) < line9 .and. line0 = 100
                  sek1=round(seconds(),0)-sec0
                  if 0 < sek1
                    if 0 < val(subs(str(round(sek1/60,2),5,2),1,2))
                        @ 23,36 say subs(str(round(sek1/60,2),5,2),1,2)+'min. '+;
                         str(sek1-val(subs(str(round(sek1/60,2),5,2),1,2))*60,2)+'sec.'
                    else
                        @ 23,40 say str(sek1,2)+'sec.'
                    endif
                        if pake='CHEF'
                           inkey(2)
                        else
                           inkey(1)
                        endif
                  endif
                  line0=-1
         endcase
                *  keyboard=chr(4)


             if .not. line0=-1
                 @ 23,21 say repl('█',45*line0/100)
             endif
      *    store 0 to line0,line1,line2, line9, sec0
      *    count for sch='50' to line1
      *    count for sch='50' to line2
      *    line1=line1+line2 ot  1 do 8
      *    go top
                        return

