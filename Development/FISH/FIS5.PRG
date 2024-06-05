   * FIS5.PRG  dospr nach pechzan pfunk rekapi setcons srok harakt zvan zanvi
   * errorobr1
   *  @  0,15  say 'bbbb' ; inkey(0) //kkk
                      v2=1
                      @ 3,23,20,56 box ram1
                      @ 4,24 clea to 19,55
                      @ 4,29 say 'ë  è   ê   Ä   Ç   K  à'
                      @ 5,28 say '-------------------------'
                      @  6,27 prompt '1. å•±•∑•≠     '
                      @  8,27 prompt '2. ÉÆ§®∏•≠     '
                      @ 10,27 prompt '3. è´†≤•¶≠®    '
                      @ 12,27 prompt '4. è∞Æ¢•∞™† ®≠¥. ß† §®±™•≤®'
                      @ 14,27 prompt '5. ëØ∞†¢™® êìëé'
                      @ 16,27 prompt '6. ë¨†≠† ≠† ∞†°. §®∞•™≤Æ∞®ø'
                      @ 18,27 prompt '7. á†±•∑™®'
                      save screen
                          menu to v2
                       if lastkey()=27
                              return
                       endif
     do case
         case v2=1.or.v2=2
     sele 3

     if .not. file("&disc_1\fish\nosi.ntx")
        use &disc_1\fish\nome
        inde on sch to &disc_1\fish\nosi
     endif
        use &disc_1\fish\nome inde &disc_1\fish\nosi
     ramka()
     data1='01/'+vek0
     data2='12/'+vek0
     sch0=0
     nom0=0
   do while .t.
     fi0=' '
     @  9, 2 clea to 21,78
     if v2=1
     @ 2,29 say 'íÖKìôÄ ëèêÄÇKÄ Ç åÖëÖñÄ'
     else
     @ 2,28 say 'íÖKìôÄ ëèêÄÇKÄ Ç ÉéÑàHÄíÄ'
     endif
     @ 3,27 say '----------------------------'
     set key -2 to nomenkl
     @ 23,15 say '          F3 - ±Ø®±∫™ ≠† ≠Æ¨•≠™´†≤≥∞®≤•           '
     @ 6,16 say 'ë†¨Æ ß† ≠Æ¨•≠™´†≤≥∞† ' get sch0 pict "999"
     @ 8,15 say 'ë†¨Æ ß† ≠Æ¨•≠™. ≠Æ¨•∞' get nom0 pict "999999"
     @ 6,46 say 'é≤ §†≤† ' get data1
     @ 8,46 say 'ÑÆ §†≤† ' get data2
     read
     set key -2 to
                       if lastkey()=27
                              return
                       endif
     set cent on
     data_3=ctod('01'+subs(dtoc(ctod('15/'+data1)-18),3,8))
     data_4=ctod('01'+subs(dtoc(ctod('15/'+data2)+18),3,8))
              sele 1
              use spis inde nomi
              sele 3
              use &disc_1\fish\nome inde &disc_1\fish\nosi
                   if v2=1
                      sele 2
                      use mese inde dnsi,sdni
                   else
                       sele 4
                       use godn inde gdnsi,gsdni
                   endif
             set relation to sch into nome, nom into spis
     do case
         case sch0 > 0 .and. nom0 > 0
         set filter to (data_3 < ctod('01/'+subs(data,1,2)+'/'+vek).and.;
             ctod('01/'+subs(data,1,2)+'/'+vek) < data_4).and.;
             (str(sch0,3)=sch.and.str(nom0,6)=nom)
         case sch0 > 0 .and. nom0=0
         set filter to (data_3 < ctod('01/'+subs(data,1,2)+'/'+vek).and.;
             ctod('01/'+subs(data,1,2)+'/'+vek) < data_4).and.;
             (str(sch0,3)=sch .and.nom0=0)
         case nom0 > 0 .and. sch0=0
         set filter to (data_3 < ctod('01/'+subs(data,1,2)+'/'+vek).and.;
             ctod('01/'+subs(data,1,2)+'/'+vek) < data_4).and.;
             (str(nom0,6)=nom .and. sch0=0)
         other
         set filter to (data_3 < ctod('01/'+subs(data,1,2)+'/'+vek).and.;
             ctod('01/'+subs(data,1,2)+'/'+vek) < data_4)
     endcase
             go top
    if eof()
        loop
    endif
                  declare fiel[9]
                  fiel[1]='nom'
                  fiel[2]='sch'
                  fiel[3]='stoi'
                  fiel[4]='suma'
                  fiel[5]='dni'
                  fiel[6]='data'
     if  sch0 > 0
                  fiel[7]='spis->name'
                  fiel[8]='spis->egn'
                  fiel[9]='nome->hara'
      else
                  fiel[7]='nome->hara'
                  fiel[8]='spis->name'
      endif

                  declare imem[9]
                  imem[1]='Héå. N'
                  imem[2]='òàîöê'
                  imem[3]='íÖK. ëí-ëí'
                  imem[4]='êÖá. ëí-ëí'
                  imem[5]='ÇàÑ'
                  imem[6]='åÖëÖñ'
     if  sch0 > 0
                  imem[7]='àåÖ èêÖáàåÖ à îÄåàãàü'
                  imem[8]='  E  É  H'
                  imem[9]='ïÄêÄKíÖêàëíàKÄ'
      else
                  imem[7]='ïÄêÄKíÖêàëíàKÄ'
                  imem[8]='àåÖ èêÖáàåÖ à îÄåàãàü'
      endif
                  imem[9]='  E  É  H'
             *    set key -3 to cheti
                  @  9, 2,21,78 box ram1
                  dbedit(10, 3,20,77,fiel,"pfunk4",' ',imem,'Õ','”')
             *    set key -3 to
     set cent off
   enddo
         case v2=3
              ramka()
              @  9,37 say 'ÇHàåÄHàÖ !'   color 'R+/B'
              @ 11,19 say 'áÄÑöãÜàíÖãHé Ö èêÖÑà èéãáìÇÄHÖíé HÄ íéÇÄ åÖHû'
              @ 13,21 say 'ÑÄ ëÄ éíèÖóÄíÄHà îàòéÇÖíÖ áÄ áÄèãÄíà !'
              dvzem() ; store 0 to  b_11,b_30,b_50
      !del s*.prn
      plateg()  && fis8
        if lastkey()=27
             return
        endif
   do while .t.
      ramka()
              @ 2,29 say 'è ã A í Ö Ü H à'
              @ 3,28 say '------------------'
     @ 6,23 say 'Ç∫¢•§•≤• ≠Æ¨•≠™´†≤≥∞≠®ø ≠Æ¨•∞ ' get sch0 pict "999"
     read
                       if lastkey()=27.or.sch0=0
                              exit
                       endif

          sch1=str(sch0,3)
          sele 3
          use &disc_1\fish\nome inde &disc_1\fish\nosi
          find "&sch1"
                 if  .not. found ()
                     @ 23,25 say 'Hø¨† ≠Æ¨•≠™´†≤≥∞•≠ ≠Æ¨•∞: ' +sch1+' !'
                     inkey(3)
                     loop
                 endif

            do case
               case str(sch0,3)='603'
                   store x603  to kast0, sum00
               case str(sch0,3)='610'
                   store x610  to kast0, sum00
               case str(sch0,3)='700'
                   store x700  to kast0, sum00
            endcase
                       if lastkey()=27.or.sch0=0
                              exit
                       endif
      ekpr0=1
      izrab()
      store str(sch0) to sch1
      l6='y'
      platpi()  && fis7
      ll10='y'
      b3=2
      pech()
  ****************  K∞†© ≠† ±≤†∞Æ Ø´†≤•¶≠Æ ***************
   enddo
         case v2=4

   v2=1
   do while .t.
     ramka()

           x1='&disc_0\god&dt0\doo\&go0\OBR_&vek0\'
           ! echo &x1| &disc_1\exe\clip.exe

     @ 2,27 say 'èêéÇÖêKÄ àHî. áÄ ÑàëKÖíà'
     @ 3,26 say '--------------------------'
                       if lastkey()=27
                              return
                       endif

         set key  -2 to errorobr1
         @  8,27 prompt '1. é°∞. 1  é°∞. 6      '
         @ 10,27 prompt '2. ó´. 62   utd2003.txt'
         @ 12,27 prompt '3. è∞Æ¢•∞™† ÖÉH ® ™®∞®´®∂†'
         @ 14,27 prompt '4. DEKL1.exe'
         @ 16,23 say 'd:\Program Files\HÄè\Ñ•™´†∞†∂®®\é°∞1_6\'
         @ 17,17 say 'Copy to Clipboard -> '+ X1
         @ 23,17 say 'F3 - É∞•∏™® '
                      save screen
                          menu to v2
                       if lastkey()=27
                            set key  -2 to ; return
                       endif
     do case
         case v2=1
              disc0='&disc_0\god&dt0\doo\&go0\obr_&vek0\&go0'+'01.txt'
          if file('&disc0')      //
               ! notepad.exe &disc0
          else
                @ 23,15 say space(14)+'Hø¨† ®ß∞†°Æ≤•≠ éÅê 1.'+space(15)
                 inkey(4)
          endif
              disc0='&disc_0\god&dt0\doo\&go0\obr_&vek0\&go0'+'06.txt'
          if file('&disc0')
               ! notepad.exe &disc0
          else
                @ 23,15 say space(14)+'Hø¨† ®ß∞†°Æ≤•≠ éÅê 6.'+space(15)
                 inkey(4)
          endif
         case v2=2
              disc0='&disc_0\god&dt0\doo\&go0\tr\&go0'+'62.txt'

          if file('&disc0')
              !  notepad.exe &disc0
          else
                @ 23,15 say space(14)+'Hø¨† ®ß∞†°Æ≤•≠ ó´. 62'+space(15)
                 inkey(4)
          endif
         case v2=3
     izrab()
     set marg to 4
     sele 1
     use spis
     W=space(10)
     ? 'íÄÅ. N    E É H    à  å  Ö                 è ê à ó à H Ä'

     do while .not. eof()
          W1=0
          W = egn
          fegn("egn")
          for I := 1 TO len (alltrim (family))
              V1 := substr (family, I, 1)
              if (127 < asc (V1)) .and. (asc (V1) < 192) .or. (asc (V1) = 32)
              else
                  ?  nom+' '+egn+' '+subs(family,1,15)+' É∞•∏≠† ¥†¨®´®ø ≠† ´®∂•≤Æ'
              endif
          next
          for I := 1 TO len (alltrim (inic))
              V1 := substr (inic, I, 1)
              if (127 < asc (V1)) .and. (asc (V1) < 192) .or. (asc (V1) = 32)
              else
                  ?  nom+' '+egn+' '+subs(family,1,15)+' É∞•∏≠® ®≠®∂®†´® ≠† ´®∂•≤Æ'
              endif
          next
          for I := 1 TO len (alltrim (obl))
              V1 := substr (obl, I, 1)
              if (127 < asc (V1)) .and. (asc (V1) < 192) .or. (asc (V1) = 32) .or. (asc (V1) = 46)
              else
                  ?  nom+' '+egn+' '+subs(family,1,15)+' É∞•∏≠† Æ°´†±≤ ≠† ´®∂•≤Æ'
              endif
          next
          for I := 1 TO len (alltrim (nasm))
              V1 := substr (nasm, I, 1)
              if (127 < asc (V1)) .and. (asc (V1) < 192) .or. (asc (V1) = 32) .or. (asc (V1) = 46)
              else
                  ?  nom+' '+egn+' '+subs(family,1,15)+' É∞•∏≠Æ ≠†±•´ ¨ø±≤Æ ≠† ´®∂•≤Æ'
              endif
          next
          for I := 1 TO len (alltrim (adr))
              V1 := substr (adr, I, 1)
              if (127 < asc (V1)) .and. (asc (V1) < 192) .or. (asc (V1) = 32) .or. (44 < asc (V1)) .and. (asc (V1) < 58)
              else
                  ?  nom+' '+egn+' '+subs(family,1,15)+' É∞•∏•≠ †§∞•± ≠† ´®∂•≤Æ'
              endif
          next
          skip
     enddo
     pech()
                       if lastkey()=27
                              return
                       endif
         case v2=4
            ! cmd /c start &disc_1\lnk\obr1.lnk
     endcase
   enddo


         case v2=5
     v3=3
     ramka()
     @ 2,32 say 'ëèêÄÇKà áÄ êìëé'
     @ 3,31 say '-----------------'
        @  8,29 prompt '1. àßØ´†≤•≠® ¢∫ß≠†£∞†¶§•≠®ø'
        @ 10,29 prompt '2. è∞•§Æ±≤†¢•≠® §®±™•≤®    '
        @ 12,29 prompt '3. àßµÆ§    '
                      save screen
                          menu to v3
                       if lastkey()=27.or.v3=5
                              return
                       endif
     do case
        case v3=1
         ramka()
       * do messec
       *   data2='01/'+subs(data0,4,2)
       *   store date2 to data_1,data_2
         do while .t.
           set cent on
           ramka()
           @ 2,28 say 'àáèãÄíÖHà ÇöáHÄÉêÄÜÑÖHàü'
           @ 3,27 say '--------------------------'
        *          @  4,28 say 'áÄ èêÖàéÑÄ éí                 Ñé'
        *          @  4,20 get data_1
        *          @  4,50 get data_2


                   @  6,28 prompt '1. Ñéé III-≤† ™†≤•£Æ∞®ø'
                   @  8,28 prompt '2. Ñéé II-∞†  ™†≤•£Æ∞®ø'
                   @ 10,28 prompt '3. Ñéé I-¢†   ™†≤•£Æ∞®ø'
                   @ 12,28 prompt '4. Háéä                '
                   @ 14,28 prompt '5. Ñáèé  ÑÆØ. Ñéé      '
                   @ 16,28 prompt '6. èKÅ                 '
                                menu to l1
                             if lastkey()=27
                                    mego(meg0:=-5)
                                    set cent off
                                    return
                             endif
                          red2='íêÖíÄ'
                  set cent off
                  do case
                     case l1=1
                          red1=' Ñéé'
                          red2='íêÖíÄ'
                     case l1=2
                          red1=' Ñéé'
                          red2='ÇíéêÄ'
                     case l1=3
                          red1=' Ñéé'
                          red2='èöêÇÄ'
                     case l1=4
                          red1='HáéK'
                     case l1=5
                          red1='Ñáèé'
                     case l1=6
                          red1='èKÅ'
                  endcase
             izrab()
             set marg to 3
           ? space(34)+' ë è ê Ä Ç K Ä'
           ? space(26)+'ß† ®ßØ´†≤•≠®≤• ¢∫ß≠†£∞†¶§•≠®ø ≠† ∞†°Æ≤≠®∂®≤• ® ±´≥¶®≤•´®≤•'
           ? space(26)+'ß† ¢∞•¨•≤Æ Æ≤ 01 '+ltrim(ms0)+' '+vek0+' £Æ§. §Æ 31 §•™•¨¢∞® '+vek0+' £Æ§.'
           ? space(26)+'Ø∞® ≥±´Æ¢®ø≤† ≠† '+red2+' ™†≤•£Æ∞®ø ≤∞≥§ ß† '+red1
           ? repli('-',108)
           ? '         Å∞≥≤•≠         Ä¢†≠±Æ¢® Ø´†π†≠®ø                               íêìÑéÇà ÇöáHÄÉêÄÜÑÖHàü'
           ? 'å•±•∂     ¥Æ≠§  ë≥¨† Ñ†≤†  Ñ∫´¶. Ç≠•±. Ñ≤†≤†         Ñ†≤†        Ñ∫´¶®¨®  Æ±®£.      Ç≠•±•≠®   Æ±®£.  Ñ†≤†'
           ? '  ®      ∞†°Æ≤.       ≠†   Æ±®£. Æ±®£.  ≠†    ë≥¨†    ≠†         ¢≠Æ±™® ß† ±/™†      ¢≠±Æ™® ß† ±/™†    ≠† '
           ? '£Æ§.     ß†Ø´†≤      ®ßØ´. ¢≠Æ±. ¢≠Æ±. ®ßØ´.         ®ßØ´.       ∞-•´     ∞-≠®™      ∞-•´     ∞-≠®™   ¢≠†±.'
           ? repli('-',108)
           data2='01/'+subs(data0,4,2)
           store data2 to data_1,data_2
           fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
           do while .t.
                  br0=1
                   mego(meg0:=-5)
                   set order to 2
                   sdni0='  1'+vek0+data2
                   find "&sdni0"
             dvzem() ; store 0 to  b_11,b_30,b_50

             set cons off
                  do case
                     case l1=1
                          red0=str(b_11-b_11t+b_13+b_26+b_40+b_41+b_42+b_42t,9,j1)+' '+str(b_14,9,j1)
                     case l1=2
                          red0=str(b_15+b_40+b_41+b_42+b_42t,9,j1)+' '+str(b_16,9,j1)
                     case l1=3
                     case l1=4
                          red0=str(b_51,9,j1)+' '+str(b_52,9,j1)
                     case l1=5
                          red0=str(b_31+b_33+b_34,9,j1)+' '+str(b_32,9,j1)
                     case l1=6
                   *      red0=str(b_70,9,j1)+' '+str(b_71,9,j1)
                  endcase
                     if 0 < b81
                        red0=red0+' '+red0+' '+subs(str(b81,10,2),6,2)+'/'+subs(str(b81,10,2),9,2)+'/'+subs(vek0,3,2)
                     endif
                     if 0 < b_10
                       ? data2+str(b_10,10,2)+space(25)+str(b_99,10,2)+' '+subs(str(b82,10,2),6,2)+'/'+subs(str(b82,10,2),9,2)+'/'+subs(vek0,3,2)      +' '+red0
                     endif
                  do case
                     case data2='01/'+subs(data2,4,2)
                          store '02/'+subs(data2,4,2) to data2,data_1,data_2
                          fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                     case data2='02/'+subs(data2,4,2)
                          store '03/'+subs(data2,4,2) to data2,data_1,data_2
                          fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                     case data2='03/'+subs(data2,4,2)
                          store '04/'+subs(data2,4,2) to data2,data_1,data_2
                          fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                     case data2='04/'+subs(data2,4,2)
                          store '05/'+subs(data2,4,2) to data2,data_1,data_2
                          fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                     case data2='05/'+subs(data2,4,2)
                          store '06/'+subs(data2,4,2) to data2,data_1,data_2
                          fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                     case data2='06/'+subs(data2,4,2)
                          store '07/'+subs(data2,4,2) to data2,data_1,data_2
                          fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                     case data2='07/'+subs(data2,4,2)
                          store '08/'+subs(data2,4,2) to data2,data_1,data_2
                          fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                     case data2='08/'+subs(data2,4,2)
                          store '09/'+subs(data2,4,2) to data2,data_1,data_2
                          fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                     case data2='09/'+subs(data2,4,2)
                          store '10/'+subs(data2,4,2) to data2,data_1,data_2
                          fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                     case data2='10/'+subs(data2,4,2)
                          store '11/'+subs(data2,4,2) to data2,data_1,data_2
                          fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                     case data2='11/'+subs(data2,4,2)
                          store '12/'+subs(data2,4,2) to data2,data_1,data_2
                          fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                     case data2='12/'+subs(data2,4,2)
                            set cons off
                            exit
                  endcase
           enddo
           set cons off
           ?
           ?
           ?
           ?
           ?
           ? space(10)+'Éã. ëóÖíéÇéÑàíÖã:...............              êöKéÇéÑàíÖã:.................'
           ?
             pech()
             mego(meg0:=-5)
         enddo
        case v3=2
         do ramka
           @ 2,27 say 'èêÖÑéëíÄÇÖHà ÑàëKÖíà '
           @ 3,26 say '-----------------------'
         izrab()
                             if lastkey()=27
                                    return
                             endif
         set marg to 3
       ? space(6)+' ëØ∞†¢™† ß† Ø∞•§±≤†¢•≠®≤• §†≠≠® ß† Ñéé, ±∫£´†±≠Æ'
       ? space(4)+'à≠±≤∞≥™∂®ø N 1 Æ≤ 1996 £. ® à≠±≤∞≥™∂®ø N 1 Æ≤ 2000 £.'
       ? space(4)+'Héà Æ≤ Æ±®£≥∞®≤•´ø '+ltrim(fir)
       ? space(4)+'ÅìãëíÄí : '+trim(buls)+' ß† '+vek0+' £Æ§.'
       ?
       ?

       ? repli('-',69)
       ? '         é±®£≥∞®≤•´•≠   é±®£. §-§       Ñ†≤† ≠†       Ñ†≤† ≠† Ø∞•§-   '
       ? 'å•±•∂       §ÆµÆ§       ØÆ Ø∞®§∞≥¶.    ®ßØ´†π†≠•       ±≤†¢ø≠• ≠†     '
       ? '                          Ø®±¨†        ≠† ß†Ø´†≤®    §†≠≠®≤• ¢ êì"ëé" '
       ? repli('-',69)
       store data0 to data_1,data_2
       data2='01/'+subs(data0,4,2)
       data1='ø≠≥†∞®   '
       store data2 to data_1,data_2
       fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
       do while .t.
       * store 0 to dopd0,doov0,zovv0,pkbv0,dopv0
         mego(meg0:=-5)
               set order to 2
               sdni0='  1'+vek0+data2
               find "&sdni0"
               if .not.found()
                  exit
               endif
         dvzem() ; store 0 to  b_11,b_30,b_50

         set cons off

                 if 0 < b92
                   ? data1+str(b92,10,2)+'      '+str(b92,10,2)+'      '+subs(str(b82,10,2),6,2)+'/'+subs(str(b82,10,2),9,2)+'/'+subs(vek0,3,2)+'       '+subs(str(b80,10,2),6,2)+'/'+subs(str(b80,10,2),9,2)+'/'+subs(vek0,3,2)
                 endif
              do case
                 case data2='01/'+subs(data2,4,2)
                      store '02/'+subs(data2,4,2) to data2,data_1,data_2
                      data1='¥•¢∞≥†∞® '
                      fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                 case data2='02/'+subs(data2,4,2)
                      store '03/'+subs(data2,4,2) to data2,data_1,data_2
                      data1='¨†∞≤     '
                      fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                 case data2='03/'+subs(data2,4,2)
                      store '04/'+subs(data2,4,2) to data2,data_1,data_2
                      data1='†Ø∞®´    '
                      fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                 case data2='04/'+subs(data2,4,2)
                      store '05/'+subs(data2,4,2) to data2,data_1,data_2
                      data1='¨†©      '
                      fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                 case data2='05/'+subs(data2,4,2)
                      store '06/'+subs(data2,4,2) to data2,data_1,data_2
                      data1='æ≠®      '
                      fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                 case data2='06/'+subs(data2,4,2)
                      store '07/'+subs(data2,4,2) to data2,data_1,data_2
                      data1='æ´®      '
                      fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                 case data2='07/'+subs(data2,4,2)
                      store '08/'+subs(data2,4,2) to data2,data_1,data_2
                      data1='†¢£≥±≤   '
                      fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                 case data2='08/'+subs(data2,4,2)
                      store '09/'+subs(data2,4,2) to data2,data_1,data_2
                      data1='±•Ø≤•¨¢∞®'
                      fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                 case data2='09/'+subs(data2,4,2)
                      store '10/'+subs(data2,4,2) to data2,data_1,data_2
                      data1='Æ™≤Æ¨¢∞® '
                      fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                 case data2='10/'+subs(data2,4,2)
                      store '11/'+subs(data2,4,2) to data2,data_1,data_2
                      data1='≠Æ•¨¢∞®  '
                      fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                 case data2='11/'+subs(data2,4,2)
                      store '12/'+subs(data2,4,2) to data2,data_1,data_2
                      data1='§•™•¨¢∞® '
                      fimem0='vek=vek0.and.val(subs(data_1,1,2))<=val(subs(data,1,2)).and.val(subs(data,1,2))<=val(subs(data_2,1,2))'
                 case data2='12/'+subs(data2,4,2)
                      set cons on
                      l0='≠'
                      @ 23,25 say 'Ü•´†•≤• ´® ±´•§¢†π† £Æ§®≠† §/≠' get l0  valid  l0='§'.or. l0='≠'
                      read
                      if l0='§'
                         do dat
                      @ 23,15 say space(51)
                         set cons off
                      else
                         set cons off
                        exit
                      endif
              endcase

       enddo
       ?
       ?
       ?
       ?
       ?
       ? 'Éã. ëóÖíéÇéÑàíÖã .................     êöKéÇéÑàíÖã...................'
         pech()
     endcase
           case v2=6
              @  2+ml0,25 say 'è∞Æ¢•∞™† ® ±¨ø≠† ≠† §®∞•™≤Æ∞®ø≤†'
              @  3+ml0,24 say '----------------------------------'
              l4='y'
              dire()
           case v2=7
                do lipso  && fis6
     endcase
      ************ èÆ≤∞•°®≤•´±™† ¥≥≠™∂®ø **********
                function pfunk4
                parameters mode0,fld0
                private fld0
                cur0=fiel[fld0]
                 do case
                   case mode0 < 4
                         if dele()
                           @ 23,15 say '    ï†∞†™≤•∞®±≤®™†≤† • ¨†∞™®∞†≠† ß† ®ß≤∞®¢†≠• !   '
                           i0=inkey(1)
                         endif

       @ 23,15 say 'àß°Æ∞ ≠† ØÆ´•-™Æ´Æ≠† ±≤∞•´™®-'+chr(26)+' '+chr(25)+' '+chr(24)+' '+chr(27)+'-    F4-§≥°´†¶'
       @ 10,71 say 'óÄëÄ '+str(spis->pnv,1)


                        return 1
                   case lastkey()=-3
                        do while .not. eof()
                           dns0=data+nom+sch
                           skip
                           if data+nom+sch=dns0
                              exit
                           endif
                        enddo
                   case lastkey()=27
                        return 0
                   case lastkey()=13
                         set cursor on
                         @ row(),col() get &cur0
                         @ 23,15 say '              Ç∫¢•§•≤• ¶•´†≠®≤• Ø∞Æ¨•≠®            '
                         read
                         keyboard chr(24)
                         set cursor off
                         return 1
                   case lastkey()=172.or.lastkey()=162
                         do case
                           case lastkey()=172  &&  ¨
                           @ 23,15 say '    ï†∞†™≤•∞®±≤®™†≤† • ¨†∞™®∞†≠† ß† ®ß≤∞®¢†≠• !   '
                                 dele
                           case lastkey()=162  &&  ¢
                           @ 23,15 say '        ï†∞†™≤•∞®±≤®™†≤† • ¢∫ß±≤†≠Æ¢•≠†           '
                                 reca
                         endcase
                                 i0=inkey(1)
                   otherwise
                         return 1
                 endcase
                return 1

         *********** è∞Æ∂•§≥∞† ß† ¢ß•¨†≠• ≠† ≠Æ¢† µ†∞†™≤•∞®±≤®™† ***********
                              proc xarakt
                  set key -8 to
                  set key -9 to dobavi
                  set key -6 to vzemi
                  l6='§'
                    save screen
                    @ 22,15 say 'F7- Çß•¨† ≠Æ¢† µ†∞†™≤-™† F10- ÑÆ°†¢ø ≠Æ¢† µ†∞†™≤-™†'
                    sele 3
                    if sch1=' '
                       set filter to substr(sch,1,1)=sch1.and.6 < val(sch)
                    else
                       set filter to substr(sch,1,1)=sch1
                    endif
                    go top
                    declare fiel[2]
                    fiel[1]='sch'
                    fiel[2]='hara'
                    declare imem[2]
                    imem[1]='Héå. N'
                    imem[2]=hara0
                    @ 11,16,20,64 box ram1
                    dbedit(12,17,19,63,fiel,"pfunk",' ',imem,'Õ','”')
                    restore screen
               l6='≠'
               @ 14,18 clea to 19,24
               @ 14,26 clea to 19,50
               @ 14,52 clea to 19,61
               keyboard chr(13)
                    i0=inkey(0)
                  set key -9 to
                  set key -6 to
                  set key -8 to xarakt
             if l3='¨'
               sele 2
             else
               sele 4
             endif
                              return


      ************ èÆ≤∞•°®≤•´±™† ¥≥≠™∂®ø **********
                function pfunk
                parameters mode0,fld0
                cur0=fiel[fld0]
                 do case
            case mode0 < 4
                      if l2='§'
                       l2='≠'
                        keyboard chr(6)
                      endif
                       if dele()
                                @ 12,56 say 'åÄêK   '
                       else
                             if dni='°'
                                @ 12,56 say 'HÖéÅãÄÉ'
                             endif
                             if dni='§'
                                @ 12,56 say 'ÑHà    '
                             endif
                             if dni='£'
                                @ 12,56 say 'Éê.ÑéÉ.'
                             endif
                             if dni='±'
                                @ 12,56 say 'ëìåÄ   '
                             endif
                             if dni='≠'
                                @ 12,56 say 'ÅÖá ÑéÑ'
                             endif
                             if dni='•'
                                @ 12,56 say 'ÅÖá Ñéé'
                             endif
                       endif
                      @ 23,15 say '     ENTER ß† Ø∞Æ¨ø≠† ≠† §†≠®≤•,  F9 - ÑÆ°†¢ø≠•   '
                      return 1
            case lastkey()=27
                          @ 11,16 clea to 20,64
                          return 0
            case lastkey()=13
                  l2='§'
                  clear gets
                  set cursor on
                  if .not. bof()
                     @ row(),col() get &cur0
                  endif
                  @ 23,17 say '          Ç∫¢•§•≤• ¶•´†≠®≤• Ø∞Æ¨•≠®            '
                      read
                  keyboard chr(6)
                  set cursor off
                  set key 164 to
                  set key 177 to
                  return 1
            case lastkey()=172.or.lastkey()=161.or.lastkey()=162.or.lastkey()=163.or.lastkey()=164.or.lastkey()=177.or.lastkey()=173.or.lastkey()=165.or.lastkey()=179.or.lastkey()=171.or.lastkey()=176.or.lastkey()=175.or.lastkey()=178
               if l6='§'
                do case
                   case lastkey()=172    &&  ¨
                    @ 12,56 say 'åÄêK'
                    dele
                   case lastkey()=162    &&  ¢
                    reca
                   case lastkey()=161   &&   °
                          repl dni with '°'
                   case lastkey()=163   &&   £
                          repl dni with '£'
                   case lastkey()=164   &&   §
                          repl dni with '§'
                   case lastkey()=165   &&   •
                          repl dni with '•'
                   case lastkey()=173   &&   ≠
                          repl dni with '≠'
                endcase
               endif
                       if dele()
                                @ 12,56 say 'åÄêK   '
                       else
                             if dni='°'
                                @ 12,56 say 'HÖéÅãÄÉ'
                             endif
                             if dni='§'
                                @ 12,56 say 'ÑHà    '
                             endif
                             if dni='£'
                                @ 12,56 say 'Éê.ÑéÉ.'
                             endif
                             if dni='±'
                                @ 12,56 say 'ëìåÄ   '
                             endif
                             if dni='≠'
                                @ 12,56 say 'ÅÖá ÑéÑ'
                             endif
                             if dni='•'
                                @ 12,56 say 'ÅÖá Ñéé'
                             endif
                     endif
            otherwise
                  return 1
          endcase
                return 1
         *********** K∞†© ≠† ØÆ≤∞•°®≤•´±™†≤† ¥≥≠™∂®ø   ********


         *********** è∞Æ∂•§≥∞† ß† ¢®§† ≠† µ†∞†™≤•∞®±≤®™†≤†   ********
                      proc nach
               set key -3 to
               set key 161 to
               set key 163 to
               set key 164 to
               set key 167 to
               set key 168 to
               set key 171 to
               set key 174 to
               set key 179 to
               set key 180 to
               set key 185 to
                      re0=recno()
                      l1='§'
                      @ 22,15 say '                                                  '
                  do case
                     case lastkey()=164
                          sch1='1'
       hara0 = '   Ñ é è ã Ä ô Ä H à ü   '
                     case lastkey()=167
                          sch1=' '
      hara0 = '   Ñ . Ç á Ö å Ä H à ü   '
                     case lastkey()=168
                          sch1='  4'
       hara0 = '  à H Ç Ä ã à Ñ H é ë í  '
                     case lastkey()=174
                          sch1='2'
       hara0 = 'èãÄôÄHàü áÄ ë-KÄ HÄ Ñéé  '
                     case lastkey()=179
                          sch1='3'
       hara0 = '   ì  Ñ  ê  ö  Ü  K  à   '
                     case lastkey()=185
                          sch1='4'
       hara0 = '          ô  Ä  í        '
                     other
                      l1='≠'
                      return 1
                  endcase
             save screen
                  set key -8 to xarakt
              sele 3
              use &disc_1\fish\nome inde &disc_1\fish\nosi
                if l3='¨'
                   sele 2
                   use mese inde sdni,dnsi
                else
                   sele 4
                   use godn inde gsdni,gdnsi
                endif
             set relation to sch into nome
         if  sch1='  4'
             set filter to (nom=str(nom0,6).and.vek+data=vek0+data0.and.sch=sch1)
         else
             set filter to (nom=str(nom0,6).and.vek+data=vek0+data0.and.substr(sch,1,1)=sch1)
         endif
             go top
             l6='§'
                  declare fiel[3]
                  fiel[1]='sch'
                  fiel[2]='nome->hara'
                  fiel[3]='stoi'
                  declare imem[3]
                  imem[1]='Héå. N'
                  imem[2]=hara0
                  imem[3]='    ëìåÄ'
                  @ 11,16,20,64 box ram1
                  dbedit(12,17,19,63,fiel,"pfunk",' ',imem,'Õ','”')
                  set key -8 to
             l6='≠'
             restore screen
                    go re0
               set key -3 to promia
               set key 180 to pfish
               set key 161 to nach  && °
               set key 163 to nach  && £
               set key 164 to nach  && §
               set key 167 to nach  && ß
               set key 168 to nach  && ®
               set key 171 to nach  && ´
               set key 174 to nach  && Æ
               set key 179 to nach  && ≥
               set key 185 to nach  && π
               @ 22,14 clea to 23,66
               @ 21,14,24,66 box ram1
               @ 22,16 say '"π"-π†≤, "ß"-§. ¢ß•¨., "¥"-Ø•∑†≤ ¥®∏, "®"-®≠¢†´®§'
               @ 23,18 say '"§"- §ÆØ´†π†≠®ø, "Æ"- Æ±®£≥∞Æ¢™®, "≥"- ≥§∞∫¶™®'
                      return

      **************************************************************
      function   FEGN
      ***************************************************************
      memvar  A, I
      *   W = egn
      private S, I, A[10]
      A [1] := 2
      A [2] := 4
      A [3] := 8
      A [4] := 5
      A [5] := 10
      A [6] := 9
      A [7] := 7
      A [8] := 3
      A [9] := 6
      S := 0
      PRIZ4 := 0
      for I := 1 TO 9
          SS := substr (W, I, 1)
          S := val (SS) * A [I] + S
          if SS = " "
              PRIZ4 := 1
          endif
      next
      if substr (W, 10, 1) = " "
          PRIZ4 := 1
      endif
      S %= 11
      if S == 10
          S := 0
      endif
      if ((val (substr (W, 3, 2)) > 12) .or. (val (substr (W, 3, 2)) < 1)) .and. ((val (substr (W, 3, 2)) > 32) .or. (val (substr (W, 3, 2)) < 21)) .and. ((val (substr (W, 3, 2)) > 52) .or. (val (substr ;
                      (W, 3, 2)) < 41))
          PRIZ4 := 1
      endif
      if (val (substr (W, 5, 2)) > 31) .or. (val (substr (W, 5, 2)) < 1)
          PRIZ4 := 1
      endif
      if (val (substr (W, 10, 1)) != S) .or. (PRIZ4 = 1)
          if W1=0
             ?  nom+' '+W+' '+subs(family,1,15)+' É∞•∏≠Æ ÖÉH ≠† ´®∂•≤Æ '
          else
             ?  nom+' '+W+' '+subs(family,1,15)+' É∞•∏≠Æ ÖÉH ≠† ≠•Æ±®£.∑´.±•¨. N '+str(W1,1)
          endif
      endif
     return .T.
         ****************** è∞Æ∂•§≥∞† ß† ±∞Æ™ *********************
                                proc messec
                        me0=val(substr(data0,1,2))
                        do case
                           case me0 < 10
                             me0='0'+str(me0,1,1)
                           case me0 > 9.and.me0<13
                             me0=str(me0,2)
                           case me0 > 12
                             me0='01'
                        endcase
                        me1=val(substr(data0,1,2))+1
                        do case
                           case me1 < 10
                             me1='0'+str(me1,1,1)
                           case me1 > 9.and.me1<13
                             me1=str(me1,2)
                           case me1 > 12
                             me1='01'
                        endcase
               set cent on
               do case
                  case me0='01'
                       store '01'  to me0
                       ms0='   ø≠≥†∞®'
                       den0='31'
                  case me0='02'
                       store '02'  to me0
                       ms0=' ¥•¢∞≥†∞®'
                       den0='28'
                  case me0='03'
                       store '03'  to me0
                       ms0='     ¨†∞≤'
                       den0='31'
                  case me0='04'
                       store '04'  to me0
                       ms0='    †Ø∞®´'
                      den0='30'
                  case me0='05'
                       store '05'  to me0
                       ms0='      ¨†©'
                       den0='31'
                  case me0='06'
                       store '06'  to me0
                       ms0='      æ≠®'
                       den0='30'
                  case me0='07'
                       store '07'  to me0
                       ms0='      æ´®'
                       den0='31'
                  case me0='08'
                       store '08'  to me0
                       ms0='   †¢£≥±≤'
                       den0='31'
                  case me0='09'
                       store '09'  to me0
                       ms0='±•Ø≤•¨¢∞®'
                       den0='30'
                  case me0='10'
                       store '10'  to me0
                       ms0=' Æ™≤Æ¨¢∞®'
                       den0='31'
                  case me0='11'
                       store '11'  to me0
                       ms0='  ≠Æ•¨¢∞®'
                       den0='30'
                  case me0='12'
                       store '12'  to me0
                       ms0=' §•™•¨¢∞®'
                       den0='31'
               endcase
               do case
                  case me1='01'
                       store '01'  to me1
                       ms1='   ø≠≥†∞®'
                       den1='31'
                  case me1='02'
                       store '02'  to me1
                       ms1=' ¥•¢∞≥†∞®'
                       den1='28'
                  case me1='03'
                       store '03'  to me1
                       ms1='     ¨†∞≤'
                       den1='31'
                  case me1='04'
                       store '04'  to me1
                       ms1='    †Ø∞®´'
                      den1='30'
                  case me1='05'
                       store '05'  to me1
                       ms1='      ¨†©'
                       den1='31'
                  case me1='06'
                       store '06'  to me1
                       ms1='      æ≠®'
                       den1='30'
                  case me1='07'
                       store '07'  to me1
                       ms1='      æ´®'
                       den1='31'
                  case me1='08'
                       store '08'  to me1
                       ms1='   †¢£≥±≤'
                       den1='31'
                  case me1='09'
                       store '09'  to me1
                       ms1='±•Ø≤•¨¢∞®'
                       den1='30'
                  case me1='10'
                       store '10'  to me1
                       ms1=' Æ™≤Æ¨¢∞®'
                       den1='31'
                  case me1='11'
                       store '11'  to me1
                       ms1='  ≠Æ•¨¢∞®'
                       den1='30'
                  case me1='12'
                       store '12'  to me1
                       ms1=' §•™•¨¢∞®'
                       den1='31'
               endcase
                                return

******************** Rekapitulaciya po shifar  *********************
                      proc rekapi
             b1=55
             store 0 to b0
             nom1=2
             store ' ' to nkp0,mg0
             nom2=999999
             sch0=0
             data1='01/'+vek0
             data2='12/'+vek0
    do while .t.
            ramka()
            set key -2 to nomenkl
            @ 23,25 say 'F3 - ±Ø®±∫™ ≠† ≠Æ¨•≠™´†≤≥∞®≤•'
            @ 2,22 say 'ê•™†Ø®≤≥´†∂®ø ØÆ ≠Æ¨•≠™´†≤≥∞•≠ ≠Æ¨•∞'
            @ 3,21 say '------------------------------------'
            @  8,22 say 'Ç∫¢•§•≤• ≠Æ¨•≠™´†≤≥∞≠®ø ≠Æ¨•∞' get sch0 pict "999"
            @ 10,22 say 'é≤ ≠Æ¨•∞ :' get nom1 pict '999999'
            @ 12,22 say 'ÑÆ ≠Æ¨•∞ :' get nom2 pict '999999'
            @ 10,41 say 'é≤ §†≤† ' get data1
            @ 12,41 say 'ÑÆ §†≤† ' get data2
            @ 14,22 say 'èÆ Ø∞Æ¥•±®® /HKP/' get nkp0
            @ 14,43 say 'å∫¶ / ¶•≠†' get mg0 valid mg0=' '.or.mg0='å'.or.mg0='Ü'.or.mg0='¨'.or.mg0='¶'
            read
                       if lastkey()=27
                              exit
                       endif
            set cent on
            data_3=ctod('01'+subs(dtoc(ctod('15/'+data1)-18),3,8))
            data_4=ctod('01'+subs(dtoc(ctod('15/'+data2)+18),3,8))
            izrab()
            set key -2 to
            do case
               case mg0='¨'
                    mg0='å'
               case mg0='¶'
                    mg0='Ü'
            endcase
         messec()
         sch1=str(sch0,3)
         sele 3
         use &disc_1\fish\nome inde &disc_1\fish\nosi
         find "&sch1"
         hara0=hara
         sele 1    &&&  ot tuk
         use spis inde nomi
        if l3='¨'
             sele 2
             use mese inde sdni,dnsi
        else
             podr_0=32
             save all like podr_0 to podred
             podred()
             sele 1
             use spis inde nomi
             sele 4
             use godn inde vni
        endif
         if 0 < val(sch1)

         set filter to (data_3 < ctod('01/'+subs(data,1,2)+'/'+vek).and.;
             ctod('01/'+subs(data,1,2)+'/'+vek) < data_4).and.sch=sch1
         else
         set filter to (data_3 < ctod('01/'+subs(data,1,2)+'/'+vek).and.;
             ctod('01/'+subs(data,1,2)+'/'+vek) < data_4)
         endif
         go top
         set relation to nom into spis  &&& do tuk
            if ekpr0=2
                ll0='2'
                b1=55
            endif
  ? '                 êÖKÄèàíìãÄñàü èé òàîöê '+sch1+' '+hara0
  ?
  ?
  ?
  ? '       '+repli('-',63)
  ? '        íÄÅ.N  ëéÅëíÇÖHé ÅÄôàHé à îÄåàãHé àåÖ    ÑÄíÄ      ëíéâHéëí'
  ?
  ? '       '+repli('-',63)
  set cent on
  datb0=subs(dtoc(date0),7,4)+subs(dtoc(date0),4,2)+subs(dtoc(date0),1,2)
  set cent off
   suma0=0
   br0=0
             sele 4
             use godn
             podr_0=32
             save all like podr_0 to podred
             podred()
             sele 1
             use spis inde nomi
             sele 4
             use godn inde vni
       if 0 < val(sch1)

         set filter to (data_3 < ctod('01/'+subs(data,1,2)+'/'+vek).and.;
             ctod('01/'+subs(data,1,2)+'/'+vek) < data_4).and.sch=sch1
       else
         set filter to (data_3 < ctod('01/'+subs(data,1,2)+'/'+vek).and.;
             ctod('01/'+subs(data,1,2)+'/'+vek) < data_4)
       endif
         go top
         set relation to nom into spis
   do while  .not. eof()     &&   sch=sch1
         if .not.(nom1-1 < val(nom) .and. val(nom) < nom2+1)
                         if .not.eof()
                             skip
                             loop
                         else
                              exit
                         endif
         endif
         if .not.(nkp0= ' ') .and. (.not.spis->nkp=nkp0)
                         if .not.eof()
                             skip
                             loop
                         else
                              exit
                         endif
         endif
         if .not.(mg0= ' ') .and. (.not.spis->mg=mg0)
                         if .not.eof()
                             skip
                             loop
                         else
                              exit
                         endif
         endif
       if suma > 0  .and.(.not.td_0='T')
             do case
                case prsl_0='Ø'
                     if 59 < spis->god      && val(subs(spis->egn,1,2))
                        skip
                        loop
                     endif
                case prsl_0='±'
                     if spis->god  < 60
                        skip
                        loop
                     endif
             endcase
          ? space(7)+nom+'  '+spis->name+'   '+data+'       '+str(suma,9,j1)
   *      ? space(7)+nom+' '+spis->ime+' '+spis->prime+' '+spis->family+' '+spis->egn+' '+spis->adr+' '+spis->nasm+' '+;
   *spis->rabo+' '+spis->nkp+' '+dtoc(spis->datp)+' '+dtoc(spis->datu)+' '+spis->chlu &&  ÖÉH
   *      if .not. spis->bs=space(18)
   *         ? spis->bs+spis->egn+ltrim(str(suma,15,j1))+space(15-len(ltrim(str(suma,15,j1))));
   *           +trim(subs(spis->name,1,26))+space(41-len(trim(subs(spis->name,1,26))))+'ß†Ø´.¨.'+ltrim(ms0)+space(52-len(ltrim(ms0)))
          suma0=suma0+round(suma,j1)
          br0=br0+1
   *      endif
          spri()
       endif
                         if .not.eof()
                             skip
                         else
                           return
                         endif
   enddo
             sele 1
             sele 2
             use mese inde sdni,dnsi
       if 0 < val(sch1)

         set filter to (data_3 < ctod('01/'+subs(data,1,2)+'/'+vek).and.;
             ctod('01/'+subs(data,1,2)+'/'+vek) < data_4).and.sch=sch1
       else
         set filter to (data_3 < ctod('01/'+subs(data,1,2)+'/'+vek).and.;
             ctod('01/'+subs(data,1,2)+'/'+vek) < data_4)
       endif
         go top
         set relation to nom into spis
   do while  .not. eof()     &&   sch=sch1
         if .not.(nom1-1 < val(nom) .and. val(nom) < nom2+1)
                         if .not.eof()
                             skip
                             loop
                         else
                              exit
                         endif
         endif
         if .not.(nkp0= ' ') .and. (.not.spis->nkp=nkp0)
                         if .not.eof()
                             skip
                             loop
                         else
                              exit
                         endif
         endif
         if .not.(mg0= ' ') .and. (.not.spis->mg=mg0)
                         if .not.eof()
                             skip
                             loop
                         else
                              exit
                         endif
         endif
       if suma > 0  .and.(.not.td_0='T')
             do case
                case prsl_0='Ø'
                     if 59 < spis->god      && val(subs(spis->egn,1,2))
                        skip
                        loop
                     endif
                case prsl_0='±'
                     if spis->god  < 60
                        skip
                        loop
                     endif
             endcase
          ? space(7)+nom+'  '+spis->name+'   '+data+'       '+str(suma,9,j1)
   *      ? space(7)+nom+' '+spis->ime+' '+spis->prime+' '+spis->family+' '+spis->egn+' '+spis->adr+' '+spis->nasm+' '+;
   *spis->rabo+' '+spis->nkp+' '+dtoc(spis->datp)+' '+dtoc(spis->datu)+' '+spis->chlu &&  ÖÉH
   *      if .not. spis->bs=space(18)
   *         ? spis->bs+spis->egn+ltrim(str(suma,15,j1))+space(15-len(ltrim(str(suma,15,j1))));
   *           +trim(subs(spis->name,1,26))+space(41-len(trim(subs(spis->name,1,26))))+'ß†Ø´.¨.'+ltrim(ms0)+space(52-len(ltrim(ms0)))
          suma0=suma0+round(suma,j1)
          br0=br0+1
   *      endif
          spri()
       endif
                         if .not.eof()
                             skip
                         else
                           return
                         endif
   enddo


  ? '       '+repli('-',63)
 *     ? datb0+subs(bf00,1,8)+subs(bf00,10,11)+ltrim(str(suma0,21,2))+space(21-len(ltrim(str(suma0,21,j1))))+ltrim(str(br0,5))+space(6-len(ltrim(str(br0,5))))
  ? '                     ÇëàóKé              /Åêéü '+str(br0,6)+'/ '+space(2)+str(suma0,12,j1)
  ?
  ?
   do pech
      copy file s0001.prn to mplssal.txt
      copy file s0001.prn to 'd:\sync\doc\&go0\'+'mpls.txt'
    enddo
                      return  //  rekapi


       *************************  ZVAN  *************************
                   proc zvan

          *       set talk on
          *       set bell on
          *       tone(100, 3)
          *       set bell off
          *       return NIL
    ! cmd /c start /min &disc_1\LNK\1by1.LNK &disc_1\SOUND\notify.MP3
       inkey(1)
    ! cmd /c start /min  %SystemRoot%\System32\TASKKILL /F /IM 1by1.EXE

                    return  //zvan

                               proc setcons
                sek1=round(seconds(),0)-sec0
               if 0 < sek1
                 if 0 < val(subs(str(round(sek1/60,2),5,2),1,2))
                    @ 23,36 say subs(str(round(sek1/60,2),5,2),1,2)+'min. '+;
                    str(sek1-val(subs(str(round(sek1/60,2),5,2),1,2))*60,2)+'sec.'
                 else
                     @ 23,15 say space(51)
                     @ 23,19 say 'è∞Æ§∫´¶®≤•´≠Æ±≤ ≠† Ø∞Æ∂•§≥∞†≤† •:  '+str(sek1,2)+' sec.'
                     inkey(3)
                     @ 23,15 say space(51)
                 endif
                 *   if pake='CHEF'
                 *      inkey(2)
                 *   else
                 *      inkey(1)
                 *   endif
               endif

                           return // setcons

    *********************** Funkciqta pusk i spira dialoga na zan ******************

                                    func zanvi
! cmd /c echo '%UserProfile:~0,8%\Public\Documents\zvprt50\Zan Image Printer (BW)' > aaa.txt
    ssss=subs(memoline(memoread("aaa.txt"),60,1),2,56)
         do case
           case zan0='vkl'
              memowrit('aaa.bat',' cmd /c xcopy /y &disc_1\ZAN\VKL\*.ini "&ssss"')
             ! cmd /c aaa.bat > aaa.txt
          case zan0='izkl'
               memowrit('aaa.bat',' cmd /c xcopy /y &disc_1\ZAN\IZKL\*.ini "&ssss"')
              ! cmd /c aaa.bat > aaa.txt
       endcase
       set cursor on ; inkey(2) ; eras aaa.txt ; inkey(2) ; eras aaa.bat
                                       return
                    ************* vklkuch DOSPRN ************
                                    proc dospr

    ! cmd /c  %SystemRoot%\system32\tasklist /nh /fi "imagename eq dosprn.exe" /fo csv > dosprn.txt
     set curs on ; ssss= memoread("dosprn.txt") ; inkey(1)
           if .not. subs(memoline(ssss,50,1),2,10)='DOSprn.exe'
              @ 10,25,12,53 box ram1 ; @ 11,26 clea to 11,52
              @ 11+ml0,27 say 'è∞Æ£∞†¨†≤† ¢™´æ∑¢† Dosprn'
               memowrit('aaa.bat','\PROGRA~1\DOSPRN\DOSprn.exe';
               +chr(13)+chr(10)+ '"D:\Program Files\DOSPRN\DOSprn.exe"')
               !&disc_1\exe\hstart.exe /noconsole aaa.bat
               if file("dosprn.txt") ; eras dosprn.txt ; endif
               inkey(3)
     ! cmd /c  %SystemRoot%\system32\tasklist /nh /fi "imagename eq dosprn.exe" /fo csv > dosprn.txt
     set curs on ; ssss= memoread("dosprn.txt") ; inkey(1)
               if .not. subs(memoline(ssss,50,1),2,10)='DOSprn.exe'
                   l0=1
                   @  9,16,13,64 box ram1
                   @ 10,17 clea to 12,63
                   @ 10+ml0,36 say 'ÇHàåÄHàÖ!'  color 'R+/B'
                   @ 11+ml0,25 say 'Dosprn Ø∞Æ∂•§≥∞†≤† ≠• • ¢™´æ∑•≠†! '
                   @ 12+ml0,18 say 'è∞Æ£≤∞†¨†≤† ≠ø¨† §† ¨Æ¶• §† Ø•∑†≤† ±Ø∞†¢™®≤•!'
                   inkey(10)
               endif
           endif
                if file("dosprn.txt") ; eras dosprn.txt ; endif
                if file("aaa.bat") ; eras aaa.bat ; endif
               restore screen
                        return

        proc errorobr1 ; ! notepad.exe C:\DISC\HLP\JOB\ERROR.TXT
        return

