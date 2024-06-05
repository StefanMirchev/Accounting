     *OTCH.PRG asci ramka pauza spri raboti razr podred zvan broj ddok1 razrjd edno kal sum
     // help  stir napo izrab pech ddok2 nulb3 setcolors call fdobav sentinel
     // timecount

     // otc1   dekltz dma opr opr02 pari pari30 parikor okrap politik
     // otc2   balan balan03 balan02 line spravakc okrag trz kapi kapi20 protos
       restore screen
       store 1 to j5,ekpr0
       por0=''
       store 0 to op01,op02,op03,op04,op05,op06,op07,op08,op09,op10,op11,op12,oop0,q0
       store space(1) to ll3,ll10,ll13,ll14,ll15,t0,ll0,l0,disc0,save1,asci1
       store space(2) to mk1,b3_0,b4_0,pake,zan0,zan_0,path_0
       store 0 to ra0,b0,b1,b3,b00,sec0,lin0,lin1,lin9,ml0,sekundi0,sek0, sek1,sek2
       store space(33) to x0,x1,x2,x3,x4,x5,x6,x,y

   ram1=chr(201)+chr(205)+chr(203)+chr(204)+chr(202)+chr(205)+chr(200)+chr(204)

       set date brit ; store date() to date0
       restore from date additive
       ll4='╡' ; s0000='н'  ; tt0='19'
       disc_0='\disc'
       disc_1='\disc\hlp'

      do case
         case file('c:\Windows\notepad.exe')
           path_0='c:\windows\system32'
           zan_0='"c:\users\Public\Documents\zvprt50\Zan Image Printer (BW)"'
         case file('d:\Windows\notepad.exe')
           path_0='d:\Windows\system32'
           zan_0='"d:\users\Public\Documents\zvprt50\Zan Image Printer (BW)"'
         case file('e:\Windows\notepad.exe')
           path_0='e:\Windows\system32'
           zan_0='"e:\users\Public\Documents\zvprt50\Zan Image Printer (BW)"'
         case file('f:\Windows\notepad.exe')
           path_0='f:\Windows\system32'
           zan_0='"f:\users\Public\Documents\zvprt50\Zan Image Printer (BW)"'
       endcase


       set cent off
       data0=substr(dtoc(date0),4,5)
       dt0=substr(dtoc(date0),7,2)
       vek0=substr(str(year(date0),6),3,4)
       set date ansi
       store date0 to date1
       store month(date0) to mont0,mont1
       do while mont0=mont1
         date1=date1+1
         mont1=month(date1)
       enddo

           if file ("us_0.mem")
                restore from us_0 additive
           endif
       restore from dannom additive
       open_info(loc0:=12)
       locate for dn+go=dngo0
         fir00 = fir
         nam00 = trim(ltrim(name))
        lize00 = trim(ltrim(lize))
         tel00 = trim(ltrim(tel))
         egn00 = trim(ltrim(egn))
        buls00 = trim(ltrim(buls))
         adr00 = trim(ltrim(adr))
        grad00 = trim(ltrim(grad))
        obst00 = trim(ltrim(obst))
        go0=upper(go)

    v2=1
       if file ("&disc_1\job\pake.mem")
            restore from &disc_1\job\pake additive
       endif

               if file ("zvetia.mem")
                  restore from zvetia additive
               else
                  zv0:=2
             endif
             setcolor ('GR+/B')

            @ 0,36 say  '                '
             restore from us_0 additive
          restore from &disc_1\job\razrjd additive
          restore from &disc_1\job\pb_0 additive

     * norm0='2' && +'P'
               norm0='OPF11P10L06'
               sbit0='F11P17L06A65'
       set key -28 to pamet
       set key 28 to help
       set key 301 to calll
      * do otc1
      * do otc2
        if file ("&disc_1\job\vidprn.mem")
           restore from &disc_1\job\vidprn additive
        else
           vprn0=1
           save all like vprn0 to &disc_1\job\vidprn
        endif
      *  disc0=subs(us_0,1,3)+'disc\god\stat_'+subs(data0,4,2)+'\'+subs(us_0,4,2)
         disc0=subs(us_0,1,3)+'disc\god&dt0\gfo\'+subs(us_0,4,2)
         *  =0-> sashtestwuwa direkt =3 -> njama tykawa direktoriq
         *  =5-> dostapat otkazan
         store subs(us_0,1,len(us_0)-1) to ac_0
         iif (dirchange("\disc\god&dt0\gfo")=3, makedir("\disc\god&dt0\gfo"),dirchange("&ac_0"))
         iif (dirchange("&disc0")=3, makedir("&disc0"),dirchange("&ac_0"))
     do while .t.
        v2=0 ; ramka()
        if file("S0001.prn") ; dele file("S0001.prn") ; endif
    @  2,25 say 'ГОДИHИ СЧЕТОВОДHИ ОТЧЕТИ'
*   @  3,23 say '---------------------------'
    @ 23,15 say '        Зад║лжи▓елно п░о╖е▓и помо╣▓а ▒ F1 !        '
   * @ 23,05 say 'Сп░авки▓е к║м ОПР БАЛАHС и ТРУД ▒е из░або▓ва▓ о▓ ▓.32 в║в ┤айл s0006.prn'
    @  3, 9 prompt 'а. ОПР                                      1       ОПР|1|'
    @  4, 9 prompt 'б. БАЛАHС                                   2    БАЛАHС|2|'
    @  5, 9 prompt 'в. О▓╖е▓ на ▒об▒▓вени┐ капи▓ал              3   КАПИТАЛ|2|'
    @  6, 9 prompt 'г. Па░и╖ен по▓ок                            4 ПАРПОТОЦИ|1|'
    @  7, 9 prompt '   Сп░авка за п░и╡-▓е и ░аз-▓е о▓ ли╡ви           ЛИХВИ| |'
    @  8, 9 prompt '   Сп░авка за п░идобиване на ДMА                   РДMА| |'
    @  9, 9 prompt 'ж. Сп░авка за не▓ек│╣и▓е (д║лг.) ак▓иви             ДMА|1|'
    @ 10, 9 prompt '   Сп░авка за взмани┐▓ зад║лж. и п░овизие      ВЗЕMАHИЯ| |'
    @ 11, 9 prompt '   Сп░авка за ╢енни▓е кнжа                        КHИЖА| |'
    @ 12, 9 prompt 'й. О▓╖е▓ за зае▓и▓е ли╢а                           ТРУД|2|'
    @ 13, 9 prompt '   Сп░авка за п░и╡оди▓е на ▒▓░.п░едп░.    HЕ СЕ ПОПЪЛВА| |'
    @ 14, 9 prompt '   Сп░авка за п░и╡. о▓ п░од. на ▒▓оки, м-али        ТРГ| |'
    @ 15, 9 prompt '   Сп░авка за п░одажби▓е и ▓║░гов▒ки▓е обек▓и  ПРОДАЖБИ| |'
    @ 16, 9 prompt '   О▓╖е▓ за нали╖.по▒▓║п.и ░-▓е на ▒│░ов.м-ли  HАЛИЧHОС| |'
    @ 17, 9 prompt '   О▓╖е▓ за ░аз╡ода на го░ива и ене░ги┐          ГОРИВА| |'
    @ 18, 9 prompt 'п. Сп░авка за опове▒▓┐ване на ▒╖е▓.поли▓ика 5          |1|'
  * @ 19, 9 prompt '░. ДЕКЛАРАЦИЯ по ╖л.13, ал.4 и ╖л. 62а, ал.2,▓.2    6  |1|'
    @ 19, 9 prompt '░. ДЕКЛАРАЦИЯ по ╖л.13 о▓ ТР                        6  |1|'
  * @ 20, 9 prompt '▒. П░о▓окол о▓ об╣о ▒║б░ание  на ▒║д░│ж.    7+8 ТАКСА  |2|'
    @ 20, 9 prompt '▒. ДЕКЛАРАЦИЯ по ╖л. 62а, ал.2,▓.2 о▓ ТР    7+8 ТАКСА  |2|'
    @ 21, 9 prompt '▓. Сп░авки за год. ▒╖е▓. п░икл. SPRAVKI.TXT            | |'
   * @ 21, 9 prompt '   Едн▒▓░анно ▒╖е▓овод▒▓во                            | |'
      menu to v2
         if lastkey()=27
           clos all
           clea all
           set prin off
           set prin to
           set cons on
           set dele off
           quit
         endif

    do case
       case v2=1
             opr()    &&  5
          *  trz()
          *  dekl_92()
       case v2=2
            balan()   &&  4
       case v2=3
            kapi()    &&  6
       case v2=4
            pari()    &&  7
       case v2=5
       case v2=6
       case v2=7
            do dma    && 12
       case v2=8

        if .not. file ("s0006.prn")
           @ 10,08,14,66 box ram1
           @ 11,09 clea to 13,65
           @ 12,12 say 'Izrabotete 2 Balans i sled tova otvorete sprawkata'
             inkey(9)
            loop
        endif
           @  2,2 clea to 21,75
           @  2,23 say 'СПРАВКА ВЗЕMАHИЯ -> S0006.PRN'
      save1=memoedit(memoread("s0006.prn"),6, 4,20,72,.F.,"",150,40,1,0)
         *  kniga()
       case v2=9
       case v2=10
            trz()     && 15
       case v2=11
         *  razliki()
       case v2=12
         *  uchastie()
       case v2=14
       case v2=15
       case v2=16
            politik()
       case v2=17
            dekltz()
       case v2=18
            protos()
       case v2=19
           if file("\disc\god&dt0\zkpo\&go0\SPRAVKI.TXT")
            ! cmd /c start notepad \disc\god&dt0\zkpo\&go0\SPRAVKI.TXT
           else
            @ 23,17 say 'ВHИМАHИЕ ! '  color 'R+/B'
            @ 23,28 say 'Hе е из░або▓ена ▒п░авка▓а в ▓. "▒" !' ; inkey(0)
           endif
           clos all
           clea all
           set prin off
           set prin to
           set cons on
           set dele off
           quit
          *  edno()
    endcase
     enddo

  **  AKTUAL BROJ DDOK DIRE DISK IZRAB IZRAV MES NSINF OPER PAUZA PECH
  **  PREH PODRED RAMKA RABOTI RAZR ROCK SETCOLORS SPISK SPRI STOK1 ZVAN
  **  ZENISME
   ************** О╖е░▓аване на ░амка  **************
                       proc ramka
       set date brit
    *  @ 0,0 clea to 24+ml0,80 ; @ 0,0 say upper(us_0)
    *  @  1, 0,24+ml0,79 box ram1 ;@ 22+ml0,1 say repl('═',78)
    *  @ 22+ml0,14,24+ml0,66 box ram1
       @ 0,0 clea to 24+ml0,80 ; @ 0,0 say upper(us_0)
       @  1, 0,24+ml0,79 box ram1 ; @ 22+ml0,1 say repl(chr(205),78)
       @ 22,14 say chr(203) ; @ 22,66 say chr(203)
       @ 23,14 say chr(204) ; @ 23,66 say chr(204)
       @ 24,14 say chr(202) ; @ 24,66 say chr(202)

                          do case
                             case cdow(date())='Monday'
                                  cden0='Понеделник'
                             case cdow(date())='Tuesday'
                                  cden0='  В▓о░ник '
                             case cdow(date())='Wednesday'
                                  cden0='  С░┐да   '
                             case cdow(date())='Thursday'
                                  cden0=' Че▓в║░▓║к'
                             case cdow(date())='Friday'
                                  cden0='   Пе▓║к  '
                             case cdow(date())='Saturday'
                                  cden0='  С║бо▓а  '
                             case cdow(date())='Sunday'
                                  cden0='  Hедел┐  '
                          endcase
                         @  0,75 say substr(dtoc(date0),4,5)
                         @ 23, 3 say cden0
                         @ 23,69 say substr(dtoc(date()),1,10)
                       return
      ************** K░ай на о╖е░аване на ░амка  *************

       ******************   П░о╢ед│░а за па│за  ***************
                        proc pauza
                          @ 16,80 get l0
                          read
                       return
          set curs off
          restore screen
                        return

      ************** П░о╢ед│░а за в░емнно ▒пи░ане    ******************

                          proc spri
                                 b0=b0+1
                                 if  b0=b1.or.b0>b1
                                   if b3=1
                                      b1=b1+b00
                                   endif
                                   b3=b3+1
                                   b0=1
                                   save_0='s'+nulb3()
                           *   if ll13='н'
                           *       set prin to &disc_1\&save_0
                           *   else
                                   set prin to &save_0
                           *   endif
                                 endif
                          return



  ****************** Добав┐не на н│ли в b3 prn*****************
                        func nulb3
                        do case
                           case b3 < 10
                           b3_0='000'+ltrim(str(b3,4))
                           case b3 < 100
                           b3_0='00'+ltrim(str(b3,4))
                           case b3 < 1000
                           b3_0='0'+ltrim(str(b3,4))
                           case b3 < 10000
                           b3_0=ltrim(str(b3,4))
                        endcase
                        return

            **************  П░о╢ед│░а   *********

                             proc raboti
    *  @ 21,65 say 'Dosprn 11 10 6'
      @ 23,15 say '       П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е ...       '
    *      sec0=round(seconds(),0)
    *  if 0 < sek0
    *     sekundi0='sek0-(round(seconds(),0)-sec0)'  // obraton broene
    *  else
    *     sekundi0='round(seconds(),0)-sec0'  // broene nagore
    *  endif
    *               timecount(sek2:=1)

                             return

          ******************   П░о╢ед│░а за ░аз░┐дно▒▓ ***********
                           proc razr
                        do case
                           case ll4='л'    && .or.l4='▓'
                             ra0=1*j5
                             mk1=' ЛЕВА '
                           case ll4='╡'.or.l4='п'.or.l4='╛'
                             ra0=1000*j5
                             mk1='ХИЛ.ЛВ'
                           case ll4='м'
                             ra0=1000000*j5
                             mk1='MЛH.ЛВ'
                        endcase
                           return

         ***************** Реиндек▒а╢и┐ ************************
                        proc podred
    if file("&disc_1\podred\podred.exe")
       clos all
       ! &disc_1\podred\podred.exe
     endif
                        return




      ************** Зв║не╢  *******************
                   proc zvan
                   set cons on
                   set bell on
                   ??  chr(7)
                   set bell off
                   set cons off
                   return


      ************** П░о╢ед│░а б░о┐╖ за ди▒ке▓а  *******************
                       proc broj
            do case
               case  q0=0
                   l4='000000'
               case  q0<10
                   l4='00000'+str(q0,1)
               case  q0<100
                   l4='0000'+str(q0,2)
               case  q0<1000
                   l4='000'+str(q0,3)
               case  q0<10000
                   l4='00'+str(q0,4)
               case  q0<100000
                   l4='0'+str(q0,5)
               endcase
                       return


        ******************* Уп░авление ЗАПИСИ ******************

       FUNCTION  rec_lock   &&  REC_LOCK
                          rlock()
                 do while .t.
                      if  rlock()
                          return  &&  (.t.)
                      else
                          unlock
                        loop
                      endif
                 enddo
       return

       FUNCTION  rec_unlock  && REC_UNLOCK
                          unlock
                   return   &&  (.f.)


       FUNCTION  FILE_LOCK
                          set exclu off
                       do case
                          case loc0=1
                             use &filee  exclu
                          other
                             use &filee
                          endcase
                 do while .t.
                      if  flock()=.T.
          @  0,36 say '                '
                          loc0=0
                          unlock  &&  заковано е !
                          return
                      else
          @  0,36 say filee+str(loc0,4)
            i0=inkey(2)
                          unlock
                          loop
                      endif
               enddo
               return (.f.)


        ******************* Уп░авление ФАЙЛОВЕ ******************
                            func open_arhi  && ARHI
                                 sele 1
                                 filee='&us_0'+'arhi'
                                 file_lock ()
                                 if file("&us_0\nari.ntx")
                                   set inde to '&us_0'+'nari','&us_0'+'faki'
                                 endif
                           return

                            func open_info  && INFO
                                 sele 1
                                 filee=' &disc_1\job\info'
                                 file_lock ()
                           return

                            func open_bala  && BALA
                                 sele 1
                                 filee='&disc_1\job\bala'
                                 file_lock ()
                           return

                            func open_dobo  && DOBO
                                 sele 2
                                 filee='&us_0'+'dobo'
                                 file_lock ()
                                 if file("&us_0\nsdi.ntx")
                                   set inde to '&us_0'+'nsdi','&us_0'+'dsdi'
                                 endif
                           return

                            func open_kobo  && KOBO
                                 sele 3
                                 filee='&us_0'+'kobo'
                                 file_lock ()
                                 if file("&us_0\nski.ntx")
                                    set inde to '&us_0'+'nski','&us_0'+'dski'
                                 endif
                           return

                            func open_dpar  && DPAR
                                 sele 4
                                 filee='&us_0'+'dpar'
                                 file_lock ()
                                 if file("&us_0\nadi.ntx")
                                    set inde to '&us_0'+'nadi','&us_0'+'dpdi','&us_0'+'di'
                                 endif
                           return

                            func open_dpart  && DPART
                                 sele 4
                                 filee='dpart'
                                 file_lock ()
                                 set inde to dpdit
                           return

                            func open_kpar  && KPAR
                                 sele 5
                                 filee='&us_0'+'kpar'
                                 file_lock ()
                                 if file("&us_0\naki.ntx")
                                    set inde to '&us_0'+'naki','&us_0'+'dpki','&us_0'+'ki'
                                 endif
                           return

                            func open_kpart && KPART
                                 sele 5
                                 filee='kpart'
                                 file_lock ()
                                 set inde to dpkit
                           return

                            func open_obap  && OBAP
                                 sele 6
                                 filee='&us_0'+'obap'
                                 file_lock ()
                                 if file("&us_0\aobi.ntx")
                                    set inde to '&us_0'+'aobi','&us_0'+'nami','&us_0'+'pai'
                                 endif
                           return

                            func open_obve  && OBVE
                                 sele 7
                                 filee='&us_0'+'obve'
                                 file_lock ()
                                 if file("&us_0\sobi.ntx")
                                    set inde to '&us_0'+'sobi'
                                 endif
                           return

                          func open_hlp  &&  HLP
                          sele 13
                          filee="&disc_1\save\hlp"
                          file_lock ()


                          func open_spis && SPIS
                            sele 10
                            filee='spis'
                            file_lock ()
                            if file("nomi.ntx")
                            set inde to nomi, namz
                            endif
                          return
                          func open_mese && MESE
                            sele 11
                            filee='mese'
                            file_lock ()
                            if file('dnsi.ntx')
                            set inde to dnsi,sdni
                            endif
                          return

                          func open_godn && GODN
                             sele 12
                             filee='godn'
                             file_lock ()
                             if file('gdnsi.ntx')
                             set inde to gdnsi,gsdni
                             endif
                          return



      ****************  Изли▒▓ва н│леви па░▓иди  *******************
                           proc  ddok1
             do case
                case lastkey()=-2
                     ll13='д'
                     @ 23,15 say space(50)
                     @ 23,27 say 'Редак╢и┐▓а за░едена'
             endcase


      *************  Раз░┐дно▒▓ на анали▓и╖ни па░▓иди  ************
               proc razrjd
               set key -7  to
                save screen
                clea gets
                if file ("&disc_1\job\razrjd.mem")
                      restore from &disc_1\job\razrjd additive
                endif
                     @ 11,22,19,60 box ram1
                      set curs on
                      @ 12,24 say 'БРОЙ РАЗРЯДИ СЛЕД ДЕСЕТИЧHАТА ТОЧKА'
                      @ 14,24 say 'KОЛИЧЕСТВО       ЦЕHА       СТОЙHСТ '
                      @ 15,24 say '   < 10           < 7         < 10  '
                      @ 16,28 get j3  pict "9"  valid 0<j3.or. j3<10
                      @ 16,42 get j4  pict "9"  valid 0<j4.or. j4<7
                      @ 16,55 get j1  pict "9"  valid 0<j1.or. j1<10
                      @ 18,30 say 'Вал│▓ен к│░▒ ' get j5  pict "99.999999" valid 0 < j5
                      read
                              save all like j? to &disc_1\job\razrjd
                set key -7 to razrjd
                restore screen
                read
             return



      ***************  Едно▒▓░анно ▒╖е▓овод▒▓во  **********************
                       proc  edno
                       v3=0
                       ramka()
                       @  2,27 say 'ЕДHОСТРАHHО СЧЕТОВОДСТВО'
                       @  3,26 say '--------------------------'
                       @ 11,28 prompt '1. Kнига за п░и╡оди▓е'
                       @ 13,28 prompt '2. Kнига за ░аз╡оди▓е'
                       menu to v3
               do case
                 case v3=1
               por0='ВЕРТИKAЛHO'
               ramka()
               data0='01/'+dt0
               store 0 to nom1,nom7
               store ' ' to data1,data7
               @  2,31 say 'KHИГА ЗА ПРИХОДИТЕ'
               @  3,30 say '--------------------'
         izrab() ; if lastkey()=27 ; set dele off ; return ; endif

       if ekpr0=2
          b00=1
          b1=62 
         @  9,27 say 'Б░ой ░едове на ▒▓░ани╢а' get b1 pict "99"
         read
         set marg to 10
       else
         set marg to 1
       endif

         ?? sbit0
  ? space(28)+'K H И Г А  З А  П Р И Х О Д И Т Е'
  ?
  ? space(39)+fir
  ?
  ? space(42)+'за о▓╖е▓ни┐ пе░иод ........... год.'
  ? space(115)+'▒▓░.'+str(b3,4)
  ?  '---------------------------------------------------------------------------------------------------------------------------'
  ?  '  Nпо  Вид  номе░  да▓а   Опи▒ание      Б░│▓ен ░-░     До▓а╢ии о▓        Д░│ги       Фина▒ови     Изв║н░едни     Об╣а ▒│ма '
  ?  '  ░ед        на              на             на          б╛дже▓а и        п░и╡оди                                    на     '
  ?  '          док│мен▓а      опе░а╢и┐▓а      п░и╡оди▓е      ▒│б▒идии         в ▓.╖.       п░и╡оди       п░и╡оди       п░и╡оди▓е'
  ?  '---------------------------------------------------------------------------------------------------------------------------'
  ?  '   1          2              3               4               5              6             7             8              9   '
  ?  '---------------------------------------------------------------------------------------------------------------------------'
           b3=1
           b0=14
           i=' '
           open_arhi(loc0:=20)  && nari
           open_kobo(loc0:=17)  && nski
          store 0 to p61,p71,p81,p91,oop0,op01,op02,op03,op04,op05,op06,op07,op08,op09,op10,op11,op12
          do while .not.eof()
          store 0 to p60,p70,p80,p90
           do while data=data0
                store space(j0) to  p6,p7,p8,p9
                   if substr(sch,1,1)='7'.and.(.not.sch='704')
                        nom0=nom
                         dn0=subs(data,4,2)+data+nom
                         do case
                            case substr(sch,1,2)='70'
                                 p6=str(ksto,j0,j1)
                                 p60=p60+ksto
                                 p61=p61+ksto
                            case substr(sch,1,2)='74'
                                 p7=str(ksto,j0,j1)
                                 p70=p70+ksto
                                 p71=p71+ksto
                            case substr(sch,1,2)='72'
                                 p8=str(ksto,j0,j1)
                                 p80=p80+ksto
                                 p81=p81+ksto
                            case substr(sch,1,2)='79'
                                 p9=str(ksto,j0,j1)
                                 p90=p90+ksto
                                 p91=p91+ksto
                         endcase
                   sele 1
                     find '&dn0'
                       if found()
                              dok0=substr(vid,1,18)+i+substr(dok,1,10)
                       endif
                       if .not.data0=data
                         exit
                       endif
          *    endif
    ? i+nom0+i+dok0+i+p6+i+p7+i+'            '+i+p8+i+p9
    spri()
                                  if  b0=1
  ?? sbit0
  ? space(115)+'▒▓░.'+str(b3,4)
  ?  '---------------------------------------------------------------------------------------------------------------------------'
  ?  '   1          2              3               4               5              6             7             8              9   '
  ?  '---------------------------------------------------------------------------------------------------------------------------'
                                  b0=6
                                  endif
                   endif
                       sele 3
                            if .not. eof()
                               skip
                               loop
                            else
                                exit
                            endif
           enddo
              me0=substr(data0,1,2)
              op&me0=p60+p70+p80+p90
         if .not. op&me0=0
  ? '         ОБЩО ЗА MЕСЕЦ  '+data0+space(7)+str(p60,j0,j1)+i+str(p70,j0,j1)+i+'            ';
  +i+str(p80,j0,j1)+i+str(p90,j0,j1)+i+str(op&me0,j0,j1)
              spri()
         endif
  store data to data0
          enddo
  ?
             oop0=p61+p71+p81+p91
  ? '                ВСИЧKО'+space(14)+str(p61,j0,j1)+i+str(p71,j0,2)+i+'            ';
 +i+str(p81,j0,j1)+i+str(p91,j0,j1)+i+str(oop0,j0,j1)
        if ekpr0=2

            @ 14,29 say 'Б░ой на ▒▓░ани╢и▓е '+ str(b3,3)
            @ 23,15 say space(50)
            l0=2
            @ 23,23 say 'ПОТВЪРЖДАВАТЕ ЛИ ПЕЧАТАHЕТО'
            @ 23,51 prompt 'ДА'
            @ 23,54 prompt 'HЕ'
            menu to l0
             if l0=2
                   set prin off
                   set prin to
                   set cons on
                return
             endif
        endif
  pech()
  set dele off
                  case v3=2
                 clea
               por0='ХОРИЗОHТAЛHO'
               ramka()
               set dele on
               pt0='н'
               b1=27
               data0='01/'+dt0
               store 0 to nom1,nom7
               store ' ' to data1,data7
               @ 23,27 say 'F3 - изли▒▓ва ╖а▒▓ о▓ книга▓а'
               @  2,31 say 'KHИГА ЗА РАЗХОДИТЕ'
               @  3,30 say '--------------------'
            izrab() ; if lastkey()=27 ; set dele off ; return ; endif
       if ekpr0=2
         b1=44
         b00=1
         @  9,27 say 'Б░ой ░едове на ▒▓░ани╢а' get b1 pict "99"
         read
         set marg to
       else
         set marg to
       endif
         ?? sbit0
  ? space(62)+'K H И Г А  З А  Р А З Х О Д И Т Е'
  ?
  ? space(73)+fir
  ?
  ? space(76)+'за о▓╖е▓ни┐ пе░иод ........... год.'
  ? space(183)+'▒▓░.'+str(b3,4)
  ?  '-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
  ?  '  Nпо  Вид  номе░  да▓а   Опи▒ание                    В║н╕н╕       Амо░▓и-                 Со╢иално                  С▓ойно▒▓     Финан▒ови    Изв║н░е-                П░и╡оди за              '
  ?  '  ░ед        на              на       Mа▓е░иали                                Запал▓и                   Д░│ги      на п░одад.                 дни ░аз-      Об╣о      о▓╖е▓ни┐     Разлика    '
  ?  '          док│мен▓а      опе░а╢и┐▓а                   │▒л│ги        за╢ии                  о▒иг│░┐в.                  ▒▓оки        ░аз╡оди      ╡одии                    пе░иод                '
  ?  '-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
  ?  '   1          2              3            4             5            6            7            8            9            10          11           12           13           14         15      '
  ?  '-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
           b3=1
           b0=14
           i=' '
           open_kobo(loc0:=18)  && nski
           open_arhi(loc0:=21)  && nari
           open_dobo(loc0:=20)  && nsdi
          store 0 to r61,r71,r81,r91,r101,r111,r121,r131,r141,r207,oor0
          do while .not.eof()
          store 0 to r60,r70,r80,r90,r100,r110,r120,r130,r140,or0
          me0=substr(data0,1,2)
           do while data=data0
                store space(12) to  r6,r7,r8,r9,r10,r11,r12,r13,r14
                             if sch='207'
                                r207=r207+dsto
                             endif
                   if substr(sch,1,2)='60'.or.substr(sch,1,2)='62'.or.substr(sch,1,2)='66'.or.substr(sch,1,2)='70'
                                  if sch='704'
                                      if .not. eof()
                                         skip
                                         loop
                                      else
                                          exit
                                      endif
                                  endif
                        nom0=nom
                         dn0=subs(data,4,2)+data+nom
                         do case
                            case sch='601'
                                 r6=str(dsto,12,2)
                                 r60=r60+dsto
                                 r61=r61+dsto
                            case sch='602'
                                 r7=str(dsto,12,2)
                                 r70=r70+dsto
                                 r71=r71+dsto
                            case sch='603'
                                 r8=str(dsto,12,2)
                                 r80=r80+dsto
                                 r81=r81+dsto
                            case sch='604'
                                 r9=str(dsto,12,2)
                                 r90=r90+dsto
                                 r91=r91+dsto
                            case sch='605'
                                 r10=str(dsto,12,2)
                                 r100=r100+dsto
                                 r101=r101+dsto
                            case sch='609'
                                 r11=str(dsto,12,2)
                                 r110=r110+dsto
                                 r111=r111+dsto
                            case substr(sch,1,2)='70'
                                 dn1=subs(data,4,2)+data+nom
                                 sele 3
                                   find "&dn1"
                               if substr(sch,1,2)='30'
                                 sele 2
                                 r12=str(dsto,12,2)
                                 r120=r120+dsto
                                 r121=r121+dsto
                               else
                                 sele 2
                                      if .not. eof()
                                         skip
                                         loop
                                      else
                                          exit
                                      endif
                               endif
                            case substr(sch,1,2)='62'
                                 r13=str(dsto,12,2)
                                 r130=r130+dsto
                                 r131=r131+dsto
                            case substr(sch,1,2)='66'
                                 r14=str(dsto,12,2)
                                 r140=r140+dsto
                                 r141=r141+dsto
                         endcase
                   sele 1
                     find '&dn0'
                       if found()
                          dok0=substr(vid,1,18)+i+substr(dok,1,10)
                          if .not.data0=data
                            exit
                          endif
                       endif
               if str(nom1,4)=nom.and.data1=data
                        pech()
                        ?? sbit0
                        set marg to 1
                        set device to screen
               endif
    ? nom0+i+dok0+i+i+r6+i+r7+i+r8+i+r9+i+r10+i+r11+i+r12+i+r13+i+r14
      spri()
                                  if  b0=1
  ?? sbit0
  ? space(183)+'▒▓░.'+str(b3,4)
  ?  '-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
  ?  '   1          2              3            4             5            6            7            8            9            10          11           12           13           14         15      '
  ?  '-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
                                  b0=6
                                  endif
                   endif
                       sele 2
                            if .not. eof()
                               skip
                               loop
                            else
                                exit
                            endif
           enddo
              me0=substr(data0,1,2)
              or0=r60+r70+r80+r90+r100+r110+r120+r130+r140
          if .not.(op&me0=0.and.or0=0)
  ? '      ОБЩО ЗА MЕСЕЦ  '+data0+space(10)+str(r60,12,2)+i+str(r70,12,2)+i+str(r80,12,2);
  +i+str(r90,12,2)+i+str(r100,12,2)+i+str(r110,12,2)+i+str(r120,12,2);
  +i+str(r130,12,2)+i+str(r140,12,2)+i+str(or0,12,2)+i+str(op&me0,12,2)+i+str(op&me0-or0,12,2)
          spri()
          endif
  store data to data0
          enddo
  ?
             oor0=r61+r71+r81+r91+r101+r111+r121+r131+r141
  ? '                ВСИЧKО              '+str(r61,12,2)+i+str(r71,12,2)+i+str(r81,12,2);
 +i+str(r91,12,2) +i+str(r101,12,2)+i+str(r111,12,2)+i+str(r121,12,2);
 +i+str(r131,12,2)+i+str(r141,12,2)+i+str(oor0,12,2)+i+str(oop0,12,2)+i+str(oop0-oor0,12,2)
          if r207>0
  ?
  ? space(112)+'В ТОВА ЧИСЛО РАЗХОДИ ЗА ПРИДОБИВАHЕ HА ДЪЛГОТРАЙHИ АKТИВИ   '+str(r207,12,2)
  ? space(170)+'---------------'
  ? space(154)+'ОБЛАГАЕM  ДОХОД   '+str(oop0-oor0+r207,12,2)
          endif

        if ekpr0=2
            @ 14,29 say 'Б░ой на ▒▓░ани╢и▓е '+ str(b3,3)
            @ 23,15 say space(50)
            l0=2
            @ 23,23 say 'ПОТВЪРЖДАВАТЕ ЛИ ПЕЧАТАHЕТО'
            @ 23,51 prompt 'ДА'
            @ 23,54 prompt 'HЕ'
            menu to l0
             if l0=2
                   set prin off
                   set prin to
                   set cons on
                return
             endif
        endif
  pech()
  set dele off

               endcase
                    return


       ************** калк│ла▓о░  ********************
			func calll

    save screen  to ek1
   store space(33) to x0,x1,x2,x3,x4,x5,x6,x,y
  x7='+0'
  y0=4
  z0=22
  l0=' '

	  if file ("zvetia.mem")
	     restore from zvetia additive
	  else
	  endif
             clea

public  rez0,rez2,rez3
store 0 to rez0,rez2,rez3,rez4
rez1=' '
store 0 to rez0,rez ,rez2
set key  26 to lrud
set key   2 to lrud
set key  31 to lrud
set key  30 to lrud
set key 109 to natr
                   do kal

                   proc kal
             restore screen from  ek1
   @ y0,z0,y0+14,z0+34 box ram1
   @ y0+1,z0+1 clea to y0+13,z0+33
          @ y0+1 ,z0+1 say '       K А Л K У Л А Т О Р'
          @ y0+2 ,z0+1 say '═════════════════════════════════'
          @ y0+3 ,z0+1 say ' +пл╛▒ -мин│▒ *│множeние /деление'
          @ y0+4 ,z0+1 say '═════════════════════════════════'
          @ y0+12,z0+1 say '═════════════════════════════════'
          @ y0+13,z0+1 say 'Рез│л▓а▓ '
set key 13 to sum
set key 177 to stir
do while .t.
rez0=0
restore from &disc_1\cal\cal additive
@ y0+ 5,z0+1 get x0
@ y0+ 6,z0+1 get x1
@ y0+ 7,z0+1 get x2
@ y0+ 8,z0+1 get x3
@ y0+ 9,z0+1 get x4
@ y0+10,z0+1 get x5
@ y0+11,z0+1 get x6
read
                     if lastkey()=3
                        @ y0+11,z0+1 get x6
                        read
                        loop
                     endif
                     if lastkey()=18
                        loop
                     endif
       if lastkey()=27.or. x0=space(33)
             restore screen  from ek1
            @ 1,62 say substr(rez1,5,17)
            store rez1 to dast0,kast0
            set key 13 to
            return
       endif
             sum()
enddo
            return

    ******************  П░о╢ед│░а за ▒│ма **************
                 proc sum
        save all like x* to &disc_1\cal\cal
        set key 13 to
       if x0=space(33)
            return
       endif
       rez0=&x0&x1&x2&x3&x4&x5&x6&x7
      if  -999999999999.99999 < rez0 .or. rez0 < 9999999999999.99999
          rez0=str(&x0&x1&x2&x3&x4&x5&x6&x7,19,5)
          rez1=substr(rez0,1,1)+' '+substr(rez0,2,3)+' '+substr(rez0,5,3)+' '+;
          substr(rez0,8,3)+' '+substr(rez0,11,7)+' '+substr(rez0,18,2)
          @ y0+12,z0+1 say '═════════════════════════════════'
          @ y0+13,z0+10 say rez1
      else
          @ y0+13,z0+1 say '                               '
              ?? chr(7)
          @ y0+13,z0+1 say '     П░еп║лване на ░еги▒▓║░а'
            i0=inkey(0)
          @ y0+13,z0+1 say 'Рез│л▓а▓                        '
      endif
             set key 13 to sum
                return



    **********************  Движение на калк│ла▓о░а *********
                          proc  lrud
                       clea gets
                do case
                   case lastkey()=26
                     z0=0
                   case lastkey()=2
                     z0=45
                   case lastkey()=30
                     y0=10
                   case lastkey()=31
                     y0=0
                endcase
              do kal
                          return

                      proc natr
                   set key 109 to
                   @ y0+1 ,z0+33 say 'M'
                *   store rez0 to rez2
                *   rez3=rez3+&rez2
                    rez2=rez2+val(rez0)
                   set key 109 to natr
                   set key 306 to napo
                      return


                      proc napo
               set key 306 to
               save screen  to ek2
                    store rez3 to rez3
    if  -999999999999.99999 < rez2 .or. rez2 < 9999999999999.99999
          rez3=str(rez2,19,5)
          rez3=substr(rez3,1,1)+' '+substr(rez3,2,3)+' '+substr(rez3,5,3)+' '+;
          substr(rez3,8,3)+' '+substr(rez3,11,7)+' '+substr(rez3,18,2)
               @ y0+12,z0+1 say 'Паме▓    '+rez3
               i0=inkey(0)
      else
          @ y0+12,z0+1 say '                               '
              ?? chr(7)
          @ y0+12,z0+1 say '     П░еп║лване на ░еги▒▓║░а'
            i0=inkey(0)
          @ y0+12,z0+1 say 'Рез│л▓а▓                        '
      endif
                   set key 306 to napo
               restore screen  from ek2
                      return

                   proc stir
 store space(33) to x0,x1,x2,x3,x4,x5,x6
                   return
			  return


      ****************  Изли▒▓ва н│леви па░▓иди  *******************
                           proc  ddok2
                     @ 23,14 say space(52)
             do case
                case lastkey()=-2
                     ll13='д'
                     @ 23,27 say 'Редак╢и┐▓а за░едена'
                case lastkey()=-3
                     ll14='н'
                     @ 23,27 say '  П░ек║▒на▓ пе╖а▓  '
                case lastkey()=-4
                     ll15='н'
                     ll14='н'
                     @ 23,27 say 'Пп░од║лжение пе╖а▓ '
             endcase
                           return


     func fdobav
        do case
           case  lastkey()=27
             if l0=' '
                 l0='д'
             else
                 l0=' '
             endif
           case  lastkey()=-3
                 @ 4,0 say  repl('_',79)
                 spr0=memoread("spravka.txt")
                 spr0=memoedit(spr0,0,0, 3,79,.t.,"",250,40,1,20)
           case  lastkey()=417
                 l0='н'
                 b3=b3+1
                 keyboard chr(27)
           case  lastkey()=409
                 l0='н'
                 b3=b3-1
                 keyboard chr(27)
           other
                 l0=' '
        endcase
       return
    *********************** Funkciqta pusk i spira dialoga na zan ******************
                                     func zanvi
         do case
       *    case zan0='general' // ne go vkluchvai mai sazdawa problemi
       *    memowrit('prov.bat','copy &disc_1\zan\sent\general.ini &zan_0')
           case zan0='vkl'
    memowrit('prov.bat','copy &disc_1\zan\vkl\app.ini  &zan_0';
    +chr(13)+chr(10)+   'copy &disc_1\zan\vkl\save.ini &zan_0')
          case zan0='izkl'
   memowrit('prov.bat','copy &disc_1\zan\izkl\app.ini  &zan_0';
   +chr(13)+chr(10)+   'copy &disc_1\zan\izkl\save.ini &zan_0')
       endcase
          !&disc_1\exe\hstart.exe /noconsole prov.bat
          inkey(5)
         erase prov.bat
     return

               ********** П░о╢ед│░а за пе╖а▓а **************************
                            proc pech
              clos data
             if lastkey()=27.and.(.not.t0='-')
                set cons on
                ekpr0=1
                set prin off
                set prin to
                set cons on
                return
             endif
          if ll10=' '
             b3=1
          endif
             set marg to 0
             set prin off
             set prin to
          *  set cons on
     if ekpr0=1
               l0=' '
                 @ 23+ml0,15  say 'Alt+PgD - ▒▓░ани╢а надол│ Alt+PgU - ▒▓░ани╢а наго░е'
             do while .t.
                       save_0='s'+nulb3()+'.prn'
                   *   @ 0,25 say 'Max row 500   Total row '+str(mlcount(memoread('s0099.prn'),250),4)
                       save1=memoread("&save_0")
                       save1=memoedit(save1,5,1,21+ml0,78,.t.,"fdobav",254,40,1,20)
                       memowrit('&save_0',save1)
                if l0='д'
                   ekpr0=1
                   exit
                endif
             enddo
     else
       *    do while .t.
       *     if isprinter()=.f.
       *        zvan()
       *        @ 23+ml0,15 say '   Вкл╛╖е▓е п░ин▓е░а и на▓и▒не▓е кой да е клави╕   '
       *        i0=inkey(0)
       *        if lastkey()=27
       *           set prin off
       *           set prin to
       *           set cons on
       *           return
       *         endif
       *        loop
       *     else
       *        @ 23+ml0,17 say '                                               '
       *        exit
       *     endif
       *    enddo
                              set cons off
                    *     if pb_0='c'
                    *         set prin on
                    *     endif
                    *           do case
                    *              case ll0='1'.and.ll3='1'
                    *               ?? '&l1O'  && ╡о░изон▓ален
                    *              case ll0='2'.and.ll3='1'
                    *               ?? '&l0O' && ве░▓икален
                    *           endcase
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
                   *   if pake='CHEF'.and. file ("\hlp\bat\zan.bat")
                   *         pechzan()  // sav8
                   *   else                    &disc_0\s0000
                            copy file &save_0 to &disc_0\&save_0
                   *   endif
                     endif
                        b3=b3+1
                        save_0='s'+nulb3()+'.prn'
                save screen
                restore screen
           if file("&save_0").and.ll10=' '
          if s0000='д'
             memowrit('&disc_0\s0000',memoread('&disc_0\s0000')+save1+chr(13)+chr(10))
             copy file &disc_0\s0000 to s0099.prn
          endif
              ?
               if .not. ll14='н'  // F4-П░ек║▒на▓ пе╖а▓
                @ 23+ml0,15 say '    Об║░не▓е ли▒▓▓а и на▓и▒не▓е "ESC"  за ▒▓░.'+str(b3,3)
                               do while .t.
                                   pauza()
                                   if lastkey()=27
                                        exit
                                   endif
                               enddo
               endif
                @ 23+ml0,15 say '         П░ог░ама▓а пе╖а▓а, мол┐ из╖акай▓е !       '
           else
              exit
           endif
                   else
                      if lastkey()=27
                          exit
                      endif
                   endif
              enddo
                ?
              if .not. ll14='н' //  F4-П░ек║▒на▓ пе╖а▓
                @ 23+ml0,15 say  '       След ▒пи░ане на пе╖а▓а на▓и▒не▓е "Esc"     '
                pauza()
              endif
                @ 23+ml0,15 say  space(50)
      *     do while .t.
      *      if isprinter()=.F.
      *         @ 23+ml0,15 say '       Вкл╛╖е▓е п░ин▓е░а и на▓и▒не▓е   "Esc"       '
      *         i0=inkey(0)
      *         loop
      *      else
      *         @ 23+ml0,15 say space(51)
      *         set cons on
      *         ekpr0=1
      *         exit
      *      endif
      *     enddo
              @ 23+ml0,24 say ''
                ?? norm0
               set prin to
               set prin off
     endif
      as0=1 ; save1=memoread("s0099.prn")
      asci0=save1 ; asci() ; memowrit('s0099.txt','&asci1')
     if s0000='д'
        memowrit('&disc_0\s0000',memoread('&disc_0\s0000')+save1+chr(13)+chr(10))
        copy file &disc_0\s0000 to s0099.prn
     endif
      if file("&disc_0\sentinel.txt") ; eras &disc_0\sentinel.txt ; endif
                           return
    return

******************     Procedurata izchakva izrabotwaneto na pdf file *********
                              proc  sentinel
              spri()

              * if file("&disc_0\sentinel.txt") //  tova iztrivane ne e neob
              *         dele file "&disc_0\sentinel.txt"  // na drugo mqsto v pro
              *  endif // a i v programata
               do while  .t.
                      timecount(sek2:=1)
                @ 23,15 say space(44)
                if file("&disc_0\sentinel.txt")
                   @ 23+ml0,15 say '       П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е ...     '
                   dele file "&disc_0\sentinel.txt"  // na drugo mqsto v pro
                  exit
                else
                   @ 23+ml0,15 say '       П░ог░ама▓а ░або▓и, мол┐ из╖акай▓е ...     '
                endif
              enddo
                         return // sentinel

     ***************Pokazwa ostanalite sekundi   *****************


      ***************Pokazwa ostanalite sekundi   *****************
                             func timecount
      i00=0  // dan se polzuwa nikade drugade tazi promenliva
          for i00 = 1 to sek2
                  sek1=sekundi0

                  if sek1 < 0
                    *  @ 23,61 say '0: 0'
                  else
                    if 0 < val(subs(str(round(sek1/60,2),5,2),1,2))
                       @ 23,60 say subs(str(round(sek1/60,2),5,2),1,2)+':'+;
                       str(sek1-val(subs(str(round(sek1/60,2),5,2),1,2))*60,2)
                    else
                       @ 23,61 say '0:'+str(sek1,2)
                    endif
                   endif
                           inkey(1)
            next
                            return  // timecount


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


               ********** П░о╢ед│░а за пе╖а▓а ******
                            proc izrab
                 ll13='н'
                 ll14='д'
                 b3=1
                 b1=325
                 ekpr0=1
                 @ 18, 2 clea to 21,78
                 @ 23,15 say space(51)
                 @ 22,13,24,66 box ram1
                 @ 18,66,21,78 box ram1
                 set key -2 to ddok2
                 set key -3 to ddok2
                 set key -4 to ddok2
                 @ 23,14 say space(51)
                 @ 23,15 say 'F3-Редак╢и┐ F4-П░ек║▒на▓ пе╖а▓ F5-П░од║лжение пе╖а▓'
                 @ 19,68 prompt 'Е K Р А H'
                 @ 20,68 prompt 'П Е Ч А Т'
                 menu to ekpr0

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
                             return   // izrab
      ************** П░о╢ед│░а за помо╣ help   ************
                   proc help
           save screen
           set key 28 to
           ramka()
 @  2,10 say "За ГФО зад║лжи▓елно е из░або▓ване▓о на ▓о╖ки:  а б в г п ░ ▒     "
 @  3,10 say "1. В папка &disc0 .prn ┤айлове▓е: BALA                           "
 @  4,10 say "   DEKL_13 DEKL_62A GFO KAPI OPR PARI POLI1 POLI2 PROTOKOL       "
 @  5,10 say "2. В ▓ек│╣а▓а папка на ┤и░ма▓а .PRN ┤айлове ▒п░авка к║м:         "
 @  6,10 say "   p1 - балан▒а   p2 - ОПР   p3 - ТРЗ   p4 - ГДД                 "
 @  7,10 say "   То╖ка  ▒. ▒║здава в папка  disc\god&dt0\gfo\_&go0"+"_GFO.pdf  "
 @  8,10 say "3. То╖ка  ▒. ▒║здава в папка  disc\god&dt0\gfo\_&go0"+"_GFO.pdf  "
 @  9,10 say "   и в папка \disc\god&dt0\zkpo\&go0\ ┤айл SPRAVKI.TXT           "
 @ 10,10 say "   Подпи╕и и подпе╖а▓ай ▒п░авки▓е в║в ┤айл _&go0"+"_GFO.pdf ┤айла"
 @ 11,10 say "4. copy C:\HLP\BAT\PDFgfo.bat \disc\god&dt0\gfo\                 "
 @ 12,10 say "   О▓вво░и и ░едак▓и░ай PDFgfo.bat  @ set g0=23 - ▓ек│╣а година  "
 @ 13,10 say "   @ set f0=HO - ┤и░ма▓а, на ко┐▓о ╣е ▒а п░ав┐▓ ┤айлов▓е за ТР   "
 @ 14,10 say "   С║здава▓ ▒е В папка \disc\god&dt0\gfo\      "
 @ 15,10 say "   _AR_GFO.PDF _DECLAR_13.PDF _DECLAR_62a.PDF  "
 @ 16,10 say "   call PDFgfo.VBS - п░ове░ка ░або▓а▓а на PDFtoPrinter.EXE       "
 @ 17,10 say "5. То╖ка ▓. о▓ва░┐ СПРАВКИ.TXT                                   "
                 @ 19,33 say 'ВHИМАHИЕ ! '  color 'R+/B'
          @ 20,20 say 'СПАЗВАЙ СТРИKТHО ПОСЛЕДОВАТЕHОСТТА НА '
          @ 21,20 say '  \disc\god&dt0\zkpo\&go0\SPRAVKI.TXT '; inkey(0)
           restore screen
           set key 28 to help
          return




