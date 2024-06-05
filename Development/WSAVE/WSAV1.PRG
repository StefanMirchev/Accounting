      *     proc sav1
      sch0='   '
      v2=0
      tt0='10'
  
     do case 
       case v0=1      
         
          deacti popup               
          ramka0 = CREATEOBJECT('ramka0')
          ramka0.Caption = SPACE(75)+"ВЪВЕЖДАНЕ HА СМЕТKОПЛАНА"  
          ramka0.show 
          READ events
 
    do while .t.  
          open_obve(loc0=0)
          @ 0.5,15 say  'Въведете шифъра на сметката ' get sch0 COLOR, RGB(0,0,0,255,255,255)  DEFAULT 3 
          chet()
  
        if lastkey()=27 .or. substr(sch0,1,1)=' '
              psav00='psav11'                              
              DO izrab
            *   ramka0.Visible = .F. 
              EXIT 
        endif
     
           find '&sch0'
            if .not. found()
                APPEND blank
                rec_lock()
                 repl sch with sch0
                 rec_unlock()
            endif
               name0=name
               t0=t
               a0=a
 
 
         do case
            case t0='а'
                 tip0='активна'
            case t0='п'
                 tip0='пасивна'
            case t0=' '
                 tip0='акт-пас' 
         endcase
         do case
            case a='д'
                 a1='с аналитични партиди'
            case a='н'
                 a1='без аналитични п-иди'
         endcase
     
   
    @  2,1 say 'Hаименование на сметката'; 
        get name0 COLOR, RGB(0,0,0,255,255,255) 
    @  3.5,1 say 'Вид на сметката /активна-"а", пасивна-"п", акт\пас-" "/   ';
       get t0  valid t0='а'.or.t0='п'.or.t0=' ' COLOR, RGB(0,0,0,255,255,255) DEFAULT 3 
    @  5,1 say 'С аналитични партиди - "д", без аналитични партиди - "н"  ';
      get a0 valid a0='д'.or.a0='н'  COLOR, RGB(0,0,0,255,255,255)  DEFAUL 3
      chet()
         
              find '&sch0'
              if found()  
                 rec_lock()
                 repl sch with sch0,t with t0,a with a0,name with name0
                 rec_unlock()
              ELSE
                   loop
              endif
   * clea read
 
     enddo
   
             
       case v2=2
         ramka()
         do while .t.
         store 0 to sald0,sald1,sald2
         @ 10,12 say '                                                           '
         @ 2,26 say 'ВЪВЕЖДАHЕ HА HАЧАЛHИ САЛДА'
         @ 3,25 say '----------------------------'
         set key 245 to korsmet
         @  7,24 say 'Въведете шифъра на сметката  ' get sch0
         chet()
             if lastkey()=27 .or. substr(sch0,1,1)=' '
                 exit
             endif
         @ 10,12 say '                                                           '
         open_obve(loc0=0)
         find "&sch0"
                 if found()
                        store t to t0,t2
                       a0=a
                       do case
                          case t0='п'
                          sald0=nkso
                          sald2=nkso
                          @ 10,2 clea  to 14,78
                          @ 10,18 say 'Салдото е кредитно по сметка'
                          @ 10,55 say sald0  pict "99999999999.99"
                          t0='п'
                                      i0=inkey(0)
                       case  t0='а'
                          sald0=ndso
                          sald1=ndso
                          @ 10,18 say '                                      '
                          @ 10,18 say 'Салдото e дебитно по сметка'
                          @ 10,55 say sald0  pict "99999999999.99"
                          t0='а'
                                      i0=inkey(0)
                       case  t0=' '
                          @ 10,18 say '                                      '
                         do case
                            case 0 < ndso
                             sald0=ndso
                             sald1=ndso
                             @ 10,18 say 'Салдото e дебитно по сметка'
                             @ 10,55 say sald0  pict "99999999999.99"
                             t0='д'
                            case 0 < nkso
                             sald0=nkso
                             sald2=nkso
                             @ 10,18 say 'Салдото е кредитно по сметка'
                             @ 10,55 say sald0  pict "99999999999.99"
                             t0='к'
                         endcase
         @ 21,29 say 'Сметката е активно-пасивна'
         @ 23,19 say 'Посочете e салдото дебита-"д", кредита-"к"' get t0  valid  t0='д'.or.t0='к'
                                      chet()
         @ 17,3 clea to 21,78
         @ 23,15 say space(51)
                  if t0='д'
                      t0='а'
                  else
                      t0='п'
                  endif
                       endcase
                  if a0='д'          &&  викане на аналитичните салда
                     do sapa
                     @ 10,55 say sald0 pict "99999999999.99"
                  else
                     @ 10,21 say 'Въведете началното салдо '
                     @ 10,55 get sald0 pict "99999999999.99"
                     read  &&  chet()
                  endif
                 else
                         nsinf()
                            loop
                 endif
                   sele 7
                   find "&sch0"
                   rec_lock()
                   if t0='а'
                      repl sch  with sch0, ndso with sald0, nkso with 0
                   endif
                   if t0='п'
                      repl sch  with sch0, ndso with 0, nkso with sald0
                   endif
                   rec_unlock()
         enddo

       case v2=3
           do while .t.
               ramka()
               open_obap(loc0=0)
               @  2,26 say 'ВЪВЕЖДАHЕ HА ПЪРВО И ВТОРО HИВО'
               @  3,25 say '---------------------------------'
                    l0='3'
               @  8,18 say 'Въведете ниво I-во - 1,II-ро - 2,III-ро - 3 :' get l0  valid  l0='1'.or.l0='2'.or.l0='3'
               chet()
                       if lastkey()=27
                           exit
                       endif
               do case
                  case l0='1'
               part0=' '
               @ 10,27 say 'Въведете шифъра на нивото' get part0
               chet()
               part0=part0+'---'
               dp0='---'+part0
                  case l0='2'
               part0='  '
               @ 10,27 say 'Въведете шифъра на нивото' get part0
               chet()
               part0=part0+'--'
               dp0='---'+part0
                  case l0='3'
               part0='   '
               @ 10,27 say 'Въведете шифъра на нивото' get part0
               chet()
               part0=part0+'-'
               dp0='---'+part0
                  endcase
             if lastkey()=27
                 exit
             endif
           sele 6
            go top
             find '&dp0'
                 if found()
                      mk0=mk
                      name0=name
                 else
                    l0='д'
                    @ 23,16 say 'Hивото е ново, желаете ли да го въведете д/н ? ' get l0 valid l0='д'.or.l0='н'
                       chet()
                   if l0='д'
                      appe blank
                 @ 23,16 say '                                                  '
                   else
                 @ 23,16 say '                                                  '
                     loop
                   endif
                 endif
               @ 12, 7 say 'Въведете наименование на нивото' get name0
                chet()
             if lastkey()=27
                 exit
             endif
       sele 6
                 rec_lock()
      repl part with '---'+part0,name with name0, mk with mk0

                 rec_unlock()
           enddo
       case v2=4
                 set dele on
                 ramka()
                 @  2,22 say 'ОПРЕДЕЛЯHЕ ГРУПИТЕ HА ДОКУМЕHТАЦИЯТА'
                 @  3,21 say '--------------------------------------'
                 open_arhi(loc0=0)   && без индексни файлове
                 dele all for papk='k'.and.nom='    '
                 set filter to data=data0.and.substr(papk,1,1)='k'
                   go top
                   declare fiel[1]
                   fiel[1]='dok'
                   declare imem[1]
                   imem[1]=''
                   dbedit( 4,17,19,65,fiel,"pfunk","",imem,' ')
                 set dele off
       case v2=5
                go1=go0
                pr1=1
                pr2=9999
                store us_0 to us_1
                sch0='   '
           do while .t.
                ramka()
                l5='н'
                sc6=1
                @ 23,27 say 'F7 - списък от директории'
                @  2,27 say 'АКТУАЛИЗАЦИЯ HА АHАЛ. ПАРТИДИ'
                @  3,26 say '-------------------------------'
                set key -6 to direk1
                @  6,25 say 'От директория ' get us_1
                chet() && read
                us_1=trim(us_1)
                set key -6 to direk0
                @  8,25 say 'В  директория ' get us_0
                  chet() && read
                us_0=trim(us_0)
                @ 10,31 say 'От сметка  ' get sch0
                @ 12,30 say 'От партида :' get pr1 pict'9999'
                @ 14,30 say 'До партида :' get pr2 pict'9999'
                @ 16,18 say 'С промяна на наименование на партида д/н' get l5 valid l5='н'.or.l5='д'
                chet()  && read
                @ 18,30 say 'С цени : '
                @ 18,41 prompt 'HЕ'
                @ 18,44 prompt 'ДА'
                menu to sc6
                   if lastkey()=27
                     return
                   endif
              aktual()
           enddo
                set key -6 to
       case v2=6
                   do while .t.
                   ramka()
                   b0=0
                   sch1='   '
                   pr1=1
                   pr2=9999
                   sc6=1
                 @  2,28 say 'ОТКРИВАHЕ HА HОВИ ПАРТИДИ'
                 @  3,27 say '---------------------------'
                 @  8,31 say 'От сметка  ' get sch0
                 @ 10,31 say 'В  сметка  ' get sch1
                 @ 12,30 say 'От партида :' get pr1 pict'9999'
                 @ 14,30 say 'До партида :' get pr2 pict'9999'
                 chet()
                 @ 16,30 say 'С цени : '
                 @ 16,41 prompt 'HЕ'
                 @ 16,44 prompt 'ДА'
                 menu to sc6
                           if lastkey()=27 .or. sch1='   '
                               restore screen
                               return
                           endif
              raboti()
         open_obap(loc0=0)
         find '&sch0'
                l0=0
                do while substr(part,1,3)=sch0 .and.(.not.eof())
                 if val(substr(part,4,4))<pr1.or.val(substr(part,4,4))>pr2
                          if .not. eof()
                             skip
                             loop
                          endif
                 endif
                    part2=part
                      mk0=mk
                      name0=name
                      dnev0=dnev
                      zena0=zena
                           part3=sch1+substr(part,4,4)
                    find  '&part3'
                      if .not. found ()
                      appe blank
                 rec_lock()
         repl  part with part3,name with name0,dnev with dnev0,mk with mk0
                 rec_unlock()
                      endif
                          if sc6=2
                             rec_lock()
                             repl zena with zena0
                             rec_unlock()
                          endif
                    find  '&part2'
                       if .not. eof()
                         if l0=0
                              skip
                              l0=1
                         else
                           skip
                         endif
                        else
                           exit
                       endif
                enddo
                   enddo
       case v2=7

       case v2=8
                ! \hlp\otch.exe
                pauza()
    endcase
                   
 ************************************ PROCEDURI KAM SAV1 ***************************************                              
                 
                                 
                 
                                     PROCEDURE psav11   
            
               
          * set CONSOLE ON
          *  ? '&psav00'
          *  ?  '&save_1'
          *   WAIT '4444444444444444444444444444444444444444'            
              go top
                    
                        if ekpr0=2
                            b1=55
                           ll0='2'
                           set marg to 10
                       endif

             TEXT
                                      Индивидуален сметкоплан на фирма 
         
                  Hомер        Hаименование  на сетката            Тип  на сетката  
              ENDTEXT
                do while .not. eof()
                       do case
                     case t='а'
                          tip0='активна'
                     case t='п'
                          tip0='пасивна'
                     case t=' '
                          tip0='акт-пас'
                  endcase
                  do case
                     case a='д'
                          a1='с аналитични партиди'
                     case a='н'
                          a1='без аналитични п-иди'
                  endcase
                    TEXT
                   << sch >>  << name >>  << tip0 >>  << a1 >>
                    ENDTEXT
                    spri()
                           if .not. eof()
                               skip
                           else
                               exit
                           endif
                enddo
                   TEXT
                  <<>>
                  <<>>
                  <<>>
                  <<>>
                 
                  <<'                                    Съставил : ............'>>
                  <<>> 
                  ENDTEXT
                                          fclose(_text )
                  DO PECH
                                           RETURN  &&    PROCEDURE psav11       
                 
                 
                 
                 
                 
                 
                   function pfunk
                   parameters mode0,fld0
                   private fld0
                   cur0=fiel[fld0]
                    do case
                      case mode0 < 4
          nom2=str(val(subs(dok,23,4))+1,4)
          set cursor off
          @ 21,14,24,66 box ram1
          @ 22,15 clea to 23,65
          @ 22,26 say 'Избор на група стрелка - '+chr(25)+' '+chr(24)
          @ 23,17 say 'Insert-вмъква нов ред     Delete-изтрива ред'
                           return 1
                      case lastkey()=27
                    go top
                        rec_lock()
                        repl nom with '   0'
                        rec_unlock()
                   index on data+nom to nari
                    rein
                    set dele off
                           return 0
                      case lastkey()=13
                            set cursor on
                            rec_lock()
                            @ row(),col() get &cur0
                           @ 23,26 say '   Въведете желаните групи     '
                            read   && chet()
                             if 0 < val(substr(dok,18,4))-1
                                repl nom with str(val(substr(dok,18,4))-1,4)
                             else
                                repl nom with '   0'
                             endif
                                rec_unlock()
                            keyboard chr(4)
                            return 1
                      case lastkey()=22
                           appe blank
                                rec_lock()
                                repl nom with nom2, papk with 'k',data with data0,vek with vek0
                                rec_unlock()
                      case lastkey()=7
                           del()
                      otherwise
                            return 1
                    endcase
                   return 1

  **************  Процедура за въвеждане на анал. салда    **************
                              proc  sapa
         open_obap(loc0=0)
         ds0=sch0
         barc1='н'
         barc0=space(25)
         find '&ds0'
           if found()
           else
             part0=0
             @ 23,20 say 'Hяма аналитични партиди по тази сметка'
               i0=inkey(0)
             @ 23,20 say '                                       '
           endif
             @ 12, 3 say repl('=',75)
             do while .t.
         if barc1='д'.and.sc13='д'
               barc0='                         '
               set key 287 to barcod
               @ 15,3 clea to 21,78
               @ 15,21 say 'ВЪВЕДЕТЕ БАРКОД  ' get barc0
               chet()
                if barc1='н'
                   loop
                endif
               if lastkey()=27
                  return
               endif
               set key 287 to
               open_obap(loc0=0)
               set order to 0
               locate for barc=trim(barc0)
               if found()
                  part0=val(subs(part,4,4))
                  kol0=1
               else
                      l0='н'
                      open_obap(loc0=0) && aobi
                      set filter to substr(part,1,3)=sch0
                      go bott
                      part0=val(substr(part,4,4))+1
                      zena0=zena
               endif
         else
                @ 23,16 say 'F3-издирва анал.партида F4-груп.промяна на наимен.'
               set key -2 to spisk1
               set key 287 to barcod
               part0=0
               @ 15,3 clea to 21,78
               @ 15,21 say 'Въведете шифъра на анал. партида:' get part0 pict '9999'
               chet()
               set key -2 to
               set key 287 to
                  if lastkey()=27
                       @ 13,3 clea to 21,78
                       exit
                  endif
                if barc1='д'
                   loop
                endif
         endif
           open_obap(loc0=0)
                       if part0<1
                          loop
                       endif
               part1=sch0+str(part0,4)
               dp0=part1
            go top
             find '&dp0'
                 if found()
                      t1=t
                      mk0=mk
                      kol0=kol
                      zena0=zena
                      asal0=asal
                      name0=name
                      dnev0=dnev
                    if sc13='д'
                      barc0=barc
                    endif
              if t2=' '
                        if t0='а'
                            if t1='д'
                               sald1=sald1-asal0
                               sald0=sald1
                                 if sald1<0
                                    sald2=abs(sald1)
                                    sald0=sald2
                                    sald1=0
                                 endif
                            else
                               sald1=sald1+asal0
                               sald0=sald1
                            endif
                        endif
                        if t0='п'
                            if t1='к'
                               sald2=sald2-asal0
                               sald0=sald2
                                 if sald2<0
                                    sald1=abs(sald2)
                                    sald0=sald1
                                    sald2=0
                                 endif
                            else
                               sald2=sald2+asal0
                               sald0=sald2
                            endif
                        endif
                                                             if sald1=0
                                                                 t0='п'
                                                             endif
                                                             if sald2=0
                                                                 t0='а'
                                                             endif
              else
                               sald0=sald0-asal0
              endif


                      @ 10,55 say sald0 pict "99999999999.99"
                    l0='н'
                 else
                 l0='д'
                  @ 23,15 say space(51)
                  @ 23,15 say 'Партидата е нова, желаете ли да я въведете д/н ? ' get l0  valid  l0='д'.or.l0='н'
                 chet()
                   if l0='д'
                      kol0=0
                      zena0=zena
                      asal0=0
                    @ 23,15 say space(51)
                      appe blank
                   else
                   l0='н'
                    @ 23,15 say space(51)
                     loop
                   endif
                 endif
                if sc13='д'
                 *   barc0='                         '
                    @ 17,3 clea to 21,78
                    @ 18,19 say 'ВЪВЕДЕТЕ БАРКОД  ' get barc0
                    chet()
                    @ 17,3 clea to 21,78
                endif

               set key -3 to promnam
               set key 28 to umnoz
               @ 17,17 say 'М-КА    КОЛИЧЕСТВО      ЦЕHА        СТОЙHОСТ'
               @ 18,18 get mk0
               @ 18,24 get kol0 pict "99999999.999"
               @ 18,38 get zena0 pict "&picze_0"
               @ 18,51 get asal0 pict "99999999999.99"
               @ 20,21 say 'Hаименование на партидата        О-ние в дневник'
               @ 21,16 get name0
               @ 21,57 get dnev0
               chet()
               set key -3 to
               set key 28 to
           if t2=' '
             @ 23,16 say 'Смет. е акт.-пас. посочете с-то Д-т "д", K-т "к"' get t1  valid t1='д'.or.t1='к'.or.t1=' '
             chet()
           endif
             @ 23,15 say '                                                   '
             @ 15,3 clea to 16,78
             rec_lock()
         repl  part with part1,name with name0,dnev with dnev0,mk with mk0,;
              kol with kol0,zena with zena0, asal with asal0
                         if  sc13='д'
                            repl barc with barc0
                         endif
                           if t2=' '
                              repl  t with t1
                           endif
                 rec_unlock()
                  if mk='**'
                     if asal=0
                         del()
                     else
                         @ 23,22 say 'Програмата маркира само нулево салдо'
                         i0=inkey(0)
                     endif
                  else
                     reca()
                  endif
            if t2=' '
                        if t0='а'
                           if t1='д'
                             sald1=sald1+asal0
                           else
                             sald1=sald1-asal0
                                 if sald1<0
                                    sald2=abs(sald1)
                                    sald0=sald2
                                    sald1=0
                                 endif
                           endif
                        endif
                        if t0='п'
                           if t1='к'
                             sald2=sald2+asal0
                           else
                             sald2=sald2-asal0
                                 if sald2<0
                                    sald1=abs(sald2)
                                    sald0=sald1
                                    sald2=0
                                 endif
                           endif
                        endif
                   if sald1>sald2
                       sald0=sald1-sald2
                       t0='а'
                   else
                       sald0=sald2-sald1
                       t0='п'
                   endif
            else
                    sald0=sald0+asal0
            endif
                     if t0='а'
                         @ 10,18 say 'Салдото e дебитно по сметка '
                     else
                         @ 10,18 say 'Салдото е кредитно по сметка'
                     endif
                     @ 10,55 say sald0 pict "99999999999.99"
     if (substr(part1,1,1)='3'.or.substr(part1,1,1)='7').and.(sc3='д'.and.l0='д')
                         part4=substr(part,4,4)
                         preh()
     endif
             enddo
                              return

         ************** Процедура за ичисляване на ст-ст *************
                      proc umnoz
                 do while .t.
                     if lastkey()=28
                     if tt0='20'
                        if l6='н'
                           @ 24,70 say '  С УМHОЖ.'
                           l6='д'
                        else
                           @ 24,70 say 'БЕЗ УМHОЖ.'
                           l6='н'
                           return
                        endif
                     endif
                     endif
                     store round(zena0*kol0,j1) to asal0, dast2
                 if asal0<-9999999999.99.or.asal0>99999999999.99.or.dast2<-9999999999.99.or.dast2>99999999999.99
                          zvan()
                          clear gets
                     if tt0='10'
                          @ 23,17 say '        Внимание препълвате регистъра !'
                          @ 18,24 get kol0 pict "99999999.999"
                          @ 18,38 get zena0 pict "9999999.999"
                     else
                          @ 18,17 say '        Внимание препълвате регистъра !'
                          @ 24,22 get kol0 pict "99999999.999"
                          @ 24,38 get zena0 pict "9999999.999"
                     endif
                            chet()
                         loop
                      return
                 else
                       exit
                 endif
                 enddo
                     RETURN
                     
                     
          ******************   Процедура за корекция на сметка ***********
                           proc korsmet
               s501_=0
              save screen
             clea gets
             @ 14, 9,16,72 box ram1
             @ 15,10 clea to 15,71
             @ 15,10 say ' Въведете салдо-оборот по '+sch0+':' get sald pict "99999999999.99"
             @ 15,57  get obor pict "99999999999.99"
             chet()
             restore screen
                           return
     *********  Групова промява на наименовавие на стоковите сметки  ********
                           proc promnam
                 re0=recno()
                 @ 23,16 say '     Програмата пренаименова наименованието       '
        do case
           case  410 < val(subs(part,1,3)) .and. val(subs(part,1,3)) < 600
                 set filter to 410 < val(subs(part,1,3)) .and. val(subs(part,1,3)) < 600 .and. subs(part,4,4)=str(part0,4)
                 pp0="410 < val(subs(part,1,3)) .and. val(subs(part,1,3)) < 600 .and. subs(part,4,4)=str(part0,4)"
       *   case  705 < val(subs(part,1,3))
           case  702 = val(subs(part,1,3)) &&& само за sc9 и  sc11
                 set filter to
                 part1='304'+subs(str(part0,7),4,4)
                 find "&part1"
               if found()
                 rec_lock()
                 repl name with name0
                 rec_unlock()
               endif
               if found()
                 part1='702'+subs(str(part0,7),4,4)
                 find "&part1"
                 rec_lock()
                 repl name with name0
                 rec_unlock()
               endif
                 set filter to 705 < val(subs(part,1,3)).and.subs(part,4,4)=str(part0,4).and.subs(part,1,1)='7'
                 pp0="705 < val(subs(part,1,3)).and.subs(part,4,4)=str(part0,4).and.subs(part,1,1)='7'"
                 part1=sch0+subs(str(part0,7),4,4)
           endcase
                 go top
                 do while &pp0
                    rec_lock()
                    repl mk with mk0, name with name0, proa with '2'
                    rec_unlock()
                    sele 6
                    if .not. eof()
                       skip
                    else
                       exit
                    endif
                 enddo
                 set filter to
                 @ 23,16 say 'F3-издирва анал.партида F4-груп.промяна на наимен.'
                go re0
                           return

         ******************* Процедура за изработка на опарации  **********
                            proc   operi
         do ramka
                @  2,27 say 'ДОБАВЯHЕ HА ОРЕРАЦИИ '
                @  3,26 say '------------------------'
                i0=inkey(0)

   memowrit('expo.txt',strtran(freadstr( fopen("export.txt"),len(memoread("export.txt"))),"|",","))
       open_arhi(loc0=0)
       open_expo(loc0=0)
       dele all
       pack
       appe from expo.txt delimited with ,
       go top
      do while .not. eof()
       store fakt to fak0
         dok0=stok
               if fak0='-'
         vid0='от-т 0000000001'+' '+subs(data,1,2)+'/'+subs(data,3,2)+'/'+subs(data,5,2)+' к.отчет'
               else
         vid0='ф-ра '+fakt+' '+subs(data,1,2)+'/'+subs(data,3,2)+'/'+subs(data,5,2)+' '+klie
               endif
         dn2=dn
               sele 1
               appe blank
               rec_lock()
   repl nom with str(nom0,4), papk with str(papk0,3),dok with dok0,vid with vid0,;
   dr with 'п',vd with '04', sd with 'о',data with data0, vek with subs(vek0,1,2)
               if fak0='-'
                  repl fakt with '0000000001', dn with '         '
               else
                  repl fakt with fak0,dn with dn2
               endif
               rec_unlock()
               sele 14
         do while fak0=fakt
               rec_lock()

        if .not. eof()
           skip
        else
           exit
        endif
         enddo
         nom0=nom0+1
      enddo
                                   RETURN
                                   
                                   
 ******************* Процедура READ *******************
                             func chet
                             if (1 < sele())   &&  .or.(.not.empty(indexkey(sele())))
                                rec_lock()
                                read
                                rec_unlock()
                             else
                                 read
                             endif
                             return