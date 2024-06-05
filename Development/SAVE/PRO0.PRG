  *PRO0.PRG  aktual broj ddok ddok2 dire izrab nulb3 nulb4 izrav line. mes mod11 nsinf oper pauza peca
  * @  0,15  say 'bbbb ' ; inkey(0) //kkk
  **  preh podred prekpp prekp provvar ramka raboti razr rock spisk spri stok1 zvan
  **  zenisme line.

      ************** О╖е░▓аване на ░амка  **************
                       proc ramka
       @ 0,0 clea to 24+ml0,80 ; @ 0,0 say upper(us_0)
       @  1, 0,24+ml0,79 box ram1 ; @ 22+ml0,1 say repl(chr(205),78)
       @ 22,14 say chr(203) ; @ 22,66 say chr(203)
       @ 23,14 say chr(204) ; @ 23,66 say chr(204)
       @ 24,14 say chr(202) ; @ 24,66 say chr(202)

       if sc9='д'.or. sc11='д';@ 0,72 say dtoc(date0);else;@  0,75 say data0;endif
         do case
            case cdow(date())='Monday'    ; cden0='Понеделник'
            case cdow(date())='Tuesday'   ; cden0='  В▓о░ник '
            case cdow(date())='Wednesday' ; cden0='  С░┐да   '
            case cdow(date())='Thursday'  ; cden0=' Че▓в║░▓║к'
            case cdow(date())='Friday'    ; cden0='   Пе▓║к  '
            case cdow(date())='Saturday'  ; cden0='  С║бо▓а  '
            case cdow(date())='Sunday'    ; cden0='  Hедел┐  '
         endcase

       @ 23+ml0, 3 say cden0 ; @ 23+ml0,69 say substr(dtoc(date()),1,10)
       @ 23+ml0,15 say space(51)

                       return
      ************** K░ай на о╖е░аване на ░амка  *************

       ******************   П░о╢ед│░а за па│за  ***************
                        proc pauza
       @ 16,80 get l0 ; chet() ; set curs off
                        return

      ************** П░о╢ед│░а за в░емнно ▒пи░ане    ******************
                          proc spri
         *  if aabb00=1
         *      @  0,15  say 'bbbb '+str(b0,3)+str(loc0,4)+str(lin0,4) ; inkey(0) //kkk
         *      loc0=-1
         *  endif
           b0=b0+1
           if  b0=b1.or.b0>b1
             if b3=1 ; b1=b1+b00 ; endif
             b3=b3+1 ; b0=0 ; save_0='s'+nulb3() ; set prin to &save_0
           endif
                           return
    ********************* П░о╢ед│░а за пе╖а▓а ****************************
                            proc izrab
              ll13='н' // F3-Редак╢и┐
              ll14='д' // F4-П░ек║▒на▓ пе╖а▓  д-неп░ек║▒на▓ н-п░ек║▒н
               * ll15='д'  // F5-П░од║лжение
              b3=1 ; b1=325 ; b1=325
              @ 18, 2 clea to 21,78  ; @ 18+ml0,66,21+ml0,78 box ram1
          *   @ 22+ml0,14,24+ml0,66 box ram1
              set key -2 to ddok2 ; set key -3 to ddok2 ; set key -4 to ddok2
              @ 23+ml0,15 say space(51)
           if ! sc9='д'
              @ 23+ml0,15 say space(51)
              @ 23+ml0,15 say 'F3-Редак╢и┐ F4-П░ек║▒на▓ пе╖а▓ F5-П░од║лжение пе╖а▓'
           endif
                do case
                  case ekpr0=1 .or. ekpr0=2

   *************begin paketno pecatane partidi ************
              ekpr0=1
              @ 19+ml0,68 prompt 'Е K Р А H' ; @ 20+ml0,68 prompt 'П Е Ч А Т'
              menu to ekpr0
   *************end   paketno pecatane partidi ************

                  case ekpr0=3
                  ekpr0=1
              @ 23+ml0,18 say 'ВHИMАHИЕ!'  color 'R+/B'
              @ 23+ml0,28 say 'Сп░авка▓а ▒е извежда ▒амо на ек░ан.'
              @ 19+ml0,68 say 'Е K Р А H' color ' /W' ; @ 20+ml0,68 say 'П Е Ч А Т'
                    inkey(0)
                  case ekpr0=4
                  ekpr0=2
              @ 23+ml0,18 say 'ВHИMАHИЕ!'  color 'R+/B'
              @ 23+ml0,28 say 'Сп░авка▓а ▒е извежда ▒амо на пе╖а▓.'
              @ 19+ml0,68 say 'Е K Р А H' ; @ 20+ml0,68 say 'П Е Ч А Т' color ' /W'
                    inkey(0)
                endcase

             if lastkey()=27
               set cons on ; set key -2 to ; set key -3 to ; set key -4 to
               @ 23+ml0,15 say space(51)
               return
             endif
                      set cons off ; set marg to 0 ; set prin off
                         if ll15='д'   //  F5-П░од║лжение
                            b3=1
                            do while .t.
                               save_1='&us_0'+'s'+nulb3()+'.prn'
                               if !file ("&save_1") ; exit ; endif
                                b3=b3+1
                            enddo
                         else
                  if !file ("s0001.prn") ; memowrit('s0001.prn','') ; endif
                              !del s*.prn   &&  да не ▒е п░омен┐
                              save_1='s0001.prn'
                         endif
                           if file("&disc_0\s*.prn")
                               !del &disc_0\s*.prn   &&  да не ▒е п░омен┐
                               !del &disc_0\zan*.pdf
                           endif
                            set prin on ; set prin to &save_1 ; set cons off
                            set key -2 to ; set key -3 to
                                 @ 23+ml0,15 say space(51)
                        if s0000='д'
                            @ 19+ml0,68 say '  s0000  ' ; @ 20+ml0,68 say ' ВКЛЮЧЕH '
                                ekpr0=2 ; ll14='н'; inkey(2)
                        endif
                             return   // izrab


               ********** П░о╢ед│░а за пе╖а▓а **************************
                            proc pech
              clos data
             if lastkey()=27.and.(!t0='-')
                set cons on ; ekpr0=1 ; set prin off ; set prin to
                return
             endif
         * count all s????.prn  begin pppp
            b4=0
            do while .t.
                 save_0='s'+nulb4()+'.prn'
                if file("&save_0") ; b2=b4 ; else ; exit ; endif
            enddo
         * count all s????.prn  end
          if ll10=' ' ; b3=1 ; endif
             set marg to 0 ; set prin off ; set prin to
     if ekpr0=1
             l0='д'
                @ 23+ml0,15  say 'С▓ани╢а наго░е/надол│ (Fn)Ctrl+PgDn/PgUp F4-бележ.'
             do while .t.
                   *   @ 0,25 say 'Max row 500   Total row '+str(mlcount(memoread('s0099.prn'),250),4)
                       save_0='s'+nulb3()+'.prn'
                       @ 2,68 say 'С▓░. '+str(b3,2)+' /'+str(b2,2) //  pppp
                       save1=memoread("&save_0")
                       save1=memoedit(save1,5,1,21+ml0,78,.t.,"fdobav",254,40,1,20)
                       memowrit('&save_0',save1)
                if l0='д' ; ekpr0=1 ; exit ; endif
              l0='д'
             enddo
     else
       *    do while .t.
       *     if isprinter()=.f.
       *        zvan()
       *        @ 23+ml0,15 say '   Вкл╛╖е▓е п░ин▓е░а и на▓и▒не▓е кой да е клави╕   '
       *        i0=inkey(0)
       *        if lastkey()=27 ; set prin off ; set prin to ; set cons on ; return ; endif
       *        loop
       *     else
       *        @ 23+ml0,17 say '                                               '
       *        exit
       *     endif
       *    enddo
                              set cons off
              raboti()
              do while  .t.
                       save_0='s'+nulb3()+'.prn'
                       save1=memoread("&save_0")
                   if ll13='д'  //  F3-Редак╢и┐
                     * save1=memoread("&save_0")
                       save1=memoedit(save1,5,1,21+ml0,78,.t.,"fdobav",250,40,1,20)
                       memowrit('&save_0',save1)
                   endif
                   if file("&save_0")
                       save_0='s'+nulb3()+'.prn'
                      if ll14='д'  // F4-Prekasnat pecat "д/d" ne e prekasnat pechat
                      if file("&disc_0\zan.pdf") ; eras &disc_0\zan.pdf ; endif
                      if file("&disc_0\sentinel.txt") ; eras &disc_0\sentinel.txt ; endif

                         * !!!!!! TUKA PECHATA !!!!!!!!!!!!!'

  *If the procedure does not work, it is because:
  *1. The option is not set -> Zan Image-> Settings-> General-> Generate a
  *sentinel file after printing finishes ->  ?
  *2. Save -> No Dialog
  *3. Zan Image-> Settings-> Run application after printing images is
  *    -> ? or ? with func zanvi VKL or IZKL.
  *4. В pro4.prg -> func zanvi -> ░ед  1505
  *Appears Program too big to fit in memory and not do xcopy о▓ IZKL folder
  *of *.app files

                            copy file &save_0 to &disc_0\&save_0
                      endif
                        b3=b3+1
                        save_0='s'+nulb3()+'.prn'
           if file("&save_0").and.ll10=' '

          if s0000='д'
              *  !!! Sledashtite 4ri comandni redowe sa na red 212-220
              *  ako trqbwa da se pusnta powtori sintaksisa
        memowrit('&disc_0\s0000',memoread('&disc_0\s0000')+save1+chr(13)+chr(10))
             copy file &disc_0\s0000 to s0099.prn
          endif
              ?
               if ! ll14='н'  // F4-П░ек║▒на▓ пе╖а▓
                @ 23+ml0,15 say '  Об║░не▓е ли▒▓▓а и на▓и▒не▓е "SPACE"  за ▒▓░. '+str(b3,3)
                           inkey(0)
                           if lastkey()=27 ; return ; endif

         ! cmd /c start /min  %SystemRoot%\System32\TASKKILL /F /IM PDFXC.exe
         if file("&disc_0\vdm*.tmp")=.T. ; aaaa=subs(disc_0,1,5) ; !del &aaaa\vdm*.tmp
         endif
               endif
                @ 23+ml0,15 say '         П░ог░ама▓а пе╖а▓а, мол┐ из╖акай▓е !       '
           else ; exit ; endif
                   else
                      if lastkey()=27 ; exit ; endif
                   endif
              enddo
                ?
              if ! ll14='н' //  F4-П░ек║▒на▓ пе╖а▓

        **** !!!!! MOGE DA IMA PROBLEM
              * if file("&disc_1\zan\vkl\app.ini")
              *   zanvi(zan0:='vkl')
              * endif
        **** !!!!!

                @ 23+ml0,15 say  '       След ▒пи░ане на пе╖а▓а на▓и▒не▓е "Esc"     '
                inkey(0)
                ! cmd /c start /min  %SystemRoot%\System32\TASKKILL /F /IM PDFXC.exe
            *   pauza()
              endif
              @ 23+ml0,15 say  space(50)
              @ 23+ml0,24 say '' ;  ?? norm0 ; set prin to ; set prin off
     endif
     * TUK SE BAVI W ZAVISIMOST OT GOLEMINATA NA s0099.txt !!!!
     as0=1
       asci0=save1 ; asci() ; memowrit('s0099.txt','&asci1')
     if s0000='д'
           if ! (v1=6 .and. v3=4)
        memowrit('&disc_0\s0000',memoread('&disc_0\s0000')+save1+chr(13)+chr(10))
        copy file &disc_0\s0000 to s0099.prn
           endif
     endif
       if file("&disc_0\sentinel.txt") ; eras &disc_0\sentinel.txt ; endif
                           return

                          func fdobav
                             do case
                      *          case  lastkey()=27
                                 case  lastkey()=-3
                                      @ 4+ml0,0 say  repl('_',79)
                                      spr0=memoread("spravka.txt")
                                      spr0=memoedit(spr0,0,0, 3,79,.t.,"",250,40,1,20)
                                 case lastkey()=31
                                      l0='н' ; if 1 < b3 ; b3=b3-1 ; endif
                                      keyboard chr(27) ; return
                                 case lastkey()=30
                                      l0='н' ; if b3 < b2 ; b3=b3+1 ; endif
                                       keyboard chr(27) ; return
                             endcase
                          return

      ****************  Изли▒▓ва н│леви па░▓иди  *******************
                           proc  ddok2
                     @ 23+ml0,15 say space(51)
             do case
                case lastkey()=-2
                     ll13='д'  //  F3-Редак╢и┐
                     @ 23+ml0,27 say 'Редак╢и┐▓а за░едена'
                case lastkey()=-3
                     ll14='н'     // F4-П░ек║▒на▓ пе╖а▓
                     @ 23+ml0,27 say '  П░ек║▒на▓ пе╖а▓  '
                case lastkey()=-4
                     ll15='д'    // F5-П░од║лжение
                     ll14='н'
                     @ 23+ml0,27 say 'П░од║лжение пе╖а▓ '
                case lastkey()=-5 // Godishna Oborotna vedomost na sint. smetki
                          disgod0='\DISC\god&dt0\zkpo\&go0\obor&vek0..pdf'
                          if file ('&disc_0\zan.pdf')
                             copy file &disc_0\zan.pdf to &disgod0
                             ! cmd /c start &pdfxc_0  &disgod0
                             set cursor on ; endif
                case lastkey()=-6
                  *  ll15='д'   // F7-Че▓е док│мен▓а
                 *   ll14='н'
                     @ 23+ml0,27 say 'Че▓е док│мен▓а     '
                     inkey(0)
                case lastkey()=-7 // Godishna Oborotna vedomost na anal.partidi
                     disgod0='\DISC\god&dt0\zkpo\&go0\part&vek0..pdf'
                       if file ('&disc_0\zan.pdf')
                         copy file &disc_0\zan.pdf to &disgod0
                         ! cmd /c start &pdfxc_0  &disgod0
                         set cursor on ; endif
             endcase
                           return

                  **************  П░о╢ед│░а   *********
                             func raboti

  *    @ 21+ml0,65 say 'Dosprn 11 10 6'
      @ 23+ml0,15 say '       П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е ...       '
           sec0=round(seconds(),0)
       if 0 < sek0
          sekundi0='sek0-(round(seconds(),0)-sec0)'  // obraton broene
       else
          sekundi0='round(seconds(),0)-sec0'  // broene nagore
       endif
                    timecount(sek2:=1)
                             return

          ******************   П░о╢ед│░а за ░аз░┐дно▒▓ ***********
                           proc razr
                        do case
                           case ll4='л'.or.l4='▓'
                             ra0=1*j5
                             mk_0=' ЛЕВА '
                           case ll4='╡'.or.l4='п'.or.l4='╛'
                             ra0=1000*j5
                             mk_0='ХИЛ.ЛВ'
                           case ll4='м'
                             ra0=1000000*j5
                             mk_0='MЛH.ЛВ'
                        endcase
                           return

         ***************** Реиндек▒а╢и┐ ************************
                        proc podred
 * ! cmd /c 'if exist \disc\hlp\podred\   echo FOLDER EXIST  > aaa.txt' //work perfekt
    if file("&disc_1\podred\podred.exe")
       clos all
       ! &disc_1\podred\podred.exe
     endif
                        return


          *********************                 *************************
                        proc mes
                   d1=substr(data1,1,2)
                do case
                   case d1='  '
                        m1=''
                   case d1='01'
                        m1='\janu'
                   case d1='02'
                        m1='\febr'
                   case d1='03'
                        m1='\marc'
                   case d1='04'
                        m1='\apri'
                   case d1='05'
                        m1='\may'
                   case d1='06'
                        m1='\june'
                   case d1='07'
                        m1='\july'
                   case d1='08'
                        m1='\augu'
                   case d1='09'
                        m1='\sept'
                   case d1='10'
                        m1='\octo'
                   case d1='11'
                        m1='\nove'
                   case d1='12'
                        m1='\dece'
                   case d1='13'
                        m1='\zadb'
                   otherwise
                      mese1=' '
                      mese2=' '
                        return
                endcase
                   d2=substr(data2,1,2)
                do case
                   case d2='  '
                        m2=''
                   case d2='01'
                        m2='\janu'
                   case d2='02'
                        m2='\febr'
                   case d2='03'
                        m2='\marc'
                   case d2='04'
                        m2='\apri'
                   case d2='05'
                        m2='\may'
                   case d2='06'
                        m2='\june'
                   case d2='07'
                        m2='\july'
                   case d2='08'
                        m2='\augu'
                   case d2='09'
                        m2='\sept'
                   case d2='10'
                        m2='\octo'
                   case d2='11'
                        m2='\nove'
                   case d2='12'
                        m2='\dece'
                   case d2='13'
                        m2='\zadb'
                   otherwise
                      mese1=' '
                      mese2=' '
                        return
                endcase
                      mese1='&us0:\&go0'+substr(data1,4,2)+m1
                      mese2='&us0:\&go1'+substr(data2,4,2)+m2
                                         return


   *   5   П░о╢ед│░а за ак▓│ализа╢и┐ на HСИ
                     proc nsinf
   store space(35) to name0
   open_obve(loc0:=10)
   rein
                    l0='н'
        if substr(tt0,1,3)='1'
   @ 23+ml0,16 say 'H┐ма ▒ме▓ка ▒ ▓ози ╕и┤║░, ╣е добави▓е ли д/н ?'get l0
        else
   @ 18, 5 say '   H┐ма в║ведена ▒ме▓ка ▒ ▓ози номе░, ╣е добави▓е ли д/н ?   'get l0 valid l0='д'.or.l0='н'
        endif
   chet()
        if substr(tt0,1,3)='1'
           @ 23+ml0,15 say space(51)
        else
           @ 18, 0 say space(80)
        endif
        if l0='н'
           return
        endif

      do while .t.
        if val(sch0)>0 .or. sch0='адм'
           exit
        else
           @ 23+ml0,15 say space(51)
           @ 23,23 say 'H┐ма в ▒ме▓коплана ▒ме▓ка ▒ ▓ози номе░'
           return
        endif
      enddo
           go top
           find '&sch0'
      if found()
         name0=name
         t0=t
         a0=a
      else
         store spac(1) to t0,a0
             if sch0='адм'
                name0='Име на админи▒▓░а▓ивни┐ ░-л        '
             endif
      endif
                   save screen
                   @ 19,2 clea to 24,78
                   @ 19,1,24,79 box ram1
   @ 20,4 say 'В║веде▓е наименование▓о на ▒ин▓. ▒-ка' get name0
   chet()
   @ 21,16 say 'Вид на ▒ме▓ка▓а /ак▓ивна-"а", па▒ивна-"п": ' get t0  valid  t0='а'.or.t0='п'
   chet()
   @ 22,10 say 'С анали▓и╖ни па░▓иди - "д", без анали▓и╖ни па░▓иди - "н" ' get a0  valid  a0='д'.or.a0='н'
   chet()

                           if lastkey()=27
                               restore screen
                               return
                           endif
   appe blank
   rec_lock()
   repl sch with sch0,t with t0,a with a0,name with name0
   rec_unlock()
   restore screen
   return

         ************** П░о╢ед│░а за п░е╡в║░л┐не на ▓ек▒▓  **************
                         proc ddok
              save screen
              @ 11, 5,13,74 box ram1
              @ 12, 6 clea to 12,73
                     do case
                        case lastkey()=279   &&  Alt+▒ ки░.
                             ll7='д'
     @ 12,12 say '     П░о╢ед│░а▓а за из╖и▒л┐ване ╢ена без ДДС за░едена     '
                              i0=inkey(2)
                        case lastkey()=306   &&  Alt+п
                              l9='д'
                             sd2='п'
     @ 12,12 say '   П░о╢ед│░а▓а за ав▓ома▓и╖на п░и╡одна опе░а╢и┐ за░едена  '
                              i0=inkey(2)
                        case lastkey()=280   &&  д
                              ll5='н'
     @ 12,12 say '       П░ог░ама▓а из╖и▒л┐ва Д Д С, мол┐ из╖акай▓е !       '
                          *   data0=substr(dtoc(date0),4,5)

                              store data0 to data1,data2
                              store space(10) to tars0,tars1
                              dostav()  //  pro3
                              prodaz()  //  pro3
         *   p120=p140+p170
             k0=round((p130+p210)/(p130+p210+p250),7)
             dk0=round(s130+s150*k0,j1)
            @ 12,15 say space(50)

          if  p120>dk0
            @ 12,25 say 'ДДС за В H А С Я H Е  '+str(p120-dk0,j0,j1)
            @ 12,32 say 'В H А С Я H Е  '  color 'R+/B'
          else
            @ 12,25 say 'ДДС за в║з▒▓анов┐ване '+str(dk0-p120,j0,j1)
                if dk0-p120=0
            @ 12,32 say 'ме▒е╢а е н│ла  '
                else
            @ 12,32 say 'в║з▒▓анов┐ване '   color 'G+/B'
                endif
          endif
                         pauza()
                        case lastkey()=-2    &&  F3
     @ 12,12 say '    П░о╢ед│░а▓а за под░еждане по ┤ак▓│░ен номе░ за░едена  '
                           open_arhi(loc0:=10)
                           set order to 2
                              i0=inkey(2)
                        case lastkey()=-3    &&  F4
                            ll12='д'
     @ 12,12 say '             Свал┐не на н│лева▓а за╣и▓а                   '
                              i0=inkey(2)
                        case lastkey()=-5    &&  F6
                             ll1='д'
     @ 12,12 say 'П░о╢ед│░а за опи▒ание на опа░а╢и┐▓а по ░еги▒▓║░ за░едена  '
                              i0=inkey(2)
                        case lastkey()=-6    &&  F7
                             ll2='н'
     @ 12,12 say '   Под░еждане на анали▓и╖ни▓е па░▓иди по наименование    '
                              i0=inkey(2)
                        case lastkey()=-8    && F9
                            nul0='д'
     @ 12,12 say '   П░о╢ед│░а за о▓пе╖а▓ване без н│леви ▒алда - за░едена   '
                              i0=inkey(2)
                        case lastkey()=-9    && F10
                             sd2=' '
     @ 12,12 say '   П░о╢ед│░а за из░авн┐ване на п░одажби      - за░едена   '
                            l4='д'
                              i0=inkey(2)
                        case lastkey()=-33 .or. lastkey()=54   && Alt+F4
                            s0000='д'
                            ekpr0=2
                            ll14='н'  //  Prekasnat pechat vkluchen
             memowrit('&disc_0\s0000','')
             copy file &disc_0\s0000 to s0099.prn
     @ 12, 6 say '  Вкл. паке▓ен пе╖а▓ s0000 - ▒амо на "ПЕЧАТ" ▒ оп╢и┐ П░ек║▒на▓ пе╖. '
                                  inkey(5)
                        case lastkey()=-34   && Alt+F5
                            s0000='н'
                            ekpr0=1
                            ll14='д'  //  Prekasnat pechat izkluchen
                  if file("&disc_0\s0000")
                    !del &disc_0\s0000
                 endif
     @ 12, 6 say '                  Изкл╛╖ва  Паке▓ен пе╖а▓ -> s0000                  '
                                  inkey(5)
                        case lastkey()=-35   && Alt+F6
     @ 12, 6 say ' П░ог░ама▓а добав┐ ▒имволи▓е за пе╖а▓ на ┤айл s0099 в║в ┤айл s0001  '
     prn0='OL'+sbit0
    memowrit('s0001.prn',prn0+chr(13)+chr(10)+memoread('s0099.prn')+chr(13)+chr(10)+norm0)
                                  inkey(3)
                            s0000='н'
                            ekpr0=1
                            ll14='д'  //  Prekasnat pechat izkluchen
                  if file("&disc_0\s0000")
                    !del &disc_0\s0000
                 endif
     @ 12, 6 say '                Изкл╛╖ва  Паке▓ен пе╖а▓ -> s0000                    '
                                  inkey(3)


                     endcase

             restore screen
                         return

   *   7   Спи▒║к на анали▓и╖ни▓е па░▓иди
               proc spisk
        store space(35) to name0

        l0=1
        @ 18+ml0,42 say '  '
        @ 18+ml0, 2 say 'В║веде▓е наименование▓о на а.па░▓ида    :' get name0
        if lastkey()=-2
           l0='1'
           @ 18+ml0,39 say 'F3' color 'G+/B' // locate for 0 < at(tars0,name)
        else
           l0='2'
           @ 18+ml0,38 say '(F3)' color 'G+/B'  // find '&name1'
        endif

        chet() &&  read
                         if lastkey()=27
                             return
                         endif

               **************   Kо░ек╢и┐ на ▓ек│╣а па░▓ида   ***********

      if substr(name0,1,1)='!'
         pp1='!'
         if l2='y'
        @ 18, 0 say space(80)
        @ 20, 2 say space(78)
               @ 20,24 say 'Ши┤║░а на анал. па░▓ида:'
               @ 23,16 say 'MЯРKА         K-ВО          ЕД.ЦЕHА         СТ-СТ'
               @ 18, 0 say space(80)
               dp2=part
               open_obap(loc0:=10) && aobi
               find '&dp2'
               name1=name
               sele 4
      if dk1='d'    && d1
               dsto0=dsto0-dast
               @ p0,23 say dsto0 pict "99999999999.99"
           else
              ksto0=ksto0-kast
              @ p0,60 say ksto0 pict "99999999999.99"
           endif
               part0=substr(part,4,4)
               @ 24+ml0, 0 clea
               @ 20,50 say part0
               @ 21,23 say name1
        do while .t.
               @ 24,18 get mk
             if ! mk='лв'
               @ 24,26 get kol
               zena0=zena
               @ 24,43 get zena0 pict "9999999.999"
               chet()
             endif
      if dk1='d' &&  d1
          if !(zena0=0.or.kol=0)
               dast2=round(zena0*kol,2)
          else
               dast2=dast
          endif
               @ 24,57 get dast2 pict "999999999.99"
               chet()
                      if dast2=0 .and. ll12='н'
                         @ 18,18 say 'H┐ма▓е п░аво да в║вежда▓е н│леви ▒▓ойно▒▓и !'
                         loop
                      else
                         @ 18, 0 say space(80)
                         exit
                      endif
      else
           if !(zena0=0.or.kol=0)
              kast2=round(zena0*kol,2)
           else
              kast2=kast
           endif
              @ 24,57 get kast2 pict "99999999.99"
              chet()
                     if kast2=0 .and. ll12='н'
                        @ 18,18 say 'H┐ма▓е п░аво да в║вежда▓е н│леви ▒▓ойно▒▓и !'
                        loop
                     else
                        @ 18, 0 say space(80)
                        exit
                     endif
      endif
        enddo
                  rec_lock()
            if mk='**'
               del()
               han0=fcreate("chop")
               fclose(han0)
            else
               reca()
                if dk1='d'   && d1
                    repl zena with zena0,dast with dast2
                    dsto0=dsto0+dast
                else
                    repl zena with zena0,kast with kast2
                    ksto0=ksto0+kast
                endif
            endif
                 rec_unlock()
          part0=0
         else
           @ 18, 0 say space(80)
           @ 18,27 say 'Т│ка не може▓е да ко░иги░а▓е !'
                   i0=inkey(0)
           @ 18, 0 say space(80)
         endif
          return
      endif
           *********   О▓к░ива нова па░▓ида по ▒║о▓ве▓на ▒ме▓ка   ***********
                               if  substr(name0,1,1)='+'
                                   open_obap(loc0:=11)  && aobi
                                   set filter to substr(part,1,3)=sch0
                                   go bott
                                   part0=val(substr(part,4,4))+1
                                   zena0=zena
                                   return
                               endif
          *********    Взема ▒вободна па░▓ида о▓ ▒║о▓ве▓на▓а ▒-ка *********
                               if  substr(name0,1,1)='-'
                                   open_obap(loc0:=12)
                                   set order to 2
                                   set filter to substr(part,1,3)=sch0
                                   go top
                                       @ 18,21 say 'В║веде▓е наименование▓о на анал. па░▓ида'
                                       @ 23,17 say 'M-KА       Hаименование на па░▓ида▓а       Е.ЦЕHА'
                                       @ 24,18 get mk
                                       @ 24,22 get name
                                       chet()
                                                if t0=' '
   t1=' '
   do while !(t1='д'.or.t1='к')
   t1=t
   @ 18,1 say 'Сме▓ка▓а е ак▓ивно-па▒ивна  в║веде▓е "д"-за Д-▓на и "к"-за K-▓на анал. п-да ' get t1
                         chet()
   @ 18, 0 say space(80)
   enddo
                                                endif
                                           if t0=' '
                                              rec_lock()
                                              repl t with t1
                                              rec_unlock()
                                           endif
                                       @ 18,19 say space(42)
                                       @ 23+ml0,0 clea
                                       @ 21,23 say  name
                                   part0=val(substr(part,4,4))
                                   zena0=zena
                                   return
                               endif



    ***** Под░еждане на ▒│ми▓е  в DOBO, KOBO, DPAR и KPAR по на░а▒▓ване▓о им ****
               if  substr(name0,1,2)='.д'.or.substr(name0,1,2)='.к'
                                     do case
                                        case substr(name0,1,3)='.д'
                                             open_dobo(loc0:=10)
                                        case substr(name0,1,3)='.к'
                                             open_kobo(loc0:=10)
                                        case substr(name0,1,3)='.дп'
                                             open_dpar(loc0:=10)
                                        case substr(name0,1,3)='.кп'
                                             open_kpar(loc0:=10)
                                        endcase
                                             set order to 3
                   ii3='   '
                   ii4='    '
                   ii5='     '
                   save screen
                   @ 18,2 clea to 24,78
                   @ 18, 1,24,79 box ram1
                   @ 18, 1 say repl(chr(45),78)
                   declare fiel[4]
           do case
              case substr(name0,1,3)='.д'
                   fiel[1]='str(dsto,j0,j1)'
                   fiel[2]='ii5+sch'
              case substr(name0,1,3)='.к'
                   fiel[1]='str(ksto,j0,j1)'
                   fiel[2]='ii5+sch'
              case substr(name0,1,3)='.дп'
                   fiel[1]='str(dast,j0,j1)'
                   fiel[2]='ii3+part'
              case substr(name0,1,3)='.кп'
                   fiel[1]='str(kast,j0,j1)'
                   fiel[2]='ii3+part'
              endcase
                   fiel[3]='ii4+nom'
                   fiel[4]='ii3+data '
                   declare imem[4]
                   imem[1]='   СТОЙHОСТ   '
                   imem[2]='    ШИФЪР     '
                   imem[3]=' HОМЕР HА СО  '
                   imem[4]='    ДАТА      '
                    dbedit(19, 2,23,78,fiel," ",'',imem,chr(45),chr(124))
               endif

        **************** Т║░▒ене по име и по░еден номе░ на па░▓ида   ***********

         open_obap(loc0:=13)
         set filter to substr(part,1,3)=sch0
         go top
               tars0=space(10)
           if  substr(name0,1,1)='\'.or.substr(name0,1,1)='/'
                  set order to 1
                  ds0=sch0
                  find '&ds0'
           else
                  set order to 2
                if l0='1'
                  tars0=trim(name0)
                  locate for 0 < at(tars0,name)
                else
                  name1=trim(name0)
                  find '&name1'
                endif
           endif
         if found()
                if ! empty(tars0)
                  set filter to substr(part,1,3)=sch0 .and. 0 < at(tars0,name)
                  go top
                endif
                   save screen
                   @ 18,1 clea to 24,78
                   @ 18, 0,24,79 box ram1
                   @ 18, 1 say repl(chr(45),78)
                   declare fiel[5]
                   fiel[1]='substr(part,4,4)'
                   fiel[2]='name'
                   fiel[3]='str(kkol,10,j3)'
                   fiel[4]='str(zena,10,j4)'
                   fiel[5]='str(ksal,12,j1)'
                   declare imem[5]
                   imem[1]='П-ДА'
                   imem[2]='     HАИMЕHОВАHИЕ     '
                   imem[3]=' К-ВО   '
                   imem[4]=' Е.ЦЕHА '
                   imem[5]=' САЛДО  '
                   dbedit(19, 1,23,78,fiel," ",'',imem,chr(45),chr(124))
                   part0=val(substr(part,4,4))
                   restore screen
                   mk1=mk
                   zena1=zena
                  set order to 1
         else
            @ 23,15 say '       H┐ма па░▓иди ▒ ▓акова наименование          '
                   i0=inkey(5)
         endif
               return

      ************** П░о╢ед│░а за зв│к *************
                   proc zvan
           *       set talk on
           *       set bell on
           *       tone(100, 3)
           *       set bell off
   * ! cmd /c start /min C:\DISC\HLP\LNK\1by1.LNK C:\HLP\SOUND\notify.MP3
   *    inkey(1)
   * ! cmd /c start /min  %SystemRoot%\System32\TASKKILL /F /IM 1by1.EXE
   * set cursor on
                     return  // van

      ************** П░о╢ед│░а за наименование на ┤и░ма▓а *************
                                  proc dire
           set key -3 to  ; set key -6 to direk1
           if ! tt0='80'
              @ 23,15 say space(51)
              @ 23,30 say 'F7 - ▒пи▒║к о▓ ди░ек▓о░ии'
           endif
      do while .t.
           @  3, 3 clea to 21,75 ; @ 12,19,20,62 box ram1 ; @ 13,20 clea to 19,61

                 if l4='y'  //  Ukazanie za smqna dir a ne za arhiv
                   @ 10,32 say 'См┐на на ди░ек▓о░и┐▓а' ; endif

            if tt0='80' .and. v2=1 ; @ 10,32 say '   А░╡иви░ане на: '; endif
            if tt0='80' .and. v2=2 ; @ 10,32 say 'В║з▒▓анов┐ване о▓:'; endif

           @ 13,20 say 'В║веде▓е │-во' get us0 valid 64<asc(us0).and.asc(us0)<123
           @ 13,37 say 'Ши┤║░а на ┤-▓а' get go0 valid 64<asc(go0).and.asc(go0)<123
           @ 13,55 say 'Год.' get dt0  valid 47<asc(dt0).and.asc(dt0)<58
           chet()

           if empt(us0).or. empty(go0) .or. empty(dt0)
              @  6,39 say 'ВHИMАHИЕ!' color 'R+/B'
              @  8,21 say ' недоп│▒▓имо е да има непоп║лнени поле▓а!'
              inkey(6)
              loop
           endif

               us0=upper(us0)
               @ 17,24 prompt upper('&go0')+'&dt0'
         @ 15,30 prompt 'JANU' ; @ 17,30 prompt 'FEBR' ; @ 19,30 prompt 'MARC'
         @ 15,36 prompt 'APRI' ; @ 17,36 prompt 'MAY ' ; @ 19,36 prompt 'JUNE'
         @ 15,42 prompt 'JULY' ; @ 17,42 prompt 'AUGU' ; @ 19,42 prompt 'SEPT'
         @ 15,48 prompt 'OCTO' ; @ 17,48 prompt 'NOVE' ; @ 19,48 prompt 'DECE'
         @ 17,54 prompt 'IZHO'
                 menu to v22

               do case
                  case v22=1  ; dr0=go0+dt0+'     '
                  case v22=2  ; dr0=go0+dt0+'\JANU'
                  case v22=3  ; dr0=go0+dt0+'\FEBR'
                  case v22=4  ; dr0=go0+dt0+'\MARC'
                  case v22=5  ; dr0=go0+dt0+'\APRI'
                  case v22=6  ; dr0=go0+dt0+'\MAY '
                  case v22=7  ; dr0=go0+dt0+'\JUNE'
                  case v22=8  ; dr0=go0+dt0+'\JULY'
                  case v22=9  ; dr0=go0+dt0+'\AUGU'
                  case v22=10 ; dr0=go0+dt0+'\SEPT'
                  case v22=11 ; dr0=go0+dt0+'\OCTO'
                  case v22=12 ; dr0=go0+dt0+'\NOVE'
                  case v22=13 ; dr0=go0+dt0+'\DECE'
                  case v22=14 ; dr0=go0+dt0+'\IZHO'
               endcase
               if l5='x' ; exit ; endif   //  Ukazanie za dir. za arhiv
              dr0=trim(dr0)

     if l4='y'     //  Ukazanie za smqna dir a ne za arhiv
      ! cmd /c if exist &us0:\&dr0 (echo &us0:\&dr0) ELSE (echo NOTFOLDER) > aaa.txt
          set cursor on  ; inkey(2)
       if ! '&us0:\&dr0'=trim(subs(memoline(memoread('aaa.txt'),31,1),1,15))

          @  6,36 say 'ВHИMАHИЕ!' color 'R+/B'
          @  8,21 say 'ДИРЕКТОРИЯТА              HЕ Е HАMЕРЕHА!'
          @  8,35 say upper(dr0) color 'R+/B'

     *   @  5,48,20,73 box ram1
     *   @  6,49 say "О▓к░и▓и ди░ек▓о░ии"
     *   @  7,49 say repl ("=",24)
     *   ! cmd /c dir c:\????.    > aaa.txt    //  s momoline v s0001.prn
     *    set cursor on
     *   save1=memoedit(memoread("aaa.txt"),8,50,19,72,.f.,"",5,4,6,5)
     *      inkey(5) ; loop
       endif
             eras aaa.txt
           *   chdire()
          diskchange("&us0") ; dirchange("\&dr0")
          us_0=diskname()+':\'+curdir()+'\'

          eras us_0.mem  ; save all like us_0 to us_0
          if file ("date.mem")
                 restore from date additive
           else
            *  date0=ctod('12/12/20&dt0')
               set cent on
               date0=ctod(subs(dtoc(date()),1,8)+subs(us_0,6,2))
               save all like date0 to date
               @ 0,72 say dtoc(date0)
               set cent off
           endif
             *  chdire()
                 exit
     endif
      enddo

          if l4='y' ; firma() ; endif
          l0=' '
          do missfile    // p6
                                  return   // dire

    *********************    Добав┐не на опа░а╢ии  *****************
                              proc oper
                             @ 23+ml0,15 say space(51)
                          if file("&us_1*.*").and.file("&us_0*.*")
                          else
                             @ 23+ml0,15 say space(51)
                             @ 23+ml0,23 say ' Г░е╕и▓е ме▒е╢а или кода на ┤и░ма▓а '
                               zvan()
                               inkey(0) ; @ 23+ml0,15 say space(51)
                             return
                          endif
                            clos all ; @ 23+ml0,15 say space(51)
               store 0 to p0,re0
                if nom3=0 ; nn0=nom2 ; else ; nn0=nom3 ; endif
                for i0 = nom2 to nn0
                       @ 23+ml0,15 say space(51)
                       dat0=subs(data3,4,2)+data3+str(i0,4)
                       @ 23+ml0,15 say space(51)
                       @ 23+ml0,24 say 'П░ог░ама▓а ▓║░▒и  опе░а╢и┐: '+ str(i0,4)
                       sele 1
                       use '&us_1'+'arhi' inde '&us_1'+'nari', '&us_1'+'faki'

               find "&dat0"
               if  found()
                   dok0=dok
                          open_arhi()
                          find '&dat0'
                        if ! found()
                          @ 23+ml0,23 say ' П░ог░ама▓а ДОБАВЯ опе░а╢и┐: '+ str(i0,4)
                          appe from '&us_1'+'arhi' for nom=str(i0,4).and.data=data3.and.(!papk='k')
                          clos all
                          open_dobo()
                          appe from '&us_1'+'dobo' for nom=str(i0,4).and.data=data3
                          clos all
                          open_kobo()
                          appe from '&us_1'+'kobo'  for nom=str(i0,4).and.data=data3
                          clos all
                          open_dpar()
                          appe from '&us_1'+'dpar' for nom=str(i0,4).and.data=data3
                       *     if (! nom4='    ').or.(!data1='     ')
                       *       find "&dat0"
                       *       do while nom=str(i0,4).and.data=data3
                       *          repl nom with nom1, data with data1
                       *          skip
                       *       enddo
                       *     endif
                          clos all
                          open_kpar()
                          appe from '&us_1'+'kpar'  for nom=str(i0,4).and.data=data3
                          clos all
                        else
                                if ! dok0=dok
                                   dok1=dok
                       @ 19+ml0,2 say 'Разлика в о-ниe на оп░еа╢и┐ '+ str(i0,4)
                       @ 20+ml0,2 say subs(us_1,1,2)+'->'+dok0
                       @ 21+ml0,2 say subs(us_0,1,2)+'->'+dok1
                  l1=2
                       @ 23+ml0,15 say space(13)+'Желае▓е ли п░ом┐на'+space(15)
                       @ 23+ml0,47 prompt 'ДА'
                       @ 23+ml0,50 prompt 'HЕ'
                       menu to l1
                          if l1=1
                             sele 1
                                 rec_lock()
                                 repl dok with dok0
                                 rec_unlock()
                          endif
                                endif
                        endif
              else
                       @ 23+ml0,23 say ' Hама оп░а╢и┐ ▒ ▓ози номе░: '+ str(i0,4)
              endif
                   next
              @ 23+ml0,15 say space(51)
                              ?? chr(7)
                              inkey(3)
                              return


      *****************  Ак▓│ализа╢и┐ на анал. па░▓иди  *****************
                               proc aktual
       if file ("obapr.dbf")
	  rename obapr.dbf to obap.dbf
       endif
              if sc9='д'.or. sc11='д'
                  @ 23+ml0,15 say space(51)
              else
                  @ 23+ml0,15 say space(51)
              endif
                          if (!file("&us_1*.*")).or.(!file("&us_0*.*")).or.(us_0=us_1)
                             @ 23+ml0,15 say space(51)
                             @ 23+ml0,23 say ' Г░е╕и▓е ме▒е╢а или кода на ┤и░ма▓а '
                             zvan()
                             i0=inkey(0)
                             @ 23+ml0,15 say space(51)
                             return
                          endif
                        open_obap()
                        sele 14
                        use
       if file ("&us_1obapr.dbf").and.file ("&us_1obap.dbf")
           eras  '&us_1'+'obapr.dbf'
       endif
                        rename '&us_1'+'obap.dbf' to '&us_1'+'obapr.dbf'
                        use '&us_1'+'obapr' index '&us_1'+'aobi', '&us_1'+'nami', '&us_1'+'pai'
                        if ll11='д'
                          if sc9='д'
                           set filter to part=sch00
                          else
                           set filter to subs(proa,1,1)='1'.or.subs(proa,1,1)='2'
                          endif
                        else
                          if !sch0='   '
                             set filter to subs(part,1,3)=sch0.and.val(substr(part,4,4))>=pr1.and.pr2>=val(substr(part,4,4))
                          endif

                        endif
                           go top
                       do while ! eof()
                           if proa='2'.and.sc9='д'
                              zena1=zena
                           else
                              zena1=0
                           endif
          @ 23+ml0,17 say 'П░ог░ам▓а п░ави ак▓│ализа╢и┐ на па░▓ида: '+part
                           part0=part
                           name0=name
                           dnev0=dnev
                           mk0=mk
                           kol0=kol
                           zena0=zena
                           asal0=asal
                           t0=t
                           ts0=ts
                           proa0=proa
                             if field(14)='IBAN'
                                iban0=iban
                             else
                                iban0=space(22)
                             endif
                           sele 6
                           find '&part0'
                             if ! found()
                                 appe blank
   rec_lock()
   repl part with part0,name with name0,dnev with dnev0,mk with mk0,t with t0,;
   ts with ts0,proa with proa0
                           if sc6=2
                                rec_lock()
                                repl zena with zena0
                                rec_unlock()
                           endif
   rec_unlock()
                             else
                           if sc6=2
                                rec_lock()
                                repl zena with zena0
                                rec_unlock()
                           endif
                           if l5='д'.or.l5='d'
                                rec_lock()
                                repl name with name0, mk with mk0
                                *   repl kol with kol0
                                *   repl asal with asal0
                                if field(14)='IBAN'
                                   repl iban with iban0
                                endif
                                rec_unlock()
                           endif
                           if sc9='д'.and.0 < zena1
                              rec_lock()
                              repl zena with zena1
                              rec_unlock()
                           endif
                             if (sc9='д'.or.sc11='д')  && .and.subs(part,1,1)='7'
                                rec_lock()
                                repl name with name0, mk with mk0,zena with zena0, proa with '2'
                                rec_unlock()
                             endif
                             endif
                           sele 14
                           skip
                       enddo
                       sele 14
                       use
                       rename '&us_1'+'obapr.dbf' to '&us_1'+'obap.dbf'

                     open_obve()
                     sele 14
                     rename '&us_1'+'obve.dbf' to '&us_1'+'obver.dbf'
                     use '&us_1'+'obver' index '&us_1'+'sobi'
                     if !sch0='   '
                         set filter to sch=sch0
                      endif
                       do while ! eof()
                           sc0=sch
                           sch1=sch
                           name0=name
                           a0=a
                           t0=t
                           re0=recno()
                           sele 7
                           find '&sc0'
                             if ! found()
                                 appe blank
                                 rec_lock()
                                 repl sch  with sch1, name with name0,a with a0, t with t0
                                 rec_unlock()
                             endif
                            sele 14
                           skip
                       enddo
                     sele 14
                     clos all
                     rename '&us_1'+'obver.dbf' to '&us_1'+'obve.dbf'
                     clos all
                               return

       ******* П░о╢ед│░а за о▓к░иване на па░▓иди о▓ 304 в 702  и ▓.н. ********
           proc preh
              if subs(go0,1,1)='m'.and.(!isalpha(subs(go0,2,1)))
                   part4='304'+part4
                   appe blank
                   rec_lock()
                   repl part with part4,mk with mk0,name with name0,dnev with dnev0  &&  zena with zena0
                   rec_unlock()
                   open_obve(loc0:=11)
                   set filter to 701 < val(sch).and.val(sch) < 721
                   go top
                   do while ! eof()
                      sch2=sch
                      sele 6
                      part4=sch2+substr(part,4,4)
                      find "&part4"
                      if !found()
                         appe blank
                         rec_lock()
                         repl part with part4,mk with mk0,name with name0,dnev with dnev0,zena with zena0,proa with '1'
                         rec_unlock()
                      endif
                      sele 7
                      skip
                   enddo
              else
                do case
                   case substr(part,1,3)='304'
                        part4='702'+substr(part,4,4)
                   case 305 < val(substr(part,1,3)).and.val(substr(part,1,3)) < 320
                        part4='7'+substr(part,2,6)
                   case substr(part,1,3)='702'
                        part4='304'+substr(part,4,4)
                   case 705 < val(substr(part,1,3)).and.val(substr(part,1,3)) < 720
                        part4='3'+substr(part,2,6)
                   other
                   return
                endcase
                   appe blank
                   rec_lock()
                   repl part with part4,mk with mk0,name with name0,dnev with dnev0
                   rec_unlock()
              endif
           return

    ***************   П░о╢ед│░а за ▒▓окови▓е ▒ме▓ки  *****************
                         proc stok1
     do case
         case  sch1='701'
                sch2='303'
         case  sch1='702'
                sch2='304'
         case  val(sch1) > 702
                sch2='3'+substr(sch1,2,2)
     endcase
                         return

     *************** Зам┐на на п░одажн▓е ╢ени ****************
                         proc zenisme
   save screen
   set key -32 to
   part0=space(7)
   part1=0
   zena0=0
   set dele on
   @  9+ml0,20,15,61 box ram1
   @ 10+ml0,21 clea to 14,60
   @ 10+ml0,34 say 'ВHИMАHИЕ !'  color 'R+/B'
   @ 12+ml0,22 say 'ЗАДЪЛЖИТЕЛHО Е ИЗРАБОТВАHЕ ОБОРОТHА '
   @ 13+ml0,22 say 'ВЕДОMОСТ HА АHАЛ. ПАРТ. ПО СИHТ. С/KИ'
   @ 14+ml0,22 say 'HА KОИТО ЩЕ БЪДАТ ПРОMЕHЯHИ ЦЕHИТЕ !'
   i0=inkey(3)
           open_arhi(loc0:=11)
           open_dobo(loc0:=11)
           open_kobo(loc0:=11)
           open_dpar(loc0:=11)
           open_kpar(loc0:=11)
           clear gets
              sch1='   '
       do while .t.
           @ 10+ml0,21 clea to 14,60
           @ 10+ml0,30 say 'СMЯHА HА ПРДАЖHИ ЦЕHИИ'
           @ 12+ml0,29 say 'В║веде▓е па░▓ида▓а ' get part1 pict "9999"
           if sc11='н'
              @ 14+ml0,29 say 'В║веде▓ ╕и┤║░а обек▓а' get sch1 pict "999"
           endif
           chet()
              if lastkey()=27.or. part1=0
                  exit
              endif
           open_obap(loc0:=14)  &&  aobi.nami
           if sc11='н'
              set filter to sch1=subs(part,1,3).and.subs(part,4,4)=str(part1,4)  && .and.subs(part,1,1)='7'
           else
               set filter to 705 < val(subs(part,1,3)).and.subs(part,4,4)=str(part1,4).and.subs(part,1,1)='7'
           endif
           go top
           store zena to zena0,zena1
           @ 14+ml0,22 say 'С▓а░а ╢ена' + str(zena,11,3)
           @ 14+ml0,44 say 'Hова' get zena0  pict "9999999.999"
           chet()
              if lastkey()=27.or. part1=0
                  exit
              endif
          do while 705 < val(subs(part,1,3)).and.subs(part,4,4)=str(part1,4).and.subs(part,1,1)='7'
           rec_lock()
            repl zena with zena0, proa with '2'
            part0=part
            kol0=kkol
            mk0=mk
            if 0 < round(kol0*zena0,j1)
               sele 4
              appe blank
           rec_lock()
               repl nom with str(nom0,4),part with part0,mk with mk0,kol with kol0,zena with zena0, dast with round(kol0*zena0,j1),data with data0
            rec_unlock()
            endif
            if 0 < round(kol0*zena0,j1)
               sele 5
               appe blank
           rec_lock()
               repl nom with str(nom0,4),part with part0,mk with mk0,kol with kol0,zena with zena1, kast with round(kol0*zena1,j1),data with data0
                                rec_unlock()
            endif
            sele 6
               if ! eof() ; skip ; else ; exit ; endif
          enddo
       enddo
       sele 4
       dn0=subs(data0,4,2)+data0+str(nom0,4)
       find "&dn0"
       dsto1=0
    do while nom=str(nom0,4).and.data=data0.and.(!eof())
      dsto0=0
      sch0=substr(part,1,3)
      do while substr(part,1,3)=sch0.and.(!eof()).and.nom=str(nom0,4).and.data=data0
         dsto0=dsto0+dast
         dsto1=dsto1+dast
         skip
      enddo
       sele 2
    if 0 < dsto0
       appe blank
           rec_lock()
      repl nom with str(nom0,4), sch with sch0,nvo with '   0',dsto with dsto0,data with data0
                                rec_unlock()
    endif
      sele 4
    enddo
       sele 5
       dn0=subs(data0,4,2)+data0+str(nom0,4)
       find "&dn0"
       ksto1=0
    do while nom=str(nom0,4).and.data=data0.and.(!eof())
      ksto0=0
      sch0=substr(part,1,3)
      do while substr(part,1,3)=sch0.and.(!eof()).and.nom=str(nom0,4).and.data=data0
         ksto0=ksto0+kast
         ksto1=ksto1+kast
         skip
      enddo
       sele 3
    if 0 < ksto0
      appe blank
           rec_lock()
      repl nom with str(nom0,4), sch with sch0,nvo with '   0',ksto with ksto0,data with data0
                                rec_unlock()
    endif
      sele 5
    enddo
    if 0 <> dsto1-ksto1
       sele 3
      appe blank
           rec_lock()
      repl nom with str(nom0,4), sch with '777',nvo with '   0',ksto with (dsto1-ksto1),data with data0
                                rec_unlock()
    endif
    if 0 < dsto1.or.0 < ksto1
     sele 1
     appe blank
           rec_lock()
     repl nom with str(nom0,4),papk with '  0',data with data0, vek with subs(vek0,1,2), dok with 'п░ом┐на на п░одажни ╢ени'
                                rec_unlock()
    endif
             restore screen
     set key -32 to zenisme
           set dele off
           return
  ******************** П░о╢ед│░а▓а из░авн┐ва п░и╡одна опе░о╢и┐ ************
                                  proc izrav

                         open_tehno(loc0:=13)
                         appe blank
                           rec_lock()
                           repl stok with subs(dtoc(date0),1,5), kol with ksto1, mate with  val(subs(dtno0,6,4))
                           rec_unlock()
                        open_dobo(loc0:=12)
                        find "&dtno0"
                        if found()
                           rec_lock()
                           repl dsto with ksto1
                           rec_unlock()
                        endif
                        store ksto1 to dsto1
                         if l7='д'
                            open_dpar(loc0:=13)
                            find "&dtno0"
                            if found()
                              rec_lock()
                              repl dast with ksto1
                              rec_unlock()
                              sele 4
                              clos data
                            endif
                         endif
                        @  7,23 say dsto1 pict "99999999999.99"

             if sc9='д'
              if subs(str(nom0,4),1,1)='7'
                if  dsto1  < -0  ; vd0='03' ; else ; vd0='01' ; endif
              else
                    vd0='60'
              endif

             *     @  0,15  say 'supto 03 izrav ' ; inkey(0) //kkk

                fnom()  ; spdok()   && pro1

             endif

                                  return

  ****************** Добав┐не на н│ли в b3 prn*****************
                        func nulb3
                        do case
                           case b3 < 10      ; b3_0='000'+ltrim(str(b3,4))
                           case b3 < 100     ; b3_0='00'+ltrim(str(b3,4))
                           case b3 < 1000    ; b3_0='0'+ltrim(str(b3,4))
                           case b3 < 10000   ; b3_0=ltrim(str(b3,4))
                        endcase
                        return

  ****************** Добав┐не на н│ли в b4 prn*****************
                        func nulb4
                        b4=b4+1
                        do case
                           case b4 < 10    ; b4_0='000'+ltrim(str(b4,4))
                           case b4 < 100   ; b4_0='00'+ltrim(str(b4,4))
                           case b4 < 1000  ; b4_0='0'+ltrim(str(b4,4))
                           case b4 < 10000 ; b4_0=ltrim(str(b4,4))
                        endcase
                        return

********************** Nachalo na prowerka na promenliva  **************
                           func provvar
      * if readvar()='DN2'  ; endif
      if !prekpp (trim(dn2)) .or. ((len(trim(dn2)) != 9) .and.;
             (len(trim(dn2)) != 13)).and.(!dn2=space(10))
        if sc9='д'
          @ 22,25 say 'ВHИMАHИЕ!' color 'R+/B' ; @ 22,35  say "Б│л▒▓а▓║▓ не е ве░ен!"
               inkey(3) ; @ 22,3 say space(75)
        else
         @ 22,31 say "БУЛСТАТЪТ HЕ Е ВЕРЕH !" ; inkey(2) ; @ 22,31 say space(25)
        endif
      endif
                         return .T.  // provvar

       ************************   Provrka za veren bulst ****************
                         function   prekpp (_loc1)
          memVar  ki ; priVate rbst, hbst, ii, jj, ki[4]
          altd ()
          rbst := substr (_loc1, 1, 9)
          if prekp (rbst) = substr (_loc1, 9, 1)
              hbst := substr (_loc1, 9, 5)
              if substr (hbst, 2, 4) != space (4)
                  chbst := substr (hbst, 5)
                  ki [1] := 2  ; ki [2] := 7 ; ki [3] := 3 ; ki [4] := 5
                  jj := mod11 (hbst, ki)
                  if jj == 10
                      ki [1] := 4  ; ki [2] := 9 ; ki [3] := 5 ; ki [4] := 7
                      jj := mod11 (hbst, ki)
                       if jj == 10
                          jj := 0
                      endif
                  endif
                  if str (jj, 1) != chbst
                      return .f.
                  endif
              endif
              return .t.
          endif
                           return .f.   //  prekpp

                          function   prekp
          memVar  ii, kk ; parameters ekp, tekp ; priVate lekp, pekp, ii, jj
          if pcount () < 2 ; tekp := "c" ; endif
          lekp := len (ekp)
          if lekp != 9 ;  return "*" ; endif
          pekp := iif (tekp = "c", ekp, str (ekp, lekp))
          priVate kk[lekp - 1]
          for ii := 1 to lekp - 1  ;  kk [ii] := ii ; neXt
          jj := mod11 (pekp, kk)
          if jj == 10
              for ii := 1 to lekp - 1 ; kk [ii] := ii + 2 ;  next
             jj := mod11 (pekp, kk)
             if jj == 10  ; jj := 0 ; endif
         endif
                        return str (jj, 1)  //  prekp

                       function   mod11
                 parameters pekp, kk ;  priVate lekp, pekp, ii, sum
                 lekp := len (pekp) - 1 ; sum := 0
                 altd ()
                 for ii := 1 to lekp
                     ll := int (Val (substr (pekp, ii, 1)))
                     sum += kk [ii] * ll
                 neXt
                        return int (mod (sum, 11)) // mod11
