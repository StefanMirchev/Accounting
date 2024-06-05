** ok asme bank chast ddok3 glkn lihva nepr niva nivo1 nivo novpart obsin razrjd   
** sav31 sbor spisk1 txt1 txt2 zavar
  DO startvar  
              
    if sc9='д'
       store sch00 to sch0
    else
       sch0='   '
    endif
    store 'д' to l2,l3
    ll4='л'
    b2=1
    store 0 to nom1,nom3,nom4,nom5,nom6,nom7,br0
    store substr(dtoc(date0),4,5) to data3,data4,data5,data6
   
    *  do while .t.
         
           a0=2     &&  ПАРТИДИ NE 
         
           store 0 to b0
           store '     '  to data1,data2
         * a=' '
           store 'н' to l1
           store 'д' to a1,a2
           store 0 to line0,line1,line2, line9, sec0
       
         ***********  NACHALO ZADALGITELNA RAMKA ZA WSQKA PROCEDURA ***************
          
           funcF8="\<F9 - д-ни об-ти по 304 к-ни об-ти по 702"+SPACE(6)
           deacti popup    
           ramka0 = CREATEOBJECT('ramka0')
           ramka0.Caption = SPACE(85)+"ГЛАВНА КНИГА"  
          
           ramka0.show 
           ramka0.Visible =.T.
           ramka0.etik01.Visible = .F.
           ramka0.text01.Visible = .F. 
       
            toolb0 = CREATEOBJECT("myToolBar") 
            WITH toolb0 
            .TOP=ekran0.Height*0.75
            .func_F2.Visible  = .T.
            .func_F3.Visible  = .F.
            .func_F4.Visible  = .T.
            .func_F5.Visible  = .T.
            .func_F6.Visible  = .T.
            .func_F7.Visible  = .T.
            .func_F8.Visible  = .T.
            .func_F9.Caption  = "\<F9 - Д-ни об-ти по 304 К-ни об-ти по 702"+SPACE(6)
           
          ENDWITH
           toolb0.Show  
 
 
         KEYBOARD "{RIGHTARROW}" 
         KEYBOARD "{LEFTARROW}"   
            
            on key label F2 toolb0.func_F2.CLICK    
            on key label F3 toolb0.func_F3.CLICK    
            on key label F4 toolb0.func_F4.CLICK   && ddok3 tuk
            on key label F5 toolb0.func_F5.CLICK   && glkn  tuk
            on key label F6 toolb0.func_F6.CLICK   
            on key label F7 toolb0.func_F7.CLICK
            on key label F8 toolb0.func_F8.CLICK
            on key label F9 toolb0.func_F9.CLICK
     
    ***********  NACHALO ZADALGITELNA RAMKA ZA WSQKA PROCEDURA ***************
         
   do while .t.  
      fsize0 = 10
     open_arhi()
     tx0=2
     tx1=2 
     sch0='   '
     tt0='30'
    * sch0='504'
   @ 0.5,1 CLEA TO 8, 150  
  *   KEYBOARD "{LEFTARROW}"   
   @  0.5,20 say 'Въведете шифъра на сметката ' get sch0 COLOR, RGB(0,0,0,255,255,255)  DEFAULT 3 
   @  2.0,18 say 'В лева "л" хил. лева "х"  млн. лева "м"  ' get ll4 valid ll4='л'.or.ll4='х'.or.ll4='м'COLOR, RGB(0,0,0,255,255,255)  DEFAULT ll4 
     chet()
  
              if lastkey()=27
                      set dele off
                      DO offkey
                      exit
               endif
           
            IF sch0=' '
               loop  
            endif 
           open_arhi()
           locate for subs(dok,1,5)=data0
             if found()
                dn00=data+nom
             endif
   open_obve(loc0=0)
   find '&sch0'
     if.not. found()
          @  6,23 say 'Hяма движение по тази сметка'
          i0=inkey(0.5)
          loop
     ELSE
     endif
     t0=t
      DO CASE 
        CASE  a='д'
              a0=1
        CASE  a='н'
              a0=2
      ENDCASE
     
         
        if sc9='д'
        *  tx0=1
        *  tx1=1
        endif
        razr()
            IF .not. sch0='   '
               DO case
                  CASE a0=1
                       tt0='31'

                      DO ASME

                   
                  CASE a0=2
                  
                       tt0='30'
                       psav00='SSME'
    
                      DO IZRAB
                   
                      *  !!! PASAG ZA PECHAT
                         FCLOSE(_text )  && TOWA E ZADALGITELNO SLED IZRAB 
                      *  CLEAR EVENTS
                         ekran0.circ04.Visible =.F.
                         ekran0.ekprE.Visible =.F.
                         ekran0.ekprP.Visible =.F.
                         prn1='s0001.prn'
                         pech0 =CREATEOBJECT('pechat')
                         pech0.Left=pechL0 
                         pech0.Width= pechW0
                         pech0.edit1.Left=pechL0*0.01615 
                         pech0.edit1.Width= pechW0*1.0060
                         pech0.edit1.FontSize=fsize0
                         pech0.show 
                         READ events
                         @ 0.5,1 CLEA TO 8, 150
                         KEYBOARD "{LEFTARROW}"
                      *  KRAJ PASAG ZA PECHAT  
                        
               ENDCASE
           
           endif                                  
    
       enddo

   *   1  ----------------- Процедура за синтитечни сметки-------------------
                                 PROCEDURE SSME
       
        restore from &disc_1\job\razrjd additive
        ramka0.show 
        ramka0.Caption = SPACE(85)+"ГЛАВНА КНИГА"  
        ramka0.Visible =.T.
        @ 0.5,5 CLEA TO 6, 150
        DO CASE
             CASE ll4='л'
               @  0.5,27 say 'Сметка '+sch0+' в лева  ' 
             CASE ll4='х'
               @  0.5,23 say 'Сметка '+sch0+'хил. лева' 
             CASE ll4='м'  
               @  0.5,23 say 'Сметка '+sch0+'млн. лева' 
        ENDCASE   
        DO CASE 
           CASE  tt0='300'  && F@
           CASE  tt0='301'  && F3
                 @  6,17 say 'Описание 1по счетоводна операция' 
           CASE  tt0='303'   && F6
                 @  6,22 say 'Описание по регистър' 
       ENDCASE
       
                   DO raboti
      
      open_obve(loc0=0)
      find '&sch0'
      t0=t 
          if l2='д'
          *   do grani &&  wsav3 
          endif
          if ekpr0=2.and.l2='д'
             if tx0=1
                b1=29
             else
                b1=55
             endif

             @ 3,13 say 'Въведете брой редове на страница' get b1 pict'999' COLOR, RGB(0,0,0,255,255,255)  DEFAULT 3 
             chet()
          endif
             store 100 to line1
             store round(line1/20*1,2)+1 to line9
           if l2='д'
             line()
           endif
 

     store 0 to x0,x1
     store 0 to dsto1,dsto3,ksto1,ksto3,dsto0,ksto0,ndso0,nkso0,dsbor0,ksbor0
     ds0=sch0
     sele 7
     find  '&ds0'
     ndso0=ndso
     nkso0=nkso


                                   if nom3>0 .or. nom4>0
                                        store 0 to dsto3,ksto3
                                        dsnd0=sch0+subs(data3,4,2)+data3+str(nom3,4)
                                        open_dobo(loc0=0)
                                        set order to 2
                                      find  '&ds0'
      do while ((val(nom)<nom3.and.data=data3).or.val(substr(data,1,2))<val(substr(data3,1,2))).and.(sch=sch0)
                                    dsto3=dsto3+dsto
                                          if .not. eof()
                                             skip
                                          else
                                             exit
                                          endif
     enddo
                                      * unlock
                                      open_kobo(loc0=0)
                                      set order to 2
                                      find  '&ds0'
                                      dsnd1=sch0+subs(data4,4,2)+data4+str(nom4,4)
      do while ((val(nom)<nom4.and.data=data4).or.val(substr(data,1,2))<val(substr(data4,1,2))).and.(sch=sch0)
                                    ksto3=ksto3+ksto
                                          if .not. eof()
                                             skip
                                          else
                                             exit
                                          endif
      enddo
                                   endif
                                   * unlock
   sele 7


        do CASE     && glava akt,pas bez partidi 
           case t0='а'
                  ob0=1
           case t0='п'
                  ob0=2
           ENDCASE

                 DO OBSIN

                 DO SPRI

   sch1=sch0
   open_dobo(loc0=0)
   set order to 2
   count for sch=sch0 to line1
   go top
                                 if nom3>0
                                    find  '&dsnd0'
                                 else
                                    find  '&ds0'
                                 endif
         if found()
         else
          dsto0=0
         endif
    open_kobo(loc0=0)
    set order to 2
    count for sch=sch0 to line2
    line1=line1+line2
    go top
                                 if nom4>0
                                    find  '&dsnd1'
                                 else
                                    find  '&ds0'
                                 endif
         if found()
         else
          ksto0=0
         endif
          TEXT
<<>>
          ENDTEXT
          spri()

          do while sch0=sch1
       
          store space(26) to akt0,pas0
            sele 2
            dsto0=dsto
         if sch=sch0.and.a1='д'  &&  Цикъла вади Д-т оборот
               do chast
           if l2='д'
            line()
           endif
         *  akt0=nom+'-'+substr(data,1,2)+space(5)+str((dsto0)/ra0,j0,j1)
            akt0=nom+'-'+substr(data,1,5)+space(2)+str((dsto0)/ra0,j0,j1)
            dsto1=dsto1+dsto0
                           if data+nom=dn00.or.(sch='421'.and.data=data0.and.nom='1')
                              dsbor0=dsbor0+dsto0
                           endif
            sch1=sch
            if  nom='9999' .and. (.not. eof())
                skip
                loop
            endif
            sch1=sch
              if  tx0=1
                   do txt1
              endif
                      sele 2
         else
             x0=1
         endif
              if .not. eof()
                skip
              else
              endif
 
                                if nom5>0
   if (val(nom)>nom5.and.data=data5).or.val(substr(data,1,2))>val(substr(data5,1,2))
                  a1='н'
   endif
                                endif


            sele 3     &&  Цикъла вади K-т оборот
            ksto0=ksto
         if sch=sch0.and.a2='д'
            if  nom='9999' .and. (.not. eof())
                ksto1=ksto1+ksto0
                           if data=data0.and.val(nom) < 2000
                              ksbor0=ksbor0+ksto0
                           endif
                skip
                ksto0=ksto
            endif
               do chast
           if l2='д'
             line()
           endif
           * pas0=nom+'-'+substr(data,1,2)+space(5)+str((ksto0)/ra0,j0,j1)
             pas0=nom+'-'+substr(data,1,5)+space(2)+str((ksto0)/ra0,j0,j1)
             ksto1=ksto1+ksto0
                           if data=data0.and.val(nom) < 2000
                              ksbor0=ksbor0+ksto0
                           endif
            sch1=sch
              if  tx0=1
                 do txt2
              endif
                 sele 3
            else
            x1=1
         endif
              if .not. eof()
                skip
              else
              endif

                                if nom6>0
   if (val(nom)>nom6.and.data=data6).or.val(substr(data,1,2))>val(substr(data6,1,2))
                  a2='н'
   endif
                                endif
 
                     
                     if x0=1.and.x1=1
                         exit
                     endif
        SET MARG TO 0

       
         TEXT
<< gran0+akt0+'  '+pas0 >>
         ENDTEXT
             spri()
                   if ekpr0=2.and.l2='д'.and.b0=0
                       b2=b2+1
                  DO CASE 
                     CASE  tx0=2.and.tx1=2 
                           TEXT
<< gran0+space(47)+'стр. '+str(b2,3)>>
                           ENDTEXT           
                      CASE tx0=1.and.tx1=2 
                           TEXT
<< gran0+space(47)+'стр. '+str(b2,3)>>
                           ENDTEXT                         
                      CASE tx0=1.and.tx1=1
                           TEXT
<< gran0+space(47)+'стр. '+str(b2,3)>>
                           ENDTEXT                              
                  ENDCASE

                   endif
               if a1='н'.and.a2='н'
                     exit
               endif
          enddo
       TEXT     
<<>>
       ENDTEXT     
       spri()

               do CASE  
           case t0='а'    && karj akt,pas, i akt/pas sint
                  ob0=4
           case t0='п'
                  ob0=5
           endcase
                
                
                  DO OBSIN
                 TEXT
<<>>
                  ENDTEXT
                  spri()

              if ekpr0=2
                 @ 5,29 say 'Брой на страниците '+ str(b2,3) COLOR, RGB(0,0,0,255,255,255) && DEFAULT 3 
              endif
          *  sbor()
               
                                    RETURN   &&  SSME

   *   2  ---------------- Процедура за аналитични партиди  ASME  -------------------
                                  PROCEDURE ASME
           *  part0=0                       
           *  do while .t.

           tt0='31'
           DO offkey

           ramka0 = CREATEOBJECT('ramka0')
           ramka0.Caption = SPACE(70)+"АНАЛИТИЧНИ ПАРТИДИ ПО СМЕТКА "+sch00  
           ramka0.show 
           ramka0.Visible =.T.
           ramka0.etik01.Visible = .F.
           ramka0.text01.Visible = .F. 
    
            toolb0 = CREATEOBJECT("myToolBar")   
            WITH toolb0
             .TOP  = ekran0.Height*0.60
             .func_F3.WIDTH       = 445
             .func_F3.Caption     = "\<F3 - Издирва желаната анал.п-да"+SPACE(15)
             .func_F3.Visible  = .T.
             
             .func_F4.WIDTH       = 445
             .func_F4.Caption     = "\<F4 - Описание по счетоводна операция"+SPACE(6)
             .func_F4.Visible  = .T.
             
             .func_F7.WIDTH       = 445
             .func_F7.Caption     = "\<F7 - Описание по регистър"+SPACE(24)
             .func_F7.Visible  = .T.
     
       *     .func_F9.WIDTH       = 445
             .func_F9.Caption     = "\<F9 - Разрядност"+SPACE(40)
             .func_F9.Visible  = .T.
             ENDWITH
              toolb0.Show      
      
       *      ON KEY LABEL ENTER ramka0.cmdENTER  && !!! WREDI NA COMANDATA GET 
              on key label F3 toolb0.func_F3.CLICK   
              on key label F4 toolb0.func_F4.CLICK   
              on key label F7 toolb0.func_F7.CLICK          
              on key label F7 toolb0.func_F9.CLICK            
              open_obap(loc0=0)  && aobi
              tx0=2
              tx1=2 
 
     do while .t.
             part0='    ' 
             @  0.5,22 say 'Въведете шифъра на партидата ' get part0 COLOR, RGB(0,0,0,255,255,255)  DEFAULT '    '
             chet()
           
             part0=VAL(part0)
                  
            *  NE IZTRIWAJ PASAGA PROWERI GO PO-NATATAK TOJA DA SE POLZUWA TEXTBOX I LABEL     
            *     ramka0.etik01.Visible = .T.
            *     ramka0.text01.Visible = .T. 
            *     READ events
            *     part0=VAL(ramka0.text01.Value)        
            *      CLEAR EVENTS
            *   KRAI NAPASAGA
            
             if lastkey()=27
                set dele off
            *   DO offkey
                tt0='30'
                part0=0
                ON KEY
                return
              endif
            IF part0=0
               loop  
            endif 
          nv0='4'
             * !!!! NE IZTRIWAJ PASAG           
             *   if substr(sch0,1,1)='4'.or.substr(sch0,1,1)='6'.or.substr(sch0,1,1)='7'.or.substr(sch0,1,2)='12'
             *       clear gets
             *       nv0=' '
             *      do while .not.(nv0='1'.or.nv0='2'.or.nv0='3'.or.nv0='4')
             *          nv0='4'
             *          @ 3,11 say 'Въведете нивото I-во-1,II-ро-2,III-то-3,IV-то-4 ' get nv0 COLOR, RGB(0,0,0,255,255,255)  DEFAULT 3   
             *         chet()
             *       enddo
             *     else
             *    nv0='4'
             *   endif
             *                if lastkey()=27
             *                     EXIT
             *                endif      
             *  !!!! KRAJ NE IZTRIWAJ PASAG                      
            do case
               case nv0='1'
                    part0=substr(str(part0,4),1,1)
                    dsp0='---'+part0+'---'
                    dsp0=sch0+part0
               case nv0='2'
                    part0=substr(str(part0,4),1,2)
                    dsp0='---'+part0+'--'
                    dsp0=sch0+part0
               case nv0='3'
                    part0=substr(str(part0,4),1,3)
                    dsp0='---'+part0+'-'
                    dsp0=sch0+part0
               case nv0='4'
                    part0=substr(str(part0,4),1,4)
              dsp0=sch0+part0
            endcase
              dsp0=sch0+part0
              open_obap(loc0=0)  && aobi
              find  '&dsp0'
                   store space(22) to iban0
                  if found()
                        name0=name
                        zena1=zena
                        mk0=mk
                     if field(14)='IBAN'
                        iban0=iban
                     endif
                  
                  
                         psav00='sav31'   
                         DO IZRAB
                  
                      *  !!! PASAG ZA PECHAT
                         FCLOSE(_text )  && TOWA E ZADALGITELNO SLED IZRAB 
                      *  CLEAR EVENTS
                         ekran0.circ04.Visible =.F.
                         ekran0.ekprE.Visible =.F.
                         ekran0.ekprP.Visible =.F.
                         prn1='s0001.prn'
                         pech0 =CREATEOBJECT('pechat')
                         pech0.Left=pechL0 
                         pech0.Width= pechW0
                         pech0.edit1.Left=pechL0*0.01615 
                         pech0.edit1.Width= pechW0*1.0060
                         pech0.edit1.FontSize=fsize0
                         pech0.show 
                         READ events
                         @ 0.5,1 CLEA TO 8, 150
                         KEYBOARD "{LEFTARROW}"
                      *  KRAJ PASAG ZA PECHAT  
                                         
                  else
              
                      
                      @ 6,19 say 'Hяма аналитична партида с този номер !'
                      i0=inkey(1)
                      @ 6,19 say SPACE(30)
                      loop
                  endif
   	   enddo
                                           RETURN
     
 
  ***************************  NACHALO   SAV31        *************************************
                               PROCEDURE SAV31
             
                       l7=' '
                       l8=' '
                       store 'д' to a1,a2
                       store 0 to line0,line1,line2, line9, sec0
    
    
         ramka0 = CREATEOBJECT('ramka0')
         ramka0.show 
         ramka0.Caption = SPACE(70)+"АНАЛИТИЧНИ ПАРТИДИ ПО СМЕТКА "+sch0
         ramka0.Visible =.T.
      
    
     
       DO CASE 
           CASE  tt0='300'  && F@
                 @ 6 ,20 say '       Издирва желаната анал.п-да       '
             
           CASE  tt0='301'  && F3
                 @ 6 ,20 say '     Описание 2по счетоводна операция    ' 
           CASE  tt0='303'   && F6
                 @ 6 ,20 say '          Описание по регистър          ' 
       ENDCASE
  
  
         b0=0
          if ekpr0=2.and.l2='д'
             do grani
             b2=1
             if tx0=1
                b1=35
             else
                b1=55
             endif
             b2=1
             @ 12,21 say 'Въведете брой редове на страница' get b1 pict'999'
             chet()
          endif
    
            
             if l2='д'
              store 100 to line1
              store round(line1/20*1,2)+1 to line9
              line()
             endif

             store 0 to x0,x1
             i=' '
            restore from &disc_1\job\razrjd additive
            store 0 to asal0,asal1,kol0,kol1,kol11,kol2,kol3,kol4,kol5,dast0,dast1,dast2,kast0,kast1,kast2,zena0,dsbor0,ksbor0
     IF TYPE("part0")='N'
         part0=str(part0,4)
     endif 
 
  dsp0=sch0+part0
      *  open_kobp(loc0=0)  && pril  !!! da ne se trie
      *  dele all            && pril
      *  pack                && pril
   open_obap(loc0=0)  && aobi
   find  '&dsp0'
         if found()

                          do niva
             if .not. t0=' '
          do while part01=sch0+part0
              kol1=kol1+kol
              asal0=asal0+asal
              if .not. eof()
                skip
              endif
                           do niva
          enddo

          else
            do while part01=sch0+part0

             IF t='к'  
                asal1=asal1+asal
                kol11=kol11+kol
             else
                asal0=asal0+asal
                kol1=kol1+kol
             endif
              if .not. eof()
                skip
              endif
                             do niva
          enddo
          endif 
         endif
               
                  
                               if nom3>0 .or. nom4>0
                                      store 0 to dast2,kast2,kol4,kol5
                                      dsnd0=sch0+part0+subs(data3,4,2)+data3+str(nom3,4)
                                      open_dpar(loc0=0)
                                      set order to 2
                                      find  '&dsp0'
                                     do nivo1


      do while ((val(nom)<nom3.and.data=data3).or.val(substr(data,1,2))<val(substr(data3,1,2))).and.part=part1
                                    kol4=kol4+kol
                                    dast2=dast2+dast


                                      if .not. eof()
                                             skip
                                          else
                                             exit
                                          endif
                                  enddo
                                      unlock
                                      clos data
                                      open_kpar(loc0=0)
                                      set order to 2
                                      find  '&dsp0'
                                      dsnd1=sch0+part0+subs(data4,4,2)+data4+str(nom4,4)
                                       do nivo1
      do while ((val(nom)<nom4.and.data=data4).or.val(substr(data,1,2))<val(substr(data4,1,2))).and.part=part1
                                    kol5=kol5+kol
                                    kast2=kast2+kast


                                       if .not. eof()
                                             skip
                                          else
                                             exit
                                          endif
       enddo
                               endif   && else
                               * unlock
        do case
           case t0='а'
                  ob0=7
           case t0='п'
                  ob0=8
        endcase
                 obsin()
   spri()
   part0=sch0+part0
   part1=part0
   open_dpar(loc0=0)
   set order to 2
   count for part=part0 to line1
   go top
                                 if nom3>0
                                    find  '&dsnd0'
                                 else
                                    find  '&dsp0'
                                 endif
         if found()
         else
          kol0=0
          dast0=0
         endif
    open_kpar(loc0=0)
    set order to 2
   count for part=part0 to line2
   line1=line1+line2
   go top
                                 if nom4>0
                                    find  '&dsnd1'
                                 else
                                     if l1='д'.and.sch0='304'
                                        dsp0='702'+subs(part0,4,4)
                                     endif
                                    find  '&dsp0'
                                 endif

         if found()
         else
          kol0=0
          kast0=0
         endif
          TEXT
<<>>
          ENDTEXT
          spri()
          
          do while part0=part1



            line()
            store space(38) to akt0,pas0
            sele 4
            kol0=kol
            zena0=zena
            dast0=dast
            if l1='д'.and.subs(part0,1,3)='702'  && вади д-т об на 304 и
                part0='304'+subs(part0,4,4)      &&  к-тен об на 702
            endif
                        do niva
         if part01=part0.and.a1='д'    &&&&&  Д-т оборот по анал.за акт с-ки
               do chast
         if mk0='лв'
              akt0=nom+'-'+substr(data,1,5)+space(14)+str((dast0)/ra0,j0,j1)
         else
             if zena0=0.and.kol0<>0.and.(substr(part,1,3)='304'.or.substr(part,1,3)='302')
                zena0=round(dast0/kol0,j4)
             endif
             if zena0 > 0.and.kol0=0.and.(substr(part,1,3)='304'.or.substr(part,1,3)='302')
                kol0=round(dast0/zena0,j3)
             endif
           akt0=nom+'-'+substr(data,1,5)+i+str(kol0,07+j6,j3)+i+str(zena0,7-j6,j4)+i+str((dast0)/ra0,11,j1)
         endif

            kol2=kol2+kol 
            dast1=dast1+dast0
                           if data+nom=dn00
                              dsbor0=dsbor0+dast0
                           endif

            if  nom='9999' .and. (.not. eof())
                skip
                loop
            endif


                          do nivo1
              if  tx0=1
                 do txt1
              endif
                  sele 4
            else
             x0=1
         endif
              if .not. eof()
                skip
              endif
                                if nom5>0
   if (val(nom)>nom5.and.data=data5).or.val(substr(data,1,2))>val(substr(data5,1,2))
                  a1='н'
   endif
                                endif



            sele 5         &&  Цикъла вади K-т оборот
            kol0=kol
            zena0=zena
            kast0=kast

            if  nom='9999' .and. (.not. eof())
                kol0=kol
                zena0=zena
                kast0=kast

                kol3=kol3+kol
                kast1=kast1+kast0
                           if data=data0
                              ksbor0=ksbor0+kast0
                           endif
                skip
                kol0=kol
                zena0=zena
                kast0=kast
            endif


                             do niva
            if l1='д'.and.subs(part01,1,3)='702'  && вади д-т об на 304 и
                part0='702'+subs(part0,4,4)      &&  к-тен об на 702
            endif

         if part01=part0.and.a2='д' && K-т оборот па анал.  за пас. с-ки
               do chast
          if mk0='лв'
          * pas0=nom+'-'+substr(data,1,2)+space(17)+str((kast0)/ra0,j0,j1)
            pas0=nom+'-'+substr(data,1,5)+space(14)+str((kast0)/ra0,j0,j1)
          else
            if zena0=0.and.kol0<>0.and.(substr(part,1,3)='702')
               zena0=round(kast0/kol0,j4)
            endif
            pas0=nom+'-'+substr(data,1,5)+i+str(kol0,07+j6,j3)+i+str(zena0,7-j6,j4)+i+str((kast0)/ra0,11,j1)
          endif
            kol3=kol3+kol
            kast1=kast1+kast0
                           if data=data0
                              ksbor0=ksbor0+kast0
                           endif
            if l1='д'.and.subs(part0,1,3)='702'  && вади д-т об на 304 и
            *   part0='304'+subs(part0,4,4)      &&  к-тен об на 702
                dsp0='304'+subs(part0,4,4)
            endif
                                  do nivo1
              if  tx0=1
                 do txt2
              endif
                 sele 5
            else
            x1=1
         endif
              if .not. eof()
                skip
              endif
                                if nom6>0
   if (val(nom)>nom6.and.data=data6).or.val(substr(data,1,2))>val(substr(data6,1,2))
                  a2='н'
   endif
                                endif
                     if x0=1.and.x1=1
                       exit
                      endif
               TEXT
<< gran0+akt0+' '+pas0>>
               ENDTEXT   
                  spri()
                   if ekpr0=2.and.l2='д'.and.b0=0
                    *  do grani
                       b2=b2+1
                         TEXT
<< gran0+space(93)+'стр. '+str(b2,3)>>
                          ENDTEXT         
                    
                      *    if .not.(a0=2.and.tx0=2).and.l2='д'.and.b0=0
                      *       ?  sbit0
                      *    endif
                   endif
               if a1='н'.and.a2='н'
                  exit
               endif
          enddo

       *  proc se izrabotw s opciq s "opisanie" i to s F6
       *  antetkata trjabwa da zapochw ot tretiq red , da se raazdeli fajla
       *  na dwa ili tri kato wseki ima ne-poweche ot 66 reda
    *  ? 'єЇЇЇёЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇїЇЇЇЇЇЇЇЇЇЇЇЇїЇЇЇЇЇЇЇЇЇЇЇЇL' &&  novi
    *  ? 'L'+space(36)+' Всичко    L'+str((dast1)/ra0,12,j1)+'L'+str((dast1/2)/ra0,12,j1)+'L'
    *  ? 'L'+space(36)+'   5%      L'+space(12) +'L'+str((dast1/2*.05)/ra0,12,j1)+'L'
    *  ? 'L'+space(30)+'Стойност без ДДС L'+space(12) +'L'+str((dast1/2*1.05)/ra0,12,j1)+'L'
    *  ? 'ЁЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇёЇЇЇЇЇЇЇЇЇЇЇЇёЇЇЇЇЇЇЇЇЇЇЇЇ-'
    *  ?
    *  ?
    *  ? '                                     Съставил:..................'

        do case
           case t0='а'
                  ob0=10
           case t0='п'
                  ob0=11
           endcase
                 obsin()
                 rec_unlock()
              if ekpr0=2
                 @ 14,29 say 'Брой на Страниците '+ str(b2,3)
              endif
         
              *  SET CONSOLE ON
                 fclose(_text )
             
 
                                      RETURN
 *************************************  KRAI   SAVV31        *************************************
*   2  ---------------- KRAI Процедура за аналитични партиди  asme -------------------
         ************** Процедура за помощ spisk1  *************

                              proc spisk1
                          
                                save screen to ekr2
                                ON KEY LABEL F2 
                              *  clear gets
                                pp1=' '
                                  DO spisk  && pro0
                                on key label F2 toolb0.func_F2.CLICK  
                             *   restore screen from ekr2
                             do case
                                case substr(tt0,1,1)='1'
                                @ 15,21 say 'Въведете шифъра на анал. партида:' get part0 pict '9999'
                                chet()
                                case substr(tt0,1,1)='2'
                                    if pp1='!'
                                               if dk1='d' &&
                                                  @ p0,23 say dsto0 pict "99999999999.99"
                                               else
                                                  @ p0,60 say ksto0 pict "99999999999.99"
                                               endif
                                    endif
                                @ 20,22 say 'Въведете шифъра на анал. партида:' get part0 picture "9999"
                                chet()
                                case substr(tt0,1,1)='3'
                            
                              
                                case substr(tt0,1,1)='5'
                                  @ 14,24 say 'Въведете шифъра на партидата ' get part0 pict "9999"
                                chet()
                             endcase
                           
                              return



               ********** Процедура за вадене на текст *******
                          proc txt1
                     clear gets
                    
                     noda0=subs(data,4,2)+data+nom
                     open_arhi(loc0=0)  && nari
                      find '&noda0'
                          if found ()
                            if tx1=1
                               if substr(vid,6,43)='0000000000'
                                  akt0=dok+' '+space(14)+akt0
                               else
                                  akt0=substr(dok,1,10)+' '+substr(vid,6,43)+' '+akt0
                               endif

                             *  pas0=''  &&  novi
                             *  akt0='L'+str(b0-6,3)+'L'+substr(vid,6,43)+'L '+subs(akt0,28,12)+'L'+str(val(subs(akt0,28,12))/2,12,2)+'L'

                            else
                                akt0=dok+' '+akt0
                            endif
                          endif
                         return
               ********** Kрай на процедурата ******

               ********** Процедура за вадене на текст *******
                          proc txt2
                     if  empty(akt0)
                           if a0=1            && s partidi
                              if tx1=1      && по регистър
                                 akt0=space(93)
                              else            && по опис. опер.
                                 akt0=space(79)
                              endif
                           else       && без партиди
                              if tx1=1      && по регистър
                                 akt0=space(81)
                              else            && по опис. опер.
                                 akt0=space(67)
                              endif
                           endif
                     endif
                     clear gets
                     noda0=subs(data,4,2)+data+nom
                  *  part2=part+data     &&  pril
                     open_arhi(loc0=0)  && nari
                      find '&noda0'
                          if found ()
                            if tx1=1
                               if substr(vid,6,43)='0000000000'
                                  pas0=pas0+' '+space(14)+dok
                               else
                                  pas0=pas0+' '+substr(dok,1,16)+' '+substr(vid,6,43)
                               endif

                           *   sele 8       &&  pril
                           *   appe blank   &&  pril
                           *   rec_lock()   &&  pril
                           *   repl nom with subs(pas0,1,4), part with subs(part2,1,7), data with subs(part2,8,5),;
                           *   ksto with val(subs(pas0,27,12)), vid with subs(pas0,57,43)  &&  pril
                           *   sele 5       &&  pril
                            else
                                pas0=pas0+' '+dok
                            endif
                          endif
                         return
                  ********** Kрай на процедурата *********


    ********** Процедура за започване на отпечатванто ************
                        proc chast
              if nom=str(nom1,4) .and. data=data1
                   nom1=0
                   clea
                   p0=0
                   @  p0,13 say sbit0
                 
                   fclose(_text )
                    *  'PECHATA CHAST OT SMETKATA'  
                  *   do pech
              endif
                         return
               ********** Kрай на процедулата ******
                         proc ddok3
                     do case
                        case lastkey()= -4 .or. tt0='32'
     
      ********** Процедура за излистване на част от сметка или партида ********
              on key label F5
       
              store 1 to  nom3,nom4,nom5,nom6
       
              @ 12,30 say 'ИЗЛИСТВА ЧАСТ ОТ СМЕТKА'
              @ 13,25 say '-------------------------------'
              @ 14,25 say 'СО по Д-та' get nom3 pict '9999'
              @ 15,25 say 'Дата     ' get data3

              @ 16,25 say 'СО по Д-та' get nom5 pict '9999'
              @ 17,25 say 'Дата     ' get data5

              @ 14,41 say 'СО по K-та' get nom4 pict '9999'
              @ 15,41 say 'Дата     ' get data4

              @ 16,41 say 'СО по K-та' get nom6 pict '9999'
              @ 17,41 say 'Дата     ' get data6
                         chet()
                  @ 23+ml0,15 say space(51)
          *   restore screen
          *    @  8,23 say 'Въведете шифъра на сметката ' get sch0
          *               chet()

                        case lastkey()= -7 .or. tt0='34'

          ********** Процедура за отпечатване на част от сметка ******
                    on key label-7 to
            
              @ 12,29 say 'ОТПЕЧАТВА ЧАСТ ОТ СМЕТKА'
              @ 13,25 say '-------------------------------'
              nom1=0
              store substr(dtoc(date0),4,5) to  data1,data2
                  @ 19,14 clea to 23,66
                  @ 21,14,24,66 box ram1
              @ 14,28 say 'Въведете от номер' get nom1 pict '9999'
              @ 15,28 say 'Въведете датата  ' get data1
              @ 16,28 say 'Въведете до номер' get nom7 pict '9999'
              @ 17,28 say 'Въведете датата  ' get data2
              @ 23+ml0,17 say 'F6 - извежда описание на операцията по регистър'
                         chet()
             restore screen
              do case
                 case substr(tt0,1,1)='3'
                @ 19+ml0,14 clea to 23+ml0,66
                @ 22+ml0,14,24+ml0,66 box ram1
                  @ 23+ml0,15 say space(51)
              @  8,23 say 'Въведете шифъра на сметката ' get sch0
                         chet()
                 case substr(tt0,1,1)='1'
                 endcase

                        case lastkey()= -6
              clear gets
              do ramka
              @  2,27 say 'СЕБЕСТОЙHОСТ HА ПРОДАЖБИТЕ'
              @  3,26 say '----------------------------'
           *  do izrab
                open_obap(loc0=0)
                find "701"
                if .not. found()
                   return
                endif
                store 0 to ksal7,ksal6,ksal70,ksal60
      set marg to 2
      TEXT
<< '-------------------------------------------------------------------------'>>
<< 'ПАРТИДА                                           ПРОДАЖHА   СЕБЕСТОЙHОСТ'>>
<< '-------------------------------------------------------------------------'>>
      ENDTEXT 
             do while part='701'
                re0=recno()
                part2='601'+subs(part,4,4)
                name0=name
                ksal7=ksal
                ksal70=ksal70+ksal
                find "&part2"
                  if found()
                     ksal6=ksal
                     TEXT
<< '701'+subs(part2,4,4)+' '+name+' '+str(ksal7,14,2)+' '+str(ksal6,14,2)>>
                     ENDTEXT
                     ksal60=ksal60+ksal
                  endif
                   go re0
                   skip
             enddo
     TEXT
<<>>
<< ' ПЕЧАЛБА '+str(ksal70-ksal60,14,2)+space(15)+'ОБЩО'+space(2)+str(ksal70,14,2)+' '+str(ksal60,14,2)>>
     ENDTEXT
  
      
      *SET CONSOLE on
 
      *  'PECHATA CHAST OT SMETKATA '  
      fclose(_text )
    *    DO pech
    
           *        restore screen
                    open_obve(loc0=0)
                     endcase
                         return

                  ********** Процедура за нивата part1 *********
                         proc nivo1
            do case
               case nv0='1'
                    part1=substr(part,1,4)
               case nv0='2'
                    part1=substr(part,1,5)
               case nv0='3'
                    part1=substr(part,1,6)
               case nv0='4'
                    part1=substr(part,1,7)
            endcase
                           return
                  ********** Процедура за нивата **********
                         proc niva
            do case
               case nv0='1'
                    part01=substr(part,1,4)
               case nv0='2'
                    part01=substr(part,1,5)
               case nv0='3'
                    part01=substr(part,1,6)
               case nv0='4'
                    part01=substr(part,1,7)
            endcase
                           return

          ***************** Процедура за оборотите по сметките ***************
                             PROCEDURE OBSIN
    
     ** SINT SMETKI 
     
     **   a0=2 pas bez partidi 
     **   tx0   Po schetowodna opeRaciq 1-DA  2-NE
     **   tx1   Po registyr            1-DA  2-NE
     **   ob0=1 akt nachalno saldo bez opisanie
     **   Ob0=2 pas nachalno saldo bez opisanie   
     **   ob0=4 akt sbor/ saldo 
     **   Ob0=5 pas sbor/ saldo     
     **  analitichni partida
     **   ob0=4 akt sbor/ saldo 
     **   Ob0=5 pas sbor/ saldo     
          
          
           restore from &disc_1\job\razrjd additive
    
         
          do case

       **************************** SINTETICHNI SMETKI *********************************
              
           **************** SINTETICNI NACALNI SALDA AKTIVNI  *********************
         


             case ob0=1
              
                  ndso0=ndso0+dsto3-ksto3
                  DO CASE 
                     CASE  tx0=2.and.tx1=2 
                           DO startpech
                      ll0='2'
                      gran0=space(15)
                    TEXT  
<< gran0+space(55)+'стр. '+str(b2,3)+'as1'>>
<< gran0+space(18)+'Счетоводна сметка   '+sch0 >>
<< gran0+'ДЕБИТ                   '+mk_0+'                  KРЕДИТ'>>
<< gran0+repli('-',54) >>
<< gran0+'н.с.        '+str((ndso0+sald)/ra0,j0,j1)>> 
                    ENDTEXT   
                     
                      CASE tx0=1.and.tx1=2 
                 *  'NARED E VECHE OPISANIE PO SCHTE. OPER'
    
                          DO startpech
                           pechL0 = 80
                           pechW0 = 1140
                           fsize0 = 10
                           gran0=space(1)
  
          TEXT  
<< gran0+space(121)+'стр. '+str(b2,3)+'as2'>>
<< gran0+space(57)+'Счетоводна сметка   '+sch0 >>
<< gran0+space(41)+'ДЕБИТ                   '+mk_0+'                  KРЕДИТ'>>
<< gran0+space(41)+REPLICATE('-',54) >>
<< gran0+space(41)+'н.с.        '+str((ndso0+sald)/ra0,j0,j1)>>        
        ENDTEXT    
                
                      CASE tx0=1.and.tx1=1 
                 *   'NARED E VECHE OPISANIE PO SCHTE. OPER'
                           DO startpech
                           pechL0 = 4
                           pechW0 = 1265
                           fsize0 = 9
                           gran0=space(1)
         
          TEXT  
<< gran0+space(121)+'стр. '+str(b2,3)+'as3'>>
<< gran0+space(71)+'Счетоводна сметка   '+sch0 >>
<< gran0+space(55)+'ДЕБИТ                   '+mk_0+'                  KРЕДИТ'>>
<< gran0+space(55)+REPLICATE('-',54) >>
<< gran0+space(55)+'н.с.        '+str((ndso0+sald)/ra0,j0,j1)>>        
         ENDTEXT    

                  ENDCASE
             b0=b0+4  && wmesto spri()
             spri()
    
         
         **************** SINTETICNI NACALNI SALDA  PASIVNI *********************     
             case ob0=2   

                    nkso0=nkso0+ksto3-dsto3
      
                  DO CASE 
                     CASE  tx0=2.and.tx1=2 
                           DO startpech
                          ll0='2'
                          gran0=space(15)
                    TEXT  
<< gran0+space(55)+'стр. '+str(b2,3)+'ps1'>>
<< gran0+space(18)+'Счетоводна сметка   '+sch0 >>
<< gran0+'ДЕБИТ                   '+mk_0+'                  KРЕДИТ'>>
<< gran0+repli('-',54) >>
<< gran0+space(33)+'н.с.   '+str((nkso0-sald)/ra0,j0,j1)>>                    
                    ENDTEXT   
                     
                      
                      CASE tx0=1.and.tx1=2 
                          DO startpech
                           pechL0 = 80
                           pechW0 = 1140
                           fsize0 = 10
                           gran0=space(1)
          TEXT  
<< gran0+space(121)+'стр. '+str(b2,3)+'ps2'>>
<< gran0+space(57)+'Счетоводна сметка   '+sch0 >>
<< gran0+space(41)+'ДЕБИТ                   '+mk_0+'                  KРЕДИТ'>>
<< gran0+space(41)+REPLICATE('-',54) >>
<< gran0+space(74)+'н.с.   '+str((nkso0-sald)/ra0,j0,j1)>>
         ENDTEXT    
                
                      CASE tx0=1.and.tx1=1 
                           DO startpech
                           pechL0 = 4
                           pechW0 = 1265
                           fsize0 = 9
                           gran0=space(1)
          TEXT  
<< gran0+space(121)+'стр. '+str(b2,3)+'ps3'>>
<< gran0+space(71)+'Счетоводна сметка   '+sch0 >>
<< gran0+space(55)+'ДЕБИТ                   '+mk_0+'                  KРЕДИТ'>>
<< gran0+space(55)+REPLICATE('-',54) >>
<< gran0+space(88)+'н.с.   '+str((nkso0-sald)/ra0,j0,j1)>>
         ENDTEXT    

                  ENDCASE
             b0=b0+4  && wmesto spri()
             spri()
    
             **************** SINTETICHNI KRAINI SALDA  AKTIVNI  *********************            

             case ob0=4  
              
                 DO CASE 
                    CASE  tx0=2.and.tx1=2 
   
                   TEXT  && gotovo
<< gran0+'Оборот as1  '+str((dsto1-obor_0)/ra0,j0,j1)+'  Оборот      '+str((ksto1)/ra0,j0,j1)>>  
<< gran0+'Сбор        '+str((dsto1+ndso0+sald_0-obor_0)/ra0,j0,j1)+'  Сбор        '+str((ksto1)/ra0,j0,j1)>>  
<< gran0+'Салдо       '+str((dsto1+ndso0-ksto1+sald_0-obor_0)/ra0,j0,j1)>>   
                   ENDTEXT
                  
                    CASE tx0=1.and.tx1=2 
                  TEXT  && gotovo
<< gran0+space(41)+'Оборот as2  '+str((dsto1-obor_0)/ra0,j0,j1)+'  Оборот      '+str((ksto1)/ra0,j0,j1)>>  
<< gran0+space(41)+'Сбор        '+str((dsto1+ndso0+sald_0-obor_0)/ra0,j0,j1)+'  Сбор        '+str((ksto1)/ra0,j0,j1)>>  
<< gran0+space(41)+'Салдо       '+str((dsto1+ndso0-ksto1+sald_0-obor_0)/ra0,j0,j1)>>   
                   ENDTEXT
                  
                    CASE tx0=1.and.tx1=1 
                  TEXT  && gotovo
<< gran0+space(55)+'Оборот as3  '+str((dsto1-obor_0)/ra0,j0,j1)+'  Оборот      '+str((ksto1)/ra0,j0,j1)>>  
<< gran0+space(55)+'Сбор        '+str((dsto1+ndso0+sald_0-obor_0)/ra0,j0,j1)+'  Сбор        '+str((ksto1)/ra0,j0,j1)>>  
<< gran0+space(55)+'Салдо       '+str((dsto1+ndso0-ksto1+sald_0-obor_0)/ra0,j0,j1)>>   
                   ENDTEXT
                 ENDCASE
                      spri()
                      spri()

             case ob0=5  && PASIVNI   
                 
                 DO CASE 

                    CASE  tx0=2.and.tx1=2 
                  TEXT  && gotovo 
<< gran0+'Оборот  ps1 '+str((dsto1-obor_0)/ra0,j0,j1)+'  Оборот      '+str((ksto1)/ra0,j0,j1)>>  
<< gran0+'Сбор        '+str((dsto1-obor_0)/ra0,j0,j1)+'  Сбор        '+str((ksto1+nkso0-sald_0)/ra0,j0,j1)>>  
<< gran0+space(28)+'Салдо       '+str((ksto1+nkso0-dsto1-sald_0+obor_0)/ra0,j0,j1)>>
                  ENDTEXT     

                    CASE tx0=1.and.tx1=2 
                  TEXT  && gotovo 
<< gran0+space(41)+'Оборот ps2  '+str((dsto1-obor_0)/ra0,j0,j1)+'  Оборот      '+str((ksto1)/ra0,j0,j1)>>  
<< gran0+space(41)+'Сбор        '+str((dsto1-obor_0)/ra0,j0,j1)+'  Сбор        '+str((ksto1+nkso0-sald_0)/ra0,j0,j1)>>  
<< gran0+space(41)+space(28)+'Салдо       '+str((ksto1+nkso0-dsto1-sald_0+obor_0)/ra0,j0,j1)>>
                  ENDTEXT

                    CASE tx0=1.and.tx1=1 
                  TEXT  && gotovo 
<< gran0+space(55)+'Оборот ps3  '+str((dsto1-obor_0)/ra0,j0,j1)+'  Оборот      '+str((ksto1)/ra0,j0,j1)>>  
<< gran0+space(55)+'Сбор        '+str((dsto1-obor_0)/ra0,j0,j1)+'  Сбор        '+str((ksto1+nkso0-sald_0)/ra0,j0,j1)>>  
<< gran0+space(55)+space(28)+'Салдо       '+str((ksto1+nkso0-dsto1-sald_0+obor_0)/ra0,j0,j1)>>
                  ENDTEXT
                 ENDCASE
             b0=b0+3  && wmesto spri()
             spri()
                 
                 
                 

**************************** ANALITICHNI PARTIDI  *********************************
* 999999999999999999999999999999999999999999999
                 **************** ANALITCHNI NACALNI SALDA AKTIVNI  *********************   
            
             case ob0=7
                   
                   kol1=kol1+kol4-kol5
                   asal0=asal0+dast2-kast2
                   
                   DO CASE 
                     CASE  tx0=2.and.tx1=2 
                            DO startpech
                            pechL0 =  240
                            pechW0 =  820
                            gran0=space(15)
                            
                           
                    TEXT
<< gran0+space(85)+'стр. '+str(b2,3)+'aa1'>>
<< gran0+space(0)+'С-KА '+sch0+'    П-ДА - '+part0+'- '+name0+' ср.ц.'+str(zena1,11,j4)+'  '>>
<< gran0+space(0)+'ДЕБИТ                              '+mk_0+'     '+iban0+'   KРЕДИТ'>>
<< gran0+space(0)+repli('_',77)>>
<< gran0+space(0)+'ОПЕР. ДATA     K-ВО  ЕД.Ц.       СТ-СТ ОПЕР. ДАТА    K-ВО    ЕД.Ц.      СТ-СТ'>>
<< gran0+space(0)+repli('_',16)+mk0+repli('_',36)+mk0+repli('_',21)>>
<< gran0+space(0)+'н.с.  '+str(kol1,j2,j3)+space(6)+str(asal0/ra0,j0,j1)>>
                    ENDTEXT                            
                            
                      CASE tx0=1.and.tx1=2 
                           DO startpech
                           pechL0 = 50
                           pechW0 = 1170
                           gran0=space(1)
                    TEXT
<< gran0+space(93)+'стр. '+str(b2,3)+'aa2'>>
<< gran0+space(41)+'С-KА '+sch0+'    П-ДА - '+part0+'- '+name0+' ср.ц.'+str(zena1,11,j4)+'  '>>
<< gran0+space(41)+'ДЕБИТ                              '+mk_0+'     '+iban0+'   KРЕДИТ'>>
<< gran0+space(41)+repli('_',77)>>
<< gran0+space(41)+'ОПЕР. ДATA     K-ВО  ЕД.Ц.       СТ-СТ ОПЕР. ДАТА    K-ВО    ЕД.Ц.      СТ-СТ'>>
<< gran0+space(41)+repli('_',16)+mk0+repli('_',36)+mk0+repli('_',21)>>
<< gran0+space(41)+'н.с.  '+str(kol1,j2,j3)+space(6)+str(asal0/ra0,j0,j1)>>
                    ENDTEXT   
                           
                       CASE tx0=1.and.tx1=1 
                           DO startpech
                           pechL0 = 2
                           pechW0 = 1300
                           gran0=space(1)
                  TEXT
<< gran0+space(93)+'стр. '+str(b2,3)+'aa3'>>
<< gran0+'С-KА '+sch0+'    П-ДА - '+part0+'- '+name0+' ср.ц.'+str(zena1,11,j4)+'  '>>
<< gran0+'ДЕБИТ                              '+mk_0+'     '+iban0+'   KРЕДИТ'>>
<< gran0+repli('_',77)>>
<< gran0+'ОПЕР. ДATA     K-ВО  ЕД.Ц.       СТ-СТ ОПЕР. ДАТА    K-ВО    ЕД.Ц.      СТ-СТ'>>
<< gran0+repli('_',16)+mk0+repli('_',36)+mk0+repli('_',21)>>
<< gran0+'н.с.  '+str(kol1,j2,j3)+space(6)+str(asal0/ra0,j0,j1)>>
                    ENDTEXT   
            
                   ENDCASE
                   b0=b0+5  && wmesto spri()
                   spri()



        *   set marg to 3  && novi
            * otpechatwa se na ekran i s parwi na stranica do 75 red na redaktora
        *   ?
        *   ?
        *   ? '                              П Р О Т О К О Л                              '
        *   ? '         за разпределение на разходите на обект "Кристал" Сл. бряг         '
        *   ? '                      за перида януари - юни 2011год.                      '
        *   ?
        *   ? '-ЇЇЇЄЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЄЇЇЇЇЇЇЇЇЇЇЇЇЄЇЇЇЇЇЇЇЇЇЇЇЇ¦' &&  novi
        *   ? 'L NoL  Фактура    Дата    Име на фирма          L  Стойност  L Стoйноста  L'
        *   ? 'L   L                                           L            Lза фактура  L'
        *   ? 'єЇЇЇїЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇЇїЇЇЇЇЇЇЇЇЇЇЇЇїЇЇЇЇЇЇЇЇЇЇЇЇL'

         **************** ANALITCHNI NACALNI SALDA PASIVNI  *********************   
             case ob0=8     && PASIVNI
                  kol1=kol1+kol5-kol4
                  asal0=asal0+kast2-dast2
                  
                  
                        DO CASE 
                     CASE  tx0=2.and.tx1=2 

                            pechL0 =  240
                            pechW0 =  820
                            gran0=space(15)
                            
                    TEXT
<< gran0+space(93)+'стр. '+str(b2,3)+'pa1'>>
<< gran0+'С-KА '+sch0+'    П-ДА - '+part0+'- '+name0+' ср.ц.'+str(zena1,11,j4)+'  '>>
<< gran0+'ДЕБИТ                              '+mk_0+'     '+iban0+'   KРЕДИТ'>>
<< gran0+repli('_',77)>>
<< gran0+'ОПЕР. ДATA     K-ВО  ЕД.Ц.       СТ-СТ ОПЕР. ДАТА    K-ВО    ЕД.Ц.      СТ-СТ'>>
<< gran0+repli('_',16)+mk0+repli('_',36)+mk0+repli('_',21)>>
<< gran0+'н.с.  '+str(kol1,j2,j3)+space(6)+str(asal0/ra0,j0,j1)>>
                    ENDTEXT                            
                            
                      CASE tx0=1.and.tx1=2 

                           pechL0 = 50
                           pechW0 = 1170
                           gran0=space(1)
                    TEXT
<< gran0+space(93)+'стр. '+str(b2,3)+'pa2'>>
<< gran0+space(40)+'С-KА '+sch0+'    П-ДА - '+part0+'- '+name0+' ср.ц.'+str(zena1,11,j4)+'  '>>
<< gran0+space(40)+'ДЕБИТ                              '+mk_0+'     '+iban0+'   KРЕДИТ'>>
<< gran0+space(40)+repli('_',77)>>
<< gran0+space(40)+'ОПЕР. ДATA     K-ВО  ЕД.Ц.       СТ-СТ ОПЕР. ДАТА    K-ВО    ЕД.Ц.      СТ-СТ'>>
<< gran0+space(40)+repli('_',16)+mk0+repli('_',36)+mk0+repli('_',21)>>
<< gran0+space(40)+'н.с.  '+str(kol1,j2,j3)+space(6)+str(asal0/ra0,j0,j1)>>
                    ENDTEXT   
                  
                      CASE tx0=1.and.tx1=1 

                           pechL0 = 2
                           pechW0 = 1400
                           gran0=space(1)
                    TEXT
<< gran0+space(40)+space(93)+'стр.'+str(b2,3)+'pa3'>>
<< gran0+space(55)+'С-KА '+sch0+'    П-ДА - '+part0+'- '+name0+' ср.ц.'+str(zena1,11,j4)+'  '>>
<< gran0+space(55)+'ДЕБИТ                              '+mk_0+'     '+iban0+'   KРЕДИТ'>>
<< gran0+space(55)+repli('_',77)>>
<< gran0+space(55)+'ОПЕР. ДATA     K-ВО  ЕД.Ц.       СТ-СТ ОПЕР. ДАТА    K-ВО    ЕД.Ц.      СТ-СТ'>>
<< gran0+space(55)+repli('_',16)+mk0+repli('_',36)+mk0+repli('_',21)>>
<< gran0+space(55)+space(39)+'н.с.  '+str(kol1,j2,j3)+space(6)+str(asal0/ra0,j0,j1)>>
                    ENDTEXT   
            
                   ENDCASE
                   b0=b0+5  && wmesto spri()
                   spri()
                  
             case ob0=10   &&   AKTIVNI
                   DO CASE 
                      CASE  tx0=2.and.tx1=2 
  TEXT
   <<>>+'aa1'
<< gran0+space(40)+'Оборот'+str(kol2,j2+j6,j3)+space(6-j6)+str((dast1)/ra0,j0,j1)+'Оборот '+str(kol3,j2+j6,j3)+space(6-j6)+str((kast1)/ra0,j0,j1)>>
<< gran0+space(40)+'Сбор  '+str(kol2+kol1,j2+j6,j3)+space(6-j6)+str((dast1+asal0)/ra0,j0,j1)+' Сбор  '+str(kol3,j2+j6,j3)+space(6-j6)+str(kast1/ra0,j0,j1)>>
<< gran0+space(40)+'Салдо '+str(kol2+kol1-kol3,j2+j6,j3)+space(6-j6)+str((dast1+asal0-kast1)/ra0,j0,j1)>>
  ENDTEXT                  
                      CASE tx0=1.and.tx1=2 
  TEXT
  <<>>+'aa2'
<< gran0+space(40)+'Оборот '+str(kol2,j2+j6,j3)+space(6-j6)+str((dast1)/ra0,j0,j1)+' Оборот'+str(kol3,j2+j6,j3)+space(6-j6)+str((kast1)/ra0,j0,j1)>>
<< gran0+space(40)+'Сбор  '+str(kol2+kol1,j2+j6,j3)+space(6-j6)+str((dast1+asal0)/ra0,j0,j1)+' Сбор  '+str(kol3,j2+j6,j3)+space(6-j6)+str(kast1/ra0,j0,j1)>>
<< gran0+space(40)+'Салдо '+str(kol2+kol1-kol3,j2+j6,j3)+space(6-j6)+str((dast1+asal0-kast1)/ra0,j0,j1)>>
  ENDTEXT                  
                      CASE tx0=1.and.tx1=1 
  TEXT
<<>>+'aa3'
<< gran0+space(55)+'Оборот '+str(kol2,j2+j6,j3)+space(6-j6)+str((dast1)/ra0,j0,j1)+' Оборот'+str(kol3,j2+j6,j3)+space(6-j6)+str((kast1)/ra0,j0,j1)>>
<< gran0+space(55)+'Сбор  '+str(kol2+kol1,j2+j6,j3)+space(6-j6)+str((dast1+asal0)/ra0,j0,j1)+' Сбор  '+str(kol3,j2+j6,j3)+space(6-j6)+str(kast1/ra0,j0,j1)>>
<< gran0+space(55)+'Салдо '+str(kol2+kol1-kol3,j2+j6,j3)+space(6-j6)+str((dast1+asal0-kast1)/ra0,j0,j1)>>
  ENDTEXT              
                   ENDCASE
                spri()
                spri()
                spri()
             case ob0=11    &&  PASIVNI
                  DO CASE 
                     CASE  tx0=2.and.tx1=2 
                 TEXT
<<>>+pa1              
<< gran0+'Оборот'+str(kol2,j2+j6,j3)+space(6-j6)+str((dast1)/ra0,j0,j1)+' Оборот'+str(kol3,j2+j6,j3)+space(6-j6)+str((kast1)/ra0,j0,j1)>>
<< gran0+'Сбор  '+str(kol2,j2+j6,j3)+space(6-j6)+str((dast1)/ra0,j0,j1)+' Сбор  '+str(kol3+kol1,j2+j6,j3)+space(6-j6)+str((kast1+asal0)/ra0,j0,j1)>>
<< gran0+'Салдо '+str(kol3+kol1-kol2,j2+j6,j3)+space(6-j6)+str((kast1+asal0-dast1)/ra0,j0,j1)>>
                  ENDTEXT                 
                      CASE tx0=1.and.tx1=2 
               TEXT
<<>>+'pa2'
<< gran0+space(41)+'Оборот'+str(kol2,j2+j6,j3)+space(6-j6)+str((dast1)/ra0,j0,j1)+' Оборот'+str(kol3,j2+j6,j3)+space(6-j6)+str((kast1)/ra0,j0,j1)>>
<< gran0+space(41)+'Сбор  '+str(kol2,j2+j6,j3)+space(6-j6)+str((dast1)/ra0,j0,j1)+' Сбор  '+str(kol3+kol1,j2+j6,j3)+space(6-j6)+str((kast1+asal0)/ra0,j0,j1)>>
<< gran0+space(41)+'Салдо '+str(kol3+kol1-kol2,j2+j6,j3)+space(6-j6)+str((kast1+asal0-dast1)/ra0,j0,j1)>>
                  ENDTEXT                   
                      CASE tx0=1.and.tx1=1 
               TEXT
<<>>+'pa3'               
<< gran0+space(55)+'Оборот'+str(kol2,j2+j6,j3)+space(6-j6)+str((dast1)/ra0,j0,j1)+' Оборот'+str(kol3,j2+j6,j3)+space(6-j6)+str((kast1)/ra0,j0,j1)>>
<< gran0+space(55)+'Сбор  '+str(kol2,j2+j6,j3)+space(6-j6)+str((dast1)/ra0,j0,j1)+' Сбор  '+str(kol3+kol1,j2+j6,j3)+space(6-j6)+str((kast1+asal0)/ra0,j0,j1)>>
<< gran0+space(55)+'Салдо '+str(kol3+kol1-kol2,j2+j6,j3)+space(6-j6)+str((kast1+asal0-dast1)/ra0,j0,j1)>>
                  ENDTEXT             
                   ENDCASE
               spri()
               spri()
               spri()
 
              endcase

                          return
         

 ******************* Отпечатване на главна книга ************************
                      proc glkn

   razr()
   l2='н'
   sch0='101'
   store 2 to a0,tx0,ekpr0
   b1=56
   @  2,25 say 'ОТПЕЧАТВАHЕ HА ГЛАВHА KHИГА'
   @  3,24 say '-----------------------------'
   @  8,23 say 'Въведете шифъра на сметката ' get sch0
   @ 10,21 say 'Въведете брой редове на страница' get b1 pict'999'
   chet()
   store sch0 to sch1

   open_obve(loc0=0)
       find '&sch0'
     if .not.found()
          @  23,15 say '          Hяма движение по тази сметка             '
                 i0=inkey(0)
                 return
     endif
         l0=1

         @ 23+ml0,28 say 'Желаете ли заглавие '
         @ 23+ml0,49 prompt 'ДА'
         @ 23+ml0,52 prompt 'HЕ'
         menu to l0
         @ 23+ml0,15 say space(51)
         set cons off
         set marg to 0
         b3=1
       *  b1=55
         !del s*.prn
         set prin on
         set prin to s0001
       do while .not. eof()
          sele 7
          find '&sch0'
               store 0 to dsto1,ksto1
               open_dobot()
               find '&sch0'
                 if found()
                    dsto1=round(dsto/ra0,j1)
                 endif
               open_kobot()
               find '&sch0'
                 if found()
                    ksto1=round(ksto/ra0,j1)
                 endif
               sele 7
               l1=2
          if  .not.(ndso=0.and.nkso=0.and.dsto1=0.and.ksto1=0.and.kdso=0.and.kkso=0)
               l1=1
               spri()
               do ssme
               sele 7
               store sch to sch0,sch1
               @ 23+ml0,50 say 'ДА'
          else
               @ 23+ml0,50 say 'HЕ'
          endif
             @ 23+ml0,27 say 'Желаете ли сметка: '+sch0
           * @ 23+ml0,49 prompt 'ДА'
           * @ 23+ml0,52 prompt 'HЕ'
           * menu to l1
           * inkey(1)
           * @ 23+ml0,50 say '  '
           if lastkey()=27
               t0='-'
               exit
           endif
           if .not. eof()
              skip
           else
              exit
           endif
               store sch to sch0,sch1

       enddo

   store 0 to b0,b2,b4
   store 1  to b3
   save_0='s0001'
   raboti()
   do while .t.
     l5=0
     store ' ' to var1,var2,var
     set prin to
     save_1='&us_0'+'s'+nulb4()+'.prn'
    if file ("&save_1")
     var1=memoread("&save_1")
    endif
     save_2='&us_0'+'s'+nulb4()+'.prn'
    if file ("&save_2")
     var2=memoread("&save_2")
    endif
          if (.not.file ("&save_1")).and.(.not.file ("&save_2"))
             exit
          endif

                    set prin to '&us_0'+'&save_0'
                  if l0=1 .and. b3=1
                      TEXT
<<>>
<< space(33)+'    ГЛАВHА KHИГА    '>>
                      ENDTEXT
                  else
                      TEXT
<<>>
                      ENDTEXT
                  endif
                    b2=b2+1
                      set marg to 15
                      
                      TEXT
<< space(51)+'стр. '+str(b2,3)>>
<< sbit0 >>
                      ENDTEXT
                 *   b1=56
                    for lin0 = 1 to b1
                    store space(54) to var_1,var_2
                       if .not. empty(var1)
                          var_1=memoline(var1,54,lin0)
                       endif
                       if .not. empty(var2)
                          var_2=memoline(var2,54,lin0)
                       endif
                  
                   if len(var_1)=0
                      store space(54) to var_1
                   endif
                   if len(var_2)=0
                      store space(54) to var_2
                   endif
   
                 if l5=0
                    TEXT
<< var_1+'          '+var_2>>
                    ENDTEXT
                     l5=l5+1
                 else
                     TEXT
<< var_1+'          '+var_2>>
                     ENDTEXT
                 endif
                    spri()
                    next
   enddo
         @ 14,29 say 'Брой на страниците '+ str(b2,3)
     save_0='&us_0'+'s'+nulb3()+'.prn'
     do while file ("&save_0")
       !del  &save_0
       b3=b3+1
       save_0='&us_0'+'s'+nulb3()+'.prn'
     enddo
    ll0='2'
    ekpr0=2
    b3=1
            @ 23+ml0,15 say space(51)
           inkey()
            l0=2
            @ 23+ml0,23 say 'ПОТВЪРЖДАВАТЕ ЛИ ПЕЧАТАHЕТО'
            @ 23+ml0,52 prompt 'ДА'
            @ 23+ml0,55 prompt 'HЕ'
            menu to l0
             if l0=2
                   set prin off
                   set prin to
                   set cons on
                    return
             endif

     
     *   'OTPECHATWA GLAWNATA KNIGA '    
   
    fclose(_text )
    * DO pech
                          return


*************  Разрядност на аналитични партиди  ************
               proc razrjd
               on key label-5  to
                save screen
                clea gets
                if file ("&disc_1\job\razrjd.mem")
                      restore from &disc_1\job\razrjd additive
                endif
                     @ 11,22,19,60 box ram1
                     @ 12,23 clea to 18,59
                      set curs on
                      @ 12,24 say 'БРОЙ РАЗРЯДИ СЛЕД ДЕСЕТИЧHАТА ТОЧKА'
                      @ 16,24 say 'УВЕЛИЧ./HАМАЛ. ДЪЛЖ. K-ВО/ЦЕHА  < 5'
                      @ 14,24 say 'Колич.  < 10 Цена  < 7  Ст-ст  < 10'
                      @ 14,31 get j3  pict "9"  valid  j3<10
                      @ 14,42 get j4  pict "9"  valid  j4<7
                      @ 14,54 get j1  pict "9"  valid  j1<10
                      @ 16,55 get j6  pict "9"  valid  j6<5
                      @ 18,24 say 'Mode 0/18' get j7  pict "99"  valid  j7=0.or.j7=18
                      @ 18,37 say 'Валутен курс ' get j5  pict "99.999999" valid 0 < j5
                      chet()
                      store j7 to ml0

                              save all like j? to  &disc_1\job\razrjd
                picze_0=repl('9',11-j4)+'.'+repl('9',j4)
                on key label-5 to razrjd
                restore screen
                chet()
             return

    *********  Процедура разпределя непреките р-ди по обекти ***********
                          proc  nepr
           save screen
           clear gets
           @ 11,21,15,59 box ram1
           @ 12,22 clea to 14,58
          pt1=1
          pt2=9999
          v1=100
   @ 12,27 say 'ПРОЦЕДУРАТА РАЗПРЕДЕЛА Р-ДИ'
   @ 13,29 say 'Процента групата : ' get v1  pict  '999'
   @ 14,22 say 'От партида :' get pt1  pict '9999'
   @ 14,42 say 'До партида :' get pt2  pict '9999'
                     chet()
                        if lastkey()=27 .or. v1=0
                            on key label-36 to  nepr
                            restore screen
                            @  3,42 get papk0  pict '999'
                            chet()
                            return
                        endif
               restore screen
               @ 18,26 say 'Програмата работи, моля почакайте !'
              store 0 to ksal0,ksal1,ksal2, ksal3
              part0=str(pt1,4)
              open_obap(loc0=0)  && aobi
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
      open_dpar(loc0=0)
      appe blank
      rec_lock()
      repl  nom with str(nom0,4), part with part0,mk with 'лв',;
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
      repl  nom with str(nom0,4), part with part0,mk with 'лв',;
      dast with round (dast+ksal0-ksal3,j1), data with data0
      rec_unlock()
       open_kpar(loc0=0)
       appe blank
      rec_lock()
       repl  nom with str(nom0,4), part with '611   1', mk with 'лв',;
       kast with ksal0, data with data0
      rec_unlock()
    open_dobo(loc0=0)
    appe blank
      rec_lock()
    repl nom with str(nom0,4), sch with '611', dsto with ksal0, data with data0
      rec_unlock()
    open_kobo(loc0=0)
    appe blank
      rec_lock()
    repl nom with str(nom0,4), sch with '611', ksto with ksal0,data with data0
      rec_unlock()
      @  7, 6 say '611'
      @  7,24 say  ksal0 pict "#########.##"
      @  8,43 say '611'
      @  8,63 say  ksal0 pict "#########.##"
      * unlock
      open_arhi(loc0=0)
      appe blank
      rec_lock()
      repl nom with str(nom0,4), papk with str(papk0,3),dok with 'разпр. на непреките р-ди по п-ди ',;
      data with data0, reg with dtoc(date())
      rec_unlock()
            zvan()
            @ 23+ml0,15 say '                Програмата приключи                '
                       i0=inkey(0)
            @ 23+ml0,15 say space(51)
           nom0=nom0+1
    endif
                   on key label-26 to nepr
   @  3,19 say str(nom0,5)
   @  6, 0 clea to 17,37
   @  6,43 clea to 17,75
   @  3,42 get papk0  pict '999'
        chet()
                          return

   ****************** Процедура за изчисляване на лихва ****************
                       proc lihva
     if dn00=space(10)
        save screen
        @ 11, 3,13,76 box ram1
        @ 12, 6 clea to 12,75
        @ 12, 6 say 'Kлиента няма данъчен номер, въведете го и повторете същата операцията'
        pauza()
        restore screen
        return
     endif
     set cons on
     open_lihva()
     dndt0=subs(data0,4,2)+data0+str(nom2,4)
     find '&dndt0'
     if .not. found()
         appe blank
         rec_lock()
         repl dn with dn00, dati with dati0,nom with str(nom2,4),data with data0, dat with substr(dtoc(dati),4,5)
         rec_unlock()
     else
         rec_lock()
         repl dn with dn00
         rec_unlock()
         if .not.dati=dati0
              a0=2
              save screen
              @ 11, 3,13,76 box ram1
              @ 12, 6 clea to 12,75
              @ 12, 6 say 'Променена дата на падаж от '+dtoc(dati)+' на '+dtoc(dati0)+' Потвърждавате ли ДА HЕ'
              @ 12,71 prompt 'ДА'
              @ 12,74 prompt 'HЕ'
              menu to a0
                if a0=1
                   rec_lock()
                   repl dati with dati0, dat with substr(dtoc(dati),4,5)
                   rec_unlock()
                endif
              restore screen
         endif
     endif
    if r=' '
      do case
         case  dk1='d'
              rec_lock()
              repl zadl with sald0, ostz with sald0
              rec_unlock()
         case  dk1='k'
              rec_lock()
              repl izpl with sald0, osti with sald0
              rec_unlock()
      endcase
      rec_unlock()
    endif
                      return


   ************** Добавя дебитния оборота от дебита или от кредита в опер.**********
                       proc zavar
           on key label-34 to
           save screen
              a0=1
              l1=1
              @ 11,20,14,56 box ram1
              @ 12,21 clea to 13,55
              @ 12,21 say 'Желаете ли с цени на сметката'
              @ 12,51 prompt 'ДА'
              @ 12,54 prompt 'HЕ'
              menu to a0
              @ 13,23 say 'От смтка по'
              @ 13,36 prompt 'ДЕБИТHА'
              @ 13,45 prompt 'KРЕДИТА'
              menu to l1
          restore screen
              open_dpar(loc0=0)
              open_kpar(loc0=0)
              open_obap(loc0=0)  && aobi
           if l1=1
              sele 4
           else
              sele 5
           endif
       dn0=subs(data0,4,2)+data0+str(nom0,4)
       find '&dn0'
              do while nom=str(nom0,4).and.data=data0
                  re0=recno()
                  part1=sch0+substr(part,4,4)
                  mk0=mk
                  kol0=kol
                if a0=2
                  if l1=1
                     kast0=dast
                     ksto0=ksto0+dast
                  else
                     kast0=kast
                     ksto0=ksto0+kast
                  endif
                     zena0=zena
                else
                   sele 6
                   find "&part1"
                     if found()
                        zena0=zena
                        kast0=round(kol0*zena0,j1)
                        ksto0=ksto0+kast0
                     else
                        store 0 to kast0,ksto0
                     endif
                   sele 4
                endif
       if dk1='k'
          @ p0,60 say ksto0 pict "99999999999.99"
       else
          @ p0,23 say ksto0 pict "99999999999.99"
          store ksto0 to dsto0
       endif
       if dk1='k'
          sele 5
          appe blank
          rec_lock()
          repl  nom with str(nom0,4), part with part1, mk with mk0,;
          kol with kol0, zena with zena0, kast with kast0, data with data0
          rec_unlock()
       else
          sele 4
          appe blank
          rec_lock()
          repl  nom with str(nom0,4), part with part1, mk with mk0,;
          kol with kol0, zena with zena0, dast with kast0, data with data0
          rec_unlock()
        endif
          go re0
           if l1=1
              sele 4
           else
              sele 5
           endif

                if .not. eof()
                   skip
                else
                   exit
                endif

            if subs(part,1,3)=sch0
               exit
            endif

              enddo
                        zvan()
            @ 23+ml0,15 say '              Програмата приключи                 '
                       i0=inkey(0)
            @ 23+ml0,15 say space(51)
           on key label-34 to prik
                         return

      ************** Процедура за определяне по ик. елементи **************
                   proc nivo
       open_obap(loc0=0)
      do while .t.
        set  key -2 to no
      @ 18,25 say 'F3 - Издирва желаната характеристика'
      @ 20,25 say 'Въведете шифъра на ик. елемент:' get nvo0 picture "9999"
      chet()
        set  key -2 to
      @ 18,25 say '                                      '
      @ 20,25 say '                                             '
      @ 22,25 say '                                             '
                        if nvo0=0
                            set  key -2 to
                            return
                        endif
      dnvo0='   '+str(nvo0,4)
          find '&dnvo0'
             if  found()
             else
                 l0='н'
    @ 18,5 say 'Hямате партида с този номер желаете ли да въведете нова партида д/н ?' get l0 valid l0='д'.or.l0='н'
                      chet()
    @ 18,0 say '                                                                             '
                                  if l0='д'
                                    @ 18,15 say 'Въведете наименованието на анал. партида'
                                    @ 23+ml0,15 say '           Hаименование на партидата         '
                                    @ 24,22 get name0
                                    chet()
                                    appe blank
                                    rec_lock()
                                    repl part with '   '+str(nvo0,4),name with name0
                                    rec_unlock()
                                    @ 18,19 say '                                          '
                                    @ 23+ml0,0 clea
                                  else
                                     loop
                                  endif
             endif
                        if lastkey()=13
                            set  key -2 to
                            return
                        endif
      enddo
          return


 ********************** Добавяне на нова партида *****************
                           proc novpart
   set curs on
   part4=str(part4,4)
                    l0='н'
   @ 18,5 say 'Hямате партида с този номер желаете ли да въведете нова партида д/н ?' get l0 valid l0='д'.or.l0='н'
                         chet()
   @ 18,0 say '                                                                             '
                                     if l0='д'
                        zena0=0
     @ 21+ml0,0 clea
     @ 18,19 say 'Въведете2наименованието на анал. партида'
     if sc11='д'
     @ 23+ml0,10 say 'М-KА      Hаименование на партидата         Прод.Цена               '
     mk0='бр'
     else
     @ 23+ml0, 10 say 'М-KА      Hаименование на партидата           Цена    О-ние в р-р'
     endif
     @ 24,11 get mk0
     @ 24,15 get name0
     @ 24,53 get zena0 pict "9999999.999"
     chet()
   @ 18,19 say '                                          '
   @ 23+ml0,0 clea
   store zena0 to zena3
              set relation to
              clos all
              open_obap(loc0=0)
              do preh
              open_kpap()
              set order to 0
              appe blank
              rec_lock()
              repl nom with str(nom0,4), data with data0
              repl sch with sch00,part with sch00+str(part0,4), par with part0, zena with zena0
              del()
              rec_unlock()
              store part0 to par0
              clos all
              open_obap(loc0=0) && aobi
              open_kpap()
              set order to 0
              set relation to part into obap
              set filter to par=par0
              rec_lock()
              repl kpap->zena with zena0
              rec_unlock()
              @ 21,14,24,66 box ram1
                                     endif
             set curs off
                           return

         ********* Процудурата събира оборотите само за месеца ********
                   proc sbor
                   if sch0='455'.or.sch0='421'
                     @ 0,15 say 'Д-т '+str(dsbor0,10,2)+'    K-т '+str(ksbor0,10,2)+'   Р-ка '+str(ksbor0-dsbor0,10,2)
                  *  @ 0,17 say 'Д-т '+str(dsbor0,10,2)+'    K-т '+str(ksbor0,10,2)+'   Р-ка '+str(ksbor0-dsbor0,10,2)
                   endif
                   return
  ******************  Izdirwa velaniq bankowa smetka ************************
                              proc bank
                 save screen
                 open_info(loc0=0)
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

 
