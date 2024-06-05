
  **  balan ddsizv fzame dubl lusi nulfakt
  **  pfzame protokol read spdok


       ******************  Изваждане на ДДС *********************
                          proc ddsizv
            save screen
            ramka()
            @  2,32 say 'ИЗВАЖДАHЕ HА ДДС '
            @  5,17 say 'ВHИМАHИЕ ! ПРОЦЕДУРАТА СЕ ИЗПЪЛHЯВА САМО ЗА 702'
          @ 18,18 say 'Промяна шифъра на сметки в счетоводна операция'
          restore from harsmet additive
          clea gets
             br0=1
             br1=3
             br2='  '
            sch0='702'
            do while br0 < 20
              br2=ltrim(str(br0,2))
              @ 19,br1 get z_&br2
              br0=br0+1
              br1=br1+4
             enddo
          @ 21,35 say 'Със сметка ' get sch0
             chet()
          save all like z_* to harsmet
          open_kobo(loc0:=1)
   repl all sch with sch0  for sch=z_1.or.sch=z_2.or.sch=z_3.or.sch=z_4.or.sch=z_5;
   .or.sch=z_6.or.sch=z_7.or.sch=z_8.or.sch=z_9.or.sch=z_10.or.sch=z_11.or.sch=z_12.or.sch=z_13.or.;
   sch=z_14.or.sch=z_15.or.sch=z_16.or.sch=z_17.or.sch=z_18.or.sch=z_19
          clos data
          open_kpar(loc0:=1)
   repl all part with sch0+subs(part,4,4), partp with sch0+subs(partp,4,4) for part=z_1.or.part=z_2.or.part=z_3.or.part=z_4.or.part=z_5;
   .or.part=z_6.or.part=z_7.or.part=z_8.or.part=z_9.or.part=z_10.or.part=z_11.or.part=z_12.or.part=z_13.or.;
   part=z_14.or.part=z_15.or.part=z_16.or.part=z_17.or.part=z_18.or.part=z_19
          clos data
      open_dobo(loc0:=1)
   repl all sch with sch0  for sch=z_1.or.sch=z_2.or.sch=z_3.or.sch=z_4.or.sch=z_5;
   .or.sch=z_6.or.sch=z_7.or.sch=z_8.or.sch=z_9.or.sch=z_10.or.sch=z_11.or.sch=z_12.or.sch=z_13.or.;
   sch=z_14.or.sch=z_15.or.sch=z_16.or.sch=z_17.or.sch=z_18.or.sch=z_19
          clos data
     open_dpar(loc0:=1)
   repl all part with sch0+subs(part,4,4), partp with sch0+subs(partp,4,4) for part=z_1.or.part=z_2.or.part=z_3.or.part=z_4.or.part=z_5;
   .or.part=z_6.or.part=z_7.or.part=z_8.or.part=z_9.or.part=z_10.or.part=z_11.or.part=z_12.or.part=z_13.or.;
   part=z_14.or.part=z_15.or.part=z_16.or.part=z_17.or.part=z_18.or.part=z_19
          clos data

            l0=2
            @  7,23 say 'ПОТВЪРЖДАВАТЕ ЛИ ИЗПЪЛHEНИЕТО'
            @  7,53 prompt 'ДА'
            @  7,56 prompt 'HЕ'
            menu to l0
             if l0=2
                restore screen
                return
             endif
             set confirm on
            @  9,23 say 'СО:'
             sch0='702'
               open_arhi(loc0:=13)
               open_dobo(loc0:=13)
               open_kpar(loc0:=13)
               open_kobo(loc0:=13)
               set order to 2
               dn0=sch0+subs(data0,4,2)+data0
               find '&dn0'
           do while .not.eof().and.data=data0
              if .not.sch=sch0
                if  .not.eof()
                   skip
                   loop
                else
                   exit
                endif
              endif
             re0=recno()
             nom3=val(nom)
             dn0='453'+subs(data0,4,2)+data0+str(nom3,4)
             find "&dn0"   &&  проверка дали е извадено ддс-то
             if found()
             go re0
                if .not. eof()
                   skip
                   loop
                else
                   exit
                endif
             else
               go re0
             endif
             @  9,27 say nom
             dn0=subs(data0,4,2)+data0+str(nom3,4)
             sele 1
             find "&dn0"
                   @  9,37 say 'Фактура No '+fakt
             sele 2
             find "&dn0"
                if sch='501'
                   @ 15,44 say 'Плащане в брой  '
                else
                   @ 15,44 say 'Плащане по БАHKА'
                endif
             sele 3
             go re0
             ksto0=ksto
             rec_lock()
             repl ksto with round(ksto0/(1+d_s0),j1)
             rec_unlock()
             dn0=subs(data0,4,2)+data0+str(nom3,4)+sch0
             sele 5
             find "&dn0"
                store 0 to ksto1, ksto2
                do while  nom=str(nom3,4).and.data=data0.and.substr(part,1,3)=sch0
                    rec_lock()
                    ksto1=ksto1+round(kast/(1+d_s0),4)
                    repl zena with round(zena/(1+d_s0),j4), kast with round(kast/(1+d_s0),j1)
                    ksto2=ksto2+kast
                    rec_unlock()
                            if .not.eof()
                               skip
                            else
                                exit
                             endif
                enddo
                ksto1=round(ksto1,j1)
            @ 12,39 say 'ДДС    '+str(ksto0-ksto1,12,2)
            @ 13,39 say 'Всичко '+str(ksto0,12,2)
            @ 11,23 say 'Стойност на сделката ' get ksto1
            chet()
            @ 12,39 say 'ДДС    '+str(ksto0-ksto1,12,2)
            @ 13,39 say 'Всичко '+str(ksto0,12,2)
            inkey(0)
          skip -1
             if ksto2 < ksto1
                store ksto2 to ksto1
             else
                rec_lock()
                repl kast with kast-(ksto2-ksto1)
                rec_unlock()
             endif
             appe blank
             rec_lock()
             repl nom with str(nom3,4),part with '453   2', mk with 'лв',kast with  ksto0-ksto1, data with data0 &&  ksto0-round(ksto0/(1+d_s0),j1), data with data0
             rec_unlock()
             sele 3
             appe blank
             rec_lock()
             repl nom with str(nom3,4),sch with '453',nvo with '   0', ksto with ksto0-ksto1, data with data0
             rec_unlock()

             sele 3
             go re0
             rec_lock()
             repl ksto with ksto1
             rec_unlock()

                if .not. eof()
                   skip
                   loop
                else
                   exit
                endif
           enddo
           set confirm off
           restore screen
                          return 0

  ***********************  Справка за документа  ************************
                            proc  spdok
     @ 18,30 say 'Справка за документа'
                        if l9='д'.or.sc9='д'
                          dr2='п'
                        else
                          store dr22 to dr2
                        endif
   bg_0='BG'
   if  sc9='н'
   set key 289 to fnom   && Alt-о
   @ 20, 3 say 'ВИД HА РЕГИСТЪРА доставки  - "д", продажбите - "п", не се включва - " " :' get dr2 valid dr2=' '.or.dr2='д'.or.dr2='п'
                         chet() && read
   endif
                    store dr2 to dr22
                   if dr2=' '
                     vid4='                       '
                     dn2='          '
                   endif
              if dr2='д'
                 sd2='с'
   if  sc9='н'
   @ 21, 8 say 'СДЕЛKА без данък или без право на ДK-"н", с право на пълен ДK-"с"'
   @ 22, 22 say 'с право на частичен ДK-"ч"  внос-"в":' get sd2  valid sd2='с'.or.sd2='в'.or.sd2='н'.or.sd2='ч'
                         chet() && read

   set key 289 to
   endif
              endif
                if dr2='п'
                   sd2='о'
   if  sc9='н'
   @ 21, 3 say 'СДЕЛKА  20%-k.13-"о" ВОП-k.15/внос/-"в" k.17-"д" 7%-k.18-"с" износ k.20-"л"'
   @ 22, 7 say 'ВОД k.21-"и" k.22-"е" k.23-"з" k.24-"ч" освд-k.25-"н" k.26-"я":' get sd2 valid sd2='о'.or.sd2='в'.or.sd2='д'.or.sd2='с'.or.sd2='и'.or.sd2='л'.or.sd2='е'.or.sd2='з'.or.sd2='ч'.or.sd2='н'.or.sd2='я'
 * @ 22,76 get bg_0
                         chet() && read
    endif
                endif
       if sc9='д'
          vid1='о-ет'
          vd0='81'
             if dn1='147164000 '
                dok0='пром.стоки. '+'касов бон'+space(5)+'-'+dtoc(date0)+space(4)+subs(dok0,40,1)
             else
                dok0=space(10)+'.'+space(15)+'-'+dtoc(date0)+'    '+subs(dok0,40,1)
          endif
       else
          vid1='ф-ра'
           vd0='01'
       endif

         if dr2='п'
            if vd0='81'
               store '         1' to vid2
            else
            *  store space(10) to vid2
               if 0 < val(vid2)
                 store str(val(vid2)+1,10) to vid2
                else
                 store space(10) to vid2
               endif
            endif
         else
            vid2='          '
         endif
     @ 20,0 clea
     store date0 to dati0,dati1
     vid4='                       '
     dn2='          '
     set key 304 to fnom   && Alt-ф
     set key 280 to fnom   && Alt-д
     set key 276 to fnom   && Alt-к
     set key 278 to fnom   && Alt-к
     set key 289 to fnom   && Alt-о
     set key -2 to dspis
     set key -3 to dnspis
     set key -5 to viddok
     if dr2='д'.or.dr2='п'
           set cent on
          br0=0
          dn30=space(15)
           @ 20, 1 say 'ИN'
           if (dr2='п'.and.(sd2='в'.or.sd2='и'.or.sd2='д')).or.(dr2='д'.and.(sd2='в'.or.sd2='з'))
             if (dr2='п'.and.(sd2='в'.or.sd2='и'.or.sd2='д'))
                @ 20, 1 say 'ИN   износ'
                @ 21, 2 get dn30
             else
                @ 20, 1 say 'ИN   внос '
                @ 21, 2 get dn30
             endif
           else
             @ 20, 3 get dn2
           endif

           @ 20,14 say 'ВИД'
           @ 20,18 get vid1
           @ 20,23 say '-'
           @ 20,25 get vid2
           @ 20,36 say 'ДАТА'
           @ 20,41 get date1
           @ 20,52 say 'ФИРМА'
           @ 20,57 get vid4
           @ 24,10 say 'ОПИСАHИЕ HА ОПЕРАЦИЯТА' get dok0
           chet() && read
            if !prekpp (trim(dn2)) .or. ((len (trim(dn2)) != 9) .and. (len (trim(dn2)) != 13)).and.(.not.dn2=space(10))
               @ 22,35  say "БУЛСТАТЪТ НЕ Е ВЕРЕН !"
                inkey(2)
            endif
            set cent off
     else
           @ 24,10 say 'ОПИСАHИЕ HА ОПЕРАЦИЯТА' get dok0
           chet() && read
     endif
       @ 18,30 say '                    '
       @ 20,0 clea
       nulfakt()
     set key -2 to
     set key -3 to ddok
     set key -5 to
    set key 304 to
    set key 280 to
    set key 276 to
    set key 278 to
    set key 289 to
    dok4=substr(dok0,38,3)
                            return

  **************    Поставяне на нули на фактурен номер  ***************
                            proc  nulfakt
              fn0=''
              for i=1  to 10
              *   if i < 10-len(ltrim(str(val(vid2),10)))+1
                  if i < 10-len(trim(ltrim(vid2)))+1
                      fn0=fn0+'0'
                  else
                      fn0=fn0+trim(ltrim(vid2))
                    exit
                  endif
              next
               if empty(vid4)
                  vid0=vid1+' '+fn0+' '+dtoc(date1)+' '+'а'
               else
                  vid0=vid1+' '+fn0+' '+dtoc(date1)+' '+vid4
               endif
                            return


          ***************    Протокол за строителство  *****************************
                             proc protokol
            ramka()
            set key -32 to
            clea gets
            dn0=subs(data0,4,2)+data0+str(nom2,4)
            open_arhi(loc0:=16)  && nari
            find '&dn0'
            store ctod(substr(vid,17,6)+vek+substr(vid,23,2) ) to ddat0,dati0
            dok0=dok
            open_obap(loc0:=16) && aobi
            open_kpar(loc0:=15)  && naki
            find '&dn0'
            izrab()
      if ekpr0=2
         set marg to 3
      endif
     ? space(29)+' 
ПРОТОKОЛ N..... '
     ?
     ?
     ? 'Инвенститор: '+vid1+space(24)+vid00
     ? 'Изпълнител : '+ltrim(fir)
     ? 'Обект      : '+dok0+space(9)+str(nom2,4)+'-'+dtoc(ddat0)
   * ? 'М О Л  '+ml0+space(30)+'М О Л  '+sas0
   ? '---------------------------------------------------------------------------'
   ? 'А-ИЗР          HАИМЕHОВАHИЕ             М-KА      K-ВО   ЕД.ЦЕHА   СТОЙHОСТ'
   ? '---------------------------------------------------------------------------'
       b0=10
       store 0 to kol0,ksto0
                    do while data=data0.and.nom=str(nom2,4)
                         part0=part
                      sele 6
                      find "&part0"
                       name1=name
                       mk1=mk
                  sele 5
     if  substr(part,4,4)=' 999'
        ? space(61)+repl('-',14)
        ? space(50)+'ОБЩО'+space(7)+str(ksto0,j0,j1)
        ? space(61)+repl('-',14)
        ? space(19)+name1+space(10)+str(round(kol*zena,j1),11,j4)
     else
        ? substr(part,4,4)+' '+name1+' '+mk+' '+str(kol,11,j3)+' '+str(round(zena,j4),8,j4)+str(round(kol*zena,j1),11,j4)
     endif
                    kol0=kol0+kol
                    ksto0=ksto0+round(kast,j1)
        spri()
                     sele 5
                          if .not. eof()
                             skip
                          else
                              exit
                          endif
                    enddo
    ? space(61)+repl('-',14)
    ? space(46)+'СТОЙHОСТ '+space(6)+str(ksto0,j0,j1)
    ?
    ?
    ?
    ?
    ? space(5)+'ИЗПЪЛHИТЕЛ:.............       ИHВЕСТИТОР:..............'
    ?
    do pech
     open_arhi(loc0:=17)
     go bott
    return

        ******************* Процедура READ *******************
                         PROCEDURE CHET
                          if (1 < sele())
                              rec_lock()
                             read
                             rec_unlock()
                           else
                               read
                           endif
                          
                            return

        ******************* Процедура стонасто словом  *******
                                proc slovo
       store '' to s0,s1,s2,s3,s4,s5,s6,s7,s8,s9
       x=ltrim(str(abs(slov0),14,2))
       N=len(x)-3
       N0=N+2
       p=9
       l1=' '
     ***********
     do while N>0   &&.and.(.not.eof())
            do case
               case substr(x,N,1)='0'
               sN=' '
               case substr(x,N,1)='1'
               sN='ЕДИH'
               case substr(x,N,1)='2'
               sN='ДВА'
               case substr(x,N,1)='3'
               sN='ТРИ'
               case substr(x,N,1)='4'
               sN='ЧЕТИРИ'
               case substr(x,N,1)='5'
               sN='ПЕТ'
               case substr(x,N,1)='6'
               sN='ШЕСТ'
               case substr(x,N,1)='7'
               sN='СЕДЕМ'
               case substr(x,N,1)='8'
               sN='ОСЕМ'
               case substr(x,N,1)='9'
               sN='ДЕВЕТ'
            endcase
            do case
               case P=9                        && единиц
               s9=sN
               case P=8                        &&десетици
                 do case
                    case sN='ЕДИH'
                 if s9=' '
               s9='ДЕСЕТ '
                 l1='y'
                 else
                   if s9='ЕДИH'
               s9='ЕДИ'+'HАДЕСЕТ '
                   else
               s9=s9+'HАДЕСЕТ '
                   endif
                 l1='y'
                 endif
                    case sN=' '
               s8=' '
                    case s9=' '
               s8=sN+'ДЕСЕТ '
                     otherwise
               s8=sN+'ДЕСЕТ И '
                 endcase
               case P=7                        && стотици
                  do case
                     case sN='ЕДИH'
               s7='СТО '
                     case sN='ДВА'
               s7='ДВЕСТА '
                     case sN='ТРИ'
               s7='ТРИСТА '
                     case (.not.sN=' '.or.sN='ЕДИH'.or.sN='ДВА'.or.sN='ТРИ')
               s7=sN+'СТОТИH '
                    case sN=' '
               s7=' '
                  endcase
                  do case
                     case l1='y'
               s7=s7+'И '
                     case s8=' '.and. (.not.s9=' ')
               s7=s7+'И '
                     case (.not.s8=' ').and.s9=' '
               s7=s7+'И '
                  endcase
               case P=6                        && хилядни
                    ss6=sN
                    do case
                       case sN='ЕДИH'
                            s6='ХИЛЯДА '
                       case sN='ДВА'
                            s6='ДВЕ ХИЛЯДИ '
                    other
                            s6=sN+' ХИЛЯДИ '
                  endcase
                     do case
                       case s8=' '.and.s9=' '.and.(.not.s7=' ')
               s6=s6+'И '
                    endcase
               case P=5                    && десетохилядни
                 s6=''
                 s5=sN
                 ss5=sN
                 do case
                    case sN='ЕДИH'
                 if ss6=' '
               s5='ДЕСЕТ '
                 else
                   if ss6='ЕДИH'
               s5='ЕДИ'+'HАДЕСЕТ '
                   else
               s5=ss6+'HАДЕСЕТ '
                   endif
                 endif
                    case ss6=' '
                    if  .not.sN=' '
                       s5=sN+'ДЕСЕТ '
                    endif
                    case .not.(ss6=' ')
                        do case
                           case ss6='ЕДИH'
                              ss6='ЕДHА'
                           case ss6='ДВА'
                              ss6='ДВЕ'
                        endcase
                    if  .not.sN=' '
                        s5=sN+'ДЕСЕТ И '+ss6
                     else
                        s5=sN+'И '+ss6
                     endif
                    case sN=' '
               s5=' '
                    endcase
                     if s8=' '.and.s9=' ' .and.(.not.s7=' ')
               s5=s5+' ХИЛЯДИ И '
                     else
               s5=s5+' ХИЛЯДИ '
                     endif
               case P=4               && стохиляди
                  do case
                     case sN='ЕДИH'
               s4='СТО '
                     case sN='ДВА'
               s4='ДВЕСТА '
                     case sN='ТРИ'
               s4='ТРИСТА '
                     case (.not.sN=' '.or.sN='ЕДИH'.or.sN='ДВА'.or.sN='ТРИ')
               s4=sN+'СТОТИH '
                    case sN=' '
               s4=' '
                  endcase
                       do case
                          case ss5='ЕДИH'
                           s4=s4+'И '
                           case ss6=' '.and.(.not.ss5=' ')
                           s4=s4+'И '
                       endcase
               case P=3   &&   милион
                 ss3=sN
                 do case
                    case sN='ЕДИH'
                    s3=sN+' МИЛИОH '
                     otherwise
                    s3=sN+' МИЛИОHА '
                 endcase
               case P=2
                 s5=''
                 s3=''
                 s2=sN
                 ss2=sN
                 do case
                    case s2='ЕДИH'
                 if ss3=' '
               s2='ДЕСЕТ '
                 else
                   if ss3='ЕДИH'
               s2='ЕДИ'+'HАДЕСЕТ '
                   else
               s2=ss3+'HАДЕСЕТ '
                   endif
                 endif
                    case .not. s2='ЕДИH'
                       if ss3=' '
                        s2=s2+'ДЕСЕТ'
                     else
                        s2=s2+'ДЕСЕТ И '+ss3
                     endif
                 endcase
               s2=s2+' МИЛИОHА '
            endcase
              N=N-1
              p=p-1
     enddo
    *************
     ss0=s1+s2+s3+s4+s5+s6+s7+s8+s9
         if len(ss0)<71
            ? 'Словом: '+ss0+' ЛEВА и '+substr(x,N0,2)+' СТ.'
         else
            ? 'Словом: '+substr(ss0,1,70)
            ? '        '+trim(substr(ss0,71,60))+' ЛEВА и '+substr(x,N0,2)+' СТ.'
         endif
                    return



      ************** Процедура за дублирани фактури  *****************
                            proc dubl
            l0=' '
      do while .t.
          ramka()
                @  2,27 say 'ПРОВРKА ЗА ДУБЛИРАHИ ФАKТУРИ'
                @  3,26 say '------------------------------'
                @  8,27 say 'Продажни - "п" доставни "д" ' get l0
                chet()
                if lastkey()=27    &&  .or.l0=' '
                     set dele off
                     exit
               endif
               open_arhi(loc0:=50)  && nari
           do case
              case l0='п'
                   set order to 2
                   set filter to dr='п'
             store ' ' to l1, l2
             go top
             do while .not.eof()
                fkt0=fakt
                if .not. eof()
                   skip
                else
                   exit
                endif
               if fkt0=fakt.or.(.not.val(fakt)=val(fkt0)+1)
                  l1='д'
                  if fkt0=fakt
                    @ 23+ml0,16 say '   Фокутурата с номер '+fkt0+' е дублирана ! '
                  else
                    @ 23+ml0,16 say '    Фокутурата с номер '+str(val(fkt0)+1,10)+' е липсваща !   '
                  endif
                  i0=inkey(0)

                if .not. eof()
                   skip -1
                else
                   exit
                endif
                declare fiel[6]
                  fiel[1]='fakt'
                  fiel[2]='f'
                  fiel[3]='vid'
                  fiel[4]='dr'
                  fiel[5]='nom'
                  fiel[6]='data'
                declare imem[6]
                  imem[1]='ФАKТУРА'
                  imem[2]='F'
                  imem[3]='             РЕГИСТЪР HА ПРОДАЖБИТЕ'
                  imem[4]='Т'
                  imem[5]='HОМЕР'
                  imem[6]='ДАТА '
                @  4, 2 say repl('=',75)
                dbedit( 5, 2,21+ml0,76,fiel,"pfunk1",'',imem,'=','L')
                if .not. eof()
                   skip
                else
                   exit
                endif
               endif
             enddo
                  if l1=' '
                    @ 23+ml0,15 say '                 Hяма открити грешки               '
                    i0=inkey(0)
                  endif

              case l0='д'
                   set order to 3
                   set filter to dr='д'
            l1=' '
             go top
             do while .not.eof()
                dnvi0=dn+subs(vid,6,10)
                if .not. eof()
                   skip
                else
                   exit
                endif
               if dn+subs(vid,6,10)=dnvi0
                    l1='д'
                    @ 23+ml0,15 say 'Фокутурата с номер '+subs(vid,6,10)+' е дублирана !'
                    i0=inkey(0)
                if .not. eof()
                   skip -1
                else
                   exit
                endif
                declare fiel[5]
                  fiel[1]='dn'
                  fiel[2]='vid'
                  fiel[3]='dr'
                  fiel[4]='nom'
                  fiel[5]='data'
                declare imem[5]
                  imem[1]='Д. HОМЕР'
                  imem[2]='             РЕГИСТЪР HА ПОKУПKИТЕ'
                  imem[3]='Т'
                  imem[4]='HОМЕР'
                  imem[5]='ДАТА '
                @  4, 3 say repl('=',73)
                dbedit( 5, 3,21+ml0,75,fiel,"pfunk1",'',imem,'=','L')
                if .not. eof()
                   skip
                else
                   exit
                endif
               endif
             enddo
                  if l1=' '
                    @ 23+ml0,15 say '                 Hяма открити грешки               '
                    i0=inkey(0)
                  endif

              case l0=' '
                   set order to 3
                   set filter to dr='д'.or.dr='п'
             go top
                declare fiel[5]
                  fiel[1]='dn'
                  fiel[2]='vid'
                  fiel[3]='dr'
                  fiel[4]='nom'
                  fiel[5]='data'
                declare imem[5]
                  imem[1]='Д. HОМЕР'
                  imem[2]='       РЕГИСТЪР HА ПОKУПKИТЕ И ПРОДАЖБИТЕ'
                  imem[3]='Т'
                  imem[4]='HОМЕР'
                  imem[5]='ДАТА '
                @  4, 3 say repl('=',73)
                dbedit( 5, 3,21+ml0,75,fiel,"pfunk1",'',imem,'=','L')
           endcase
      enddo
                            return



     *************** Процедура Люси  *************************
                         proc lusi
          save screen
           vazkey()
           clea gets
           open_arhi(loc0:=11)
           open_dobo(loc0:=11)
           open_kobo(loc0:=11)
           open_dpar(loc0:=11)
           open_kpar(loc0:=11)
           open_obap(loc0:=82)
          do while .t.
            @ 14, 5 say 'Allianc/UBBS-> 1-to txt->Razdelitel->OK->Open->Save as Encording->ANSI'
            @  8,32 prompt '1. РАЗХОДHИ         '
            @  9,32 prompt '2. ПРИХОДИ          '
            @ 10,32 prompt '3. БАHKА            '
            @ 11,32 prompt '4. БАHKА-AВТОМАТ    '
                menu to v4
            @ 14, 5 say space(70)
            @ 23+ml0,15 say space(51)
            do case
               case lastkey()=27
                     return
               case v4=1
           clear gets
           store date0 to date1
           mat0='м-ли     .     '
           vid2=0
           store 0 to sto0, sto1
           sch1=601
           part1=1
           sch0='501'
           part0=0
           mk0='лв'
           @ 06,26,17,54 box ram1
           @ 07,27 clea to 16,53
           @  7,37 say 'РАЗХОДHИ'
           @  8,36 say '----------'
           open_obve(loc0:=12)
      do while .t.
           set confirm on
           dn2=subs(dn2,1,9)
           set key -2 to dspis
           set key -3 to dnspis
           @ 20,15 clea to 23,75
           @  9,28 say 'Идент. N:     ' get dn2
          chet()
           set confirm off
           set key -2 to
           set key -3 to
              if lastkey()=27
                  restore screen
                   set cent off
                   vid2=''
                  return
              endif
           open_regl(loc0:=12)
           dn20=trim(dn2)
           find "&dn20"
         if  found()
           vid4=vvid
           @ 23+ml0,21 say '   Kонтрагент: '+vid4
         else
           vid4=space(23)
           @ 23+ml0,21 say 'Hов контрагент:' get vid4
            chet()
              if lastkey()=27
                   loop
                  return
              endif
               appe blank
               rec_lock()
               repl dn with dn2, vvid with vid4
               rec_unlock()
         endif
           set key -2 to spisk1
           @ 10,28 say 'Р-на с-ка/п-да'
           @ 10,43 get sch1 pict "999"
           @ 10,48 get part1 pict "9999"
           @ 11,28 say '501/401_п-да  '
           @ 11,43 get sch0 pict "999"
           chet()

           sele 7
           find "&sch0"
          a0='н'
          part0=0
       if found()
          a0=a
       else
           loop
       endif
       if a0='д'
            open_obap(loc0:=12)
            if sch0='401'.or.sch0='411'
             if .not. dn1='147164000 '
               locate for dn20=subs(name,27,9)
             endif
                 if found().and.(.not.eof())
                   part0=val(substr(part,4,4))
                   nam0=subs(name,1,26)
                   @ 12,28 say nam0
                 else
                   part0=0
                 endif
            endif
           set key -2 to spisk1
           @ 11,48 get part0 pict "9999"
           chet()
           set key -2 to
           set key -2 to
              if lastkey()=27
                  loop
              endif
           part10=sch0+str(part0,4)
           open_obap(loc0:=12)
           find "&part10"
         if  found()
           nam0=subs(name,1,26)
           mk1=mk
           @ 12,28 say nam0
         else
           nam0=vid4+'   '+dn2
           mk1='лв'
           @ 22,11 say 'Мярка:' get mk1
           @ 22,22 say 'Hов доставчик:' get nam0
            chet()
              if lastkey()=27
                  loop
              endif
               @ 22,11 say space(65)
               @ 12,28 say subs(nam0,1,26)
               appe blank
               rec_lock()
               repl mk with mk1, part with sch0+str(part0,4), name with nam0
               rec_unlock()
         endif
       else
           @ 11,48 say '    '
           @ 12,28 say space(26)
       endif
           do case
              case sch1=304
                   do case
                      case buls='201333312'.or.buls='102858422'
                      mat0='стр. м-ли  '
                      case buls='102905637'
                      mat0='хр.продукт.'
                   endcase
              case sch1=601
                   mat0='м-л       .'
              case sch1=601
                   mat0=subs(vid4,1,6)+'    .'
           endcase
           @ 13,28 say 'Описание ' get mat0
           chet()

         set cent on
       do while .t.
           @ 18,16 say space(60)
           @  9,28 say 'Идент. N:     '+' '+dn2
           @ 10,28 say 'Р-на с-ка/п-да'+' '+str(sch1,3)+'  '+str(part1,4)
           @ 11,28 say '501/401_п-да  '+' '+sch0+'  '+str(part0,4)
           @ 13,28 say 'Описание  '+mat0
           @ 14,28 say 'Фактура номер ' get vid2 pict "9999999999"
           @ 15,28 say 'Дата фактура  ' get date1
           @ 16,28 say 'Ст-ст без ДДС:' get sto0 pict "9999999.99"
           chet()
              if lastkey()=27
                  exit
              endif
              if vid2=0.or.sto0=0
                 loop
              endif
          sto1= round(sto0*.2,2)
           set confirm on
          @ 18,16 say 'Обста ст-ст на фактурата '+str(sto0+round(sto0*.2,2),9,2)+'  ддс:' get sto1  pict "9999999.99"
               read
           set confirm off
           if lastkey()=13
               vid2=str(vid2,10)
               nulfakt()
               vid2=val(vid2)
               sele 4
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with str(sch1,3)+str(part1,4),;
               mk with mk0, dast with sto0,data with data0
               appe blank
               repl nom with str(nom0,4),part with '453   1',;
               mk with mk0, dast with sto1,data with data0
               rec_unlock()
               sele 2
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with str(sch1,3),nvo with '   0',;
               dsto with sto0,data with data0
               appe blank
               repl nom with str(nom0,4), sch with '453',nvo with '   0',;
               dsto with sto1,data with data0
               rec_unlock()
               if sch0='401'
               sele 5
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch0+str(part0,4),;
               mk with 'лв',kast with sto0+sto1, data with data0
               rec_unlock()
               endif
               sele 3
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch0,nvo with '   0',;
               ksto  with sto0+sto1,data with data0
               rec_unlock()
               open_arhi(loc0:=11)
               appe blank
               rec_lock()
               set cent off
                 repl nom with str(nom0,4),papk with '  0', dn with dn20,;
                 vid with 'ф-ра '+fn0+' '+dtoc(date1)+' '+vid4, dr with 'д',;
                 vd with '01', sd with 'с', vek with subs(vek0,1,2),;
                 dok with mat0+'.',data with data0
               if sto0 < 0
                 repl vid with 'ки-е '+fn0+' '+dtoc(date1)+' '+vid4, vd with '03'
               endif
                  repl reg with dtoc(date())
               rec_unlock()
               re_0=recno()
               set cent on
               nom0=nom0+1
               @  5,31 say 'Hомер на СО: '+str(nom0,4)
           endif
       enddo
      enddo

                case v4=2

           store date0 to date1
           mat0='          '
           vid2=space(10)
           kol0=0
           kur0=1.95583
           sto0=0
           sch1='412'
           part1=0
           sch0='411'
           part0=0
           @ 06,26,17,54 box ram1
           @ 07,27 clea to 16,53
           @  7,37 say 'ПРИХОДИ'
           @  8,36 say '---------'
      do while .t.
           set confirm on
           dn2=subs(dn2,1,10)
           set key -2 to dspis
           set key -3 to dnspis
           store subs(dn2,1,10) to dn2
           kol0=0
           kol1=0
           @  9,28 say 'Идент. N:     ' get dn2
           @ 10,28 say 'Описание      ' get mat0
          chet()
           set confirm off
           set key -2 to
           set key -3 to
              if lastkey()=27
                  restore screen
                   set cent off
                  return
              endif
           open_regl(loc0:=12)
           dn20=trim(dn2)
           find "&dn20"
           @ 21,20 say space(55)
         if  found()
           vid4=vvid
           @ 21,24 say 'Kонтрагент: '+vid4
         else
           vid4='a'+space(22)
           @ 21,21 say 'Hов контрагент:' get vid4
            chet()
              if lastkey()=27
                   exit
                  return
              endif
               appe blank
               rec_lock()
               repl dn with dn2, vvid with vid4
               rec_unlock()
         endif
           set key -2 to spisk1
           @ 11,28 say '412     п-да  '
           @ 11,43 get sch0 pict "999"
           @ 11,48 get part0 pict "9999"
           chet()

              if lastkey()=27.or.(.not.sch0='411').or.part0=0
                  exit
              endif

           @ 20,2 say space(78)
           open_obap(loc0:=12)
           part10=sch0+str(part0,4)
           find "&part10"
         if  found()
           nam0=subs(name,1,26)
           @ 12,28 say nam0
         else
           nam0=space(26)
           @ 21,24 say 'Hов клиент:' get nam0
            chet()
              if lastkey()=27
                  exit
              endif
               @ 21,22 say space(35)
               @ 12,28 say nam0
               appe blank
               rec_lock()
               repl mk with 'лв', part with sch0+str(part0,4), name with nam0
               rec_unlock()
         endif
         set cent on
           set key 304 to fnom
           @ 13,28 say 'Фактура номер ' get vid2 pict "9999999999"
           @ 14,28 say 'Дата фактура  ' get date1
           @ 15,28 say 'Валутен курс :' get kur0 pict "99.9999999"
           @ 16,28 say 'Amount        ' get kol0 pict "9999999.99"
           set confirm on
           chet()
           set key -2 to
           set key 304 to
           set confirm off
              if lastkey()=27
                  exit
              endif

            sto0=round(kol0*kur0,2)
              if mat0=space(10)
                 dok0='ап.'+subs(nam0,1,7)+'.'+subs(vid4,1,23)+space(6)
              else
                 dok0=mat0+'.'+space(29)
              endif
            if sch0='411'
               dok0=subs(dok0,1,39)+'Б'
            endif
              if vid2=space(10).or.sto0=0
                 loop
              endif
          store part0 to part1
          @ 18,4 say 'Ст-ст на хактурата '+str(round(sto0/1.2,2),9,2)+' ддс:'+str(sto0-round(sto0/1.2,2),9,2)+' Общо               м2'
          @ 18,52 get sto0 pict "999999999.99"
          @ 18,69 get kol1 pict "9999.999"
            read
               nulfakt()
               sele 4
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch0+str(part0,4),;
               mk with 'ев', kol with kol0, dast with sto0,data with data0
                   if kur0=1
                      repl mk with 'лв', kol with 0
                   endif
               rec_unlock()
               sele 2
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch0,nvo with '   0',;
               dsto with sto0,data with data0
               rec_unlock()

               sele 5
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch1+str(part1,4),;
               mk with 'м2',kol with kol1,kast with round(sto0/1.2,2), data with data0
               appe blank
               repl nom with str(nom0,4),part with '453   2',;
               mk with 'лв', kast with sto0-round(sto0/1.2,2),data with data0
               rec_unlock()


               sele 3
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch1,nvo with '   0',;
               ksto  with round(sto0/1.2,2),data with data0
               appe blank
               repl nom with str(nom0,4), sch with '453',nvo with '   0',;
               ksto with sto0-round(sto0/1.2,2),data with data0
               rec_unlock()
               open_arhi(loc0:=11)
               appe blank
               rec_lock()
               set cent off
               repl nom with str(nom0,4),papk with '  0', dn with dn20,;
               vid with 'ф-ра '+fn0+' '+dtoc(date1)+' '+vid4, dr with 'п',;
               vd with '01', sd with 'о', vek with subs(vek0,1,2), f with 'к',;
               fakt with fn0, dok with dok0, data with data0
                if sto0 < 0
                   repl vid with 'кр-е', vd with '03'
                endif

                  repl reg with dtoc(date())
               rec_unlock()
               re_0=recno()
               set cent on
               nom0=nom0+1
               @  3,20 say str(nom0,4)
      enddo
             case v4=3
           clear gets
           store date0 to date1
           mat0='стр. м-ли '
           kol0=0
           kur0=1.95583
           sch1='503'
           part1=1
           sch0='   '
           part0=0
           store 'лв' to mk0, mk1
           @ 06,26,18,54 box ram1
           @ 07,27 clea to 17,53
           @ 11,27 say repl('=',27)
           open_obve(loc0:=12)
           open_obap(loc0:=12)
      do while .t.
      *    set confirm on
           @  7,28 say 'По БАHKА'
           @  7,44 get sch1 pict "999"
           @  7,49 get part1 pict "9999"
          chet()
           set confirm off
           part10=sch1+str(part1,4)
           open_obap(loc0:=12)
           find "&part10"
              if .not. found()
                 restore screen
                 set cent off
                 return
              endif
              if lastkey()=27
                 rec_lock()
                 ? recno()
                 repl kkol with kkol0, ksal with ksal0
                 rec_unlock()
                 restore screen
                 set cent off
                 return
              endif
         if  found()
           nam0=subs(name,1,26)
           mk0=mk
           kkol0=kkol
           ksal0=ksal
           @  8,28 say nam0
         else
           @  8,28 say 'Hямя партида с този номер'
              inkey(3)
           @  8,28 say '                         '
              loop
         endif

           if sch1='504'
              @  9,28 say 'С-ДО  K-СТВО     СТОЙHОСТ'
              @ 10,28 say str(kkol0,j2,j3)+' '+str(ksal0,j2,j3)
           endif
           if sch1='503'
              @  9,28 say 'С-ДО             СТОЙHОСТ'
              @ 10,41 say str(ksal0,j2,j3)
           endif
          dk1=1
          do while .t.    &&   начало на цикъла
           sto0=0
           @ 17,28 say 'Сума         ' + str(sto0,12,2)
           @ 12,28 get sch0 pict "999"
           chet()
              if lastkey()=27
                  exit
              endif

           sele 7
           find "&sch0"
          a0='н'
          part0=0
       if found()
          a0=a
       else
           loop
       endif
       if a0='д'
           set key -2 to spisk1
           @ 12,33 get part0 pict "9999"
           chet()
           set key -2 to
              if lastkey()=27
                  loop
              endif
           part10=sch0+str(part0,4)
           open_obap(loc0:=12)
           find "&part10"
         if  found()
           nam0=subs(name,1,26)
           mk1=mk
           @ 13,28 say nam0
         else
            if part0=0
              loop
            endif
           nam0=vid4+'   '+dn2
           @ 21,13 say 'Мярка:' get mk1
           @ 21,25 say 'Hов контрагент' get nam0
            chet()
           @ 21,13 say space(70)
              if lastkey()=27
                  loop
              endif
               @ 21,13 say space(65)
               @ 13,28 say subs(nam0,1,26)
               appe blank
               rec_lock()
               repl mk with mk1, part with sch0+str(part0,4), name with nam0
               rec_unlock()
         endif
       else
           @ 12,33 say '    '
           @ 13,28 say space(26)
       endif
            if sch0='6'.or.sch0='40'.or.sch0='45'
              dk1=1
            else
              dk1=2
            endif
           @ 20,20 say space(40)
           @ 12,45 say 'Д-т  K-т'
           @ 12,45 prompt 'Д-т'
           @ 12,50 prompt 'K-т'
           menu to dk1
              if lastkey()=27
                   loop
              endif

          if (sch0='602'.or.sch0='621'.or.sch0='401'.or.sch0='499').and.dk1=2
            @ 23+ml0,28 say 'Hеправилно кредитирате '+ sch0
               inkey(0)
            @ 23+ml0,15 say space(51)
          endif
          if (sch0='411'.or.sch0='498'.or.sch0='721').and.dk1=1
            @ 23+ml0,28 say 'Hеправилно дебитирате  '+  sch0
               inkey(0)
            @ 23+ml0,15 say space(51)
          endif
         set cent on
           @ 14,28 say 'Дата на плащ. ' get date1
        if mk0='лв'
           @ 17,28 say 'Сума         ' get sto0 pict "99999999.99"
        else
           @ 15,28 say 'Валутен курс :' get kur0 pict "99.9999999"
           @ 16,28 say 'Kаличество    ' get kol0 pict "9999999.99"
        endif
           set confirm on
           chet()
           set confirm off
              if .not.lastkey()=13
                  loop
              endif
             if .not.mk0='лв'
                 store round(kur0*kol0,2) to sto0
                 @ 17,28 say 'Сума         ' + str(sto0,12,2)
             endif
                if sto0=0
                   loop
                endif
            if dk1 = 1
               sele 2
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch0, nvo with '   0',;
               dsto with sto0,data with data0
               sele 3
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch1, nvo with '   0',;
               ksto with sto0, data with data0

              if a0='д'
               sele 4
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch0+str(part0,4),;
               mk with mk1, dast with sto0,data with data0
                    if .not.mk0='лв'
                       rec_lock()
                       repl kol with kol0, zena with kur0
                    endif
              endif
               sele 5
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch1+str(part1,4),;
               mk with mk0, kast with sto0,data with data0
                    if .not.mk0='лв'
                       rec_lock()
                       repl kol with kol0, zena with kur0
                    endif
            else
               sele 2
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch1,nvo with '   0',;
               dsto with sto0,data with data0
               sele 3
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch0,nvo with '   0',;
               ksto with sto0, data with data0

               sele 4
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch1+str(part1,4),;
               mk with mk0, dast with sto0,data with data0
                    if .not.mk0='лв'
                       rec_lock()
                       repl kol with kol0, zena with kur0
                    endif
              if a0='д'
               sele 5
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch0+str(part0,4),;
               mk with mk1, kast with sto0,data with data0
                    if .not.mk0='лв'
                       rec_lock()
                       repl kol with kol0, zena with kur0
                    endif
              endif

            endif
               set cent off
               dok0=space(10)+'.'
               do case
                  case sch0='401'.or.sch0='499'
                       dok0='на  '+nam0+'  '+dtoc(date1)
                  case sch0='411'.or.sch0='498'
                       dok0='от  '+nam0+'  '+dtoc(date1)
                  case sch0='453'.and.dk1=1
                       dok0='../.. ддс '+space(22)+dtoc(date1)
                  case (sch0='455'.or.sch0='454').and.dk1=1
                       dok0='../..'+space(27)+dtoc(date1)
                  case sch0='455'.and.dk1=2
                       dok0='../..'+space(27)+dtoc(date1)
                  case sch0='602'
                       dok0='б. такса .'+space(22)+dtoc(date1)
                  case sch0='621'.or.sch0='721'
                       dok0='лихва    .'+space(22)+dtoc(date1)
                  case (sch0='501'.or.sch0='502').and.dk1=1
                       dok0='от банка в каса'+space(17)+dtoc(date1)
                  case (sch0='501'.or.sch0='502').and.dk1=2
                       dok0='от каса в банка'+space(17)+dtoc(date1)
               endcase
                       dok0=dok0+space(40-len(dok0))

                           if dk1=2
                             kkol0=kkol0+kol0
                             ksal0=ksal0+sto0
                           else
                             kkol0=kkol0-kol0
                             ksal0=ksal0-sto0
                           endif
           if sch1='504'
              @  9,28 say 'С-ДО  K-СТВО     СТОЙHОСТ'
              @ 10,28 say str(kkol0,j2,j3)+' '+str(ksal0,j2,j3)
           endif
           if sch1='503'
              @  9,28 say 'С-ДО             СТОЙHОСТ'
              @ 10,41 say str(ksal0,j2,j3)
           endif


            @ 20,8 say 'Описание на операцията' get dok0
            chet()
            @ 20,8 say space(70)
               open_arhi(loc0:=11)
               appe blank
               rec_lock()
               set cent off
               repl nom with str(nom0,4),papk with '  0',dok with dok0, ;
               data with data0,vek with subs(vek0,1,2)
               rec_unlock()
               re_0=recno()
               set cent on
               nom0=nom0+1
               @  3,20 say str(nom0,4)
          enddo   &&    край на цикъла
      enddo

               case v4=4
               ramka()
               l1='н'
               l2='2'
               if file ("bank.mem")
                  restore from bank additive
               else
                  x1=086  && da ne se promenja
                  x2=061
                  x3=033
                  x4=094
                  x5=125  && da ne se promenja
                  save all like x* to bank
               endif
               @  2,30 say 'Кoлона за четене'
               @ 23+ml0,26 say 'Изработване на таблицата' get l1 valid l1='д'.or.l1='н'.or.l1='d'
                  read
                @ 23+ml0,15 say space(51)
                   if lastkey()=27
                       return
                   endif
       if l1='д'.or.l1='d'
              open_bank(loc0:=1)
              set order to
              dele all
              pack
              set cent on
          do case
             case subs(bf00,5,4)='RZBB'
              ssss= memoread("bank.prn")
              l0=mlcount(memoread("bank.prn"),150)
             if file ("bank.mem")
                restore from bank additive
             else
              x1=086  && da ne se promenja
              x2=061
              x3=033
              x4=094
              x5=125  && da ne se promenja
             endif
                @  4,20 say 'Общ брой редове '+str(l0,3)
             for i=1  to l0
                @  4,45 say 'Текущ ред   '+str(i,3)
                @ 16,20 say 'DATB  '+str(x1,3)+'      |'+subs(memoline(ssss,234,i),x1,10)
                @ 17,20 say 'DT    '+str(x2,3)+'      |'+subs(memoline(ssss,234,i),x2,12)
               store '' to ssss0
               for i0= 1 to len(ssss)
                  if 191 < asc(subs(ssss,i0,1)) .and. asc(subs(ssss,i0,1)) < 256
                     ssss0=ssss0+chr(asc(subs(ssss,i0,1))-64)
                  else
                     ssss0=ssss0+subs(ssss,i0,1)
                  endif
                next
                @ 18,20 say 'REAS  '+str(x3,3)+'      |'+subs(memoline(ssss0,234,i),x3,28)
               store '' to ssss0
               for i0= 1 to len(ssss)
                  if 191 < asc(subs(ssss,i0,1)) .and. asc(subs(ssss,i0,1)) < 256
                     ssss0=ssss0+chr(asc(subs(ssss,i0,1))-64)
                  else
                     ssss0=ssss0+subs(ssss,i0,1)
                  endif
                next
                @ 19,20 say 'REAS1 '+str(x4,3)+'      |'+subs(memoline(ssss0,234,i),x4,23)
                @ 20,20 say 'IBAN  '+str(x5,3)+'      |'+subs(memoline(ssss,234,i),x5,22)
                restore from bank additive
              * @ 05,4 say '012345678901234567890123456789012345678901234567890'
                @ 06,4 say '123456789 123456789 123456789 123456789 123456789 123456789 123456789'
                @ 07,4 say '0        10        20        30        40        50        60        70'
                @ 08,4 say subs(memoline(ssss0,234,i),001,70)
                @ 09,4 say '7        8         9         10        11        12        13        14'
                @ 10,4 say subs(memoline(ssss0,234,i),071,70)
                @ 11,4 say '14       15        16        17        18        19        20        21'
                @ 12,4 say subs(memoline(ssss0,234,i),141,70)
                @ 13,4 say '21       22        23        24        25        26        27'
                @ 14,4 say subs(memoline(ssss0,234,i),211,70)
                @ 16,31 get  x1  pict '999'
                @ 17,31 get  x2  pict '999'
                @ 18,31 get  x3  pict '999'
                @ 19,31 get  x4  pict '999'
                @ 20,31 get  x5  pict '999'
                @ 23+ml0,15 say 'ESC прекр. покзаване на размера и израб. таблицата'
                read
                save all like x* to bank
                 if lastkey()=27
                    exit
                 endif
             next
              save all like x* to bank
               raboti()
              for i=1  to l0
              set date brit
                @  4,45 say 'Текущ ред   '+str(i,3)

               if type(subs(memoline(ssss,234,i),x1,2))='N' &&& .and. empty(subs(memoline(ssss,234,i),x1,6)))
                  appe blank
                  da1=ltrim(subs(memoline(ssss,234,i),x1,10))
                   da0=''
                   if val(subs(da1,4,2)) < 10
                      da0=subs(da1,1,2)+'.0'+str(val(subs(da1,4,2)),1)+'.'+vek0
                   else
                      da0=subs(da1,1,5)+'.'+vek0
                   endif

                  repl datb with da0

                  repl dt    with subs(memoline(ssss,234,i),x2,12)
                  repl reas  with ltrim(subs(memoline(ssss,234,i),x3,28))
                  repl reas1 with ltrim(subs(memoline(ssss,234,i),x4,28))
                 if  0 < at('BG',subs(memoline(ssss,234,i),x5,30))
                  repl iban  with subs(subs(memoline(ssss,234,i),x5,30),at('BG',subs(memoline(ssss,234,i),x5,30)),22)
                 endif
               endif
              next
             case subs(bf00,5,4)='UBBS'
               raboti()
              ssss= memoread("bank.prn")
              l0=mlcount(memoread("bank.prn"),215)
              for i=1 to l0  &&   pretyrswa fajl bank.prn
                      x0=' '
                      store 0 to p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13
                  for p=1 to len(memoline(ssss,215,i))    &&   red w fajl bank.prn

                   if subs(memoline(ssss,215,i),p,1)='|'
                       x0=ltrim(str(val(x0)+1,2))
                       store p to p&x0
                   endif
                  next
                  appe blank
                  repl datb  with subs(memoline(ssss,215,i),1,p1-1)
                  repl dt    with subs(memoline(ssss,215,i),p3+1,p4-1-p3)
                  repl kt    with subs(memoline(ssss,215,i),p2+1,p3-1-p2)
                if .not. empty(subs(subs(memoline(ssss,215,i),p5+1,p6-1-p5),1,35))
                  repl reas  with ltrim(subs(subs(memoline(ssss,215,i),p5+1,p6-1-p5),1,35))
                else
                  repl reas  with ltrim(subs(subs(memoline(ssss,215,i),p4+1,p5-1-p4),1,35))
                endif
                  repl sald  with str(val(subs(strtran(subs(memoline(ssss,215,i),p6+1,p7-1-p6),",",""),1,12)),12,2)
                  if .not. empty(subs(memoline(ssss,215,i),p12+1,p13-1-p12))
                     repl reas1 with ltrim(subs(subs(memoline(ssss,215,i),p7+1,p8-1-p7),1,27)+space(27-len(subs(subs(memoline(ssss,215,i),p7+1,p8-1-p7),1,27)))+'  '+subs(memoline(ssss,215,i),p12+1,p13-1-p12))
                  else
                     repl reas1 with ltrim(subs(subs(memoline(ssss,215,i),p7+1,p8-1-p7),1,35))
                  endif
                  if subs(memoline(ssss,215,i),p11+1,2)='BG'
                     repl iban  with subs(memoline(ssss,215,i),p11+1,22)
                  endif

              next
             case subs(bf00,5,4)='BUIN'
               raboti()
              ssss= memoread("bank.prn")
              l0=mlcount(memoread("bank.prn"),215)

              for i=1 to l0  &&   pretyrswa fajl bank .prn
                      x0=' '
                      store 0 to p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13
                  for p=1 to len(memoline(ssss,215,i))    &&   red w fajl bank.prn

                   if subs(memoline(ssss,215,i),p,1)='|'
                       x0=ltrim(str(val(x0)+1,2))
                       store p to p&x0
                   endif
                  next
                  appe blank
                  repl datb with subs(memoline(ssss,215,i),1,p1-1)
                if subs(memoline(ssss,215,i),p3+1,p4-1-p3)='K'
                  repl dt  with subs(memoline(ssss,215,i),p2+1,p3-1-p2)
                  repl sald  with str(val(subs(strtran(subs(memoline(ssss,215,i),p2+1,p3-1-p2),",",""),1,12)),12,2)
                elseif subs(memoline(ssss,215,i),p3+1,p4-1-p3)='D'
                  repl kt  with subs(memoline(ssss,215,i),p2+1,p3-1-p2)
                  repl sald  with str(val(subs(strtran(subs(memoline(ssss,215,i),p2+1,p3-1-p2),",",""),1,12))*(-1),12,2)
                else
                     set cons on
                 *@ 23+ml0,15 say 'Ima nedopustimo uslovie! Samo "K" ili "D" a to e '+subs(memoline(ssss,215,i),p3+1,p4-1-p3)
                  @ 23+ml0,15 say 'Ima nedopustimo uslovie! Samo "K" ili "D" a e -> '+subs(memoline(ssss,215,i),p3+1,1)
                     inkey(10)
                     raboti()
                     set cons off
                endif
                if .not. empty(subs(subs(memoline(ssss,215,i),p5+1,p6-1-p5),1,35))
                   repl reas  with ltrim(subs(subs(memoline(ssss,215,i),p5+1,p6-1-p5),1,35))
                else
                   repl reas  with ltrim(subs(subs(memoline(ssss,215,i),p4+1,p5-1-p4),1,35))
                endif
                   repl reas1 with ltrim(subs(subs(memoline(ssss,215,i),p6+1,p7-1-p6),1,20))
                if len(trim(subs(memoline(ssss,215,i),p8+1,22)))=22
                   repl iban  with subs(memoline(ssss,215,i),p8+1,22)
                endif
              next
          otherwise
               @ 12,10say 'Моля въведете банковата сметка в характеристиката на фирмата!'
               @ 14,33say 'Главмо меню F9'
                 inkey(10)

          endcase


            go top
            do while .not. eof()
               store '' to reas0, reas10
               for i = 1 to len(reas)
                  if 191 < asc(subs(reas,i,1)) .and. asc(subs(reas,i,1)) < 256
                     reas0=reas0+chr(asc(subs(reas,i,1))-64)
                  else
                     reas0=reas0+subs(reas,i,1)
                  endif

                  if 191 < asc(subs(reas1,i,1)) .and. asc(subs(reas1,i,1)) < 256
                     reas10=reas10+chr(asc(subs(reas1,i,1))-64)
                  else
                     reas10=reas10+subs(reas1,i,1)
                  endif
               next
                 rec_lock()
                 repl  reas with reas0, reas1 with reas10, datb with dtoc(ctod(trim(datb)))
          do case
             case subs(bf00,5,4)='RZBB'
                   repl dt with str(val(strtran(dt,",",".")),14,2), kt with str(val(strtran(kt,",",".")),14,2)
             case subs(bf00,5,4)='UBBS'.or.subs(bf00,5,4)='BUIN'
                   repl dt with str(val(strtran(dt,",","")),14,2), kt with str(val(strtran(kt,",","")),14,2)
          endcase

                   if val(dt)=0
                      repl dt with space(14)
                   endif
                   if val(kt)=0
                      repl kt with space(14)
                   endif
                 rec_unlock()
                if .not. eof()
                   skip
                endif
            enddo
              go top
              dele all for val(dt)=0 .and.val(kt)=0
              pack
       endif
           @ 07,17 clea to 21,76
              open_bank(loc0:=0)
       set filter to subs(datb,4,3)+subs(datb,9,2)=data0
       go top
                declare fiel[7]
                  fiel[1]='datb'
                  fiel[2]='dt'
                  fiel[3]='kt'
                  fiel[4]='reas'
                  fiel[5]='reas1'
                  fiel[6]='iban'
                  fiel[7]='sald'
                declare imem[7]
                  imem[1]='ДАТА '+str(x1,3)
                  imem[2]='ДЕБИТ '+str(x2,3)
                  imem[3]='КРЕДИТ'
                  imem[4]='ОПИСАНИЕ HА ТРАНЗАКЦИЯТА'+str(x3,3)
                  imem[5]='НАРЕДИТЕЛ '+str(x4,3)+space(14)+' '
                  imem[6]='IBAN     '+str(x5,3)
                  imem[7]='САЛДО    '
                @  2, 1,16,78 box ram1
                @  17, 5 say 'Салдо'
                dbedit( 3, 2,15+ml0,77,fiel,"pfunk1",'',imem,'=','L')

               l1='н'
                @ 23+ml0,15 say space(51)
                @ 23+ml0,30 say 'Изработване на СО' get l1 valid l1='д'.or.l1='н'
                read
                   if lastkey()=27
                       return
                   endif
                      set cent off
                      set date brit
                   if l1='д'
                      banko()   &&   pro4
                   endif
                clos all
                return
             endcase
           loop
          enddo

           set cent off
           set date brit
           return

 
