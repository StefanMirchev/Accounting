
  *OTC2.PRG  balan balan10 dekl_92 line spravakc okrag trz kapi kapi20  protos
   ********************** GODISHNA DANACHNA DEKLARACIQ PO CHL.92****
                            proc dekl_92
      ramka()
      @  2,27 say 'Годи╕на дан║╖на декла░а╢и┐ ЗКПО ╖л.92'
      @  3,26 say '---------------------------------------'
      izrab() ; if lastkey()=27 ; set dele off ; return ; endif
    locate for subs(nam,70,4)='&obst00'.and.kod='400'
    if found()
      obst00=obst00+' '+subs(nam,1,73)
    endif
     open_bala()
     set filter to t='33'
     go top
     store recno()   to br0
     locate for polp='bulstat'
     rec_lock()
     repl pola with '>'+buls00+'</bulstat'
     rec_unlock()
      reas0=''
     for i = 1 to len(fir00)
        if 127 < asc(subs(fir00,i,1)) .and. asc(subs(fir00,i,1)) < 192
            reas0=reas0+'Р'+chr(asc(subs(fir00,i,1))+16)
        else
            reas0=reas0+subs(fir00,i,1)
        endif
     next

     locate for polp='regfullname'
     rec_lock()
     repl pola with '>'+reas0+'</regfullname'+space(51-len('>'+reas0+'</regfullname'))
     rec_unlock()

     locate for polp='baseactcode'
     rec_lock()
     repl pola with '>'+subs(obst00,1,4)+'</baseactcode'


   * reas0=''
   * for i = 1 to len(obst00)
   *    if 127 < asc(subs(obst00,i,1)) .and. asc(subs(obst00,i,1)) < 192
   *        reas0=reas0+'Р'+chr(asc(subs(obst00,i,1))+16)
   *    else
   *        reas0=reas0+subs(obst00,i,1)
   *    endif
  *  next

     locate for polp='baseactname'
     rec_lock()
     repl pola with '>'+subs(obst00,1,4)+' </baseactname'+space(51-len('>'+reas0+'</regfullname'))

   open_bala()
   set filter to t='33'
   go top
   b0=0
                     do while t='33'
                       if b0=0
                        ?? ltrim(trim(pola))
                        b0=b0+1
                       else
                        ? ltrim(trim(pola))
                       endif
                     *  spri()
                     if .not.eof()
                        skip
                     else
                        exit
                     endif
                     enddo
   * pech()
    if dirchange("&disc0")=0
     * store subs(us_0,1,7) to us_1
       store subs(us_0,1,len(us_0)-1) to us_1
       dirchange("&us_1")
       gfo0='dekl.xml'
       if file("s0001.prn") ; copy file s0001.prn to &disc0\&gfo0  ; endif
    endif
                            return

   ********************** П░о╢ед│░а за kapi   *********************
                            proc protos
      ramka()
   *  @  2,22 say 'П░о▓окол о▓ об╣о ▒║б░ание на ▒║д░│жни╢и▓е'
      @  2,22 say 'ДЕКЛАРАЦИЯ по ╖л. 62а, ал. 2, ▓. 2 о▓ ЗTР'
      @  3,21 say '-------------------------------------------'


      set cent on
      izrab() ; if lastkey()=27 ; set dele off ; return ; endif
      set marg to 3
      for i0 = 1 to 3
        ?
      next
      ? space(36)+'П░иложение 3 к║м ╖л. 62а, ал. 2, ▓. 2'
      for i0 = 1 to 6
        ?
      next
      ? '                            Д E К Л А Р А Ц И Я'
      ?
      ?
      ? '        по ╖л. 62а, ал. 2, ▓. 2 о▓ Hа░едба No 1 о▓ 2007 г. за водене, '
      ? '▒║╡░ан┐ване и до▒▓║п до ▓║░гов▒ки┐ ░еги▒▓║░ и до ░еги▒▓║░а на ╛░иди╖е▒ки▓е '
      ? '                           ли╢а ▒ не▒▓опан▒ка ╢ел'
      ?
      ?
      ?
? '       Дол│подпи▒ани┐▓(а▓а) '+nam00+', ▒ ЕГH: '+egn00
? '       законен п░ед▒▓ави▓ел на '+trim(ltrim(fir00))+' БУЛСТАТ '+buls00
?
? '     на о▒нование ╖л. 62а, ал. 2, ▓. 2 о▓ Hа░едба No 1 о▓ 2007 г. за водене,' 
? '▒║╡░ан┐ване и до▒▓║п до ▓║░гов▒ки┐ ░еги▒▓║░ и до ░еги▒▓║░а на ╛░иди╖е▒ки▓е' 
? 'ли╢а ▒ не▒▓опан▒ка ╢ел в║в в░║зка ▒ ╖л. 38, ал. 1, ▓. 1 и 2 о▓ Закона за'
? '▒╖е▓овод▒▓во▓о'
?
?
? space(23)+'ДЕКЛАРИРАM  ЧЕ:'
?
?
? 'П░ед▒▓авл┐вано▓о о▓ мен п░едп░и┐▓ие е:'
?
? '1. мик░оп░едп░и┐▓ие по ▒ми▒║ла на ╖л. 19, ал. 2 о▓ Закона за ▒╖е▓овод▒▓во▓о;'
?
? '   П░ед▒▓авени┐▓ за об┐в┐ване годи╕ен ┤инан▒ов о▓╖е▓ и годи╕ен доклад за '
? 'дейно▒▓▓а за '+vek0+' год. е п░ие▓ о▓ об╣о▓о ▒║б░ание на ▒║д░│жни╢и▓е или' 
? 'ак╢ионе░и▓е или о▓ ▒║о▓ве▓ни┐ о░ган по ╖л. 38, ал. 1 о▓ Закона за'
? '▒╖е▓овод▒▓во▓о.'
?
? '   П░и оп░едел┐не на ка▓его░и┐▓а на п░едп░и┐▓ие▓о ▒а ▒пазени изи▒квани┐▓а'
? 'на ╖л. 20 о▓ Закона за ▒╖е▓овод▒▓во▓о.'
? '   Изве▒▓но ми е, ╖е за декла░и░ани о▓ мен неве░ни данни но▒┐ о▓гово░но▒▓'
? 'по ╖л. 313 о▓ Hаказа▓елни┐ кодек▒.'
      for i0 = 1 to 10
        ?
      next
      ? 'г░. '+grad00
      ? 'да▓а: '+dtoc(date())+'г.'
      ? space(36)+'Декла░а▓о░:....................'
      ? space(46)+'/'+nam00+'/'
      set cent off
      ?? norm0
      for i0 = 1 to 16
        ?
      next
     pech()
      if dirchange("&disc0")=0
      *  store subs(us_0,1,7) to us_1
         store subs(us_0,1,len(us_0)-1) to us_1
         dirchange("&us_1")
      *  gfo0='dekl_4.prn'
         gfo0='dekl_62a.prn'
         copy file s0001.prn to &disc0\&gfo0
      endif


  **********************************************************************
  *   set cent on
  *   set date brit
  *   izrab()  ; if lastkey()=27 ; set dele off ; return ; endif
  *   set marg to 7
  *   for i0 = 1 to 5
  *     ?
  *   next
  *?  space(23)+'П Р О Т О К О Л'
  *?  space(29)+ 'о▓'
  *?  space(15)+'об╣о▓о ▒║б░ание на ▒║д░│жни╢и▓е на'
  *?  space(8)+fir00
  *?
  *?
  *?
  *?  '     Дне▒ '+dtoc(date())+'г. в г░.'+grad00+' ▒е п░оведе Об╣о ▒║б░ание'
  *?  'нa ▒║д░│жни╢и▓е на '+trim(ltrim(fir00))+' БУЛСТАТ '+buls00
  *?  '▒║▒ ▒едали╣е и ад░е▒ на │п░авление г░.'+adr00
  *?
  *?
  *?  'П░и▒║▒▓ва╡а ▒║д░│жни╢и▓е:'
  *?
  *   do case
  *      case buls00='102804684'  &&  KOSI
  *? 'С▓е┤ан Иванов Ми░╖ев ЕГH 6102260547; г░.Б│░га▒, │л."Обо░и╣е" 95 в╡.3 е▓.6'
  *      case buls00='201333312' &&  HOUM
  *? ' Дими▓║░ А▓ана▒ов А▓ана▒ов 6205124620; г░.Hе▒еб║░ │л."Х░и▒▓о К│дев" 12 ап.8'
  *      case buls00='102268731'  && AEROTUR
  *? 'Магдалена Hиколова Б░║╖кова ЕГH 5802190696; г░.Б│░га▒, │л."Х░и▒о Бо▓ев"No 48'
  *    endcase
  *?
  *? '      С║б░ание▓о п░о▓е╖е по ▒ледни┐▓ дневен ░ед'
  *? '          1.Вземане на ░е╕ение за п░иемане на годи╕ен ┤инан▒ов о▓╖е▓'
  *? 'на '+trim(ltrim(fir00))+'.'
  *?
  *? '      По п║░ва и един▒▓вена ▓о╖ка о▓ дневни┐ ░ед на Об╣о▓о ▒║б░ание:'
  *? 'С║д░│жни╢и▓е ▒е запозна╡а ▒ о▓╖е▓а за п░и╡оди и ░аз╡оди, балан▒а, ▒п░а-'
  *? 'вки▓е за нап░авена▓а инвен▓а░иза╢и┐ и. След ка▓о │▒▓анови╡а, ╖е ▒п░авки'
  *? '▒п░авки и о▓╖е▓и о▓░аз┐ва▓ ░еално дейно▒▓▓а на ┤и░ма▓а и ┤инан▒ови┐▓'
  *? '░ез│л▓а▓ е ░еален, взе╡а ░е╕ение:'
  *?
  *? '    П░иема▓ годи╕ни┐ о▓╖е▓ на '+trim(ltrim(fir00))+ ' за ' +subs(dtoc(date1-1),7,4)+'год'
  *?
  *? '    По░ади из╖е░пване на дневни┐ ░ед ▒║б░ание▓о бе зак░и▓о.'
  *?
  *?
  *?
  *?
  *?
  *?
  *?space(19)+'С║д░│жни╢и:'
  *?
  *?
  *    do case
  *      case buls00='102042860'.or.buls00='102037639'.or.buls00='102042885'.or.buls00='102268731'
  *?space(33)+'1......................' && SKONTO KOLEWI RT
  *?
  *?
  *      case buls00='102898897'.or.buls00='102804684'.or.buls00='201333312'
  *?space(33)+'1......................' && STRUMA KOSI HOUM
  *      case buls00='812217813'.or.buls00='102905637'.or.buls00='102924139'.or.buls00='102268731'
  *?space(33)+'1......................'     &&  EKSELEN  REWAS FERT AEROTUR
  *?
  *?
  *?
  *?
  *?
  *?space(33)+'2......................'
  *    endcase
  *******************************************************************
      for i0 = 1 to 22
        ?
      next
     pech()
     ramka()



   *   ! cmd /c 'if not exist \disc\god&dt0\zkpo\&go0\nul md \DISC\GOD&dt0\ZKPO\&go0'
   *  if dirchange("&disc0")=0
   *   * store subs(us_0,1,7) to us_1
   *     store subs(us_0,1,len(us_0)-1) to us_1
   *     dirchange("&us_1")
   *     gfo0='protokol.prn'
   *     if file("s0001.prn") ; copy file s0001.prn to &disc0\&gfo0  ; endif
   *  endif
   if ! file("p4.prn")
      @ 23,15 say '  ВHИМАHИЕ ! '  color 'R+/B'
      @ 23,28 say 'Hе е нап░авена ▓. "а" в лева за ГДД!  ' ; inkey(0)
   else 
      memowrit('s0099.prn', memoread('p1.prn')+memoread('p2.prn')+memoread('p3.prn')+memoread('p4.prn'))
      as0=1 ; save1=memoread("s0099.prn")
      asci0=save1 ; asci() ; memowrit('s0099.txt','&asci1')
      copy file s0099.txt to \disc\god&dt0\zkpo\&go0\SPRAVKI.TXT
   endif
   memowrit('&disc0\gfo.prn', memoread('&disc0\opr.prn');
   +memoread('&disc0\bala.prn')+memoread('&disc0\kapi.prn');
   +memoread('&disc0\pari.prn')+memoread('&disc0\poli1.prn');
   +memoread('&disc0\poli2.prn')+memoread('&disc0\dekl_13.prn');
   +memoread('&disc0\dekl_62а.prn')) && +memoread('&disc0\prot')
   copy file &disc0\gfo.prn to s0099.prn
   @ 23,15 say space(51) ;  @ 23,15 say '      П░ог░ама▓а из░або▓ва s0099.txt ┤айл       '
   l0=2 ; @ 23,15 say space(51) ; @ 23,27 say 'Желае▓е ли PDF ▒п░авка           '
   @ 23,50 prompt 'ДА' ; @ 23,53 prompt 'HЕ' ; menu to l0

       if l0=1
                 @  6,23,8+ml0,62 box ram1
                 @  7+ml0,24 say 'ВHИMАHИЕ!'  color 'R+/B'
                 @  7+ml0,34 say 'Изкл╛╖е▓е ин▓е░не▓ ба░а│зе░!' 
            @ 23,15 say '      П░о╢ед│░а▓а ╣е п░од║лжи около мин│▓а      '
             sec0=round(seconds(),0)
           @ 23+ml0,15 say '       П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е ...     '
           if file("s0099.prn")
               disgod0='\DISC\god&dt0\gfo\_&go0'+'_GFO.pdf'
               zanvi(zan0:='izkl')
                if file('&disc_0\zan.pdf')
                   dele file('&disc_0\zan.pdf')
                endif
                if file("&disgod0")
                   dele file &disgod0
                endif
                if file("s0099.prn")
                  copy file s0099.prn to &disc_0\s0099.prn
                endif

                inkey(20)
                 do sentinel   // 
                if file('&disc_0\zan.pdf')
                   copy file "&disc_0\zan.pdf" to &disgod0
                else
               @ 23,15 say '      zan.pdf ┤айл║▓ не е наме░ен.                 '
                inkey(0)
                endif
                zanvi(zan0:='vkl')
           endif

            if file("&disgod0")
          memowrit('prov.bat','@start &disc_1\exe\pdf\pdfxc.exe '+'&disgod0')
          ! &disc_1\exe\hstart.exe /noconsole prov.bat
               inkey(3)
          memowrit('prov.bat','@ start /min &path_0\taskkill /F /IM SnapTimer.exe')
          ! &disc_1\exe\hstart.exe /noconsole prov.bat
                inkey(3)
               erase prov.bat
            else
               @ 23,15 say '              Файл║▓ не е наме░ен.                 '
                 inkey(4) ; @ 23,15 say space(51)
            endif

       endif

          set cent off
                             return
   ********************** П░о╢ед│░а за kapi   *********************
                            proc kapi
    store 0 to x61610_1,x61610_3,x61610_4,x61610_8,x61610_9,x61610_11
    store 0 to x61640_1,x61640_3,x61640_4,x61640_8,x61640_9,x61640_11
    store 0 to x61660_10,x61660_11
    store 0 to x61720_1,x61720_3,x61720_4,x61720_8,x61720_9,x61720_10,x61720_11
    store 0 to x61740_1,x61740_3,x61740_4,x61740_8,x61740_9,x61740_10,x61740_11
        ramka() ; ll0='2' ; l4='е' ; l1=1 ; LL4='╡' ; set dele on
                 if 0 < j1
                    set key -5 to razrjd
                    @ 10,20 say 'ВHИМАHИЕ !'  color 'R+/B'
                    @ 10,30 say ' РАЗРЯДHОСТТА HЕ В ЦЕЛИ ЧИСЛА!'
                 endif
                 l2=0
                 set key -2 to okrag
                 @  2,30 say 'СОБСТВЕH КАПИТАЛ'
                 @  3,29 say '------------------'
                 @ 23,16 say 'F3 - ок░║гление в ░аздел'
                 @  6,19 say 'В лева "л" ╡ил. лева "╡"  млн. лева "м"' get ll4 valid ll4='л'.or.ll4='╡'.or.ll4='м'
                     read
                 @ 10,20 say space(50)
                 @ 23,15 say space(50)
                 set key -5 to
                    if lastkey()=27
                      restore from &disc_1\job\razrjd additive
                      set dele off
                      return
                    endif
                 set key -2 to
                          do razr
                  if j1=0 .and. ll4='╡'
                          kapi20()
                  else
                  endif 
                          
                            return



   ********************** П░о╢ед│░а за Соб▒▓вен капи▓ал ***********
                            func kapi20
     open_obve(loc0:=12)
     go top
     do while .not. eof()
           do case
              case sch='101'
                   x61610_1=kkso
              case sch='117'
                   x61610_3=kkso
              case sch='111'
                   x61610_4=kkso
              case sch='121'
                   x61610_9=kkso
              case sch='122'
                   x61610_8=kkso
              case sch='123'
                   x61660_10=kkso

           endcase
         if .not. eof()
            skip
         else
            exit
         endif
     enddo

             x61610_1=round(x61610_1/ra0,j1)
             x61610_3=round(x61610_3/ra0,j1)
             x61610_4=round(x61610_4/ra0,j1)
             x61610_8=round(x61610_8/ra0,j1)
             x61610_9=round(x61610_9/ra0,j1)
             x61610_11=x61610_1+x61610_3+x61610_4+x61610_8+x61610_9

             x61640_1=x61610_1
             x61640_3=x61610_3
             x61640_4=x61610_4
             x61640_8=x61610_8
             x61640_9=x61610_9
             x61640_11=x61610_11

             x61660_10=round(x61660_10/ra0,j1)
             x61660_11=x61660_10+x61610_11

             x61720_1=x61640_1
             x61720_3=x61640_3
             x61720_4=x61640_4
             x61720_8=x61640_8
             x61720_9=x61640_9
             x61720_10=x61660_10
             x61720_11=x61660_11

             x61740_1=x61720_1
             x61740_3=x61720_3
             x61740_4=x61720_4
             x61740_8=x61720_8
             x61740_9=x61720_9
             x61740_10=x61720_10
             x61740_11=x61720_11


     open_bala()
     set filter to t='06'
     go top
     store recno()   to br0
     go br0+9
     rec_lock()
     repl pola with substr(pola,1,40)+str(x61610_1,7)+'╙       ╙'+str(x61610_3,7)+'╙'+str(x61610_4,7)+'╙   '
     repl polp with substr(polp,1,21)+str(x61610_8,7)+'╙'+str(x61610_9,7)+'╙       ╙'+str(x61610_11,7)+'╙'
     rec_unlock()
     go br0+16
     rec_lock()
     repl pola with substr(pola,1,40)+str(x61640_1,7)+'╙       ╙'+str(x61640_3,7)+'╙'+str(x61640_4,7)+'╙   '
     repl polp with substr(polp,1,21)+str(x61640_8,7)+'╙'+str(x61640_9,7)+'╙       ╙'+str(x61640_11,7)+'╙'
     rec_unlock()
     go br0+24
     rec_lock()
     repl polp with substr(polp,1,20)+'╙       ╙       ╙'+str(x61660_10,7)+'╙'+str(x61660_11,7)+'╙'
     rec_unlock()
     go br0+40
     rec_lock()
     repl pola with substr(pola,1,40)+str(x61720_1,7)+'╙       ╙'+str(x61720_3,7)+'╙'+str(x61720_4,7)+'╙   '
     repl polp with substr(polp,1,21)+str(x61720_8,7)+'╙'+str(x61720_9,7)+'╙'+str(x61720_10,7)+'╙'+str(x61720_11,7)+'╙'
     rec_unlock()
     go br0+45
     rec_lock()
     repl pola with substr(pola,1,40)+str(x61740_1,7)+'╙       ╙'+str(x61740_3,7)+'╙'+str(x61740_4,7)+'╙   '
     repl polp with substr(polp,1,21)+str(x61740_8,7)+'╙'+str(x61740_9,7)+'╙'+str(x61740_10,7)+'╙'+str(x61740_11,7)+'╙'
     rec_unlock()
                 izrab()  ; if lastkey()=27 ; set dele off ; return ; endif
          if lastkey()=27 ; set dele off ; return ; endif
                           b1=107
                           set marg to 3
                        *  ?? '1'
    for i0 = 1 to 5
      ?
    next
   ?  space(27)+'ОТЧЕТ ЗА СОБСТВЕHИЯ КАПИТАЛ'
   ?
   ?  space(19)+fir00
   ? 'P16A40'
   set date brit
   set cent on
   ? space(60)+'к║м  '+dtoc(date1-1)
   set cent off
   open_bala()
   set filter to t='06'
   go top
   b0=7
                     do while t='06'
                     *  ? str(recno()-br0,3)+pola+subs(polp,1,53)
                        ? pola+subs(polp,1,53)
                        spri()
                     if .not.eof()
                        skip
                     else
                        exit
                     endif
                     enddo
    for i0 = 1 to 13
      ?
    next
   ?  space(16)+'С║▒▓ави▓ел:.....................'+space(28)+'Р║ководи▓ел:..........................'
   ?  space(26)+'/'+lize00+'/'+space(42+len(lize00)-len('/'+lize00+'/'))+'/'+nam00+'/'
   ?? norm0
    for i0 = 1 to 20
      ?
    next
     pech()
    if dirchange("&disc0")=0
     * store subs(us_0,1,7) to us_1
       store subs(us_0,1,len(us_0)-1) to us_1
       dirchange("&us_1")
       gfo0='kapi.prn'
      if file("s0001.prn") ; copy file s0001.prn to &disc0\&gfo0 ; endif
    endif
                          return && kapi20
   ******************* К░ай п░о╢ед│░а за ▒об▒▓вен капи▓ал ***********



      ****************  Сп░авка декла░а╢и┐ по А K Ц И З *****************
                           func  trz
                if ! file("mese.dbf")
                           @ 23,15 clea to 23,65
                           @ 23,19 say 'ВHИМАHИЕ !'  color 'R+/B'
                           @ 23,30 say 'За пе░иода н┐ма п░авни запла▓и.'
                           pauza()
                           return
                endif

      store 0 to x1000_1, x1010_1,x1020_1,x1030_1,x1040_1,x1050_1,x1060_1,x1070_1,x1080_1,x1090_1
      store 0 to x1000_3, x1010_3,x1020_3,x1030_3,x1040_3,x1050_3,x1060_3,x1070_3,x1080_3,x1090_3
      store 0 to x1300, x1810,x1820,x1840,x1880,x1910,x1930,x3100,x3120,x3140,x3170,x3171,x1600,x3300
      vek0=substr(str(year(date0),6),3,4)
      store 0 to line0,line1,line2,line3,line9,sec0,p0
      store 19 to line1
      store round(line1/20*1,0)+1 to line9
      set cons off
    *  do while .t.
             ramka()
             set cent on
             l1='д'
             us0='a'
             @  2,32 say 'СПРАВKА ЗА ЗАЕТИТЕ ЛИЦА'
             @  3,31 say '--------------------------'

                izrab() ; if lastkey()=27 ; set dele off ; return ; endif
                   if lastkey()=27
                     set dele off
                     return
                   endif

            *    set cons off
                 set marg to 3
             open_mese(loc0:=1)
                       go top
                       do while .t.
                          vd00=data
                          skip
                           if eof()
                              exit
                           endif
                         if .not.vd00=data
                           @ 21,13,24,66 box ram1
                           @ 22,14 clea to 23,65
                           @ 22,15 say 'ВHИМАHИЕ !'  color 'R+/B'
                           @ 23,15 say 'Hедоп│▒▓имо е да има пове╖е о▓ 1 ме▒е╢ в МЕСЕЦ'
                           pauza()
                           return
                         endif
                       enddo
                    go top
                    vd00=data
            * vvv
                    appe from godn for vek=vek0 .and.(.not.data=vd00)
          line()
             open_dobo(loc0:=1)
             sum round(dsto,0) to x1000_3  for sch='604'
             sum round(dsto,0) to x3170    for sch='605'
             open_spis(loc0:=15)
          line()
             count to x1600 for spis->td='Т'
          line()
             count to x1820 for str(year(datn),4)=vek0
          line()
             count to x1840 for str(year(datu),4)=vek0
          line()
             open_mese(loc0:=1)
             sum round(suma,0) to x3300 for (sch=' 11'.or.sch=' 30'.or.sch=' 50').and.vek=vek0
             set relation to nom into spis
        *    set filter to .not. spis->td='Т'
             go top
          line()
             sum round(suma,0) to x3100    for sch=' 10'.and.vek=vek0.and.(.not.spis->td='Т')
          line()
             sum round(suma,0) to x3140    for sch='107'.and.vek=vek0.and.(.not.spis->td='Т')
             x3120=x3100-x3140
          line()
             count to x1000_1  for sch=' 10'.and.vek=vek0.and.(.not.spis->td='Т')
             x1000_1=round(x1000_1/12,0)
          line()
                  count to x1010_1  for sch=' 10'.and.vek=vek0.and.spis->nkp='1'.and.(.not.spis->td='Т')
             x1010_1=round(x1010_1/12,0)
          line()
               sum round(suma,0) to x1010_3  for sch=' 10'.and.vek=vek0.and.spis->nkp='1'.and.(.not.spis->td='Т')
          line()
                  count to x1020_1  for sch=' 10'.and.vek=vek0.and.spis->nkp='2'.and.(.not.spis->td='Т')
             x1020_1=round(x1020_1/12,0)
               sum round(suma,0) to x1020_3  for sch=' 10'.and.vek=vek0.and.spis->nkp='2'.and.(.not.spis->td='Т')
          line()
                  count to x1030_1  for sch=' 10'.and.vek=vek0.and.spis->nkp='3'.and.(.not.spis->td='Т')
             x1030_1=round(x1030_1/12,0)
               sum round(suma,0) to x1030_3  for sch=' 10'.and.vek=vek0.and.spis->nkp='3'.and.(.not.spis->td='Т')
          line()
                  count to x1040_1  for sch=' 10'.and.vek=vek0.and.spis->nkp='4'.and.(.not.spis->td='Т')
             x1040_1=round(x1040_1/12,0)
               sum round(suma,0) to x1040_3  for sch=' 10'.and.vek=vek0.and.spis->nkp='4'.and.(.not.spis->td='Т')
          line()
               count to x1050_1  for sch=' 10'.and.vek=vek0.and.spis->nkp='5'.and.(.not.spis->td='Т')
                           x1050_1=round(x1050_1/12,0)
               sum round(suma,0) to x1050_3  for sch=' 10'.and.vek=vek0.and.spis->nkp='5'.and.(.not.spis->td='Т')
          line()
                  count to x1060_1  for sch=' 10'.and.vek=vek0.and.spis->nkp='6'.and.(.not.spis->td='Т')
             x1060_1=round(x1060_1/12,0)
               sum round(suma,0) to x1060_3  for sch=' 10'.and.vek=vek0.and.spis->nkp='6'.and.(.not.spis->td='Т')
          line()
                  count to x1070_1  for sch=' 10'.and.vek=vek0.and.spis->nkp='7'.and.(.not.spis->td='Т')
             x1070_1=round(x1070_1/12,0)
               sum round(suma,0) to x1070_3  for sch=' 10'.and.vek=vek0.and.spis->nkp='7'.and.(.not.spis->td='Т')
          line()
                  count to x1080_1  for sch=' 10'.and.vek=vek0.and.spis->nkp='8'.and.(.not.spis->td='Т')
             x1080_1=round(x1080_1/12,0)
               sum round(suma,0) to x1080_3  for sch=' 10'.and.vek=vek0.and.spis->nkp='8'.and.(.not.spis->td='Т')
          line()
                  count to x1090_1  for sch=' 10'.and.vek=vek0.and.spis->nkp='9'.and.(.not.spis->td='Т')
             x1090_1=round(x1090_1/12,0)
               sum round(suma,0) to x1090_3  for sch=' 10'.and.vek=vek0.and.spis->nkp='9'.and.(.not.spis->td='Т')
          line()
             count to x1880 for sch=' 10'.and.data='12/'+subs(data0,4,2).and.(.not.spis->td='Т')
             x1810=x1880+x1840-x1820
          line()
               sum round(stoi,0) to x1910 for sch='  7'.and.vek=vek0.and.(.not.spis->td='Т')
               x1930=round(x1910*8*0.9276,0)
          line()
               sum round(suma,0) to x3171 for (sch=' 51'.or.sch=' 52').and.vek=vek0.and.(.not.spis->td='Т')
          line()
     set dele on
     dele all  for vek=vek0 .and.(.not.data=vd00)
     pack
     set dele off
     set cons off
     x1000_3=x1000_3-x3140

    * v01
    ?
    ?
    ?
    ?  'III.  СПРАВКА ТРУД'
    ?
    ?  'ВHИМАHИЕ ДА HЕ СЕ СТАРТИРА <СЪЗДАВАHЕ HА ДЕТАЙЛHА СПРАВКА>'
    ?  'HЯМА ДА СЕ ПОЛУЧИ ВЯРHА СПАВКАТА'
    ?  '1.Спи▒.▒║▒▓ав и на╖.РЗ  2.Движение и о▓░.РВ  3.Hа╖.РЗ и о▒иг.'
    ?
    ?  '           Код    Об╣о     РЗ'
    ?  '             б      1       3'
    ?  'Hае▓и ли╢а 1000'+str(x1000_1,6)+str(x1000_3,8)
    ?  'Без маи╖.  1001'
    ?  'HКПД   1.  1010'+str(x1010_1,6)+str(x1010_3,8)
    ?  '       2.  1020'+str(x1020_1,6)+str(x1020_3,8)
    ?  '       3.  1030'+str(x1030_1,6)+str(x1030_3,8)
    ?  '       4.  1040'+str(x1040_1,6)+str(x1040_3,8)
    ?  '       5.  1050'+str(x1050_1,6)+str(x1050_3,8)
    ?  '       6.  1060'+str(x1060_1,6)+str(x1060_3,8)
    ?  '       7.  1070'+str(x1070_1,6)+str(x1070_3,8)
    ?  '       8.  1080'+str(x1080_1,6)+str(x1080_3,8)
    ?  '       9.  1090'+str(x1090_1,6)+str(x1090_3,8)
    ?
    ?  'Спи▒.на╖.г.1810'+str(x1810,6)
    ?  'Hазна╖ени  1820'+str(x1820,6)
    ?  'Уволнени   1840'+str(x1840,6)
    ?  'Спи▒.в к░а┐1880'+str(x1880,6)
    ?  'Човекодни  1910'+str(x1910,6)
    ?  'Човеко╖а▒. 1930'+str(x1930,6)
    ?
    ?  'Раб. запл. 3100'+str(x3100,6)
    ?  ' в ▓. ╖.       '
    ?  'За о▓░.в░.3120 '+str(x3120,6)
    ?  'За о▓п│▒к.3140 '+str(x3140,6)
    ?  'O▒иг│░.   3170 '+str(x3170,6)
    * ?  'Зд░авни   3171 '+str(x3171,6)
    *  ?  'Доп║лн.   3172 '+str(x3170-x3171,6)
    ?
    ?  'Код Об╣о Жени   РЗ'
    ?  'С░една▓а запла▓а не може да е по-малка о▓ 1500лв.'
    ?  'и ▒е намал┐▓ б░о┐ на ╡о░а▓а.'
    ?  'С│ма по код 1000='+str(x1000_3,6)+'лв.'
    ?  'С│ма▓а о▓ 1010 до 1090='+str(abs(-x1010_3-x1020_3-x1030_3-x1040_3-x1050_3-x1060_3-x1070_3-x1080_3-x1090_3),6)+;
       'лв. ░азлика='+str(x1000_3-x1010_3-x1020_3-x1030_3-x1040_3-x1050_3-x1060_3-x1070_3-x1080_3-x1090_3,5)+'лв.'
       if pake='CHEF'
    ?
    ?  'За Ко▒и 61 ЕООД в ▒п░авка▓а по код 1600 кол. 1 -> 1 и кол. 3 -> 800'

       endif
   *        @ 23,17 say 'ВHИМАHИЕ ! '  color 'R+/B'
   *        @ 23,28 say 'Hе е из░або▓ена ▒п░авка▓а в ▓. "▒" !' ; inkey(0)
       if file("s0001.prn") ; copy file s0001.prn to p3.prn  ; endif
       memowrit('s0099.prn', memoread('p1.prn')+memoread('p2.prn')+memoread('p3.prn')+memoread('p4.prn'))
       as0=1 ; save1=memoread("s0099.prn")
       asci0=save1 ; asci() ; memowrit('s0099.txt','&asci1')
   pech()
                     return
   ********************** П░о╢ед│░а за балан▒ *********************
                            proc balan
   &&  4031 - pBI3 - 176
   &&  4032 - pVI3 - 195
                 ramka()
                 ll0='2'
                 l4='е'
                 l1=1
                 set dele on
                 if 0 < j1
                    set key -5 to razrjd
                    @ 10,20 say 'ВHИМАHИЕ !'  color 'R+/B'
                    @ 10,30 say ' РАЗРЯДHОСТТА HЕ В ЦЕЛИ ЧИСЛА'
                 endif
                 l2=0
                 set key -2 to okrag
                 @  2,30 say 'Б  А  Л  А  H  С'
                 @  3,29 say '------------------'
                 @ 23,16 say 'F3 - ок░║гление в ░аздел'
                 @  6,19 say 'В лева "л" ╡ил. лева "╡"  млн. лева "м"' get ll4 valid ll4='л'.or.ll4='╡'.or.ll4='м'
                     read
                 @ 10,20 say space(50)
                 @ 23,15 say space(50)
                 @  8,24 say 'Из░або▓ване на ▓абли╢а'
                 @  8,48 prompt 'ДА'
                 @  8,51 prompt 'HЕ'
                 menu to l0
                 set key -5 to
                    if lastkey()=27
                      restore from &disc_1\job\razrjd additive
                      set dele off
                      return
                    endif
                 set key -2 to
                          do razr
                  if j1=0 .and. ll4='╡'
                          balan10()
                  else
                  endif
                            return


   ********************** П░о╢ед│░а за балан▒ *********************
                            func balan10
                 if l0=1
         raboti()
         store 0 to a201,a203,a204,a205,a207,a209,a223
         store 0 to a123,a426,a302,a303,a304,a305,a31,a219
         store 0 to a411,a416,a413,a49,a501,a502,a503,a507,a611,a613,a45,a512,a424
         store 0 to p101,p102,p111,p117,p122,p121,p123,p151,p152,p45,p49,p499,p401,p421,p455,p7251,p7252,p713
         store 0 to p2413,p2414,p2415,p2419,p2429,p243,p2521,p2523,p4031,p4032
         store 0 to ap203,ap204,ap205,ap209,sald0,obor0
         store 0 to abI,abII,abIII,ab,avI,avII,avIII,avIV,av, paI,paV,pa,pb,ak,ps
             open_obap(loc0:=15)  && aobi
             find '24'
               do while part='24'
                 do case
                    case part='2413'
                         p2413=p2413+ksal
                    case part='2414'
                         p2414=p2414+ksal
                 *  case part='2415'
                 *       p2415=p2415+ksal
                    case part='2419'.or.part='2415'.or.part='2416'.or.part='2412'
                         p2419=p2419+ksal
                    case part='2429'
                         p2429=p2429+ksal
                 endcase

                  if .not. eof()
                     skip
                  else
                     exit
                  endif
               enddo
             open_obve(loc0:=12)
             go top
        do while .not. eof()
           do case
    *********************** Ак▓ив *********************

              case sch='201'
                   a201=a201+kdso
              case sch='203'
                   a203=a203+kdso
              case sch='204'
                   a204=a204+kdso
              case sch='202'.or.sch='209'.or.sch='205'.or.sch='206'
                   a209=a209+kdso
              case sch='223'
                   a223=a223+kdso
              case sch='207'
                   a207=a207+kdso
              case sch='219'
                   a219=a219+kdso
              case sch='302'
                   a302=a302+kdso
              case sch='303'.or.sch='305'
                   a303=a303+kdso
              case sch='304'.or.sch='306'.or.sch='307'
                   a304=a304+kdso
              case sch='411'.or.sch='402'
                   a411=a411+kdso
              case sch='426'
                   a426=a426+kdso
              case sch='498'.or.sch='422'.or.sch='469'.or.sch='494'.or.sch='444'
                   a49=a49+kdso
              case sch='501'
                   a501=a501+kdso
                   sald0=sald0+sald
                   obor0=obor0+obor
              case sch='502'
                   a502=a502+kdso
              case sch='503'.or.sch='504'
                   a503=a503+kdso
              case sch='507'
                   a507=a507+kdso
              case sch='424'
                   a424=a424+kdso
              case sch='512'.or.sch='513'.or.sch='514'
                   a512=a512+kdso
              case sch='611'.or.sch='612'
                   a611=a611+kdso
              case sch='613'.or.sch='652'
                   a613=a613+kdso
 ***********************  Па▒ив  *********************
              case sch='243'
                   p243=p243+kkso
              case sch='101'.or.sch='102'
                   p101=p101+kkso
              case sch='111'
                   p111=p111+kkso
              case sch='117'
                   p117=p117+kkso
              case sch='121'
                   p121=p121+kkso
              case sch='122'
                   p122=p122+kkso
              case sch='123'
                   if  0 < kdso
                       p123=p123+kdso*(-1)
                   else
                       p123=p123+kkso
                   endif
              case sch='151'
                   p151=p151+kkso
              case sch='152'.or.sch='159'
                   p152=p152+kkso
              case sch='401'.or.sch='404'.or.sch='412'
                   p401=p401+kkso
              case sch='421'
                   p421=p421+kkso
              case sch='451'.or.sch='452'.or.sch='453'.or.sch='454'.or.sch='456'.or.sch='459'
                   if -0 < kkso
                      p45=p45+kkso
                   else
                      a45=a45+kkso*(-1)
                   endif
              case sch='455'
                   if -0 <  kkso
                     p455=p455+kkso
                   else
                     a49=a49+kkso*(-1)
                   endif
              case sch='499'.or.sch='496'.or.sch='492'
                   p499=p499+kkso
              case sch='713'.or.sch='752'
                   p713=p713+kkso
              other
           endcase
                    if.not.eof()
                       skip
                    else
                       exit
                    endif
        enddo
       open_bala()


          *******   А  K  Т  И  В    СУМИ  ************
                   a201=round(a201/ra0,j1)
                  ap203=round((a203-p2413)/ra0,j1)
                  ap204=round((a204-p2414)/ra0,j1)
                   a207=round(a207/ra0,j1)
                  ap209=round((a209-p2419)/ra0,j1)
                  ap219=round((a219-p2429)/ra0,j1)
                   a223=round(a223/ra0,j1)
                   a302=round(a302/ra0,j1)
                   a303=round(a303/ra0,j1)
                   a304=round(a304/ra0,j1)
                   a411=round(a411/ra0,j1)
                   a426=round(a426/ra0,j1)
                    a45=round(a45/ra0,j1)
                    a49=round(a49/ra0,j1)
                  sald0=round(sald0/ra0,j1)
                  obor0=round(obor0/ra0,j1)
                   a501=round(a501/ra0,j1)+sald0+obor0
                   a502=round(a502/ra0,j1)+sald0+obor0
                   a503=round(a503/ra0,j1)
                   a507=round(a507/ra0,j1)
                   a424=round(a424/ra0,j1)
                   a512=round(a512/ra0,j1)
                   a611=round(a611/ra0,j1)
                   a613=round(a613/ra0,j1)

          *******   П  А  С  И  В    СУМИ  ************

                   p101=round(p101/ra0,j1)
                   p111=round(p111/ra0,j1)
                   p117=round(p117/ra0,j1)
                   p121=round(p121/ra0,j1)
                   p122=round(p122/ra0,j1)
                   p123=round(p123/ra0,j1)
                   p151=round(p151/ra0,j1)
                   p152=round(p152/ra0,j1)
                   p401=round(p401/ra0,j1)
                   p421=round(p421/ra0,j1)
                    p45=round(p45/ra0,j1)
                   p455=round(p455/ra0,j1)
                   p499=round(p499/ra0,j1)+p421+p455+p45
                   p713=round(p713/ra0,j1)

              if l2=1

                 do ramka
                 @  2,37 say 'ОKРЪГЛЕHИЯ'
                 @  3,36 say '------------'
                 @  4,18 say 'АKТИВ                          ПАСИВ  '
                 @  5,14 say '201' get a201  pict "999999"
                 @  6,14 say '203' get ap203  pict "999999"
                 @  7,14 say '204' get ap204  pict "999999"
                 @  9,14 say '207' get a207  pict "999999"
                 @ 10,14 say '209' get ap209  pict "999999"
                 @ 11,14 say '219' get ap219  pict "999999"
                 @ 12,14 say '302' get a302  pict "999999"
                 @ 13,14 say '303' get a303  pict "999999"
                 @ 14,14 say '304' get a304  pict "999999"
                 @ 15,14 say '411' get a411  pict "999999"
                 @  5,27 say '426' get a426  pict "999999"
                 @  7,27 say 'a45' get  a45  pict "999999"
                 @  8,27 say 'a49' get  a49  pict "999999"
                 @  9,27 say '501' get a501  pict "999999"
                 @ 10,27 say '502' get a502  pict "999999"
                 @ 11,27 say '503' get a503  pict "999999"
                 @ 12,27 say '507' get a507  pict "999999"
                 @ 13,27 say '424' get a424  pict "999999"


                 @  5,47 say '101' get p101  pict "999999"
                 @  6,47 say '111' get p101  pict "999999"
                 @  8,47 say '121' get p121  pict "999999"
                 @  9,47 say '122' get p122  pict "999999"
                 @ 10,47 say '123' get p123  pict "999999"
                 @ 13,47 say '152' get p152  pict "999999"
                 @ 14,47 say '151' get p151  pict "999999"
                 @ 15,47 say '401' get p401  pict "999999"
              *  @ 20,47 say '499' get p499  pict "999999"

                     read
              endif
             abI=ap219
             abII=a201+ap203+ap204+ap205+ap209+a207
             abIII=a223
             ab=abI+abII+abIII+a45
             avI=a302+a303+a304+a611
             avII=a411+a49
             avIII=a424
             avIV=a501+a502+a503+a507
             av=avI+avII+avIII+avIV+a613
             ak=ab+av+a426







             paI=p101
             paV=p121+p122
             pa=p101+p111+p117+paV+p123

             pb=p151+p152+p401+p499
             ps=pa+pb+p713


             do case
                case ak  > ps
                     @ 23,20 say '     Ак▓иве е пове╖е ▒ :'+str(ak-ps,j0,j1)
                     do case
                        case l1=1
                             a411=a411-(ak-ps)
                             avII=a411+a49
                        case l1=2
                              a304=a304-(ak-ps)
                              avI=a302+a303+a304+a611
                        case l1=3
                              a302=a302-(ak-ps)
                              avI=a302+a303+a304+a611
                        endcase
                              av=avI+avII+avIII+avIV+a613
                              ak=ab+av+a426
                case ps > ak
                     @ 23,20 say '     Па▒ива е пове╖е ▒ :'+str(ps-ak,j0,j1)
                     do case
                        case l1=1
                             a411=a411+(ps-ak)
                             avII=a411+a49
                        case l1=2
                             a304=a304+(ps-ak )
                             avI=a302+a303+a304+a611
                        case l1=3
                             a302=a302+(ps-ak )
                             avI=a302+a303+a304+a611
                        endcase
                             av=avI+avII+avIII+avIV+a613
                             ak=ab+av+a426
                other
                     @ 23,20 say '     А▓ива е ░авен на па▒ива:'+str(ps-ak,j0,j1)


             endcase
                     pauza()

          *******************  K░еди▓ни обо░о▓и ******************
     sele 1
     set filter to t='04'
     go top
     store recno()   to br0
     go br0+1
     rec_lock()
     repl pola with substr(pola,1,49) + mk1 + substr(pola,56,8)
     repl polp with substr(polp,1,49) + mk1 + substr(polp,56,8)
     go br0+4
     rec_lock()
     repl pola with substr(pola,1,37)+str(a426,12,j1)+substr(pola,50,14)
     go br0+5
     rec_lock()
     repl polp with substr(polp,1,37)+str(p101,12,j1)+substr(polp,50,14)
     go br0+7
     rec_lock()
     repl pola with substr(pola,1,37)+str(ap219,12,j1)+substr(pola,50,14)
     go br0+9
     rec_lock()
     repl polp with substr(polp,1,37)+str(p101,12,j1)+substr(polp,50,14)
     go br0+12
     rec_lock()
     repl pola with substr(pola,1,37)+str(abI,12,j1)+substr(pola,50,14)
     go br0+13
     rec_lock()
     repl polp with substr(polp,1,37)+str(p117,12,j1)+substr(polp,50,14)
     go br0+15
     rec_lock()
     repl pola with substr(pola,1,37)+str(a201,12,j1)+substr(pola,50,14)
     go br0+16
     rec_lock()
     repl pola with substr(pola,1,37)+str(ap203,12,j1)+substr(pola,50,14)
     repl polp with substr(polp,1,37)+str(p111,12,j1)+substr(polp,50,14)
     go br0+17
     rec_lock()
     repl pola with substr(pola,1,37)+str(ap204,12,j1)+substr(pola,50,14)
     go br0+19
     rec_lock()
     repl pola with substr(pola,1,37)+str(ap209,12,j1)+substr(pola,50,14)
     go br0+20
     rec_lock()
     repl pola with substr(pola,1,37)+str(a207,12,j1)+substr(pola,50,14)
     go br0+22
     rec_lock()
     repl pola with substr(pola,1,37)+str(abII,12,j1)+substr(pola,50,14)
     go br0+24
     rec_lock()
     repl polp with substr(polp,1,37)+str(p122,12,j1)+substr(polp,50,14)
     go br0+25
     rec_lock()
     repl polp with substr(polp,1,37)+str(p121,12,j1)+substr(polp,50,14)
     go br0+27
     rec_lock()
     repl pola with substr(pola,1,37)+str(a223,12,j1)+substr(pola,50,14)
     repl polp with substr(polp,1,37)+str(paV,12,j1)+substr(polp,50,14)
     go br0+29
     rec_lock()
   * repl pola with substr(pola,1,37)+str(a223,12,j1)+substr(pola,50,14)
     repl polp with substr(polp,1,37)+str(p123,12,j1)+substr(polp,50,14)
     go br0+31
     rec_lock()
     repl polp with substr(polp,1,37)+str(pa,12,j1)+substr(polp,50,14)
     go br0+33
     rec_lock()
     repl pola with substr(pola,1,37)+str(abIII,12,j1)+substr(pola,50,14)
     go br0+35
     rec_lock()
     repl pola with substr(pola,1,37)+str(a45,12,j1)+substr(pola,50,14)
     go br0+37
     rec_lock()
     repl pola with substr(pola,1,37)+str(ab,12,j1)+substr(pola,50,14)
     go br0+41
     rec_lock()
     repl pola with substr(pola,1,37)+str(a302,12,j1)+substr(pola,50,14)
     go br0+42
     rec_lock()
     repl pola with substr(pola,1,37)+str(a611,12,j1)+substr(pola,50,14)
     go br0+43
     rec_lock()
     repl pola with substr(pola,1,37)+str(a303,12,j1)+substr(pola,50,14)
     go br0+44
     rec_lock()
     repl pola with substr(pola,1,37)+str(a304,12,j1)+substr(pola,50,14)
     go br0+45
     rec_lock()
     repl polp with substr(polp,1,37)+str(p151,12,j1)+substr(polp,50,14)
     rec_lock()
     go br0+46
     rec_lock()
     repl polp with substr(polp,1,37)+str(p152,12,j1)+substr(polp,50,14)
     go br0+47
     rec_lock()
     repl pola with substr(pola,1,37)+str(avI,12,j1)+substr(pola,50,14)
     go br0+50
     rec_lock()
     repl pola with substr(pola,1,37)+str(a411,12,j1)+substr(pola,50,14)
     go br0+51
     rec_lock()
     repl polp with substr(polp,1,37)+str(p401,12,j1)+substr(polp,50,14)
     go br0+53
     rec_lock()
     repl pola with substr(pola,1,37)+str(a49,12,j1)+substr(pola,50,14)
     go br0+55
     rec_lock()
     repl pola with substr(pola,1,37)+str(avII,12,j1)+substr(pola,50,14)
     go br0+58
     rec_lock()
     repl pola with substr(pola,1,37)+str(a424,12,j1)+substr(pola,50,14)
     go br0+62
     rec_lock()
     repl pola with substr(pola,1,37)+str(avIII,12,j1)+substr(pola,50,14)
     go br0+63
     rec_lock()
     repl polp with substr(polp,1,37)+str(p499,12,j1)+substr(polp,50,14)
     go br0+65
     rec_lock()
     repl pola with substr(pola,1,37)+str(a501,12,j1)+substr(pola,50,14)
     repl polp with substr(polp,1,37)+str(p421,12,j1)+substr(polp,50,14)
     go br0+66
     rec_lock()
     repl pola with substr(pola,1,37)+str(a502,12,j1)+substr(pola,50,14)
     repl polp with substr(polp,1,37)+str(p455,12,j1)+substr(polp,50,14)
     go br0+67
     rec_lock()
     repl pola with substr(pola,1,37)+str(a503,12,j1)+substr(pola,50,14)
     repl polp with substr(polp,1,37)+str(p45,12,j1)+substr(polp,50,14)
     go br0+69
     rec_lock()
     repl pola with substr(pola,1,37)+str(a507,12,j1)+substr(pola,50,14)
     repl polp with substr(polp,1,37)+str(pb,12,j1)+substr(polp,50,14)
     go br0+76
     rec_lock()
     repl polp with substr(polp,1,37)+str(p713,12,j1)+substr(polp,50,14)
     go br0+77
     rec_lock()
     repl pola with substr(pola,1,37)+str(avIV,12,j1)+substr(pola,50,14)
     go br0+79
     rec_lock()
     repl pola with substr(pola,1,37)+str(av,12,j1)+substr(pola,50,14)




     go br0+81
     rec_lock()
     repl pola with substr(pola,1,37)+str(a613,12,j1)+substr(pola,50,14)
     go br0+83
     rec_lock()
     repl pola with substr(pola,1,37)+str(ak,12,j1)+substr(pola,50,14)
     repl polp with substr(polp,1,37)+str(ps,12,j1)+substr(polp,50,14)
     rec_unlock()
                 endif
                 izrab() ; if lastkey()=27 ; set dele off ; return ; endif
                           b1=207
               * set marg to 8
               * ?? '0'
               * ?  space(52)+'Б  А  Л  А  H  С'
   set marg to 5
   ? sbit0+'A40'
   ?? space(50)+'Б  А  Л  А  H  С'
   ?  space(39)+fir00
   set date brit
   set cent on
   ? 'А K Т И В'+space(44)+' к║м  '+dtoc(date1-1)+space(48)+'П А С И В'
   set cent off
   open_bala()
   set filter to t='04'
   go top
   store recno()   to br0
   b0=1



                     do while t='04'
                    *   ? str(recno()-br0,3)+trim(pola)+trim(polp)
                    *  if b0=60  &&  70
                    *  ?? '3'
                    *    ? trim(pola)+subs(polp,1,68)
                    *  else
                         ? trim(pola)+subs(polp,1,68)
                    *  endif
                        spri()
                    *  if ekpr0=2 .and. b0=0
                    *  if b0=0
                    *      ?? sbit0+'0'
                    *  endif
                     if .not.eof()
                        skip
                     else
                        exit
                     endif
                     enddo
    for i0 = 1 to 12
      ?
    next
   ?  space(16)+'С║▒▓ави▓ел:.....................'+space(28)+'Р║ководи▓ел:..........................'
   ?  space(26)+'/'+lize00+'/'+space(42+len(lize00)-len('/'+lize00+'/'))+'/'+nam00+'/'
   ?
   ?
   ?? norm0
  if  j1=0 .and. ll4='╡'
   set prin to p1.prn
   ?
   ? 'СПРАВКА ЗА ГОДИШHО СЧЕТОВОЕHДО ПРИКЛЮЧВАHЕ'
   ? '  '+trim(fir00)+'   '+ str(year(date0),4)+'г.'
   ?
   ?
   ? '  I. СПАРАВКА КЪМ БАЛАHС'
   ?
   ? '207=02140         '+str(a207,12,j1)
   ? '424=03310=0       '+str(a424,12,j1)+' ne в ▒п░авка за вземани┐'
   ? '8. ДМА'
   ? '223=02330=6353    '+str(a223,12,j1)+' v ДМА не в ▒п░авка за вземани┐'
   ? 'a45=02400=6360    '+str(a45,12,j1) +' v ДМА не в ▒п░авка за вземани┐'
   ? '11. Сп░авка за заеми▓е и на╖и▒лени▓е ли╡ви по ин▒▓и▓│╢ионални ▒ек▓о░и  ЗАЕМИ'
   ? '    Декла░и░ам, ╖е н┐мам п░едо▒▓авени заеми ╖ек бок▒ '
   ? '    Декла░и░ам, ╖е н┐мам д║лжими заеми ╖ек бок▒'
   ? '16. ВЗЕМАHИЯ и БАЛАНС'
   ? '411=03210=2001    '+str(a411,12,j1)
  *? '424=03310=0       '+str(a424,12,j1)+' ne в ▒п░авка за вземани┐'
   ? '498=03240=2081    '+str(a49,12,j1)
   ? '151+152=07202=2141'+str(p151+p152,12,j1)+' КОЛОHА 2 ILI 3 !!!'
   ? '401=07401=2111    '+str(p401,12,j1)
   ? '421=07811=2180    '+str(p421,12,j1)
   ? '455=07821=2220    '+str(p455,12,j1)
   ? '452+453=07831=2210'+str(p45,12,j1)+' логи╖но да е 2200 но из░ав. ▒а▓ва ▒  2210'
   ? '499=07801-07821=2241'+str(p499-p455,10,j1)
   ? '452+453 '+space(9+12-len(ltrim(str(p45,12,j1))))+'-'+ltrim(str(p45,12,j1))
  *? '499 w wzeman  2241'+str(p499-p45,12,j1)
    pech()
  endif  
    if dirchange("&disc0")=0
     * store subs(us_0,1,7) to us_1
       store subs(us_0,1,len(us_0)-1) to us_1
       dirchange("&us_1")
       gfo0='bala.prn'
       if file("s0001.prn") ; copy file s0001.prn to &disc0\&gfo0 ; endif
   endif
   restore from &disc_1\job\razrjd additive
                            return  && balan10


    **************** Hа▒о╖ване ана ок░║гление▓о  **************************
                       proc okrag
                 set key -2 to
                 @ 10,20 say space(50)
                 save screen
                 @ 17,66,21,78 box ram1
              *  @ 22,15 clea to 23,65
                 @ 18,68 prompt 'Kлиен▓и'
                 @ 19,68 prompt 'С▓оки'
                 @ 20,68 prompt 'Mа▓е░иали'
                 menu to l1
                 restore screen
                 set key -2 to okrag
                 l2=1
                        return


 ************** П░о╢ед│░а за паме▓▓а  *************
             proc pamet
     save screen
     @ 11,26,13,51 box ram1
     @ 12,27 clea to 12, 50
     @ 12,27 say 'Свободна паме▓ -> ' + str(memory(0),6)
                             inkey(0)
     !mem/c|more
                             inkey(0)
    restore screen
    return


     *****************  Лини┐ за п░о╢е▒ *****************
     *                   func line
     *       if lin0=-1
     *          return
     *       endif
     *
     *       @ 23,15 say str(lin0,4)+'%'
     *       lin9=lin9+1
     *   do case
     *      case round(lin1/20* 1,0) < lin9 .and. lin0 =  0
     *           sec0=round(seconds(),0)
     *           line(lin0:=5)
     *
     *      case round(lin1/20* 2,0) < lin9 .and. lin0 =  5
     *           line(lin0:=10)
     *
     *      case round(lin1/20* 3,0) < lin9 .and. lin0 = 10
     *           line(lin0:=15)
     *
     *      case round(lin1/20* 4,0) < lin9 .and. lin0 = 15
     *           line(lin0:=20)
     *
     *      case round(lin1/20* 5,0) < lin9 .and. lin0 = 20
     *           line(lin0:=25)
     *
     *      case round(lin1/20* 6,0) < lin9 .and. lin0 = 25
     *           line(lin0:=30)
     *
     *      case round(lin1/20* 7,0) < lin9 .and. lin0 = 30
     *           line(lin0:=35)
     *
     *      case round(lin1/20* 8,0) < lin9 .and. lin0 = 35
     *           line(lin0:=40)
     *
     *      case round(lin1/20* 9,0) < lin9 .and. lin0 = 40
     *           line(lin0:=45)
     *
     *      case round(lin1/20*10,0) < lin9 .and. lin0 = 45
     *           line(lin0:=50)
     *
     *      case round(lin1/20*11,0) < lin9 .and. lin0 = 50
     *           line(lin0:=55)
     *
     *      case round(lin1/20*12,0) < lin9 .and. lin0 = 55
     *           line(lin0:=60)
     *
     *      case round(lin1/20*13,0) < lin9 .and. lin0 = 60
     *           line(lin0:=65)
     *
     *      case round(lin1/20*14,0) < lin9 .and. lin0 = 65
     *           line(lin0:=70)
     *
     *      case round(lin1/20*15,0) < lin9 .and. lin0 = 70
     *           line(lin0:=75)
     *
     *      case round(lin1/20*16,0) < lin9 .and. lin0 = 75
     *           line(lin0:=80)
     *
     *      case round(lin1/20*17,0) < lin9 .and. lin0 = 80
     *           line(lin0:=85)
     *
     *      case round(lin1/20*18,0) < lin9 .and. lin0 = 85
     *           line(lin0:=90)
     *
     *      case round(lin1/20*19,0) < lin9 .and. lin0 = 90
     *           line(lin0:=95)
     *
     *      case round(lin1/20*20,0) < lin9 .and. lin0 = 95
     *          line(lin0:=100)
     *
     *      case round(lin1/20*20+5,0) < lin9 .and. lin0 = 100
     *            @ 23,40 say str(round(seconds(),0)-sec0,2)+'▒ек.'
     *            inkey(1)
     *            lin0=-1
     *   endcase
     *       if .not. lin0=-1
     *           @ 23,21 say repl('█',45*lin0/100)
     *       endif
     *                  return


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
             line3=line3+1
             line9=line9+1
          *   if pake='CHEF'
          *      @ 20,22 say 'line1  line3  round(line1/20*line3,0) < line 9 '
          *      @ 21,20 say str(line1,5)
          *      @ 21,27 say str(line3,5)
          *      @ 21,41 say str(round(line1/20*line3,0),5)
          *      @ 21,60 say str(line9,5)
          *      set cons on
          *      inkey(0)
          *   ENDIF

          *  setcons()

         do case
            case round(line1/20* 1,0) < line9 .and. line0 =  0
                 sec0=round(seconds(),0)
                 line0:=5
            case round(line1/20* 2,0) < line9 .and. line0 =  5
                 line0:=10
            case round(line1/20* 3,0) < line9 .and. line0 = 10
                 line0:=15
            case round(line1/20* 4,0) < line9 .and. line0 = 15
                 line0:=20
            case round(line1/20* 5,0) < line9 .and. line0 = 20
                 line0:=25
            case round(line1/20* 6,0) < line9 .and. line0 = 25
                 line0:=30
            case round(line1/20* 7,0) < line9 .and. line0 = 30
                 line0:=35
            case round(line1/20* 8,0) < line9 .and. line0 = 35
                 line0:=40
            case round(line1/20* 9,0) < line9 .and. line0 = 40
                 line0:=45
            case round(line1/20*10,0) < line9 .and. line0 = 45
                 line0:=50
            case round(line1/20*11,0) < line9 .and. line0 = 50
                 line0:=55
            case round(line1/20*12,0) < line9 .and. line0 = 55
                 line0:=60
            case round(line1/20*13,0) < line9 .and. line0 = 60
                 line0:=65
            case round(line1/20*14,0) < line9 .and. line0 = 65
                 line0:=70
            case round(line1/20*15,0) < line9 .and. line0 = 70
                 line0:=75
            case round(line1/20*16,0) < line9 .and. line0 = 75
                 line0:=80
            case round(line1/20*17,0) < line9 .and. line0 = 80
                 line0:=85
            case round(line1/20*18,0) < line9 .and. line0 = 85
                 line0:=90
            case round(line1/20*19,0) < line9 .and. line0 = 90
                 line0:=95
            case round(line1/20*20,0) < line9 .and. line0 = 95
                line(line0:=100)
     *      case round(line1/20*20+5,0) < line9 .and. line0 = 100
                  sek1=round(seconds(),0)-sec0
                  @ 23,21 say repl('█',45)
                  if 0 < sek1
                    if 0 < val(subs(str(round(sek1/60,2),5,2),1,2))
                        @ 23,36 say subs(str(round(sek1/60,2),5,2),1,2)+'min. '+;
                         str(sek1-val(subs(str(round(sek1/60,2),5,2),1,2))*60,2)+'sec.'
                    else
                        set cons on
                        @ 23,40 say str(sek1,2)+'sec.'
                    endif
                        if pake='CHEF'
                           inkey(1.0)
                        else
                         * inkey(1)
                        endif
                     @ 23,15 say space(51)
                  endif
                  line0=-1
            endcase

             if .not. line0=-1
                 set cons on
                 @ 23,21 say repl('█',45*line0/100)
             endif
      *    store 0 to line0,line1,line2, line9, sec0
      *    count for sch='50' to line1
      *    count for sch='50' to line2
      *    line1=line1+line2 ot  1 do 8
      *    go top
                        return

