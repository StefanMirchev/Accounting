    *OTC1.PRG dekltz dma  opr opr00 pari pari30 parikor okrap  politik
          **********Сп░авка за опове▒▓┐ване на ▒╖е▓.поли▓ика**********

                            proc dekltz

                 ramka()
             *   @  2,15 say 'ДЕКЛАРАЦИЯ по ╖л.13, ал.4 и ╖л. 62а, ал. 2, ▓. 2 о▓ ЗTР'
                 @  2,15 say '       ДЕКЛАРАЦИЯ по ╖л. 62а, ал. 2, ▓. 2 о▓ ЗTР     '
                 @  3,14 say '--------------------------------------------------------'
             *   @  8,16,12+ml0,69 box ram1
             *   @  9+ml0,38 say 'ВHИMАHИЕ!'  color 'R+/B'
             *   @ 10+ml0,18 say 'П░о╢ед│░а▓а ЕKРАH/ПЕЧАТ ▓░┐бва да ▒е изп║лни два  '
             *   @ 11+ml0,18 say 'п║▓и за да ▒е из░або▓и и ДЕКЛАРАЦИЯ По ╖л.62, ал.2'
      set cent on
      set date brit
      izrab() ; if lastkey()=27 ; set dele off ; return ; endif
      set marg to 8
      for i0 = 1 to 11
        ?
      next
      ? space(23)+'Д E К Л А Р А Ц И Я'
      ?
      ?
      ?'        По ╖л. 13, ал. 4 о▓ Закона за ▓║░гов▒ки┐ ░еги▒▓║░'
      ?
      ?
      ?
      ?
      ?
      ?'       Дол│подпи▒ани┐▓, '+nam00+', ▒ ЕГH: '+egn00
      ?
      ?'в ка╖е▒▓во▓о ▒и на │п░ави▓ел на '+trim(ltrim(fir00))+','
      ?
      ?'БУЛСТАТ '+buls00+' ▒║▒ ▒едали╣е и ад░е▒ на │п░авление '
      ?
      ?adr00
      ?
      ?
      ? space(23)+'ДЕКЛАРИРАM'
      ?
      ?
      ?
      ?'       И▒▓инно▒▓▓а на за┐вени▓е о▓ мен об▒▓о┐▓ел▒▓ва и п░ие-'
      ?
      ?'мане▓о на п░ед▒▓авени▓е за об┐в┐ване ак▓ове.'
      ?
      ?
      ?
      ?'       Изве▒▓на ми е наказа▓елна▓а о▓гово░но▒▓, ко┐▓о но▒┐ по'
      ?
      ?' ╖л. 313 о▓ Hаказа▓елни┐ кодек▒, за декла░и░ане▓о на неве░ни данни.'
      for i0 = 1 to 15
        ?
      next
      ? space(26)+'Декла░а▓о░:....................'
      ? space(36)+'/'+nam00+'/'
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
         gfo0='dekl_13.prn'
         copy file s0001.prn to &disc0\&gfo0
      endif
      
  *   inkey(3)
  *
  *   set cent on
  *   izrab() ; if lastkey()=27 ; set dele off ; return ; endif
  *   set marg to 3
  *   for i0 = 1 to 3
  *     ?
  *   next
  *   ? space(36)+'П░иложение 3 к║м ╖л. 62а, ал. 2, ▓. 2'
  *   for i0 = 1 to 6
  *     ?
  *   next
  *   ? '                            Д E К Л А Р А Ц И Я'
  *   ?
  *   ?
  *   ? '        по ╖л. 62а, ал. 2, ▓. 2 о▓ Hа░едба No 1 о▓ 2007 г. за водене, '
  *   ? '▒║╡░ан┐ване и до▒▓║п до ▓║░гов▒ки┐ ░еги▒▓║░ и до ░еги▒▓║░а на ╛░иди╖е▒ки▓е '
  *   ? '                           ли╢а ▒ не▒▓опан▒ка ╢ел'
  *   ?
  *   ?
  *   ?
  *   ? '       Дол│подпи▒ани┐▓(а▓а) '+nam00+', ▒ ЕГH: '+egn00
  *   ? '       законен п░ед▒▓ави▓ел на '+trim(ltrim(fir00))+' БУЛСТАТ '+buls00
  *   ?
  *   ? '     на о▒нование ╖л. 62а, ал. 2, ▓. 2 о▓ Hа░едба No 1 о▓ 2007 г. за водене,'
  *   ? '▒║╡░ан┐ване и до▒▓║п до ▓║░гов▒ки┐ ░еги▒▓║░ и до ░еги▒▓║░а на ╛░иди╖е▒ки▓е'
  *   ? 'ли╢а ▒ не▒▓опан▒ка ╢ел в║в в░║зка ▒ ╖л. 38, ал. 1, ▓. 1 и 2 о▓ Закона за'
  *   ? '▒╖е▓овод▒▓во▓о'
  *   ?
  *   ?
  *   ? space(23)+'ДЕКЛАРИРАM  ЧЕ:'
  *   ?
  *   ?
  *   ? 'П░ед▒▓авл┐вано▓о о▓ мен п░едп░и┐▓ие е:'
  *   ?
  *   ? '1. мик░оп░едп░и┐▓ие по ▒ми▒║ла на ╖л. 19, ал. 2 о▓ Закона за ▒╖е▓овод▒▓во▓о;'
  *   ?
  *   ? '   П░ед▒▓авени┐▓ за об┐в┐ване годи╕ен ┤инан▒ов о▓╖е▓ и годи╕ен доклад за '
  *   ? 'дейно▒▓▓а за '+vek0+' год. е п░ие▓ о▓ об╣о▓о ▒║б░ание на ▒║д░│жни╢и▓е или'
  *   ? 'ак╢ионе░и▓е или о▓ ▒║о▓ве▓ни┐ о░ган по ╖л. 38, ал. 1 о▓ Закона за'
  *   ? '▒╖е▓овод▒▓во▓о.'
  *   ?
  *   ? '   П░и оп░едел┐не на ка▓его░и┐▓а на п░едп░и┐▓ие▓о ▒а ▒пазени изи▒квани┐▓а'
  *   ? 'на ╖л. 20 о▓ Закона за ▒╖е▓овод▒▓во▓о.'
  *   ? '   Изве▒▓но ми е, ╖е за декла░и░ани о▓ мен неве░ни данни но▒┐ о▓гово░но▒▓'
  *   ? 'по ╖л. 313 о▓ Hаказа▓елни┐ кодек▒.'
  *   for i0 = 1 to 10
  *     ?
  *   next
  *   ? 'г░. '+grad00
  *   ? 'да▓а: '+dtoc(date())+'г.'
  *   ? space(36)+'Декла░а▓о░:....................'
  *   ? space(46)+'/'+nam00+'/'
  *   set cent off
  *   ?? norm0
  *   for i0 = 1 to 16
  *     ?
  *   next
  *  pech()
  *   if dirchange("&disc0")=0
  *   *  store subs(us_0,1,7) to us_1
  *      store subs(us_0,1,len(us_0)-1) to us_1
  *      dirchange("&us_1")
  *   *  gfo0='dekl_4.prn'
  *      gfo0='dekl_62a.prn'
  *      copy file s0001.prn to &disc0\&gfo0
  *   endif


                            return
          **********Сп░авка за опове▒▓┐ване на ▒╖е▓.поли▓ика**********
                            proc politik
                 ramka()
                 @  2,27 say 'Сп░авка за опове▒▓┐ване на ▒╖е▓.поли▓ика'
                 @  3,26 say '------------------------------------------'
   izrab() ; if lastkey()=27 ; set dele off ; return ; endif
   open_bala()
   set filter to t='30'
   go top
   * set marg to 8
     set marg to 8
    set date brit
    set cent on
                    ?? norm0
                    ?
                    ?
                    ?
                    ? space(25)+'СЧЕТОВОДHА ПОЛИТИKА'
                    ?
                    ? space(12)+fir00
                    ?
                    ? space(26)+'ГОДИHА '+dtoc(date1-1)
                      *  ? ''
                    ? 'P17A65'
                    br0=0
                     do while t='30'.and. br0 < 56
                      ? trim(pola)+trim(polp)
                      br0=br0+1
                     if .not.eof()
                        skip
                     else
                        exit
                     endif
                     enddo
     for i0 = 1 to 3
       ?
     next
      if dirchange("&disc0")=0
         *   store subs(us_0,1,7) to us_1
             store subs(us_0,1,len(us_0)-1) to us_1

         dirchange("&us_1")
         gfo0='poli1.prn'
         copy file s0001.prn to &disc0\&gfo0
      endif
                     set prin to s0002.prn
            *   ?? ''
      ? 'P17A65'
                     do while t='30'
                      ? trim(pola)+trim(polp)
                      br0=br0+1
                     if .not.eof()
                        skip
                     else
                        exit
                     endif
                     enddo

   ?
   ?
   ?
   ?
   ?
   ?
   ?  space(16)+'С║▒▓ави▓ел:.....................'+space(28)+'Р║ководи▓ел:.........................'
   ?  space(26)+'/'+lize00+'/'+space(42+len(lize00)-len('/'+lize00+'/'))+'/'+nam00+'/'
   ?? norm0
      for i0 = 1 to 6
        ?
      next
     pech()

      if dirchange("&disc0")=0
      *  store subs(us_0,1,7) to us_1
         store subs(us_0,1,len(us_0)-1) to us_1
         dirchange("&us_1")
         gfo0='poli2.prn'
         copy file s0002.prn to &disc0\&gfo0
      endif
         memowrit('&disc0\gfo.prn', memoread('&disc0\opr.prn');
         +memoread('&disc0\bala.prn')+memoread('&disc0\kapi.prn');
         +memoread('&disc0\pari.prn')+memoread('&disc0\poli1.prn');
         +memoread('&disc0\poli2.prn'))

                            return

          ************ ОТЧЕТ ЗА ПРИХОДИТЕ И РАХОДИТЕ *****************
                            proc opr
                 ramka()
                 ll0='2' ; l4='е' ; l1=2 ;  l2=0
              *   eras p1.prn ; eras p2.prn ; eras p3.prn ; eras p4.prn ; eras p5.prn ; eras p6.prn ; eras p7.prn
                 set dele on
                 @  2,27 say 'ОТЧЕТ ЗА ПРИХОДИТЕ И РАЗХОДИТЕ'
                 @  3,26 say '-------------------------------'
             *   if 0 < j1
                    set key -2 to okrap
                    set key -5 to razrjd
                 if 0 < j1
                    set key -5 to razrjd
                    @ 12,23 say 'ВHИМАHИЕ !'  color 'R+/B'
                    @ 12,33 say ' РАЗРЯДHОСТТА HЕ В ЦЕЛИ ЧИСЛА! '
                 endif
                 @ 23,17 say 'F3 - ОKРЪГЛЕHИЕ  F6 - РАЗРЯДHОСТ'
                 @  9,22 say 'В лева "л" ╡ил. лева "╡"  млн. лева "м"' get ll4 valid ll4='л'.or.ll4='╡'.or.ll4='м'
                     read
                 @ 23,15 say space(50)
                 @ 21+ml0,14,24+ml0,66 box ram1
                 @ 22+ml0,15 clea to 23+ml0,65
                 @ 22,15 say 'За год. д. д-┐ ▒ледва да нап░ави▓е ▓о╖ка "а" в лева'
                 @ 23,15 say '             ▒ F6 - РАЗРЯДHОСТ С▓-▒▓ 2             '
                 @ 12,23 say '     С о▒иг│░овки на ▒об▒▓в.               '
                 @ 12,53 prompt 'ДА'
                 @ 12,56 prompt 'HЕ'
                 menu to l1
                 set key -5 to
                    if lastkey()=27
                       restore from &disc_1\job\razrjd additive
                       set dele off
                       return
                    endif
                        razr()
                        opr00()
                            return
                      func opr00

         raboti()
         store 0 to r304,r452,r469,r601,r602,r603,r604,r605,r609,r611,r621
         store 0 to r6_1,r6_3,r623,r624,r652,r661,r699,rI,rII,rIII,pI,pII,pIII,r_O,p_O,rb,pb
         store 0 to p6_3,p611,p701,p702,p703,p705,p709,p721,p722,p724,p729,p799,p769


             open_kobo(loc0:=26)  && nski
             open_dobo(loc0:=29)  && nsdi
            do while .not.eof()
                           do case
                              case sch='469'.and.l1=1
                                   r469=r469+dsto
                              case sch='611'.or.sch='303'.or.sch='613'.or.sch='652'
                                   r611=r611-dsto
                              case sch='601'
                                   r601=r601+dsto
                              case sch='602'
                                   r602=r602+dsto
                              case sch='603'
                                   r603=r603+dsto
                              case sch='604'
                                   r604=r604+dsto
                              case sch='605'
                                   r605=r605+dsto
                              case sch='609'
                                   r609=r609+dsto
                              case sch='621'.or.sch='625'.or.sch='629'
                                   r621=r621+dsto
                              case sch='62'.or.sch='66'.or.sch='69'
                                   r623=r623+dsto
                        *     case sch='624'
                        *          r624=r624+dsto
                        *     case sch='69'.or.sch='66'.or.sch='62'
                        *          r699=r699+dsto
                              case substr(sch,1,2)='70'.and.(.not.sch='704')
                                   dn0=subs(data,4,2)+data+nom
                                   sele 3
                                     find "&dn0"
                                 if substr(sch,1,2)='30'.and.(.not.sch='303')
                                   sele 2
                                   r304=r304+dsto
                                 else
                                   sele 2
                                        if .not. eof()
                                           skip
                                           loop
                                        else
                                            exit
                                        endif
                                 endif


                                     set cons off
                           endcase
                              if .not. eof()
                                 skip
                                 loop
                              else
                                  exit
                              endif
            enddo
          *******************  K░еди▓ни обо░о▓и ******************
               open_kobo(loc0:=27)
               do while .not.eof()
                           do case
                              case sch='611'.or.sch='303'.or.sch='613'.or.sch='652'
                                   r611=r611+ksto
                              case sch='619'
                                   r611=r611-ksto
                              case sch='452'.or.sch='451'
                                   r452=r452+ksto
                              case sch='701'
                                   p701=p701+ksto
                              case sch='702'
                                   p702=p702+ksto
                              case sch='703'
                                   p703=p703+ksto
                              case sch='705'
                                   p705=p705+ksto
                              case sch='709'.or.sch='706'.or.sch='707'.or.sch='708'
                                   p709=p709+ksto
                              case sch='721'
                                   p721=p721+ksto
                              case sch='722'.or.sch='723'
                                   p722=p722+ksto
                              case sch='724'
                                   p724=p724+ksto
                              case sch='799'
                                   p799=p799+ksto
                           endcase
                              if .not. eof()
                                 skip
                                 loop
                              else
                                  exit
                              endif
               enddo
                          open_bala()
                          r601=round(r601/ra0,j1)
                          r602=round(r602/ra0,j1)
                          r603=round(r603/ra0,j1)
                          r604=round(r604/ra0,j1)
                          r605=round(r605/ra0,j1)
                          r609=round(r609/ra0,j1)

                          r304=round(r304/ra0,j1)
                         *r207=round(abs(r207)/ra0,j1)
                          r611=round(r611/ra0,j1)

                          r621=round((r621+r623)/ra0,j1)
                          r624=round(r624/ra0,j1)
                          r699=round(r699/ra0,j1)

                          r452=round(r452/ra0,j1)
                          r469=round(r469/ra0,j1)

                          p701=round(p701/ra0,j1)
                          p702=round(p702/ra0,j1)
                          p703=round(p703/ra0,j1)
                          p709=round(p709/ra0,j1)
                          p705=round(p705/ra0,j1)

                          p721=round(p721/ra0,j1)
                          p722=round(p722/ra0,j1)
                          p724=round(p724/ra0,j1)
             if l2=1
                 do ramka
                 @  2,37 say 'ОKРЪГЛЕHИЯ'
                 @  3,36 say '------------'
                 @  4,27 say 'РАЗХОДИ                ПРИХОДИ'
                 @  5,24 say '601' get r601  pict "999999"
                 @  6,24 say '602' get r602  pict "999999"
                 @  7,24 say '603' get r603  pict "999999"
                 @  8,24 say '604' get r604  pict "999999"
                 @  9,24 say '605' get r605  pict "999999"
                 @ 10,24 say '609' get r609  pict "999999"
                 @ 11,24 say '304' get r304  pict "999999"
                 @ 13,24 say '611' get r611  pict "999999"
                 @ 14,24 say '621' get r621  pict "999999"
                 @ 15,24 say '624' get r624  pict "999999"
                 @ 16,24 say '699' get r699  pict "999999"
                 @ 17,24 say '452' get r452  pict "999999"
                 @ 18,24 say '469' get r469  pict "999999"


                 @  5,47 say '701' get p701  pict "999999"
                 @  6,47 say '702' get p702  pict "999999"
                 @  7,47 say '703' get p703  pict "999999"
                 @  8,47 say '709' get p709  pict "999999"
                 @  9,47 say '705' get p705  pict "999999"
                 @ 10,47 say '721' get p721  pict "999999"
                 @ 11,47 say '722' get p722  pict "999999"
                 @ 12,47 say '724' get p724  pict "999999"

                     read
             endif

       set cons off
          if r611 < 0
        *    store abs(r611+r613) to p611
             store abs(r611) to p611
             store 0 to r611
          endif
     rI  = r601+r602+r603+r604+r605+(r609+r304)+r611
     rII = r621+r624
     rb  = rI+rII+rIII
     r_O=rb+r699
     pI  = p701+p702+p703+p709+p705+p611
     pII = p721+p722+p724
     pb  = pI+pII+pIII
     p799=round(p799/ra0,j1)

     p_O=pb+p799
     sele 1
     set filter to t='05'
     go top
     store recno()   to br0
       go  br0+1
       rec_lock()
     repl pola with substr(pola,1,50) + mk1 + substr(pola,57,8)
     repl polp with substr(polp,1,50) + MK1 + substr(polp,57,8)
       go  br0+6
       rec_lock()
     repl pola with substr(pola,1,51) + str(r611,12,j1) + '╙'
     repl polp with substr(polp,1,51) + str(p701+p702+p703,12,j1) + '╙'
       go  br0+8
       rec_lock()
     repl polp with substr(polp,1,51) + str(p701,12,j1) + '╙'
       go  br0+9
       rec_lock()
     repl pola with substr(pola,1,51) + str(r601,12,j1) + '╙'
     repl polp with substr(polp,1,51) + str(p702,12,j1) + '╙'
       go  br0+10
       rec_lock()
     repl polp with substr(polp,1,51) + str(p703,12,j1) + '╙'
       go  br0+11
       rec_lock()
     repl pola with substr(pola,1,51) + str(r602,12,j1) + '╙'
     repl polp with substr(polp,1,51) + str(p703,12,j1) + '╙'
       go  br0+13
       rec_lock()
     repl pola with substr(pola,1,51) + str(r604+r605,12,j1) + '╙'
       go  br0+14
       rec_lock()
     repl pola with substr(pola,1,51) + str(r604,12,j1) + '╙'
       go  br0+15
       rec_lock()
     repl pola with substr(pola,1,51) + str(r605,12,j1) + '╙'
       go  br0+16
       rec_lock()
     repl polp with substr(polp,1,51) + str(p611,12,j1) + '╙'
       go  br0+17
       rec_lock()
     repl pola with substr(pola,1,51) + str(r603,12,j1) + '╙'
       go  br0+18
       rec_lock()
     repl pola with substr(pola,1,51) + str(r603,12,j1) + '╙'
       go  br0+19
       rec_lock()
     repl polp with substr(polp,1,51) + space(12) + '╙'
       go  br0+21
       rec_lock()
     repl pola with substr(pola,1,51) + str(r304+r609,12,j1) + '╙'
     repl polp with substr(polp,1,51) + str(p709,12,j1) + '╙'
       go  br0+22
       rec_lock()
     repl pola with substr(pola,1,51) + str(r304+r609,12,j1) + '╙'
       go  br0+23
       rec_lock()
     repl pola with substr(pola,1,51) + space(12) + '╙'
       go  br0+25
       rec_lock()
     repl pola with substr(pola,1,51) + str(rI,12,j1) + '╙'
     repl polp with substr(polp,1,51) + str(p709,12,j1) + '╙'
       go  br0+27
       rec_lock()
     repl polp with substr(polp,1,51) + str(pI,12,j1) + '╙'
       go  br0+30
       rec_lock()
     repl pola with substr(pola,1,51) + str(r624,12,j1) + '╙'
       go  br0+32
       rec_lock()
     repl pola with substr(pola,1,51) + str(r621,12,j1) + '╙'
       go  br0+35
       rec_lock()
     repl pola with substr(pola,1,51) + str(rII,12,j1) + '╙'
   if rb < pb
       go  br0+37
       rec_lock()
     repl pola with substr(pola,1,51) + str(pb-rb,12,j1) + '╙'
       go  br0+45
       rec_lock()
     repl polp with substr(polp,1,51) + space(12) + '╙'
   else
       go  br0+45
       rec_lock()
     repl polp with substr(polp,1,51) + str(rb-pb,12,j1) + '╙'
       go  br0+37
       rec_lock()
     repl pola with substr(pola,1,51) + space(12) + '╙'
   endif
       go  br0+38
       rec_lock()
     repl polp with substr(polp,1,51) + str(pII,12,j1) + '╙'
       go  br0+39
       rec_lock()
     repl pola with substr(pola,1,51) + str(r699,12,j1) + '╙'
     repl polp with substr(polp,1,51) + str(p721,12,j1) + '╙'
       go  br0+40
       rec_lock()
     repl polp with substr(polp,1,51) + str(p722,12,j1) + '╙'
       go  br0+41
       rec_lock()
     repl polp with substr(polp,1,51) + str(p724,12,j1) + '╙'
       go  br0+42
       rec_lock()
     repl pola with substr(pola,1,51) + str(r_o,12,j1) + '╙'
       go  br0+43
       rec_lock()
     repl polp with substr(polp,1,51) + str(pII,12,j1) + '╙'
       go  br0+47
       rec_lock()
     repl polp with substr(polp,1,51) + str(p799,12,j1) + '╙'
       go  br0+48
       rec_lock()
     repl polp with substr(polp,1,51) + str(p799,12,j1) + '╙'
       go  br0+50
       rec_lock()
     repl polp with substr(polp,1,51) + str(p_o,12,j1) + '╙'
       go  br0+51
       rec_lock()
     repl pola with substr(pola,1,51) + str(r452,12,j1) + '╙'
       go  br0+53
       rec_lock()
     repl pola with substr(pola,1,51) + str(r469,12,j1) + '╙'
   if r_O < p_O
       go  br0+49
       rec_lock()
     repl pola with substr(pola,1,51) + str(p_O-r_O,12,j1) + '╙'
       go  br0+53
       rec_lock()
     repl polp with substr(polp,1,51) + space(12) + '╙'
   else
       go  br0+53
       rec_lock()
     repl polp with substr(polp,1,51) + str(r_O-p_O,12,j1) + '╙'
       go  br0+49
       rec_lock()
     repl pola with substr(pola,1,51) + space(12) + '╙'
   endif
       go  br0+55
       rec_lock()
   if r_O < p_O
     repl pola with substr(pola,1,51) + str(p_O-r_O-r452-r469,12,j1) + '╙'
     repl polp with substr(polp,1,51) + space(12) + '╙'
   else
     repl polp with substr(polp,1,51) + str(r_O-p_O-r452-r469,12,j1) + '╙'
     repl pola with substr(pola,1,51) + space(12) + '╙'
   endif
       go  br0+57
       rec_lock()
   if r_O < p_O
     repl pola with substr(pola,1,51) + str(p_O,12,j1) + '╙'
     repl polp with substr(polp,1,51) + str(p_O,12,j1) + '╙'
   else
     repl pola with substr(pola,1,51) + str(r_O,12,j1) + '╙'
     repl polp with substr(polp,1,51) + str(r_O,12,j1) + '╙'
   endif
                 rec_unlock()
              *           endif   &&  KРАЙ

   izrab()  ; if lastkey()=27 ; set dele off ; return ; endif

         if  ekpr0=1
     ? 'Hамал. на зап. 303/611 '+str(r611,14,j1) + '    - п░од│к╢и┐       701'+str(p701,14,j1)
     ? 'P-ди за ма▓е░.зап. 601 '+str(r601,14,j1) + '    - ▒▓оки           702'+str(p702,14,j1)
     ? 'Р-ди за в║н╕. │▒л. 602 '+str(r602,14,j1) + '    - │▒л│ги          703'+str(p703,14,j1)
     ? 'Амо░▓иза╢ии на ДА  603 '+str(r603,14,j1) + '    - д░│ги 706-9     709'+str(p709,14,j1)
     ? 'Р-ди за запла▓и    604 '+str(r604,14,j1) + '  Увел на зап.    303/611'+str(p611,14,j1)
     ? 'Р-ди за ▒о╢. о▒иг. 605 '+str(r605,14,j1) + '  П░и╡оди о▓ дейн.    П_I'+str(pI,14,j1)
     ? 'О▓╖.▒▓-▒▓ на ▒▓ок. 304 '+str(r304,14,j1) + '  Об╣о II ▒│б▒идии    705'+str(p705,14,j1)
     ? 'Д░. ░-ди и п░ов.   609 '+str(r609,14,j1) + '  П░и╡оди о▓ ли╡ви    721'+str(p721,14,j1)
     ? 'Об╣о               Р_I '+str(rI ,14,j1)  + '  П░и╡оди о▓ дивиден. 722'+str(p722,14,j1)
     ? 'Ли╡ви по к░eд.62+66+69 '+str(r621,14,j1) + '  Пол.░-ка о▓ в.к│░▒  724'+str(p724,14,j1)
     ? 'О▓░. ░-ка о▓ в.к│░ 624 '+str(r624,14,j1) + '  Д░. ┤ин. п░и╡оди    729'+str(p729,14,j1)
     ? 'Об╣о             Р_III '+str(rIII,14,j1) + '  Об╣о              П_III'+str(pIII,14,j1)
     ? 'Д░│ги изв║н.░-ди   699 '+str(r699,14,j1) + '  Изв║н░едни п░-ди    799'+str(p799,14,j1)
     ? 'Об╣о    РАЗХОДИ    Р_  '+str(r_O,14,j1)  + '  Об╣о     ПРИХОДИ    П_ '+str(p_O,14,j1)
     ? 'Дан║к в/│ пе╖. 451+452 '+str(r452,14,j1)
     ? 'Д░. дан.и д║лг.    469 '+str(r469,14,j1)




             if p_O>r_O     &&  П Е Ч А Л Б А
     ? 'ПЕЧАЛБА/'+str(p_O-r_O,13,j1)+'/ '+str(p_O-r_O-r452-r469,14,j1)+'  ЗАГУБА'
     ? 'В▒и╖ко (I+II+III+699)  '+str(p_O,14,j1) +'  В▒и╖ко (I+II+III+799)  '+str(p_O,14,j1)
             else           &&  З А Г У Б А
     ? 'ПЕЧЕЛБА                             '+'   ЗАГУБА                 '+str(r_O-p_O,14,j1)
     ? 'В▒и╖ко (I+II+III+699)  '+str(r_O,14,j1) +'  В▒и╖ко (I+II+III+799)  '+str(r_O,14,j1)
                endif
                 pech()
      endif

                     set prin on
                     set prin to s0003.prn
                   * set marg to 7
                     set marg to 3
                     if ekpr0=2
                        b1=54
                     endif
   *   ?? '0'
   ?  && '555555555555555555555555555555555555555555555'
   ?
   ?
   ? space(24)+'ОТЧЕТ ЗА ПРИХОДИТЕ И РАЗХОДИТЕ'
   ? space(17)+fir00
   set date brit
   set cent on
   ? 'P16A50Р А З Х О Д И'+space(41)+'к║м  '+dtoc(date1-1)+space(43)+'П Р И Х О Д И'
   set cent off
   open_bala()
   set filter to t='05'
   go top
                     do while t='05'
                      ? trim(pola)+trim(polp)
                   *  ? str(recno()-br0,4)+trim(pola)+trim(polp)
                     if .not.eof()
                        skip
                     else
                        exit
                     endif
                     enddo
     for i0 = 1 to 11
      ?
     next
  *?  space(2)+'ДАТА .................../'+subs(str(year(date0)+1,4),3,2)+
   ? space(16)+'С║▒▓ави▓ел:.....................'+space(28)+'Р║ководи▓ел:.........................'
   ?  space(26)+'/'+lize00+'/'+space(42+len(lize00)-len('/'+lize00+'/'))+'/'+nam00+'/'
   ?? norm0
     for i0 = 1 to 3
      ?
     next
        * store subs(us_0,1,7) to us_1
          store subs(us_0,1,len(us_0)-1) to us_1
      if dirchange("&disc0")=0
       *  store subs(us_0,1,7) to us_1
          store subs(us_0,1,len(us_0)-1) to us_1
          dirchange("&us_1")
          gfo0='opr.prn'

                  if j1=0 .and. ll4='╡'
                      copy file s0003.prn to &disc0\&gfo0
                  else
                @  23,15  say '  ОПР н┐ма да ▒е из░або▓и ▒ F6-РАЗРЯДHОСТ С▓-▒▓=0'  ; inkey(0)
                  endif
      endif
         if ekpr0=2
             copy file s0003.prn to s0001.prn
             pech()
         endif

 set cons off

     restore from &disc_1\job\razrjd additive
     set prin on
    if  j1=2 .and. ll4='л'

*  @  23,15  say '  Из░або▓ва ▒е ▒п░авка▓а за годи╕на дан║╖на декла░а╢и┐            '  ; inkey(0)
     set prin to p4.prn
     for i0 = 1 to 4
      ?
     next
     ?
     ? 'IV. СПРАВКА ЗА ГОДИШНА ДАНЪЧНА ДЕКЛАРАЦИЯ'
     ?
     ?
     ? space(15)+trim(fir00)+'   '+ str(year(date0),4)+'г.'
     ? '                  Данни за ╛░иди╖е▒▓о ли╢е'
     ? '1.1. за календа░на▓а година - на о▒нование ╖л.92'
     ? '4.1.Hе┤инан▒ово п░едп░и┐▓ие'
     ? '6.1  '+nam00+'    '+egn00+'     '+tel00
     ? '7.2. С╖е▓оводно п░едп░и┐▓и  102804684 '
     ? 'Ча▒▓ III - Данни за дейно▒▓▓а на дан║╖но зад║лжено▓о ли╢е '+obst00
     ?
     ? '                           Ча▒▓ IV '
     ? 'Годи╕ен о▓╖е▓ за дейно▒▓▓а    ▒амо ▒лед о▓ме▓ка излиза В╡.No'
     ?
     ? '                           Ча▒▓ V '
     ? '26.5 Дан║╖но зад║лжено▓о ли╢е не е зад║лжено да изв║░╕ва аван▒ови вно▒ки'
     ? 'Ме▒е╖ни над 3 млн. Т░име▒е╖ни на 300 ╡ил. '
     ?
     ? '                           Ча▒▓ VI'
     ? ' 0100 = '+ltrim(str(p_O,12,2))+'    0200 = '+ltrim(str(r_O,12,2))+'   '
             if p_O>r_O     &&  П Е Ч А Л Б А
     ??' 0910 = '+ltrim(str(p_O-r_O-r452-r469,12,2))+'   ДАHЪК = '+ltrim(str((p_O-r_O)*.1,12,2))
             else           &&  З А Г У Б А
     ??' ЗАУБА 0920 = '+ltrim(str(r_O-p_O,12,2))
     ?
                endif
     ?
     ? space(18)+'АMОРТИЗАЦИИ  7010 / 8010 = '+ltrim(str(r603,14,2))
     ?
     ? 'ПРОВЕКА   0910  2000'
    endif

   if j1=0 .and. ll4='╡'
     set prin to p2.prn
     ?
     ?
     ? '  0/5/ Раз░┐да/ -> БАЛАHС'
     ? '  1/5/ Раз░┐да/ -> ОПР к║м него:'
     ? '  15500 - Сп░авка за п░и╡оди▓е'
     ? '  21000 - Сп░авка по 601'
     ? '  31000 - Сп░авка по 602'
     ? '  41000 - Сп░авка по 609'
     ? '  61000 - П░и╡оди по иконом. дейно▒▓и  ->701.702.703'
     ? '  70001 - Ме▓од за о╢енка на ▒▓оки▓е 304'
     ? '  За КОСИ 61 ▒е поп║лва ▒п░авка  "Т░│д"  '
     ? '  1600 кол 1 - 1 ни╣о д░│го'
     ?
     ? ' II. СПАРАВКА КЪМ ОПР'
     ?
     ? ' ИЗВЪHРЕДHИ РАЗХОДИ 12000 ДА СЕ ВКЛЮЧАТА В 11200'

     ? '  I. Раздел'
     ? '     701=15500'+str(p701+p702+p703,12,j1)
     ? '  II. Раздел'
     ? '     601=21140'+str(r601,12,j1)
     ? '  III. Раздел'
     ? '     602=31160'+str(r602,12,j1)
     ? '  IV. Раздел'
     ? '     304+609=41110'+str(r304+r609,12-4,j1)
     ? '  VI. Раздел Kod po KID-2008'
     ? '     701 = 60046'+SUBS(obst00,1,2)+str(p701+p702+p703,7+1,j1)
     ? '  VII. Раздел'
     ? '     70001  О▓ме▓ка '
     ? '  22 Сп░авка за п░одаажби▓е по ▓║░г. обек▓'
     ? '     9000 = '+str(p701+p702+p703,12+1,j1)
     ? '     9001 = '+str(p701+p702+p703,12+1,j1)
     ? '  23. СПРАВKА ЗА Р-ДИТЕ HА СУР. И М-ЛИ'
     ? '     601=47/38'+str(r601,12,j1)
     ?
     set prin off
   endif
                      return

  ***********************   Па░и╖ен по▓ок  **********************
                            proc pari
                 ramka()
                 ll0='2'
                 l0=1
                 l4='е'
                 br0=227
                 set dele on
                 set key -2 to parikor
               if 0 < j1
                    set key -5 to razrjd
                    @ 11,23 say 'ВHИМАHИЕ !'  color 'R+/B'
                    @ 11,33 say ' РАЗРЯДHОСТТА HЕ В ЦЕЛИ ЧИСЛА!'
                 endif
                 @ 23,15 say 'F3-п░ове░ка за неп░авилно в║ведени па░и╖ни опе░а╢ии'
                 @  2,27 say 'ОТЧЕТ HА ПАРИЧHИЯ ПОТОK'
                 @  3,26 say '-------------------------'
                 @  8,22 say 'В лева "л" ╡ил. лева "╡"  млн. лева "м"' get ll4 valid ll4='л'.or.ll4='╡'.or.ll4='м'
                     read
                 set key -2 to
                 @ 11,23 say '      Из░або▓ване на ▓абли╢а               '
                 @ 11,52 prompt 'ДА'
                 @ 11,55 prompt 'HЕ'
                 menu to l0
                    if lastkey()=27
                      restore from &disc_1\job\razrjd additive
                      set dele off
                      return
                    endif
         izrab() ; if lastkey()=27 ; set dele off ; return ; endif
          raboti() ; razr()

                  if j1=0 .and. ll4='╡'
                      pari30()  
                  else
                  endif 
                            return
                            func pari30
       store 0 to p101,p223,p411,p49,p151,p159,p455,p724,p729,p452,p721,p722,p60
       store 0 to a101,a223,a401,a49,a151,a159,a455,a624,a629,a452,a621,a60
       store 0 to s50,s51,sald0,obor0,nal0,pA,pB,aA,aB,pS,aS
     if l0=1
             open_obve(loc0:=15)
             find '50'
               do while sch='50'
                 do case
                    case sch='50'
                         s50=s50+round(ndso/ra0,j1)
                         sald0=sald0+round(sald/ra0,j1)
                         obor0=obor0+round(obor/ra0,j1)
                         s51=s51+round(kdso/ra0,j1)
                 endcase
                  if .not. eof()
                     skip
                  else
                     exit
                  endif
               enddo

   store 0 to line0,line1,line2,line3,line9,sec0,p0
   store 19 to line1
   store round(line1/20*1,0)+1 to line9
               open_kobo(loc0:=20)
               set order to 2
               count for sch='50' to lin1      &&&
               open_dobo(loc0:=23)
               set order to 2
               count for sch='50' to lin2      &&&
               lin1=lin1+lin2
   go top
   find '50'
       do while sch='50'
           nom0=nom
           data0=data
           noda0=subs(data,4,2)+data+nom
           ksto0=dsto
              open_kobo(loc0:=21)
              find '&noda0'
              br0=0
                  do while nom=nom0 .and. data=data0
                      br0=br0+1
                        if .not. eof()
                           skip
                        else
                           exit
                        endif
                  enddo
            find '&noda0'
            do while nom=nom0 .and. data=data0
              if 1 < br0
                ksto0=ksto
              endif
                  do case  &&  п░и╡одни  "a"
                     case sch='70'.or.sch='40'.or.sch='41'.or.sch='44'.or.sch='799'
                          p411=p411+ksto0
                     case sch='451'.or.sch='452'
                          p452=p452+ksto0
                     case sch='455'.or.sch='421'
                          p455=p455+ksto0
                     case sch='498'.or.sch='499'.or.sch='422'.or.sch='453'.or.;
                          sch='469'.or.sch='454'.or.sch='456'.or.sch='459'.or.sch='492'
                          p49=p49+ksto0
                     case sch='101'.or.sch='102'.or.sch='107'.or.sch='122'.or.;
                          sch='769'
                          p101=p101+ksto0
                     case sch='151'.or.sch='152'
                          p151=p151+ksto0
                     case sch='159'
                          p159=p159+ksto0
                     case sch='20'.or.sch='21'
                          p60=p60+ksto0
                     case sch='223'
                          p223=p223+ksto0
                     case sch='721'
                          p721=p721+ksto0
                     case sch='722'
                          p722=p722+ksto0
                     case sch='724'
                          p724=p724+ksto0
                     case sch='729'
                          p729=p729+ksto0
                  endcase
              if 1 = br0
                exit
              endif
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
           *  line()
       enddo

                          p411=round(p411/ra0,j1)
                          p49=round(p49/ra0,j1)
                          p452=round(p452/ra0,j1)
                          p455=round(p455/ra0,j1)
                          p724=round(p724/ra0,j1)
                          p729=round(p729/ra0,j1)
                        pA=p411+p49+p452+p455+p724+p729
                          p60=round(p60/ra0,j1)
                         p223=round(p223/ra0,j1)
                        pB=p60+p223
                          p101=round(p101/ra0,j1)
                          p151=round(p151/ra0,j1)
                          p159=round(p159/ra0,j1)
                          p721=round(p721/ra0,j1)
                          p722=round(p722/ra0,j1)
                        pC=p101+p151+p159+p721+p722
                        pS=pA+pB+pC

   open_kobo(loc0:=22)
   set order to 2
   find '50'
       do while sch='50'
           nom0=nom
           data0=data
           noda0=subs(data,4,2)+data+nom
           dsto0=ksto

               open_dobo(loc0:=24)   &&  nsdi
              find '&noda0'
              br0=0
                  do while nom=nom0 .and. data=data0
                      br0=br0+1
                        if .not. eof()
                           skip
                        else
                           exit
                        endif
                  enddo
            find '&noda0'
            do while nom=nom0 .and. data=data0
              if 1 < br0
                dsto0=dsto
              endif

                  do case   &&  ░аз╡одни "b"
                     case sch='40'.or.sch='41'.or.sch='60'.or.sch='30'.or.;
                          sch='31'.or.sch='69'
                          a401=a401+dsto0  &&&
                     case sch='49'.or.sch='422'.or.sch='469'.or.;
                          sch='453'.or.sch='454'.or.sch='456'.or.sch='459'.or.sch='444'
                          a49=a49+dsto0  &&&
                     case sch='455'.or.sch='421'
                          a455=a455+dsto0  &&&
                     case sch='451'.or.sch='452'.or.sch='123'
                          a452=a452+dsto0  &&&
                     case sch='624'
                          a624=a624+dsto0
                     case sch='629'.or.sch='669'
                          a629=a629+dsto0
                     case sch='20'.or.sch='21'
                          a60=a60+dsto0
                     case sch='223'
                          a223=a223+dsto0
                     case sch='151'.or.sch='152'
                          a151=a151+dsto0  &&&
                     case sch='159'
                          a159=a159+dsto0  &&&
                     case sch='621'.or.sch='623'
                          a621=a621+dsto0  &&&
                     case sch='101'.or.sch='102'.or.sch='107'.or.sch='122'.or.sch='111'
                          a101=a101+dsto0  &&&
                  endcase
              if 1 = br0
                exit
              endif
                        if .not. eof()
                           skip
                        else
                           exit
                        endif
            enddo
               sele 3
              if .not. eof()
                 skip
              else
                 exit
              endif
          *   line()
       enddo
                          a401=round(a401/ra0,j1)
                          a49=round(a49/ra0,j1)
                          a452=round(a452/ra0,j1)
                          a455=round(a455/ra0,j1)
                          a624=round(a624/ra0,j1)
                          a629=round(a629/ra0,j1)
                        aA=a401+a452+a455+a49+a624+a629
                          a60=round(a60/ra0,j1)
                         a223=round(a223/ra0,j1)
                        aB=a60+a223
                          a101=round(a101/ra0,j1)
                          a151=round(a151/ra0,j1)
                          a159=round(a159/ra0,j1)
                          a621=round(a621/ra0,j1)
                        aC=a101+a151+a159+a621
                        aS=aA+aB+aC
                        nal0=pS+s50-aS
                     @ 23,15 say 'ПП'+str(nal0,11,j1)+ '  БАЛАHС'+str(s51,11,j1)+'  Р-KА'+str(nal0-s51,11,j1)+'  '
                     i0=inkey(0)
             do case

                case s51 > nal0   // >   ▒▓анда░▓

                     p411=p411-(nal0-s51)  && из░авн┐ване в код 2201
                 *   p49=p49-(nal0-s51)    && из░авн┐ване в код 2208 пи▒▓║плени┐
                     pA=pA-(nal0-s51)
                     pS=pA+pB+pC
                case nal0 < s51   // >  ▒▓анда░▓
                     a401=a401+(nal0-s51)  && из░авн┐ване в код 2201
                 *   a49=a49+(nal0-s51)    && из░авн┐ване в код 2208 пи▒▓║плени┐
                     aA=aA+(nal0-s51)
                     aS=aA+aB+aC
             endcase




     open_bala()
     set filter to t='07'
     go top
     store recno() to br0
       rec_lock()
    *  repl pola with substr(pola,1,65)+mk1+substr(pola,72,2)
    *  go br0
    *  ▓ова е един ░ед
    *  repl pola with substr(pola,1,40)+str(p701+sald0,5,j1)+substr(pola,46,1)
    *  +str(p701+sald0,5,j1)+substr(pola,52,1)+str(p701+sald0,5,j1)+substr(pola,58,1)
    *  +str(p701+sald0,5,j1)+substr(pola,64,1)+str(p701+sald0,5,j1)+substr(pola,70,1)
    *  +str(p701+sald0,5,j1)+substr(pola,76,1)+str(p701+sald0,5,j1)
       go br0+10
       rec_lock()
       repl pola with substr(pola,1,40)+str(p411,5,j1)+substr(pola,46,1);
       +str(a401,5,j1)+substr(pola,52,1)+str(p411-a401,5,j1)+substr(pola,58,19)
       go br0+15
       rec_lock()
       repl pola with substr(pola,1,40)+str(p455,5,j1)+substr(pola,46,1);
       +str(a455,5,j1)+substr(pola,52,1)+str(p455-a455,5,j1)+substr(pola,58,19)
       go br0+21
       rec_lock()
       repl pola with substr(pola,1,40)+str(p724,5,j1)+substr(pola,46,1);
       +str(a624,5,j1)+substr(pola,52,1)+str(p724-a624,5,j1)+substr(pola,58,19)
       go br0+23
       rec_lock()
       repl pola with substr(pola,1,40)+str(p452,5,j1)+substr(pola,46,1);
       +str(a452,5,j1)+substr(pola,52,1)+str(p452-a452,5,j1)+substr(pola,58,19)
       go br0+27
       rec_lock()
       repl pola with substr(pola,1,40)+str(p49,5,j1)+substr(pola,46,1);
       +str(a49,5,j1)+substr(pola,52,1)+str(p49-a49,5,j1)+substr(pola,58,19)
       go br0+29
       rec_lock()
       repl pola with substr(pola,1,40)+str(pA,5,j1)+substr(pola,46,1);
       +str(aA,5,j1)+substr(pola,52,1)+str(pA-aA,5,j1)+substr(pola,58,19)
       go br0+32
       rec_lock()
       repl pola with substr(pola,1,40)+str(p60,5,j1)+substr(pola,46,1);
       +str(a60,5,j1)+substr(pola,52,1)+str(p60-a60,5,j1)+substr(pola,58,19)
       go br0+41
       rec_lock()
       repl pola with substr(pola,1,40)+str(p223,5,j1)+substr(pola,46,1);
       +str(a223,5,j1)+substr(pola,52,1)+str(p223-a223,5,j1)+substr(pola,58,19)
       go br0+48
       rec_lock()
       repl pola with substr(pola,1,40)+str(pB,5,j1)+substr(pola,46,1);
       +str(aB,5,j1)+substr(pola,52,1)+str(pB-aB,5,j1)+substr(pola,58,19)
       go br0+56
       rec_lock()
       repl pola with substr(pola,1,40)+str(p101,5,j1)+substr(pola,46,1);
       +str(a101,5,j1)+substr(pola,52,1)+str(p101-a101,5,j1)+substr(pola,58,19)
       go br0+59
       rec_lock()
       repl pola with substr(pola,1,40)+str(p151,5,j1)+substr(pola,46,1);
       +str(a151,5,j1)+substr(pola,52,1)+str(p151-a151,5,j1)+substr(pola,58,19)
       go br0+62
       rec_lock()
       repl pola with substr(pola,1,40)+str(p721,5,j1)+substr(pola,46,1);
       +str(a621,5,j1)+substr(pola,52,1)+str(p721-a621,5,j1)+substr(pola,58,19)
       go br0+64
       rec_lock()
       repl pola with substr(pola,1,40)+str(p159,5,j1)+substr(pola,46,1);
       +str(a159,5,j1)+substr(pola,52,1)+str(p159-a159,5,j1)+substr(pola,58,19)
       go br0+69
       rec_lock()
       repl pola with substr(pola,1,40)+str(p729,5,j1)+substr(pola,46,1);
       +str(a629,5,j1)+substr(pola,52,1)+str(p729-a629,5,j1)+substr(pola,58,19)
       go br0+71
       rec_lock()
       repl pola with substr(pola,1,40)+str(pC,5,j1)+substr(pola,46,1);
       +str(aC,5,j1)+substr(pola,52,1)+str(pC-aC,5,j1)+substr(pola,58,19)
       go br0+74
       rec_lock()
       repl pola with substr(pola,1,40)+str(pS,5,j1)+substr(pola,46,1);
       +str(aS,5,j1)+substr(pola,52,1)+str(pS-aS,5,j1)+substr(pola,58,19)
       go br0+76
       rec_lock()
       repl pola with substr(pola,1,52)+str(s50,5,j1)+'╙     ╙     ╙'+str(s50,5,j1)+'╙'
       go br0+78
       rec_lock()
       repl pola with substr(pola,1,52)+str(s51,5,j1)+substr(pola,58,19)
     rec_unlock()
     endif
                           b1=54
                           set marg to 5
   set date brit
   set cent on
   ?
   ?
   ?  space(31)+'ОТЧЕТ HА ПАРИЧHИЯ ПОТОK'
   ?
   ? space(19)+fir00
   ?
   ? space(33)+'к║м '+dtoc(date1-1)+'год.'
   ? 'P10A35'
   open_bala()
   set filter to t='07'
   go top
   store recno() to br0
                     do while t='07'
                      * ? str(recno()-br0,3)+pola+trim(polp)
                        ? pola+trim(polp)
                        if .not.eof()
                           skip
                        else
                           exit
                        endif
                     enddo
     for i0 = 1 to 10
      ?
     next
                             * ?  '1'
   ? 'P17A35'+space(16)+'С║▒▓ави▓ел:.....................'+space(28)+'Р║ководи▓ел:...........................'
   ?  space(31)+'/'+lize00+'/'+space(42+len(lize00)-len('/'+lize00+'/'))+'/'+nam00+'/'
   ?? norm0
     for i0 = 1 to 6
      ?
     next
     pech()
    if dirchange("&disc0")=0
       store subs(us_0,1,len(us_0)-1) to us_1
       dirchange("&us_1")
       gfo0='pari.prn'
       copy file s0001.prn to &disc0\&gfo0
   endif

   restore from &disc_1\job\razrjd additive
                            return  &&  pari30
   ******************** П░ове░ка за п░авилно в║вдени па░и╖ни по▓о╢и ********
                             proc  parikor
   save screen
   izrab() ; if lastkey()=27 ; set dele off ; return ; endif
   open_kobo(loc0:=23)   && nski
   set filter to sch='50'.or.sch='4'
   go top
   ? space(22)+'Hеп░авилно в║ведени пла╣ани┐'
   ?
     do while .not. eof()
        dn0=subs(data,4,2)+data+nom
        skip
         if subs(data,4,2)+data+nom=dn0.and.(.not.sch='45')
            ? space(31)+nom+'-'+data
         endif
     enddo
   open_dobo(loc0:=25)   &&  nsdi
   set filter to sch='50'.or.sch='4'
   go top
     do while .not. eof()
        dn0=subs(data,4,2)+data+nom
        skip
         if subs(data,4,2)+data+nom=dn0.and.(.not.sch='45')
            ? space(31)+nom+'-'+data
         endif
     enddo
    ?
    ? space(10)+'Prichina e plashtane na danyk pech. /452 1000.00 503 -1000.00/'
   pech()
   restore screen
                             return
                   proc okrap
                        l2=1
                   return


        *********  Сп░авка за ДMА  *****************
                   proc dma
       do ramka
                 ll4='╡'
                 @  2,30 say 'ДЪЛГОРАЙHИ АKТИВИ'
                 @  3,29 say '-------------------'
                 @  6,19 say 'В лева "л" ╡ил. лева "╡"  млн. лева "м"' get ll4 valid ll4='л'.or.ll4='╡'.or.ll4='м'
                     read
            l1=1
            @  8,30 say 'ДАHЪЧHА  СТАТИСТИКА'
            @  8,30 prompt 'ДАHЪЧHА'
            @  8,39 prompt 'СТАТИСТИКА'
            menu to l1
              *  @ 10,20 say space(50)
                 @ 23,15 say space(50)
   store 0 to n201,n203,n204,n205,n209,n219,n223,n2411,n2413,n2414,n2415,n2419,n2429
   store 0 to s201,s203,s204,s205,s209,s219,s223,s2411,s2413,s2414,s2415,s2419,s2429
   store 0 to d201,d203,d204,d205,d209,d219,d223,d2411,d2413,d2414,d2415,d2419,d2429
   store 0 to k201,k203,k204,k205,k209,k219,k223,k2411,k2413,k2414,k2415,k2419,k2429
   store 0 to k1121,k1123,k1124,k1125,k1129
   store 0 to I1,I2,I3,I4,I5,I7,I8,I9,I10,I11,I14,I15
             open_obap(loc0:=15)  && aobi
               do while .not. eof()
                 do case
                    case part='201'
                       n201=n201+asal
                       s201=s201+ksal
                    case part='203'
                       n203=n203+asal
                       s203=s203+ksal
                    case part='204'
                       n204=n204+asal
                       s204=s204+ksal
                    case part='205'
                       n205=n205+asal
                       s205=s205+ksal
                    case part='209'.or.part='206'
                       n209=n209+asal
                       s209=s209+ksal
                    case part='219'
                       n219=n219+asal
                       s219=s219+ksal
                    case part='223'
                       n223=n223+asal
                       s223=s223+ksal
                    case part='2413'
                        n2413=n2413+asal
                        s2413=s2413+ksal
                    case part='2414'
                        n2414=n2414+asal
                        s2414=s2414+ksal
                    case part='2415'
                        n2415=n2415+asal
                        s2415=s2415+ksal
                    case part='2419'.or. part='2416'
                        n2419=n2419+asal
                        s2419=s2419+ksal
                    case part='2429'
                        n2429=n2429+asal
                        s2429=s2429+ksal
                 endcase
                  if .not. eof()
                     skip
                  else
                     exit
                  endif
               enddo
             open_dpart(loc0:=12)
               do while .not. eof()
                 do case
                    case part='201'
                       d201=d201+dast
                    case part='203'
                       d203=d203+dast
                    case part='204'
                       d204=d204+dast
                    case part='205'
                       d205=d205+dast
                    case part='209'.or.part='206'
                       d209=d209+dast
                    case part='219'
                       d219=d219+dast
                    case part='223'
                       d223=d223+dast
                    case part='2413'
                        d2413=d2413+dast
                    case part='2414'
                        d2414=d2414+dast
                    case part='2415'
                        d2415=d2415+dast
                    case part='2419'.or.part='2416'
                        d2419=d2419+dast
                    case part='2429'
                        d2429=d2429+dast
                 endcase
                    if.not.eof()
                       skip
                    else
                       exit
                    endif
        enddo
             open_kpart(loc0:=12)
               do while .not. eof()
                 do case
                    case part='201'
                       k201=k201+kast
                    case part='203'
                       k203=k203+kast
                    case part='204'
                       k204=k204+kast
                    case part='205'
                       k205=k205+kast
                    case part='209'.or.part='206'
                       k209=k209+kast
                    case part='219'
                       k219=k219+kast
                    case part='223'
                       k223=k223+kast
                    case part='1121'
                       k1121=k1121+kast
                    case part='1123'
                       k1123=k1123+kast
                    case part='1124'
                       k1124=k1124+kast
                    case part='1125'
                       k1125=k1125+kast
                    case part='1129'.or.part='1126'
                       k1129=k1129+kast
                    case part='2413'
                        k2413=k2413+kast
                    case part='2414'
                        k2414=k2414+kast
                    case part='2415'
                        k2415=k2415+kast
                    case part='2419'.or.part='2416'
                        k2419=k2419+kast
                    case part='2429'
                        k2429=k2429+kast
                 endcase
                    if.not.eof()
                       skip
                    else
                       exit
                    endif
        enddo
        do razr
                   n201=round(n201/ra0,j1)
                   d201=round(d201/ra0,j1)
                   k201=round(k201/ra0,j1)
                   k1121=round(k1121/ra0,j1)

                   n203=round(n203/ra0,j1)
                   d203=round(d203/ra0,j1)
                   k203=round(k203/ra0,j1)
                   k1123=round(k1123/ra0,j1)

                   n2413=round(n2413/ra0,j1)
                   d2413=round(d2413/ra0,j1)
                   k2413=round(k2413/ra0,j1)

                   n204=round(n204/ra0,j1)
                   d204=round(d204/ra0,j1)
                   k204=round(k204/ra0,j1)
                   k1124=round(k1124/ra0,j1)

                   n2414=round(n2414/ra0,j1)
                   d2414=round(d2414/ra0,j1)
                   k2414=round(k2414/ra0,j1)

                   n205=round(n205/ra0,j1)
                   d205=round(d205/ra0,j1)
                   k205=round(k205/ra0,j1)
                   k1125=round(k1125/ra0,j1)

                   n2415=round(n2415/ra0,j1)
                   d2415=round(d2415/ra0,j1)
                   k2415=round(k2415/ra0,j1)

                   n209=round(n209/ra0,j1)
                   d209=round(d209/ra0,j1)
                   k209=round(k209/ra0,j1)
                   k1129=round(k1129/ra0,j1)

                   n2419=round(n2419/ra0,j1)
                   d2419=round(d2419/ra0,j1)
                   k2419=round(k2419/ra0,j1)

                   n219=round(n219/ra0,j1)
                   d219=round(d219/ra0,j1)
                   k219=round(k219/ra0,j1)

                   n223=round(n223/ra0,j1)
                   d223=round(d223/ra0,j1)
                   k223=round(k223/ra0,j1)
                   n2429=round(n2429/ra0,j1)
                   d2429=round(d2429/ra0,j1)
                   k2429=round(k2429/ra0,j1)
                   s2413=round(s2413/ra0,j1)
                   s2414=round(s2414/ra0,j1)
                   s2415=round(s2415/ra0,j1)
                   s2419=round(s2419/ra0,j1)
                   s2429=round(s2429/ra0,j1)
      do while .t.
        @ 5,5 clea to 20,75
           @  4,29 say '╖л.55, ал.1 о▓ ЗКПО'
        if l1=1
           @  5, 1 say '    АKТИВИ    HАЧАЛО     ПОСТЪП   ВСИЧ.АMО   АMО.ТЕК.ГОД   ПЪРВО.СТ.  ОСТА СТ.'
           @  6, 1 say 'ДЕК                                    5          3           4       6 = 4-5'
        else
           @  5, 1 say '    АKТИВИ    HАЧАЛО     ПОСТЪП     ПРЕОЦ     ГОД.Д.АMО  ДMА  РДMА'
        endif
        @  8, 1 say 'Сг░ади I '
        @ 10, 1 say 'Mа╕ини II'
        @ 12, 1 say 'Т░ан▒.V+III'
        @ 14, 1 say 'Д░│ги VII'
        @  8,13  get n203   pict "9999999.99"
        @  8,24  get d203   pict "9999999.99"
        if l1=1
           @  8,35  get s2413  pict "9999999.99"  && ОБЩ.АMОРТ
           @  8,57  say n203+d203   pict "9999999.99"
           @  8,68  say n203+d203-s2413  pict "9999999.99"
        else
        @  8,57 say '6212 4520'
        @ 10,57 say '6220 4530'
        @ 12,57 say '6240 4540'
        @ 14,57 say '6250 4550'
        @ 16, 1 say 'С/ка 207'
        @ 16,57 say '6260 4550<-вкл.в ▓┐╡'
           @  8,35  get k1123  pict "9999999.99"  && ПРЕОЦ
        endif
           @  8,46  get K2413  pict "9999999.99"

        @ 10,13  get n204   pict "9999999.99"
        @ 10,24  get d204   pict "9999999.99"
        if l1=1
           @ 10,35  get s2414  pict "9999999.99"
           @ 10,57  say n204+d204  pict "9999999.99"
           @ 10,68  say n204+d204-s2414  pict "9999999.99"
        else
           @ 10,35  get k1124  pict "9999999.99"
        endif
        @ 10,46  get k2414  pict "9999999.99"
        @ 12,13  get n205   pict "9999999.99"
        @ 12,24  get d205   pict "9999999.99"
        if l1=1
            @ 12,35  get s2415  pict "9999999.99"
            @ 12,57  say n205+d205  pict "9999999.99"
            @ 12,68  say n205+d205-s2415  pict "9999999.99"
        else
            @ 12,35  get k1125  pict "9999999.99"
        endif
        @ 12,46  get k2415  pict "9999999.99"

            *  n209 =n209+n219 && !!! Сбо░ на С▓оп.инвен▓ и Hм.ДMА
            *  d209 =d209+d219
            *  s2419=s2419+s2429
            *  k2419=k2419+k2429
        @ 14,13  get n209   pict "9999999.99"
        @ 14,24  get d209   pict "9999999.99"
        if l1=1
           @ 14,35  get s2419  pict "9999999.99"  // kol.5
           @ 14,57  say n209+d209 pict "9999999.99"
           @ 14,68  say n209+d209-s2419 pict "9999999.99"
        else
           @ 14,35  get k1129  pict "9999999.99"  // preoc
        endif
        @ 14,46  get k2419  pict "9999999.99"
    *   @ 16,13  get n219   pict "9999999.99"  tazi mai sa izli6ni
    *   @ 16,24  get d219   pict "9999999.99"  za6to sa wkl. w rVII- gorniq
    *   @ 16,35  get k1129  pict "9999999.99"
    *   @ 16,46  get S2429 pict "9999999.99"
         read
       if lastkey()=27
         exit
       endif
                   s201=n201+d201-k201+k1121
                   s203=n203+d203-k203+k1123
                   s2413=n2413+d2413-k2413
                   s204=n204+d204-k204+k1124
                   s2414=n2414+d2414-k2414
                   s205=n205+d205-k205+k1125
                   s2415=n2415+d2415-k2415
                   s209=n209+d209-k209+k1129
                   s2419=n2419+d2419-k2419
                   s219=n219+d219-k219
                   s223=n223+d223-k223
                   s2429=n2419+d2429-k2419
                   I1=n201+n203+n204+n205+n209
                   I2=d201+d203+d204+d205+d209
                   I3=k201+k203+k204+k205+k209
                   I4=n201+d201-k201+n203+d203-k203+n204+d204-k204+n205+d205-k205+n209+d209-k209
                   I5=k1121+k1123+k1124+k1125+k1129
                   I7=s201+s203+s204+s205+s209
                   I8=n2411+n2413+n2414+n2415+n2419
                   I9=k2411+k2413+k2414+k2415+k2419
                  I10=d2411+d2413+d2414+d2415+d2419
                  I11=n2411+n2413+k2413-d2413+n2414+k2414-d2414+n2415+k2415-d2415+n2419+k2419-d2419
                  I14=n2411+n2413+k2413-d2413+n2414+k2414-d2414+n2415+k2415-d2415+n2419+k2419-d2419
                  I15=s201+s203-(n2413+k2413-d2413)+s204-(n2414+k2414-d2414)+s205-(n2415+k2415-d2415)+s209-(n2419+k2419-d2419)
     save screen
     izrab() ;  if lastkey()=27 ; set dele off ; return ; endif
    ? 'OPP12A65'
    ?     space(40)+fir00
    ? '--------------------------------------------------------------------------------------------------'
    ? '                О▓╖е▓на ▒▓-▒▓               П░ео╢  П░ео╢     Амо░▓иза╢и┐             П░ео╢ен Балан'
    ? '                на╖ло по▒▓║п  излез.  к░а┐    нка  ▒▓-▒▓ на╖ало  на╖и▒  о▓пи▒   к░а┐  амо░▓  ▒▓-▒▓'
    ? '                   1      2      3      4      5      7      8      9     10     11     14     15'
    ? '--------------------------------------------------------------------------------------------------'
    ? '  Земи   6211 '+str(n201,7,j1)+str(d201,7,j1)+str(k201,7,j1)+str(n201+d201-k201,7,j1)+str(k1121,7,j1)+str(s201,7,j1)+str(n2411,7,j1)+str(k2411,7,j1)+str(d2411,7,j1)+str(n2411+k2411-d2411,7,j1);
+str(n2411+k2411-d2411,7,j1)+str(s201-(n2411+k2411-d2411),7,j1)
    ? '1.Сг░ади 6212 '+str(n203,7,j1)+str(d203,7,j1)+str(k203,7,j1)+str(n203+d203-k203,7,j1)+str(k1123,7,j1)+str(s203,7,j1)+str(n2413,7,j1)+str(k2413,7,j1)+str(d2413,7,j1)+str(n2413+k2413-d2413,7,j1);
+str(n2413+k2413-d2413,7,j1)+str(s203-(n2413+k2413-d2413),7,j1)
    ? '2.Mа╕ини 6220 '+str(n204,7,j1)+str(d204,7,j1)+str(k204,7,j1)+str(n204+d204-k204,7,j1)+str(k1124,7,j1)+str(s204,7,j1)+str(n2414,7,j1)+str(k2414,7,j1)+str(d2414,7,j1)+str(n2414+k2414-d2414,7,j1);
+str(n2414+k2414-d2414,7,j1)+str(s204-(n2414+k2414-d2414),7,j1)
    ? '5.Д░│ги  6230 '+str(n209+n205,7,j1)+str(d209+d205,7,j1)+str(k209+k205,7,j1)+str(n209+d209-k209+n205+d205-k205,7,j1)+str(k1129+k1125,7,j1)+str(s209+s205,7,j1)+str(n2419+n2415,7,j1);
+str(k2419+k2415,7,j1)+str(d2419+d2415,7,j1)+str(n2419+k2419-d2419+n2415+k2415-d2415,7,j1) +str(n2419+k2419-d2419+n2415+k2415-d2415,7,j1)+str(s209-(n2419+k2419-d2419)+s205-(n2415+k2415-d2415),7,j1)


    ? '6.Т░ан▒. 6231 '+str(n205,7,j1)+str(d205,7,j1)+str(k205,7,j1)+str(n205+d205-k205,7,j1)+str(k1125,7,j1)+str(s205,7,j1)+str(n2415,7,j1)+str(k2415,7,j1)+str(d2415,7,j1)+str(n2415+k2415-d2415,7,j1);
+str(n2415+k2415-d2415,7,j1)+str(s205-(n2415+k2415-d2415),7,j1)
    * vvv
    ? ' Об╣о I       '+str(I1,7,j1)+str(I2,7,j1)+str(I3,7,j1)+str(I4,7,j1)+str(I5,7,j1)+str(I7,7,j1)+str(I8,7,j1)+str(I9,7,j1)+str(I10,7,j1)+str(I11,7,j1)+str(I14,7,j1)+str(I15,7,j1)
    ? 'HеMДА'
    ? '6.Д░│ги  6110 '+str(n219,7,j1)+str(d219,7,j1)+str(k219,7,j1)+str(n219+d219-k219,7,j1)+str(0,7,j1)+str(s219,7,j1)+str(n2429,7,j1)+str(k2429,7,j1)+str(d2429,7,j1)+str(n2429+k2429-d2429,7,j1);
+str(n2429+k2429-d2429,7,j1)+str(s219-(n2429+k2429-d2429),7,j1)
    ? '7.Д┐лове 6353 '+str(n223,7,j1)+str(d223,7,j1)+str(k223,7,j1)+str(n223+d223-k223,7,j1)+str(0,7,j1)+str(s223,7,j1)
    ? '8.Дан║╢и 6360  wzemi ot balansa sumata na 02400'
    ?
    ? '!!!! PROVERI KOL 15 OT DMA DALI IMA RAVENSTVO !!!! '
    ? ' BALANS / DMA   02211 = 6211, 02212 = 6212 '
    ? '                02220 = 6220, 02230 = 6230 '
    ? 'ako ima razlika se korigira samo v sprvka DMA kol 8'
    ?
    ? '!!! VAZHNO POPALNI NADOLU II. Раздел ZADALVITELNO!!!'
    ? 'II. Раздел Dalgotr. mater aktivi'
    ? '11. SPRAWKA ZA R-DI ZA DMA -> SAMO ZA NOVI DMA'
    ? '6220=0350/kol-3a'+str(n204,7,j1)+str(d204,7,j1)
    ? '6230=0480       '+str(n209+n205,7,j1)+str(d209+d205,7,j1)


 *? ' SPRAVKA KAM AMORTIZACIONEN PLAN'
 *?
 *? ' Земи   6211 '+str(n201,12,j1)+ '  0310=0311 ili druga poziciq po-nadolu'
 *? ' Сг░ади 6212 '+str(n203,12,j1)+ '  0321=0321 ili druga poziciq po-nadolu'
 *? ' Д░│ги  6230 '+str(n209+n205,12,j1)+'  0400=0470 ili druga poziciq po-nadolu'
 *?
 *? ' VNIMANIE!!! NIKOGA NE SE KOREGIRA SPRAWKATA ZA AMORTIZACII!!!!'
 *? ' Popalwa se sparavka 12 /EKOTAKSI/ 8474 slagam proizvolna 321 lv ZADALGITELNO!!!'
 *? ' Popalwa se sparavka 12 /EKOTAKSI/ 8464 vinetka NE E ZDALGITELNO!!!'
 *
 *?
 *? 'NAI VECHE SE POPALVA KOLONA 3 I KOLONA 5 AKO NE SE POLUCHI CHETI NADOLU'
 *? 'skobite prim. (2) sa koloana na spravkata'
 *? 'DMA sprawkata trqbwa da e zasech. s balnsa BALANS 02200(1) = DMA 6200(15)'
 *? 'ako ina pridobiti DMA (2) trqbwa da se popalni i RDMA  w slednata zawis'
 *? '                      DMA   RDMA    RDMA     RDMA '
 *? '                      (2)    (3)    (5)      (6)  '
 *? '203 SGRADI          6210  = 4520  = 4520 =    0   '
 *? '204 MASHINI         6220  = 4530  = 4530 =    0   '
 *? '205 TRANSPORTNI     6240  = 4540  = 4540 =    0   '
 *? '206              6250+6260= 4550  = *206 =        '
 *? '206              6260(1)  = 4550(1)      =        '
 **   ? '207 MOGE da                                   '
 *? '*206 w tazi kolona w slagasa mo st-ta 206         '
 *? '*207 w tazi kolona ostawa st-ta 207               '
 *? 'Trjabva da se poluchi rawenstwoto RDMA 4500(6)= BALANS 02240(1)'
 **  for i0 = 1 to 13
 **   ?
 **  next
 *
 *
 *  do pech
      restore screen
      enddo
                   return
