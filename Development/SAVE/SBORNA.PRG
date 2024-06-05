
    avtteh line lihva zavar sbor bank nepr tehkar vika motik barcod sav33 vapros

*     *******************  ‘ÛÌÍˆË  Á‡ ÔÓ‚ÂÍË ‚ ÏÂÊ‡  ******************
                               proc vapros  && vapros
                               set bell on
                               zvan()
                               set bell off
                               save screen
                               @ 11, 5,13,74 box ram1
                               @ 12, 6 clea to 12,73
                               @ 12,12 say otgo0
                               do pauza
                               restore screen
                               return       && vapros
   function  setcolors ()  // SAVE
          * setcolors (zv0) -> vrasta normalno galto na sino
          * etcolors (zv0+=2) -> prawi bukwite cherweni

               do case
                  case zv0=1
                  case zv0=2
                      setcolor("GR+/B")
                   case zv0=4
                       setcolor("R+/B")
                       zv0-=2
                   case zv0=5
                       setcolor("G+/B")
                       zv0-=3
               endcase
          return

 ************************     M  R  E  G  A    *******************************

            ****************  VIKA POTREBITEL   ******************* SAVE-2 SAV2-1
               proc vika
           *   return

               set key  12 to
               save screen
               clea gets
                     vi_0='d'
                     q0=1
                     @  3,24,21,57 box ram1
                     @  4,25 clea to 20,56
                     @  5,25 say repli(chr(205),32)
                     @ 12,25 say repli(chr(205),32)
                      set curs on
                      vika0= ' '
                      vika0=memoread("\hlp\vika\vika.txt",vika0)
                      @ 4,28 say 'èéÇàKÇÄHÖ éí      Köå'
                      @ 4,51  get vi_0

                      chet()
                      vi_0= vi_0+':\hlp\vika'
                      vi_0=vi_0+'vika.txt'
                      vika1='åéãü íÖ èìëçà ëà SKYPE! ëíÖîÄH'
      do while .t.
                      vika0=memoread("\hlp\vika\vika.txt",vika0)
                      red0=mlcount(vika0,32)
                      declar izb[red0]
                      for q0=1 to red0
                          izb[q0]=memoline(vika0,32,q0)
                      next
                      @ 13,25 clea to 20,56
                      iz0=achoice(13,25,20,56,izb,,"")
                      vika1=memoread(vi_0)+chr(12)
                      vika0=memoedit(vika1, 6,25,11+ml0,56,.t.,"fvika",34,4,1,0)
                      memowrit('&vi_0',vika0)
                     if lastkey()=27
                        exit
                     endif
      enddo
                eras vi_0
                clea gets
                set key  12 to
                restore screen
             return

                          func fvika()   //   save-0

                          return

   

  ***************** AVTOMATICHNA IZRABOTKA NA TEHN. KARTA *************** PRO5-1
                             proc avtteh
        save screen
        clea gets
        set key -3 to
        do ramka
        @  2,30 say 'HÖéÅïéÑàåà KéãàóëíÇÄ'
        @  3,29 say '----------------------'
        @  5, 7 say ' 302 éí  OBAP  ->  TEHN    éí DPAR  ->  TEHN     701 éí KPAR  ->  KPAP'
        @  6, 1 say 'KéãàóëíÇé'
        @  7, 1 say 'ëíéâHéëí '
        @  8, 1 say 'êÄáãàKà    ” ¨Æ¶• §† ®¨† ¨†™† ∞-™† Æ≤ Æ™∞∫£´•≠®ø  ”” ®¨† Ø∞Æ§†¶°® °•ß °∞Æ∫™®”'
        open_tehno(loc0:=1)
        sele 10
        copy stru to tehn
        open_tehn(loc0:=1)

     ********** è∞∫±™†≠• ≠† ØÆ 1 °∞. ≠†´®∑≠Æ±≤® ¢ ≠†´†≤Æ ≠† £Æ§.

     open_obap(loc0:=27)
     set filter to part='302'.and. 0 < kol
     sum asal to nasal0
     sum kol to  nkol0
     go top
     store 0 to nasal1,nkol1
        do while part='302'
           part0=part
           mk0=mk
           kol0=kol
           asal0=asal
                sele 10
             do while 0 < abs(kol0)
               if .not. round(asal0/abs(kol0),2)=0
                appe blank
                rec_lock()
                repl  part with part0, mate with val(subs(part,4,4)),dat with 1, ;
                kol with 1, zena with round(asal0/abs(kol0),2)
                rec_unlock()
               endif
                kol0=kol0-1
                asal0=asal0-zena
                nasal1=nasal1+zena
                nkol1=nkol1+1
               if .not.eof()
                   skip
               else
                   exit
                endif
             enddo
              sele 6
               if .not.eof()
                   skip
               else
                   exit
                endif
        enddo
       ********  è∞Æ¢•∞™† ß† ∞†¢•≠±≤Æ¢ Æ≤ ®ßµÆ§≠®ø ¥†©´ ® Ø∞∫±≠†≤Æ≤Æ ****
        @  6,10 say str(nkol0,10,2)+str(nkol1,10,2)
        @  7,10 say str(nasal0,10,2)+str(nasal1,10,2)
     ********** è∞∫±™†≠• ≠† ØÆ 1 °∞. §Æ±≤†¢•≠®≤• ™Æ´®∑•±≤†¢ ***********
     open_dpar()
     set filter to part='302'  && .and. 0 < kol
     sum dast to nasal2
     sum kol to  nkol2
     go top
     store 0 to nasal3,nkol3
        do while part='302'
           part0=part
           mk0=mk
           if kol < 0
             ps0='-'
           else
             ps0='+'
           endif
           kol0=abs(kol)
           dast0=abs(dast)
           dat0=val(subs(data,1,2))
                sele 10
             do while 0 < kol0
               if .not. round(dast0/kol0,2)=0
                appe blank
                rec_lock()
                repl part with part0, mate with val(subs(part,4,4)), dat with dat0, zena with round(dast0/kol0,2)
                rec_unlock()
                if ps0='-'
                    repl kol with -1
                    nasal3=nasal3-zena
                    nkol3=nkol3-1
                else
                    repl kol with 1
                    nasal3=nasal3+zena
                    nkol3=nkol3+1
                endif
                rec_unlock()
               endif
                dast0=dast0-zena
                kol0=kol0-1
               if .not.eof()
                   skip
               else
                   exit
                endif
             enddo
              sele 4
               if .not.eof()
                   skip
               else
                   exit
                endif
        enddo
        open_tehno(loc0:=1)
        dele all for zena=0
        podr_0=29
        save all like podr_0 to podred
        podred()

       ********  è∞Æ¢•∞™† ß† ∞†¢•≠±≤Æ¢ Æ≤ ®ßµÆ§≠®ø ¥†©´ ® Ø∞∫±≠†≤Æ≤Æ ****
        @  6,31 say str(nkol2,10,2)+str(nkol3,10,2)
        @  7,31 say str(nasal2,10,2)+str(nasal3,10,2)
     ********** è∞∫±™†≠• ≠† ØÆ 1 Ø∞Æ§†¶°†    ***********
     open_kpap(loc0:=1)
     dele all
     podr_0=28
     save all like podr_0 to podred
     podred()
     open_kpap(loc0:=18)
     open_kpar()
     set filter to part='701'  && .and. 0 < kol
     sum kast to nasal4
     sum kol to  nkol4
     go top
     store 0 to nasal5,nkol5
        do while part='701'
           nom0=nom
           data0=data
           part0=part
           mk0=mk
           if kol < 0
             ps0='-'
           else
             ps0='+'
           endif
           kol0=abs(kol)
           kast0=abs(kast)
           dat0=val(subs(data,1,2))
                sele 9
             do while 0 < kol0
                appe blank
                rec_lock()
                repl nom with nom0,part with part0, mk with mk0,;
                zena with round(kast0/kol0,2), kast with zena, data with data0
                if ps0='-'
                    repl kol with -1
                    nasal5=nasal5-zena
                    nkol5=nkol5-1
                else
                    repl kol with 1
                    nasal5=nasal5+zena
                    nkol5=nkol5+1
                endif
                rec_unlock()
                kast0=kast0-zena
                kol0=kol0-1
               if .not.eof()
                   skip
               else
                   exit
                endif
             enddo
              sele 5
               if .not.eof()
                   skip
               else
                   exit
                endif
        enddo
       ********  è∞Æ¢•∞™† ß† ∞†¢•≠±≤Æ¢ Æ≤ ®ßµÆ§≠®ø ¥†©´ ® Ø∞∫±≠†≤Æ≤Æ ****
        @  6,57 say str(nkol4,10,2)+str(nkol5,10,2)
        @  7,57 say str(nasal4,10,2)+str(nasal5,10,2)
       ********  å†∞™®∞†≠• ≠† ™Æ´®∑•±≤¢† Æ≤ 302 ØÆ Ø∞Æ§†¶°®  **********
    *  open_obap(loc0:=27)
       open_tehn(loc0:=1)
       repl all stok with space(7)
       inde on descend(zena) to zi
       use tehn inde zi
       open_kpap()
       inde on data+nom to tdni
       use kpap inde tdni
       pr1=90
       @ 10,20 say 'è∞Æ∂•≠≤ Æ≤ ±≤-±≤ ≠† ØÆ§†¶°†≤†' get pr1  pict '99.99'
        read
                       if lastkey()=27
                          set dele off
                          return
                       endif
       @ 13,19,21,61 box ram1
       @ 14,20 say '    àáèàëÄHÄ Ç èéÇÖóÖ  ëÖÅÖëíéâHéëí      '
       @ 15,20 say ' KãàÖHí èÄêíàÑÄ     ÖÑ.ñÖHÄ  ëÖÅÖëíéâHéëí'
       @ 16,20 say repl("Õ",41)
       store 0 to mate0
          sele 9
          go top
          sum zena to prod0
          go top
       do while .not. eof()
          dat0=val(subs(data,1,2))
          stok0=part
          kast0=round(kast*(pr1/100),2)
          kas0=0
        @ 12, 5 say 'è†∞≤®§† '+stok0+' åÖëÖñ '+data+'   èêàïéÑ '+str(kast,10,2)+' ëÖÅÖëíéHéëí'+str(kast0,10,2)
          sele 10
          set filter to stok=space(7)
          go top
          count to co0
          set filter to stok=space(7) .and. dat < dat0+1
          go top
                part1='    '
            do while .not. eof()
                if .not. part=part1
                     if zena+kas0  <  kast0
                        rec_lock()
                        repl stok with stok0
                        rec_unlock()
                        kas0=kas0+zena
                        mate0=mate0+zena
                     endif
                endif
               part1=part
               if .not.eof()
                   skip
               else
                   exit
                endif
            enddo
                      if kast0 < kas0   && .or. kas0 <  round(kast0*.2,2)
                        scroll(17,20,20,60,1)
                        @ 20,20 say stok+' '+part+' '+str(zena,11,2)+' '+str(kas0,13,2)
                        inkey(0)
                      endif
          sele 9
               if .not.eof()
                   skip
               else
                   exit
                endif
       enddo
        @ 14, 4 say 'èêéÑÄÜÅà'
        @ 15, 1 say str(prod0,12,2)
        @ 16, 2 say 'ëÖÅÖëíéâHéëí'
        @ 17, 1 say str(mate0,12,2)
        @ 18, 2 say '  èÖóÄãÅÄ   '
        @ 19, 1 say str(prod0-mate0,12,2)
     do zvan
     do zvan
       @ 23+ml0,15 say '              è∞Æ£∞†¨†≤† Ø∞®™´æ∑®                  '
     sele 10
     go top
       @ 14,15 say '          HÖKéHëìåàêÄHÄ  ëÖÅÖëíéâHéëí              '
       do while .not. eof()
         scroll(17,20,20,60,1)
         @ 20,20 say stok+' '+part+' '+str(zena,11,2)+' '+str(dat,2)
                        inkey(0)
             if lastkey()=27
                exit
             endif
         skip
       enddo
  *  sele 10
     inde on stok+part to ti
     use tehn inde ti
     total on part to tehno field kol
     erase zi.ntx
     erase tdni.ntx
     erase ti.ntx

     restore screen
                             return


   ***************** TEHNOLOGICHNA KARTA†  *************** PRO5-1
                           proc tehkar
             set key -2 to
             save screen to ek2
             clea gets
             store 0 to part0
             l0=2
             open_tehno()
             if .not. file("tehn.dbf")
                 copy stru to tehn
             endif
        do while .t.
             ramka()
             tt0=''
             set key -2 to spisk1
             set key -8 to osok
             @  2,29 say 'íÖïHéãéÉàóçÄ KÄêíÄ'
             @  3,28 say '--------------------'
             @ 23+ml0,15 say 'F3-®ß§®∞¢† ∏®¥∫∞ ≠† ≤•µ≠Æ´Æ£.™†∞≤† F9-≠≥´®∞†≠• okol'
             @  5, 8 clea to 20,75
             @  5,18 say 'ÇöÇÖÑÖíÖ éÅÖKí' get sch0
             @  5,38 say 'èÄêíàÑÄ HÄ èêéÑìKñàüíÄ' get part0 pict '9999'
             chet()
             set key -8 to
                 if lastkey()=27
                    set key -2 to
                    set key -3 to
                    set key -8 to
                    tt0='50'
                    l0='1'
                    open_tehno()
                    set filt to
                    set rela to
                    podr_0=29
                    save all like podr_0 to podred
                    podred()
                    restore screen from ek2
                    return
                 endif
                 store sch0 to sch1
                 do stok2
                 pt0=sch0+str(part0,4)
                 @ 23+ml0,15 say '             Ü•´†•≤• ´® Æ≤Ø•∑†≤¢†≠•               '
                 @ 23+ml0,52 prompt 'ÑÄ'
                 @ 23+ml0,55 prompt 'HÖ'
                    menu to l0
             if l0=1
                    l1=1
                 @ 23+ml0,20 say ' Ç®§ ≠† §Æ™≥¨•≠≤†'+space(20)
                 @ 23+ml0,40 prompt 'íÖï.KÄêíÄ'
                 @ 23+ml0,52 prompt 'ÄHÄãàá'
                    menu to l1
                         store 0 to stoi0,kol2,stoi1
                         open_obap(loc0:=36)  && aobi
                         find '&pt0'
                if found()
                         do izrab
                do case
                  case l1=1
                         set marg to 14
                         ? '    íÖïHéãéÉàóHÄ KÄêíÄ HÄ  '+part
                         ?
                         ? ' '+obap->name
                         ? repli('-',46)
                         ? 'èÄêí   HÄàåÖHéÇÄHàÖ   å-KÄ       K-Çé    ëí-ëí'
                         ? repl('-',46)
                  case l1=2
                       if ekpr0=2
                          set marg to 5
                       else
                          set marg to 0
                       endif
                         ? space(26)+'Ä H Ä ã à á   N ' +subs(part,4,4)
                         ?
                         ?
                         ? 'ÇàÑ êÄÅéíÄ : '+obap->name+'  '+obap->dnev
                         ? repl('-',75)
                         ? 'Ä-àá            HÄàåÖHéÇÄHàÖ            å-KÄ     K-Çé    ÖÑ.ñÖçÄ      ëí-ëí'
                         ? repl('-',75)
                         ? '  I. åÄíÖêàÄãà'
                endcase
                         open_obap(loc0:=37)  && aobi
                         open_tehno()
                         set relation to part into obap
                         set filter to stok=pt0
                         go top
                           do while stok=pt0
                            if 0 < kol
                do case
                  case l1=1
                             ? subs(part,4,4)+' '+subs(obap->name,1,17)+' '+obap->mk+' '+str(kol,11,3)+' '+str(kol*zena,8,2)
                  case l1=2
                      do case
                         case val(subs(part,4.4)) < 7999
                             ? subs(part,4,4)+' '+obap->name+' '+obap->mk+' '+str(kol,11,3)+' '+str(zena,10,3)+' '+str(kol*zena,8,2)

                         case 7998 < val(subs(part,4.4)).and. val(subs(part,4.4)) < 8000
                             ? space(61)+repl('-',14)
                             ? space(40)+'  éÅôé  '+space(15)+str(stoi0,12,2)
                             ? space(61)+repl('-',14)
                             ? space(15)+obap->name+space(13)+str(kol*zena,12,2)
                         case 8999 < val(subs(part,4.4)).and. val(subs(part,4.4)) < 9001
                             ? space(36)+'ÇëàóKé åÄíÖêàÄãà '+space(10)+str(stoi0,12,2)
                           ?
                           ? '  II. í ê ì Ñ'+space(28)+obap->mk+' '+str(kol,11,3)+' '+str(zena,10,3)+' '+str(kol*zena,8,2)
                               stoi1=stoi1+kol*zena
                         case 9998 < val(subs(part,4.4)).and. val(subs(part,4.4)) < 10000
                               stoi1=stoi1+kol*zena
                             ? space(15)+obap->name+space(13)+str(kol*zena,12,2)
                       endcase
                endcase
                               kol2=kol2+kol
                               stoi0=stoi0+kol*zena
                            endif
                                 if .not.eof()
                                    skip
                                    loop
                                 else
                                    exit
                                 endif
                           enddo
                do case
                  case l1=1
                         ? space(34)+repl('-',12)
                         ? '          ë≤Æ©≠Æ±≤        '+str(kol2,11,3)+' '+str(stoi0,8,2)
                  case l1=2
                         ? space(36)+'   ÇëàóKé íêìÑ   '+space(10)+str(stoi1,12,2)
                         ? space(61)+repl('-',14)
                         ? space(35)+'éÅôÄ ëíéâHéëí'+space(15)+str(stoi0,12,2)
                endcase
                         ?
                           do pech
                           part0=part0+1
                      loop
                endif
             endif
             @  8, 9 clea to 17,72
             set key -2 to
             open_obap(loc0:=36)  && aobi
             find '&pt0'
             if found()
             @  7, 2 say subs(name,1,35)+'           K-Çé'+str(kkol,7,1)+'      ëí-ëí '+str(ksal,7,0)
         *   kol4=kkol
             kol4=1
             endif
             set filter to
             open_tehno()
             appe blank
             rec_lock()
             repl stok with pt0,part with 'aaaa'
             del()
             rec_unlock()
             set dele off
             set relation to part into obap
             set filter to stok=pt0
             go top
             do while (.not.eof()).or.stok=pt0
                 rec_lock()
                 repl okol with kol*kol4
                 rec_unlock()
                 skip
             enddo
             kast0=0
             stst0=0
             go top
                  declare fiel[5]
                  fiel[1]='mate'
                  fiel[2]='obap->mk'
                  fiel[3]='kol'
                  fiel[4]='zena'
                  fiel[5]='obap->name'
                  declare imem[5]
                  imem[1]='åÄíÖêàÄã'
                  imem[2]='å-KÄ'
                  imem[3]='KéãàóÖëíÇé'
                  imem[4]='ÖÑ.ñÖHÄ'
                  imem[5]='HÄàåÖHéÇÄHàÖ'
                  @  8, 2,17+ml0,77 box ram1
                  dbedit( 9, 3,16+ml0,76,fiel,"pfunk6",' ',imem,'Õ','”')
          enddo
                           return
      ************ POTRBITELSKA FUNKCIA  **********
                function pfunk6
                parameters mode0,fld0
                cur0=fiel[fld0]
         do case
            case mode0 < 4
            *  ?  col()
            *  i0=inkey(0)
               do case
                  case  col()=8
                   mate0=mate
                  case  col()=13 &&
                  if empty(obap->name)
                    if 0 < mate
                      store sch2+str(mate,4) to part1
                      mate0=mate
                      set curs on
                    l0='≠'
     @ 18,2 say '   Hø¨†≤• Ø†∞≤®§† ± ≤Æß® ≠Æ¨•∞ ¶•´†•≤• ´® §† ¢∫¢•§•≤• ≠Æ¢† Ø†∞≤®§† §/≠ ?     '
     @ 18,75 get l0  valid l0='§'.or.l0='≠'
                         chet()
     @ 18, 2 say space(77)
                                     if l0='§'
     @ 22,15 clea to 23,65
     @ 20,15 say '      Ç∫¢•§•≤• ≠†®¨•≠Æ¢†≠®•≤Æ ≠† †≠†´. Ø†∞≤®§†       '
     @ 22,21 say 'å-KÄ      H†®¨•≠Æ¢†≠®• ≠† Ø†∞≤®§†≤†          '
     @ 23+ml0,22 get mk0
     @ 23+ml0,26 get name0
     chet()
     @ 18,2 clea to 21,77
     set curs off
     open_obap(loc0:=38)
     set filter to
     set rela to
     appe blank
     rec_lock()
     repl part with part1,mk with mk0,name with name0
     rec_unlock()
     sele 10
     set relation to part into obap
                                      endif
                    endif
                     keyboard chr(19)
                  else
                     keyboard chr(4)
                  endif
                  case  col()=18
                     keyboard chr(13)
                  case  col()=41
                     keyboard chr(19)
               endcase
     set curs off
                            rec_lock()
                            if obap->mk='°∞'
                               repl okol with round(kol*kol4,0)
                             else
                                repl okol with round(kol*kol4,3)
                            endif
                            rec_unlock()
                            re0=recno()
                            mate0=mate
                            set filter to mate=mate0
                            sum okol to kol3
                            set filter to stok=pt0
                            go re0
               @ 18, 2 say 'áÄ 1-ñÄ ëí-ëí '+str(kast0,12,2)+space(27)+'HÄ éÅñÄ ëí-ëí '+str(stst0,9,0)
               @ 20,17 say 'éëíÄíöK '+subs(obap->part,1,3)+'  K-Çé '+str(obap->kkol-kol3,9,3)+'   ëí-ëí '+str(round((obap->kkol-kol3)*zena,2),10,2)
               @ 21,14,24,66 box ram1
               @ 22,15 clea to 23,65
               @ 22,15 say ' F4 Ø∞•µ¢∫∞´ø ≤•µ. ™†∞≤† Æ≤ •§®≠ Æ°•™≤ ¢ §∞≥£     '
               @ 23+ml0,15 say ' ENTER Ø∞Æ¨ø≠† F3-®ß§®∞¢† ∏®¥∫∞ F9-ÑÆ°†¢.≠Æ¢ ∏®¥∫∞'
               return 1
            case lastkey()=-2
              open_obap(loc0:=39)  && aobi
              set rela to
              set filter to part=sch2
              store sch0 to sch1
              store sch2 to sch0
              set cursor on
              spisk()
              @ 18,2 say space(77)
              set cursor off
              set dele off
              open_obap(loc0:=40)  && aobi
              open_tehno()
              set relation to part into obap
              set filter to stok=pt0
              store sch1  to sch0
              appe blank
              rec_lock()
              repl stok with pt0,mate with part0,part with 'aaaa'
              del()
              rec_unlock()
            case lastkey()=-3
               set filter to
               set rela to
             part2=0
             set curs on
             @ 19,18 say 'ÇöÇÖÑÖíÖ éÅÖKí' get sch1
             @ 19,38 say 'èÄêíàÑÄ HÄ èêéÑìKñàüíÄ' get part2 pict '9999'
             chet()
             set curs off
               sele 10
               copy stru to tehn
               open_tehn(loc0:=1)
               appe from tehno for  stok=sch0+str(part0,4)
               do stok2
               rec_lock()
               repl all stok with sch1+str(part2,4), part with sch2+subs(part,4,4)
               rec_unlock()
               open_tehn()
               podr_0=29
               save all like podr_0 to podred
               podred()
               open_tehno()
               appe from tehn
               open_obap(loc0:=41)  && aobi
               open_tehno()
               set relation to part into obap
               set filter to stok=pt0
            case lastkey()=-4
                  save screen
                  re0=recno()
                  set filter to mate=mate0
                  declare fiel[3]
                  fiel[1]='subs(stok,4,4)'
                  fiel[2]='mate'
                  fiel[3]='kol'
                  declare imem[3]
                  imem[1]='èêéÑìKí'
                  imem[2]='å-àÄã'
                  imem[3]='KéãàóÖëíÇé'
                  @  8,41,17+ml0,77 box ram1
                  @  9,42 clea to 16+ml0,76
                  dbedit( 9,42,16+ml0,76,fiel,"",' ',imem,'Õ','”')
                  set filter to stok=pt0
                  go re0
                 restore screen
            case lastkey()=27
                   restore screen from ek2
                   return 0
            case lastkey()=13
                  reca()
                  set cursor on
                  @ row(),col() get &cur0
                  @ 23+ml0,15 say '          Ç∫¢•§•≤• ¶•´†≠®≤• Ø∞Æ¨•≠®               '
                  chet()
                           rec_lock()
                           repl stok with pt0,part with sch2+str(mate,4)
                           if obap->mk='°∞'
                              repl okol with round(kol*kol4,0)
                           else
                              repl okol with round(kol*kol4,3)
                           endif

                           if zena=0
                              repl zena with obap->zena
                           endif
                           rec_unlock()
                        if .not.tehno->kol=0
                           reca()
                        else
                            del()
                        endif
                        mate0=mate
                            re0=recno()
                            go top
                            kast0=0
                            stst0=0
                            do while stok=pt0
                               kast0=kast0+round(zena*kol,2)
                               stst0=round(kol4*kast0,2)
                               skip
                            enddo
                            set filter to mate=mate0
                            sum okol to kol3
                            set filter to stok=pt0
                            go re0
                  keyboard chr(4)
                  set cursor off
                  return 1
            case lastkey()=-8
                  set dele off
                  appe blank
                  rec_lock()
                  repl stok with pt0,part with 'aaaa'
                  del()
                  rec_unlock()
                  keyboard chr(1)
            otherwise
                  set dele off
                  set filter to
                  podr_0=29
                  save all like podr_0 to podred
                  podred()
                  set cursor on
                  set cursor off
                  open_obap(loc0:=42)  && aobi
                  open_tehno()
                  set relation to part into obap
                  set filter to stok=pt0
                  return 1
            endcase
                return 1

  ********* Razpredelq neprekite razhodi po obekt *********** sav2.prn-1
                          proc  nepr
           save screen
           clear gets
           @ 11,21,15,59 box ram1
           @ 12,22 clea to 14,58
          pt1=1
          pt2=9999
          v1=100
   @ 12,27 say 'èêéñÖÑìêÄíÄ êÄáèêÖÑÖãÄ ê-Ñà'
   @ 13,29 say 'è∞Æ∂•≠≤† £∞≥Ø†≤† : ' get v1  pict  '999'
   @ 14,22 say 'é≤ Ø†∞≤®§† :' get pt1  pict '9999'
   @ 14,42 say 'ÑÆ Ø†∞≤®§† :' get pt2  pict '9999'
                     chet()
                        if lastkey()=27 .or. v1=0
                            set key -36 to  nepr
                            restore screen
                            @  3,42 get papk0  pict '999'
                            chet()
                            return
                        endif
               restore screen
               @ 18,22 say 'è∞Æ£∞†¨†≤† ∞†°Æ≤®, ¨Æ´ø ØÆ∑†™†©≤• !'
              store 0 to ksal0,ksal1,ksal2, ksal3
              part0=str(pt1,4)
              open_obap(loc0:=59)  && aobi
              find '611   1'
              ksal0=round(ksal*v1/100,j1)
              set filter to substr(part,1,3)='611'
              go top
              do while  substr(part,1,3)='611'
          if   val(substr(part,4,4))<pt1 .or. val(substr(part,4,4))>pt2
             if .not. eof()
                skip
                loop
             else
                exit
             endif
          endif
                   ksal1=ksal1+ksal
                 if .not.eof()
                     skip
                 else
                     exit
                 endif
              enddo
                ksal1=round(ksal0/ksal1,5)
               go top
         do while substr(part,1,3)='611'
          if   val(substr(part,4,4))<pt1 .or. val(substr(part,4,4))>pt2
             if .not. eof()
                skip
                loop
             else
                 exit
             endif
          endif
             part0=part
             ksal2=ksal
   if  round (ksal2*ksal1,j1) > 0
      open_dpar(loc0:=31)
      appe blank
      rec_lock()
      repl  nom with str(nom0,4), part with part0,mk with '´¢',;
      dast with round (ksal2*ksal1,j1), data with data0
      rec_unlock()
      ksal3=ksal3+round (ksal2*ksal1,j1)
   endif
               sele 6
                 if .not.eof()
                     skip
                 else
                     exit
                 endif
         enddo
    if ksal0 >  0
      sele 4
      rec_lock()
      repl  nom with str(nom0,4), part with part0,mk with '´¢',;
      dast with round (dast+ksal0-ksal3,j1), data with data0
      rec_unlock()
       open_kpar(loc0:=31)
       appe blank
      rec_lock()
       repl  nom with str(nom0,4), part with '611   1', mk with '´¢',;
       kast with ksal0, data with data0
      rec_unlock()
    open_dobo(loc0:=37)
    appe blank
      rec_lock()
    repl nom with str(nom0,4), sch with '611', dsto with ksal0, data with data0
      rec_unlock()
    open_kobo(loc0:=35)
    appe blank
      rec_lock()
    repl nom with str(nom0,4), sch with '611', ksto with ksal0,data with data0
      rec_unlock()
      @  7, 6 say '611'
      @  7,24 say  ksal0 pict "#########.##"
      @  8,43 say '611'
      @  8,63 say  ksal0 pict "#########.##"
      * unlock
      open_arhi(loc0:=45)
      appe blank
      rec_lock()
      repl nom with str(nom0,4), papk with str(papk0,3),dok with '∞†ßØ∞. ≠† ≠•Ø∞•™®≤• ∞-§® ØÆ Ø-§® ',;
      data with data0, reg with dtoc(date())
      rec_unlock()
            zvan()
            @ 23+ml0,15 say '                è∞Æ£∞†¨†≤† Ø∞®™´æ∑®                '
                       i0=inkey(0)
            @ 23+ml0,15 say space(51)
           nom0=nom0+1
    endif
                   set key -26 to nepr
   @  3,19 say str(nom0,5)
   @  6, 0 clea to 17,37
   @  6,43 clea to 17,75
   @  3,42 get papk0  pict '999'
        chet()
                          return


         ********* SABIRA OBOROTITE SAMO ZA MESECA† ******** pro0-1
                   proc sbor
                   if sch0='455'.or.sch0='421'
                     @ 0,15 say 'Ñ-≤ '+str(dsbor0,10,2)+'    K-≤ '+str(ksbor0,10,2)+'   ê-™† '+str(ksbor0-dsbor0,10,2)
                  *  @ 0,17 say 'Ñ-≤ '+str(dsbor0,10,2)+'    K-≤ '+str(ksbor0,10,2)+'   ê-™† '+str(ksbor0-dsbor0,10,2)
                   endif
                   return
  ******************  Izdirwa gelaniq bankowa smetka ********pro2-1 sav3-1
                              proc bank
                 save screen
                 open_info(loc0:=11)
                 set filter to dn=dn1
                 go top
                 @ 23+ml0,15 say space(51)
                 declare fiel[2]
                 fiel[1]='bf'
                 fiel[2]='ba'
                 dbedit( 23,15,23+ml0,65,fiel,,"","","","")
                     bk00=substr(bf,1,8)
                     bs00=substr(bf,10,22)
                     gr00=gr
                     ba00=ba
                     gb00=gb
                     lize0=lize
                     sas0=sas

                    restore screen
                              return


       ***************  ë≤†∞≤®∞† Ø∞Æ∂•§≥∞† ß† °†∞™Æ§ ****************   SAV1-2  SAV2-2
                          proc barcod
              if sc13='§'
                  if barc1='≠'
                     barc1='§'
                     clea gets
                  else
                     barc1='≠'
                     clea gets
                  endif
              endif
                          return
       ***************  ë≤†∞≤®∞† Ø∞Æ∂•§≥∞† ß† °†∞™Æ§ **************** SAV2-1
                          proc sav33
                          save screen to ekr3
                          store sch0 to sch_0
                          store nom1 to nom_1
                          clea gets
                          sav3()
                          tt0='20'
                          restore screen from ekr3
                          store sch_0 to sch0
                          store nom_1 to nom1
                          konpart()
                          restore screen from ekr3
                          return

      ****************  ã®≠®ø ß† Ø∞Æ∂•± *****************
                         func line
            * store 0 to line0,line1,line2, line9, sec0  && da ne se wkluchwa towaw shablon


             if line0=-1
                @ 23+ml0,15 say space(51)
                return
             endif
             if line0=0
                @ 23+ml0,15 say space(51)
             endif

             @ 23+ml0,15 say str(line0,4)+'%'
             line9=line9+1
              *  @ 21+ml0,37 say str(line1,5)
              *  @ 21+ml0,44 say str(line9,5)

         do case
            case round(line1/20* 1,0) < line9 .and. line0 =  0
                 sec0=round(seconds(),0)
                 line0=5
            case round(line1/20* 2,0) < line9 .and. line0 =  5
                 line0=10
            case round(line1/20* 3,0) < line9 .and. line0 = 10
                 line0=15
            case round(line1/20* 4,0) < line9 .and. line0 = 15
                 line0=20
            case round(line1/20* 5,0) < line9 .and. line0 = 20
                 line0=25
            case round(line1/20* 6,0) < line9 .and. line0 = 25
                 line0=30
            case round(line1/20* 7,0) < line9 .and. line0 = 30
                 line0=35
            case round(line1/20* 8,0) < line9 .and. line0 = 35
                 line0=40
            case round(line1/20* 9,0) < line9 .and. line0 = 40
                 line0=45
            case round(line1/20*10,0) < line9 .and. line0 = 45
                 line0=50
            case round(line1/20*11,0) < line9 .and. line0 = 50
                 line0=55
            case round(line1/20*12,0) < line9 .and. line0 = 55
                 line0=60
            case round(line1/20*13,0) < line9 .and. line0 = 60
                 line0=65
            case round(line1/20*14,0) < line9 .and. line0 = 65
                 line0=70
            case round(line1/20*15,0) < line9 .and. line0 = 70
                 line0=75
            case round(line1/20*16,0) < line9 .and. line0 = 75
                 line0=80
            case round(line1/20*17,0) < line9 .and. line0 = 80
                 line0=85
            case round(line1/20*18,0) < line9 .and. line0 = 85
                 line0=90
            case round(line1/20*19,0) < line9 .and. line0 = 90
                 line0=95
            case round(line1/20*20,0) < line9 .and. line0 = 95
                line0=100
            case round(line1/20*20+5,0) < line9 .and. line0 = 100
                  @ 23+ml0,21 say repl('€',45)
                  sek1=round(seconds(),0)-sec0
                  if 0 < sek1
                           inkey(3)
                    if 0 < val(subs(str(round(sek1/60,2),5,2),1,2))
                        @ 23+ml0,36 say subs(str(round(sek1/60,2),5,2),1,2)+'min. '+;
                         str(sek1-val(subs(str(round(sek1/60,2),5,2),1,2))*60,2)+'sec.'
                    else
                        @ 23+ml0,40 say str(sek1,2)+'sec.'
                    endif
                           inkey(1)
                     @ 23+ml0,15 say space(51)
                  endif
                  line0=-1
            endcase

             if .not. line0=-1
                 @ 23+ml0,21 say repl('€',45*line0/100)
             endif
      *    store 0 to line0,line1,line2, line9, sec0
      *    count for sch='50' to line1
      *    count for sch='50' to line2
      *    line1=line1+line2 ot  1 do 8
      *    go top
                        return
