     tt0='50'
     sele 2
     use stai inde stii,snoi,schi
     sele 3
     use \hlp\job\uslu inde \hlp\job\ussh
*  set dele on
   data0=substr(dtoc(date0),4,5)
   store 0 to v2
   @  4,17,20,63 box ram1
   @  5,18 clea to 19,62
   @  5,32 say '  ’ — … ’ ˆ '
   @  8,29 prompt '1. ’¥«¥´®­­  ¶¥­²° « '
   @ 10,29 prompt '2. ²·¥² ­   ¤¬¨­¨±²° ²®°'
   @ 12,29 prompt '3. •®²¥«±ª¨ °¥£¨±²º°'
   @ 14,29 prompt '4. ²·¥² §  ¯¥°¨®¤  '
   @ 16,29 prompt '5. ’ ª±  ª³°. ´®­¤  '
   @ 18,29 prompt '6. H¥¯« ²¥­¨ ³±«³£¨'
   read
     menu to v2
      if lastkey()=27
        clos all
        set dele off
      set key -2 to
        return
      endif
   do case
      case v2=1
     * ! c:\t.bat
      case v2=2
        store date0 to dati1
        sele 3
        use \hlp\job\uslu inde \hlp\job\ussh
        sele 2
        use stai inde stii
        set relation to sch into uslu
        set cent on
      do while .t.
        set key -2 to spis4
        ramka()
        @  2,29 say ' ’—…’ H€ €„ŒˆHˆ‘’€’'
        @  3,29 say '------------------------'
        @  6,26 say '€„ŒˆHˆ‘’€’: ' + ime0
        @  8,32 say '‡€ „€’€: ' + dtoc(dati1)
        @  8,31 say '‡€ „€’€: ' get dati1
        read
        set filter to datp=dati1.and.dni='¯'
        go top
     *  @ 10,32 say '€„Œˆ   : ' get admi0
     *  read
        @ 10,32 say '€„Œˆ   : '+ admi0
           if lastkey()=27
              set filter to
              set cent off
              return
           endif
        set filter to datp=dati1.and.dni='¯'.and.admi=admi0
        go top
        izrab()
           if ekpr0=2
              ll0='2'
              b1=37
           endif
        set key -2
        set marg to 9
        ? space(17)+'•’…‹ "K€‹" ‘‹.Ÿƒ'
        ?
        ? space(10)+'’—…’ H€ €„ŒˆHˆ‘’€’  '+ime0
        ?
        ? space(18)+' ‡€ „€’€  '+dtoc(dati1)
        ?
          suma0=0

         ?  repli(chr(205),61)
         ? '‘’€Ÿ   K„         “‘‹“ƒ€           ‰  …„.–…€    ‘“Œ€'
         ?  repli(chr(205),61)
         do while datp=dati1.and.dni='¯'.and.admi=admi0.and.(.not.eof())
            staj0=staj
            suma1=0
           do while staj=staj0
            ? staj+'   '+sch+'  '+uslu->hara+' '+str(kol,2)+'   '+str(zena,6,2)+'  '+str(suma,10,2)
            suma1=suma1+suma
            suma0=suma0+suma
            spri()
               if eof()
                  exit
               else
                  skip
               endif
           enddo
            ? space(46)+'---------------'
            ? space(32)+'   ‚±¨·ª® §  ±² ¿ :'+str(suma1,10,2)
            ?
            spri()
         enddo
            ?  space(41)+'‚‘ˆ—K :  '+str(suma0,10,2)
         set filter to datp=dati1
         go top
         suma0=0
         do while datp=dati1.and.dni='¯'.and.(.not.eof())
            suma0=suma0+suma
            skip
         enddo
      *     ?  space(36)+'‚‘ˆ—K ‡€ „…HŸ '+str(suma0,10,2)
            ?
            ?
            ? space(9)+'®¤¯¨±: ..................'
            ? space(15)+'/ '+trim(ime0)+' /'
            ?
          pech()
      enddo
      case v2=3
      set date brit
      set dele on
      sele 1
      use hotel inde nomi, sthi
      store date0-15 to dati1
      store date0+15 to dati2
        l1=''
        l2=' '
        nom0=1
        nom1=999999
      do while .t.
        ramka()
        set cent on
        @  2,32 say ' •’…‹‘Šˆ …ƒˆ‘’š'
        @  3,32 say '-------------------'
        @  8,14 say 'H€—€‹ H€ …ˆ„:            K€‰ H€ …ˆ„:'
        @  8,32 get dati1
        @  8,59 get dati2
        @ 10,20 say '®¤°¥¦¤ ­¥ ¯® °¥£.­®¬¥° "", ¯® ±² ¨ "‘":' get l1 valid l1=''.or.l1='‘'
        @ 12,25 say '‚ ¡°®©  "" ¯® ±¬¥²ª  "‘", :' get l2 valid l2=' '.or.l2=''.or.l2='‘'
      * @ 14,17 say '² ª °²  ­®¬¥°:' get nom0  pict "999999"
        read
                 @ 14,29 prompt 'š‹ƒ€ˆ'
                 @ 14,37 prompt '—“†„…H–ˆ'
                 @ 14,46 prompt '™'
                 menu to l0
      * nom1=nom0+30
      * @ 14,41 say '„® ª °²  ­®¬¥°:' get nom1  pict "999999"
      * read
           if lastkey()=27
              set filter to
              set dele off
              set cent off
              return
           endif
        izrab()
           if l1='‘'
              sele 1
              use hotel inde sthi
           else
              sele 1
              use hotel inde nomi
           endif
        do case
           case l2=' '
                do case
                   case l0=1
                   set filte to dati1-1 < pris .and. pris < dati2+1.and.graz='š‹ƒ€ˆŸ'
                   case l0=2
                   set filte to dati1-1 < pris .and. pris < dati2+1.and.(.not.graz='š‹ƒ€ˆŸ')
                   case l0=3
                   set filte to dati1-1 < pris .and. pris < dati2+1
                endcase
           case l2=''
                set filte to dati1-1 < pris .and.  pris < dati2+1 .and. plat=''
           case l2='‘'
                set filte to dati1-1 < pris .and.  pris < dati2+1 .and. plat='‘'
        endcase
             go top
             nom0=val(nom)
           if ekpr0=2
            *   @ 16,17 say '² ª °²  ­®¬¥°:' get nom0  pict "999999"
            *    read
            *   nom1=nom0+30
            *   @ 16,41 say '„® ª °²  ­®¬¥°:' get nom1  pict "999999"
            *   read
             *  set filte to nom0-1 < val(nom) .and. val(nom) < nom1+1
             *  go top
             *  dati1=pris
             *  go bott
             *  dati2=zami
               ?? norm1
               store '1' to  ll0,ll3
               b1=44
               set marg to 8
           else
               set marg to 0
           endif
   *    do case
   *       case l2=' '
   *            do case
   *               case l0=1
   *               set filte to dati1-1 < pris .and. pris < dati2+1.and.graz='š‹ƒ€ˆŸ'
   *               case l0=2
   *               set filte to dati1-1 < pris .and. pris < dati2+1.and.(.not.graz='š‹ƒ€ˆŸ')
   *               case l0=3
   *               set filte to dati1-1 < pris .and. pris < dati2+1
   *            endcase
   *       case l2=''
   *            set filte to dati1-1 < pris .and.  pris < dati2+1 .and. plat=''
   *       case l2='‘'
   *            set filte to dati1-1 < pris .and.  pris < dati2+1 .and. plat='‘'
   *    endcase
   *    go top
        *  if ekpr0=2
        *     ?? norm0
        *     store '1' to  ll0,ll3
        *     b1=44
        *     set marg to 8
        *  endif
        store 0 to dni0,kt0,kt_0
        i=' '
        b0=8
        ? space(51)+'•’…‹ "K€‹" ‘‹.Ÿƒ'
        ? space(45)+'•  ’ … ‹ ‘ K ˆ    … ƒ ˆ ‘ ’ š '
        ?
        ? space(41)+'‡€ …ˆ„€ ’ '+dtoc(dati1)+'  „  '+dtoc(dati2)
        ?  space(120)+'±²°. '+str(b2,3)
        ?  repli(chr(205),128)
        ? ' HŒ…  ˆ‘’ˆƒ€      ‡€Œˆ€‹   ‘’€Ÿ  H™.  ‹€™H…  €„Œ.  ˆŒ…             …‡ˆŒ…           ƒ„.€†„€HE      ƒ€†„€H‘’‚     ’Š”'
        ?  repli(chr(205),128)
         do while .not. eof()
               if   val(nom)<nom0 .or. val(nom)>nom1
                  if .not. eof()
                     skip
                     loop
                  else
                      exit
                  endif
               endif
            if .not.staj='9999'
               do case
                  case plat=''
                       plat0=' ‚ ‰'
                  case plat='‘'
                       plat0=' ‘-K€'
                  other
                       plat0='       '
               endcase
               if kt='„'
                  kt_0=str(zami-pris,3)
                  kt0=kt0+(zami-pris)
               else
                  kt_0='  '
              endif


     *    ? nom+i+dtoc(pris)+i+i+i+dtoc(zami)+i+i+staj+i+i+i+str(zami-pris,2)+i+i+plat0+i+admi+i+name+i+fami+i+dtoc(razd)+i+i+i+graz+i+kt_0
       if v='1'
          ? nom+i+dtoc(pris)+chr(253)+i+i+dtoc(zami)+i+i+staj+i+i+i+str(zami-pris,2)+i+i+plat0+i+admi+i+name+i+fami+i+dtoc(razd)+i+i+i+graz+i+i+i+kt_0
       else
          ? nom+i+dtoc(pris)+i+i+i+dtoc(zami)+i+i+staj+i+i+i+str(zami-pris,2)+i+i+plat0+i+admi+i+name+i+fami+i+dtoc(razd)+i+i+i+graz+i+i+i+kt_0
       endif
     *    ? nom+i+dtoc(pris)+i+i+i+dtoc(zami)+i+i+staj+i+i++str(zami-pris,3)+i+i+plat0+i+admi+i+name+i+fami+i+dtoc(razd)+i+i+i+graz+i+i+i+kt_0
                 dni0=dni0+(zami-pris)
                 spri()
                                 if  b0=0
  ?? ''
  ?? space(128)+'±²°. '+str(b2,3)
  ?  repli(chr(205),128)
  ? ' HŒ…  ˆ‘’ˆƒ€      ‡€Œˆ€‹   ‘’€Ÿ  H™.  ‹€™H…  €„Œ.  ˆŒ…             …‡ˆŒ…           ƒ„.€†„€HE      ƒ€†„€H‘’‚     ’Š”'
  ?  repli(chr(205),128)
  b0=4
                                 endif
            endif
               store staj to staj1
               if .not.eof()
                  skip
               else
                  exit
               endif
         enddo
          ? space(20)+'¡¹®'+space(12)+str(dni0,5)+space(83)+str(kt0,4)
          ?

        store '2' to  ll0
        pech()
      enddo
      case v2=4
        store date0 to dati1,dati2
        sele 3
        use \hlp\job\uslu inde \hlp\job\ussh
      do while .t.
        sele 2
        use stai inde schi,stii,snoi
        set relation to sch into uslu
        ramka()
        set cent on
        @ 23,22 say 'F3 - ±¯¨±ºª ­  ³±«³£¨²¥ ­  ±² ¿² '
        set key -2 to spis3
        @  2,33 say ' ’—…’ ‡€ …ˆ„'
        @  3,33 say '-----------------'
        @  5,14 say 'H€—€‹ H€ …ˆ„:            K€‰ H€ …ˆ„:'
        @  5,32 get dati1
        @  5,59 get dati2
        @  7,33 prompt '‘šK€’…H'
        @  7,43 prompt '€‡˜ˆ…'
        read
        menu to l0
           if lastkey()=27
              set filter to
              set cent off
              return
           endif
     *  set filte to dati1-1 < pris .and.  pris < dati2+1
        set filte to dati1-1 < datp .and.  datp < dati2+1
        go top
        izrab()

                  if ekpr0=2
                     ll0='2'
                     b1=37
                     @ 14,23 say '‚º¢¥¤¥²¥ ¡°®© °¥¤®¢¥ ­  ±²° ­¨¶ ' get b1 pict'999'
                     read
                     set marg to 1
                  endif

        set marg to 9
        ? space(21)+'•’…‹ "K€‹" ‘‹.Ÿƒ'
        ?
        ? space(12)+' ‡€ …ˆ„ ’ '+dtoc(dati1)+'  „ '+ dtoc(dati2)
        ?
          suma0=0

         ?  repli(chr(205),63)
         ? 'K„           “‘‹“ƒ€          ‘’€Ÿ   ‰   …„.–…€        ‘“Œ€'
         ?  repli(chr(205),63)
      *  do while datp=dati1.and.dni='¯'.and.admi=admi0.and.(.not.eof())
         do while .not.eof()
            sch0=sch
            store 0 to suma1,kol1
           do while sch0=sch
         *  ? sch+'  '+uslu->hara+space(8)+str(kol,2)+'   '+str(zena,6,2)+'  '+str(suma,10,2)
         if m=' '
          if l0=2
            ? sch+'  '+uslu->hara+' '+staj+'    '+str(kol,2)+'    '+str(zena,6,2)+'  '+str(suma,10,2)
          endif
            uslu0=uslu->hara
            kol1=kol1+kol
            suma1=suma1+suma
            suma0=suma0+suma
         endif
               if eof()
                  exit
               else
                  skip
               endif
           enddo
         if l0=2
            ? space(36)+'---------------------------'
            ? sch0+'        ‚±¨·ª® §  ª®¤  :         '+str(kol1,5)+'            '+str(suma1,10,2)
            ?
         else
            ? sch0+'  '+uslu0+'    '+str(kol1,5)+'            '+str(suma1,10,2)
         endif
            spri()
                                 if  b0=0
  b2=b2+1
  ?? repli(chr(205),61)
  ? repli('_',79)
  ? '‘’€Ÿ   K„         “‘‹“ƒ€           ‰  …„.–…€    ‘“Œ€'
  ?? repli(chr(205),61)
  b0=4
                                 endif
         enddo
            ? space(28)+'-----------------------------------'
            ? '         ™                                        '+str(suma0,10,2)
            ?
            ?
            ?
            ? space(34)+'®¤¯¨±: ..................'
            ? space(42)+'/ '+trim(ime0)+' /'
          pech()
      enddo
      case v2=5
      set date brit
      set dele on
      sele 1
      use hotel inde nomi, sthi
      store dte1 to dati1
      store dte2 to dati2
      set cent on
      l0=1
      do while .t.
        ramka()
        set cent on
        @  2,32 say ' ’€K‘€ K“’…H ”H„'
        @  3,32 say '---------------------'
        @  8,14 say 'H€—€‹ H€ …ˆ„:            K€‰ H€ …ˆ„:'
        @  8,32 get dati1
        @  8,59 get dati2
        read
         menu to l0
           if lastkey()=27
              set filter to
              set dele off
              set cent off
              return
           endif
              sele 1
              use hotel inde nomi
   *   do case
   *      case
   *   endcase
        set filte to dati1-1 < pris .and.  pris < dati2+1  && .and. plat='±'
        go top
        izrab()
           if ekpr0=2
              b1=50
              ?? norm0
              set marg to 11
           endif
        store 0 to dni0,kt0,dni1,dni2,kt2,kt_0
        i=' '
        ? space(13)+'’€K‘€ K“’…H ”H„'
        ? space(13)+'--------------------'
        ?
        ? space( 9)+'‡€ …ˆ„€  '+subs(dtoc(dati1),1,2)+' - '+dtoc(dati2)
        ?
        ?
         do while .not. eof()
            if .not.staj='9999'
                dni0=dni0+(zami-pris)
                if graz='š‹ƒ€ˆŸ'
                   dni2=dni2+(zami-pris)
                endif
               do case
                  case plat=''
                       plat0=' ‚ ‰'
                  case plat='‘'
                       plat0=' ‘-K€'
                       dni1=dni1+(zami-pris)
                  other
                       plat0='       '
               endcase
               if kt='„'
                  kt0=kt0+(zami-pris)
              endif
            endif
               if .not.eof()
                  skip
               else
                  exit
               endif
         enddo
   *    set marg to 5
          ? '¡¹ ¡°®© °¥ «¨§¨° ­¨ ­®¹³¢ª¨ / § ±²° µ®¢ª¨'+str(dni0,7)
          ? '¢ ².·. š‹ƒ€ˆ                            '+str(dni2,7)
          ? '       —“†„…H–ˆ                           '+str(dni0-dni2,7)
          ? '°®© °¥ «¨§¨° ­¨ ­®¹³¢ª¨ ·°¥§ ²³°®¯¥° ²®° '+str(dni1,7)
          ? '°®© °¥ «¨§¨° ­¨ ®¡« £ ¥¬¨ ­®¹³¢ª¨        '+str(kt0,7)
          ? ' §¬¥° ­  ª³°®°²­  ² ª±                     1 «¢.'
          ? ' ·¨±«¥­  ª³°®°²­  ² ª±                   ' +str(kt0,7,2)
          ? '‚­¥±¥­  ª³°®°²­  ² ª±  ± ¯« ²¥¦­® ­ °¥¦¤ ­¥ ®² ..'
          ?
          ?
          ? '„ ­­¨ §  «¥£«®¢ ²  ¡ §  ­  ²³°¨±²¨·¥±ª¨¿ ®¡¥ª²  '
          ? '‹¥£«®¢  ¡ §                                    52'
          ? '°®© «¥£«  ¯°¥¤®±² ¢¥­¨ ¯°¥§ ¬¥±¥¶             52'



        pech()
      enddo
      case v2=6
      set date brit
      set dele on
      sele 3
      use \hlp\job\uslu inde \hlp\job\ussh
      sele 2
      use stai inde schi
      store dte1 to dati1
      store dte2 to dati2
      set cent on
      do while .t.
        ramka()
        @  2,32 say ' H…‹€’…Hˆ “‘‹“ƒˆ'
        @  3,31 say '-------------------'
        @  8,14 say 'H€—€‹ H€ …ˆ„:            K€‰ H€ …ˆ„:'
        @  8,32 get dati1
        @  8,59 get dati2
        read
           if lastkey()=27
              set filter to
              set dele off
              set cent off
              return
           endif
        set filte to dati1-1 < pris .and.  pris < dati2+1 .and.dni='±'
        go top
        set relation to sch into uslu
        izrab()
         ? ' …ƒ.N  ‘’€Ÿ  ˜-  K-‚  ‘’-‘’  ˆ‘’ˆƒH€‹   ‡€Œˆ€‹      •€€K’…ˆ‘’ˆK€'
         ?
        do while .not. eof()
           ? nom+'  '+staj+'  '+sch+' '+str(kol,3)+'  '+str(suma,7,2)+'  '+dtoc(pris)+'  '+dtoc(zami)+'  '+uslu->hara
           if eof()
              exit
           else
              skip
           endif
           spri()
        enddo
        pech()
      enddo
   endcase

        @ 23,22 say 'F3 - ±¯¨±ºª ­  ³±«³£¨²¥ ­  ±² ¿² '
        set key -2 to spis2

                           proc spis3
                save screen
                set order to 3
                set rela to
                set key -2 to
                set cent off
                declare fiel[10]
                fiel[1]='sch'
                fiel[2]='nom'
                fiel[3]='datp'
                fiel[4]='staj'
                fiel[5]='kol'
                fiel[6]='zena'
                fiel[7]='suma'
                fiel[8]='m'
                fiel[9]='pris'
                fiel[10]='zami'
                declare imem[10]
                imem[1]='˜ˆ”' && +space(3)    &&  12
                imem[2]='…ƒ. N'
                imem[3]='„€’€ H€ ‹'
                imem[4]='  ‘’€Ÿ'
                imem[5]='  K-‚'
                imem[6]='  …„.–…H€'
                imem[7]='       ‘“Œ€'
                imem[8]='Œ'
                imem[9]='ˆ‘’ˆƒ.'
                imem[10]='‡€ŒˆH€ '
                @ 11, 4,21,76 box ram1
                dbedit(12, 5,20,75,fiel,"pfunk3",'',imem,'Í','Ó')
                set key -2 to spis3
                set cent on
                set order to 1
                restore screen
                           return


      ************ ®²°¥¡¨²¥«±ª  ´³­ª¶¨¿ **********
                function pfunk3
                parameters mode0,fld0
                cur0=fiel[fld0]
                 do case
            case mode0 < 4
                      return 1
            case lastkey()=13
                      set cent on
                      set curs on
                      @ row(),col() get &cur0
                      read
                      set cent off
                      set curs off
                      re0=recno()
                      go top
                      suma0=0
                 *    set dele on
                      do while .not.eof()
                        if .not. m='*'
                          suma0=suma0+suma
                        endif
                          if eof()
                             exit
                          else
                             skip
                          endif
                      enddo
                      go re0
             set dele off
             @ 23,15 say  space(51)
             @ 23,16 say 'F9-„®¡ ¢¿ ­®¢  ³±«³£        ™€ ‘“Œ€ '+str(suma0,9,2)
            case lastkey()=-8
                 appe blank
                 repl datp with date0, pris with date0, zami with date0

            case lastkey()=27
                  return 0
            case lastkey()=172
            *     nom0=nom
            *   do while .not.eof().and.nom=nom0
                  repl m with '*'
                  dele
                  skip
            *   enddo
            case lastkey()=162
            *     nom0=nom
            *   do while .not.eof().and.nom=nom0
                  repl m with ' '
                  recal
                  skip
            *   enddo
            otherwise
                  return 1
          endcase
                return 1

       ************** ‹¨±²¨ ±¯¨±ºª  ­   ¤°¥±­¨²¥ ª °²¨ **************
                           proc spis4
                save screen
                set key -2 to
                sele 1
                use hotel inde nomi
                sele 2
          *     use stai inde snoi
                set relation to nom into hotel
                set cent off
                declare fiel[13]
                fiel[1]='nom'
                fiel[2]='staj'
                fiel[3]='sch'
                fiel[4]='kol'
                fiel[5]='zena'
                fiel[6]='suma'
                fiel[7]='dni'
                fiel[8]='datp'
                fiel[9]='pris'
                fiel[10]='zami'
                fiel[11]='admi'
                fiel[12]='hotel->name'
                fiel[13]='staj'
                declare imem[13]
                imem[1]='N. €K'
                imem[2]='‘’€Ÿ'
                imem[3]='˜ˆ”'
                imem[4]='K‹'
                imem[5]='–…H€'
                imem[6]='‘“Œ€'
                imem[7]='„'
                imem[8]='„€’€ H€ ‹'
                imem[9]='ˆ‘’ˆƒ€'
                imem[10]='‡€Œˆ€‚€'
                imem[11]='€'
                imem[12]='  ˆ Œ … '
                imem[13]='‘’€Ÿ'
                @ 11, 2,21,78 box ram1
                dbedit(12, 3,20,77,fiel,"pfunk4",'',imem,'Í','Ó')
                set key -2 to spis2
                set cent on
        sele 3
        use \hlp\job\uslu inde \hlp\job\ussh
        sele 2
        use stai inde stii
        set relation to sch into uslu
                restore screen
                           return


      ************ ®²°¥¡¨²¥«±ª  ´³­ª¶¨¿ **********
                function pfunk4
                parameters mode0,fld0
                private fld0
                cur0=fiel[fld0]
                 do case
                   case mode0 < 4
  *    @ 20,18 say 'F10-¤®¡ ¢¿ ­®¢  ´¨°¬   Ctrl+F10-µ-ª  §  ´-° '
                        return 1
                   case lastkey()=27
                        return 0
                   case lastkey()=13
                         set cursor on
                      if rec_lock(3)
                         set cent on
                         @ row(),col() get &cur0
                      else
                          vapros()
                      endif
                         read
                         set cent off
                         keyboard chr(4)
                         set cursor off
                         return 1
                   otherwise
                         return 1
                 endcase
                return 1

