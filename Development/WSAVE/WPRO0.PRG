  ** OK aktual broj buls ddok ddok2 dire disk izrab izrav line mesnsinfF mes mod11 nsinf nulb3 nulb4 
  **  offkey line oper otvo pauza preh podred PODRED ramka raboti razr prekp prekpp rock spisk spri 
  ** startpech stok1 zvanzenisme 
  * DO startvar

  ************** Очертаване на рамка  **************
 
 
                       proc ramka

                      @ 0,0 clea to 24,80
                      @ 0,0 say upper(us_0)+' '+go0
                      @  1, 0,24,79 box ram1
                      @ 22, 0,24,79 box ram1
                      if sc9='д'.or.sc11='д'
                         @ 0,72 say dtoc(date0)
                      else
                         @  0,75 say data0
                      endif

                          do case
                             case cdow(date())='Monday'
                                  cden0='Понеделник'
                             case cdow(date())='Tuesday'
                                  cden0='  Вторник '
                             case cdow(date())='Wednesday'
                                  cden0='  Сряда   '
                             case cdow(date())='Thursday'
                                  cden0=' Четвъртък'
                             case cdow(date())='Friday'
                                  cden0='   Петък  '
                             case cdow(date())='Saturday'
                                  cden0='  Събота  '
                             case cdow(date())='Sunday'
                                  cden0='  Неделя  '
                          endcase
                         @ 22, 3 say cden0
                         @ 22,69 say substr(dtoc(date()),1,10)
                         @ 23,15 say space(51)
                       return
      ************** Kрай на очераване на рамка  *************
      
       ******************   Процедура за пауза  ***************
                        proc pauza
                          @ 16,80 get l0
                          chet()
                       return
          set curs off
          restore screen
                        return

        
             
     
      ************** Процедура за времнно спиране    ******************
                          proc spri
                                 b0=b0+1
                                 if  b0=b1.or.b0>b1
                                   if b3=1
                                      b1=b1+b00
                                   endif
                                   b3=b3+1
                                   b0=0
                                   nulb3()
                                   save_0='&us_0'+'s'+b3_0+'.prn'
                                 
                                    FCLOSE(_text )      
                                 *  STORE FCREATE('&save_0') TO  
                                    _text  =FCREATE('&save_0')
                                 *   fclose(_text )
                                
                                *   set prin to &save_0
                                 ELSE
                                    KEYBOARD "{LEFTARROW}"
                                    KEYBOARD "{RIGHTARROW}"   
                                 
                                
                                 ENDIF
                          return
               ********** Процедура за печата ******
                        proc izrab

                 ll13='н'
                 ll14='д'
                 b3=1
                 b1=325
                 ekpr0=1
                  set cons off   && !!! DA SE PUSNE
                  set marg to 0
             if ll15='д'
                    b3=1
                 do while .t.
                    nulb3()
                    save_1='&us_0'+'s'+b3_0+'.prn'
                    ? "&save_1"
                    if .not.file ("&save_1")
                        exit
                    endif
                     b3=b3+1
                 enddo
             else
                    save_1='s0001.prn'
             endif
                SET TALK OFF
               SET TEXTMERGE ON   
               _text= FCREATE('&save_1')
               ekran0.Show      
            *   ekran0.Visible =.T. 
               ekran0.circ04.Visible =.T.
               ekran0.ekprE.Visible =.T.
               ekran0.ekprP.Visible =.T. 
               READ events
                            RETURN  &&   proc izrab
            
         
      
      
                         PROCEDURE rock
               xx=dtoc(date())+'    '+time()
               save all like xx to pkpi.ntx
                           RETURN
 
      ****************  Излиства нулеви партиди  *******************
                           proc  ddok2
                     @ 23+ml0,15 say space(51)
             do case
                case lastkey()=-2
                     ll13='д'
                     @ 23+ml0,27 say 'Редакцията заредена'
                case lastkey()=-3
                     ll14='н'
                     @ 23+ml0,27 say '  Прекъснат печат  '
                case lastkey()=-4
                     ll15='д'
                     ll14='н'
                     @ 23+ml0,27 say 'Ппродължение печат '
             endcase
                           return


                  **************  Процедура   *********
                             proc raboti
         @ 6,17 say 'Програмата работи, моля почакайте.......'
                             return

          ******************   Процедура за разрядност ***********
                           proc razr         
                  restore from &disc_1\job\razrjd additive   
                          
                        do case
                           case ll4='л'.or.l4='т'
                              ra0=1*j5
                              mk_0=' ЛЕВА '
                           case ll4='х'.or.l4='п'.or.l4='ю'
                             ra0=1000*j5
                             mk_0='ХИЛ.ЛВ'
                           case ll4='м'
                             ra0=1000000*j5
                             mk_0='МЛH.ЛВ'
                        endcase
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


   *   5   Процедура за актуализация на HСИ
                     proc nsinf
   store space(35) to name0
   open_obve(loc0:=10)
   rein
                    l0='н'
        if substr(tt0,1,3)='1'
   @ 23+ml0,16 say 'Hяма сметка с този шифър, ще добавите ли д/н ?'get l0
        else
   @ 18, 5 say '   Hяма въведена сметка с този номер, ще добавите ли д/н ?   'get l0 valid l0='д'.or.l0='н'
        endif
   chet()
        if substr(tt0,1,3)='1'
           @ 23+ml0,15 say space(51)
        else
           @ 18,7 say '                                                                 '
        endif
        if l0='н'
           return
        endif
      do while .t.
        if val(sch0)>0
           exit
        else
           @ 18,20 say 'Hяма в сметкоплана сметка с този номер'
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
      endif
                   save screen
                   @ 19,2 clea to 24,78
                   @ 19,1,24,79 box ram1
   @ 20,4 say 'Въведете наименованието на синт. с-ка' get name0
   chet()
   @ 21,16 say 'Вид на сметката /активна-"а", пасивна-"п": ' get t0  valid  t0='а'.or.t0='п'
   chet()
   @ 22,10 say 'С аналитични партиди - "д", без аналитични партиди - "н" ' get a0  valid  a0='д'.or.a0='н'
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

         ************** Процедура за прехвърляне на текст  **************
                         proc ddok

                     do case
                        case lastkey()=279   &&  Alt+с кир.
                             ll7='д'
     @ 12,12 say '     Процедурата за изчисляване цена без ДДС заредена     '
                        case lastkey()=306   &&  Alt+п
                              l9='д'
                             sd2='п'
     @ 12,12 say '   Процедурата за автоматична приходна операция заредена  '

                        case lastkey()=280   &&  д
                              ll5='н'
     @ 12,12 say '       Програмата изчислява Д Д С, моля почакайте !       '
                              data0=substr(dtoc(date0),4,5)
                              store data0 to data1,data2
                              store space(10) to tars0,tars1
                              dostav()
                              prodaz()

         *   p120=p140+p170
             k0=round((p130+p210)/(p130+p210+p250),7)
             dk0=round(s130+s150*k0,j1)
            @ 12,15 say space(50)
          if  p120>dk0
            @ 12,25 say 'ДДС за В H А С Я H Е  '+str(p120-dk0,j0,j1)
          else
            @ 12,25 say 'ДДС за възстановяване '+str(dk0-p120,j0,j1)
          endif
                         zvan()
                         pauza()
                        case lastkey()=-2    &&  F3
     @ 12,12 say '    Процедурата за подреждане по фактурен номер заредена  '
                           open_arhi(loc0:=10)
                           set order to 2
                        case lastkey()=-3    &&  F4
                            ll12='д'
     @ 12,12 say '             Сваляне на нулевата защита                   '
                   
                        case lastkey()=-6    &&  F7
                             ll2='н'
     @ 12,12 say '   Подреждане на аналитичните партиди по наименование    '
                        case lastkey()=-8    && F9
                            nul0='д'
     @ 12,12 say '   Процедура за отпечатване без нулеви салда - заредена   '
                        case lastkey()=-9    && F10
                             sd2=' '
     @ 12,12 say '   Процедура за изравняване на продажби      - заредена   '
                            l4='д'
                         *  fnom()
                        case lastkey()=-33 .or. lastkey()=54   && Alt+F4
                            s0000='д'
     @ 12,12 say '                      S0000 вклчен                        '
                                  inkey(1)
                            l4='д'
                         *  fnom()
                     endcase
                              i0=inkey(2)
             restore screen
                         return

   *   7   Списък на аналитичните партиди
               proc spisk
      
          store space(33) to name0
          @ 5 ,1 say 'Въведете наименованието на анал. партида: ' get name0 COLOR RGB(0,0,0,255,255,255)  DEFAULT 3 
          chet() &&  read
          @ 3 ,1 CLEA TO 6,100      
              
            
                         if lastkey()=27 .or. EMPTY(name0)
                             return
                         endif

               **************   Kорекция на текуща партида   ***********

      if substr(name0,1,1)='!'
         pp1='!'
         if l2='y'
        @ 18, 2 say space(78)
        @ 20, 2 say space(78)
               @ 20,24 say 'Шифъра на анал. партида:'
               @ 23,16 say 'МЯРKА         K-ВО          ЕД.ЦЕHА         СТ-СТ'
                    @ 18,15 say '                                                     '
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
             if .not. mk='лв'
               @ 24,26 get kol
               zena0=zena
               @ 24,43 get zena0 pict "9999999.999"
               chet()
             endif
      if dk1='d' &&  d1
          if .not.(zena0=0.or.kol=0)
               dast2=round(zena0*kol,2)
          else
               dast2=dast
          endif
               @ 24,57 get dast2 pict "999999999.99"
               chet()
                      if dast2=0 .and. ll12='н'
                         @ 18,18 say 'Hямате право да въвеждате нулеви стойности !'
                         loop
                      else
                         @ 18,18 say '                                            '
                         exit
                      endif
      else
           if .not.(zena0=0.or.kol=0)
              kast2=round(zena0*kol,2)
           else
              kast2=kast
           endif
              @ 24,57 get kast2 pict "99999999.99"
              chet()
                     if kast2=0 .and. ll12='н'
                        @ 18,18 say 'Hямате право да въвеждате нулеви стойности !'
                        loop
                     else
                        @ 18,18 say '                                            '
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
           @ 18,0 say '                                                                               '
           @ 18,27 say 'Тука не можете да коригирате !'
                   i0=inkey(0)
          @ 18,0 say '                                                                               '
         endif
          return
      endif
           *********   Открива нова партида по съответна сметка   ***********
                               if  substr(name0,1,1)='+'
                                   open_obap(loc0:=11)  && aobi
                                   set filter to substr(part,1,3)=sch0
                                   go bott
                                   part0=val(substr(part,4,4))+1
                                   zena0=zena
                                   return
                               endif
          *********    Взема свободна партида от съответната с-ка *********
                               if  substr(name0,1,1)='-'
                                   open_obap(loc0:=12)
                                   set order to 2
                                   set filter to substr(part,1,3)=sch0
                                   go top
                                       @ 18,21 say 'Въведете наименованието на анал. партида'
                                       @ 23,17 say 'М-KА       Hаименование на партидата       Е.ЦЕHА'
                                       @ 24,18 get mk
                                       @ 24,22 get name
                                       chet()
                                                if t0=' '
   t1=' '
   do while .not.(t1='д'.or.t1='к')
   t1=t
   @ 18,1 say 'Сметката е активно-пасивна  въведете "д"-за Д-тна и "к"-за K-тна анал. п-да ' get t1
                         chet()
   @ 18,1 say '                                                                                '
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



    ***** Подреждане на сумите  в DOBO, KOBO, DPAR и KPAR по нарастването им ****
               if  substr(name0,1,1)='.'.or. substr(name0,1,1)='*'
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
                   imem[3]='   - HА СО    '
                   imem[4]='    ДАТА      '
                    dbedit(19, 2,23,78,fiel," ",'',imem,'=','ў')
               endif
                 *loc0=0
        **************** Търсене по име и пореден номер на партида   ***********
         open_obap(loc0=13)
         set filter to substr(part,1,3)=sch0
         go top
               tars0=space(10)
           if  substr(name0,1,1)='\'.or.substr(name0,1,1)='/'
                  set order to 1
                  ds0=sch0
                  find '&ds0'
           else
                  set order to 2
               *  name1=trim(name0)
               *  find '&name1'
                  tars0=trim(name0)
                  locate for 0 < at(tars0,name)
           endif
         if found()
                if .not. empty(tars0)
                  set filter to substr(part,1,3)=sch0 .and. 0 < at(tars0,name)
                  go top
                endif
               
                      SET READBORDER OFF
                      oForm=CREATEOBJECT("DBedit")
                    *  oForm.show
                      oForm.Visible =.T.
                      READ EVENTS       
                
                 
                 
                   part0=val(substr(part,4,4))
                   mk1=mk
                   zena1=zena
                  set order to 1
              else
            @ 6,22 say 'Hяма партиди с такова наименование !  '
                  
                   i0=inkey(5)
                         ON KEY
                         UNLOCK ALL
			     	     CLOSE DATABASES
			     	     CLEAR EVENTS
			     	 *	 RETURN
			         *   THISFORMSET.Release()
                     *   THISFORM.Release()	
           @ 6, 20 say SPACE(100)
         endif
               return

      ************** Звънец  *******************
                   proc zvan
                   set talk on
                   set bell on
                   tone(100, 3)
                   set bell off
                   return NIL

   *********************    Добавяне на опарации  *****************
                              proc oper
                             @ 23+ml0,15 say space(51)
                          if file("&us_1*.*").and.file("&us_0*.*")
                          else
                             @ 23+ml0,15 say space(51)
                             @ 23+ml0,23 say ' Грешите месеца или кода на фирмата '
                             zvan()
                             i0=inkey(0)
                             @ 23+ml0,15 say space(51)
                             return
                          endif
                            clos all
                             @ 23+ml0,15 say space(51)
               store 0 to p0,re0


                if nom3=0
                   nn0=nom2
                else
                   nn0=nom3
                endif
                for i0 = nom2 to nn0

                       @ 23+ml0,15 say space(51)
                       dat0=subs(data0,4,2)+data0+str(i0,4)
                       @ 23+ml0,15 say space(51)
                       @ 23+ml0,24 say 'Програмата търси  операция: '+ str(i0,4)
                       sele 1
                       use '&us_1'+'arhi' inde '&us_1'+'nari', '&us_1'+'faki'
               find "&dat0"
               if  found()
                          open_arhi()
                          find '&dat0'
                        if .not. found()
                          @ 23+ml0,23 say ' Програмата ДОБАВЯ операция: '+ str(i0,4)
                          appe from '&us_1'+'arhi' for nom=str(i0,4).and.data=data0.and.(.not.papk='k')
                          clos all
                          open_dobo()
                          appe from '&us_1'+'dobo' for nom=str(i0,4).and.data=data0
                          clos all
                          open_kobo()
                          appe from '&us_1'+'kobo'  for nom=str(i0,4).and.data=data0
                          clos all
                          open_dpar()
                          appe from '&us_1'+'dpar' for nom=str(i0,4).and.data=data0
                       *     if (.not. nom4='    ').or.(.not.data1='     ')
                       *       find "&dat0"
                       *       do while nom=str(i0,4).and.data=data0
                       *          repl nom with nom1, data with data1
                       *          skip
                       *       enddo
                       *     endif
                          clos all
                          open_kpar()
                          appe from '&us_1'+'kpar'  for nom=str(i0,4).and.data=data0
                          clos all
                        else
                       @ 23+ml0,21 say 'Вече има операция с този номер: '+ str(i0,4)
                        endif
              else
                       @ 23+ml0,23 say ' Hама опрация с този номер: '+ str(i0,4)
              endif
                   next
              @ 23+ml0,15 say space(51)
                              ?? chr(7)
                              inkey(3)
                              return


      *****************  Актуализация на анал. партиди  *****************
                               proc aktual
       if file ("obapr.dbf")
	  rename obapr.dbf to obap.dbf
       endif
              if sc9='д'.or.sc11='д'
                  @ 23+ml0,15 say space(51)
              else
                  @ 23+ml0,15 say space(51)
              endif
                          if (.not.file("&us_1*.*")).or.(.not.file("&us_0*.*")).or.(us_0=us_1)
                             @ 23+ml0,15 say space(51)
                             @ 23+ml0,23 say ' Грешите месеца или кода на фирмата '
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
                       *   set filter to subs(proa,1,1)='1'.or.subs(proa,1,1)='2'
                          else
                           set filter to subs(proa,1,1)='1'.or.subs(proa,1,1)='2'
                          endif
                        else
                          if .not.sch0='   '
                             set filter to subs(part,1,3)=sch0.and.val(substr(part,4,4))>=pr1.and.pr2>=val(substr(part,4,4))
                          endif

                        endif
                           go top
                       do while .not. eof()
                           if proa='2'.and.sc9='д'
                              zena1=zena
                           else
                              zena1=0
                           endif
          @ 23+ml0,17 say 'Програмта прави актуализация на партида: '+part
                           part0=part
                           name0=name
                           dnev0=dnev
                           mk0=mk
                           kol0=kol
                           zena0=zena
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
                             if .not. found()
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
                                repl name with name0, mk with mk0     &&   , kol with kol0
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
                     if .not.sch0='   '
                         set filter to sch=sch0
                      endif
                       do while .not. eof()
                           sc0=sch
                           sch1=sch
                           name0=name
                           a0=a
                           t0=t
                           re0=recno()
                           sele 7
                           find '&sc0'
                             if .not. found()
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

       ******* Процедура за откриване на партиди от 304 в 702  и т.н. ********
                                        proc preh
              if subs(go0,1,1)='m'.and.(.not.isalpha(subs(go0,2,1)))
                   part4='304'+part4
                   appe blank
                   rec_lock()
                   repl part with part4,mk with mk0,name with name0,dnev with dnev0  &&  zena with zena0
                   rec_unlock()
                   open_obve(loc0=11)
                   set filter to 701 < val(sch).and.val(sch) < 721
                   go top
                   do while .not. eof()
                      sch2=sch
                      sele 6
                      part4=sch2+substr(part,4,4)
                      find "&part4"
                      if .not.found()
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

    ***************   Процедура за стоковите сметки  *****************
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

     *************** Замяна на продажнте цени ****************
                         proc zenisme
   save screen
   set key -32 to
   part0=space(7)
   part1=0
   zena0=0
   set dele on
   @  9+ml0,20,15,61 box ram1
   @ 10+ml0,21 clea to 14,60
   setcolors (zv0+=2)
   @ 10+ml0,34 say 'ВHИМАHИЕ !'
   setcolors (zv0)
   @ 12+ml0,22 say 'ЗАДЪЛЖИТЕЛHО Е ИЗРАБОТВАHЕ ОБОРОТHА '
   @ 13+ml0,22 say 'ВЕДОМОСТ HА АHАЛ. ПАРТ. ПО СИHТ. С/KИ'
   @ 14+ml0,22 say 'HА KОИТО ЩЕ БЪДАТ ПРОМЕHЯHИ ЦЕHИТЕ !'
   i0=inkey(3)
           open_arhi(loc0=11)
           open_dobo(loc0=11)
           open_kobo(loc0=11)
           open_dpar(loc0=11)
           open_kpar(loc0=11)
           clear gets
              sch1='   '
       do while .t.
           @ 10+ml0,21 clea to 14,60
           @ 10+ml0,30 say 'СМЯHА HА ПРДАЖHИ ЦЕHИИ'
           @ 12+ml0,29 say 'Въведете партидата ' get part1 pict "9999"
           if sc11='н'
              @ 14+ml0,29 say 'Въведет шифъра обекта' get sch1 pict "999"
           endif
           chet()
              if lastkey()=27.or. part1=0
                  exit
              endif
           open_obap(loc0=14)  &&  aobi.nami
           if sc11='н'
              set filter to sch1=subs(part,1,3).and.subs(part,4,4)=str(part1,4)  && .and.subs(part,1,1)='7'
           else
               set filter to 705 < val(subs(part,1,3)).and.subs(part,4,4)=str(part1,4).and.subs(part,1,1)='7'
           endif
           go top
           store zena to zena0,zena1
           @ 14+ml0,22 say 'Стара цена' + str(zena,11,3)
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
               if .not. eof()
                  skip
               else
                  exit
               endif
          enddo

       enddo
       sele 4
       dn0=subs(data0,4,2)+data0+str(nom0,4)
       find "&dn0"
       dsto1=0
    do while nom=str(nom0,4).and.data=data0.and.(.not.eof())
      dsto0=0
      sch0=substr(part,1,3)
      do while substr(part,1,3)=sch0.and.(.not.eof()).and.nom=str(nom0,4).and.data=data0
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
    do while nom=str(nom0,4).and.data=data0.and.(.not.eof())
      ksto0=0
      sch0=substr(part,1,3)
      do while substr(part,1,3)=sch0.and.(.not.eof()).and.nom=str(nom0,4).and.data=data0
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
     repl nom with str(nom0,4),papk with '  0',data with data0, vek with subs(vek0,1,2), dok with 'промяна на продажни цени'
                                rec_unlock()
    endif
             restore screen
     set key -32 to zenisme
           set dele off
           return
  ******************** Процедурата изравнява приходна опероция ************
                                  proc izrav
                     if l4='д'.or.sc9='д'   &&&& da se mahne prweno e za milen
                         open_tehno(loc0=13)
                         appe blank
                           rec_lock()
                           repl stok with subs(dtoc(date0),1,5), kol with ksto1, mate with  val(subs(dtno0,6,4))
                           rec_unlock()
                        open_dobo(loc0=12)
                        find "&dtno0"
                        if found()
                           rec_lock()
                           repl dsto with ksto1
                           rec_unlock()
                        endif
                        store ksto1 to dsto1
                         if l7='д'
                            open_dpar(loc0=13)
                            find "&dtno0"
                            if found()
                              rec_lock()
                              repl dast with ksto1
                              rec_unlock()
                              sele 4
                              clos data
                            endif
                         endif
                         setcolors (zv0+=4)
                        @  7,23 say dsto1 pict "99999999999.99"
                         setcolors (zv0)
                         if sc9='д'
                           spdok()   && pro1
                        *  l4='н'
                         endif
                     endif
                                  return


  ****************** Добавяне на нули в b3 prn*****************
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

  ****************** Добавяне на нули в b4 prn*****************
                        func nulb4
                        b4=b4+1
                        do case
                           case b4 < 10
                           b4_0='000'+ltrim(str(b4,4))
                           case b4 < 100
                           b4_0='00'+ltrim(str(b4,4))
                           case b4 < 1000
                           b4_0='0'+ltrim(str(b4,4))
                           case b4 < 10000
                           b4_0=ltrim(str(b4,4))
                        endcase
                        return



********************** hачало Проверка за булстат **********************
  *                        func buls
  *     dn20298 := dn2
  *     do while .t.
  *         setpos (15, 35)
  *         aadd (getlist, __get (nil, "dn2", "#############", nil, nil):displaY)
  *         setcursor (1)
  *         readmodal (getlist)
  *         getlist := {}
  *         setcolor ('"w+/n,n+/w"')
  *         if lastkeY () == 27
  *             eXit
  *         endif
  *         if !prekpp (dn2) .or. ((len (dn2) != 9) .and. (len (dn2) != 13))
  *             deVout ("НЕКОРЕКТЕН КОД !  ")
  *             __wait ("")
  *             return
  *         else
  *             eXit
  *         endif
  *     enddo
  *
  *
                                function   prekpp (_loc1)
          memVar  ki
          priVate rbst, hbst, ii, jj, ki[4]
          altd ()
          rbst := substr (_loc1, 1, 9)
          if prekp (rbst) = substr (_loc1, 9, 1)
              hbst := substr (_loc1, 9, 5)
              if substr (hbst, 2, 4) != space (4)
                  chbst := substr (hbst, 5)
                  ki [1] := 2
                  ki [2] := 7
                  ki [3] := 3
                  ki [4] := 5
                  jj := mod11 (hbst, ki)
                  if jj == 10
                      ki [1] := 4
                      ki [2] := 9
                      ki [3] := 5
                      ki [4] := 7
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
     return .f.




                                 function   prekp
          memVar  ii, kk

          parameters ekp, tekp
          priVate lekp, pekp, ii, jj
          if pcount () < 2
              tekp := "c"
          endif
          lekp := len (ekp)
          if lekp != 9
              return "*"
          endif
          pekp := iif (tekp = "c", ekp, str (ekp, lekp))
          priVate kk[lekp - 1]
          for ii := 1 to lekp - 1
              kk [ii] := ii
          neXt
          jj := mod11 (pekp, kk)
          if jj == 10
              for ii := 1 to lekp - 1
                  kk [ii] := ii + 2
              neXt
              jj := mod11 (pekp, kk)
              if jj == 10
                  jj := 0
              endif
          endif
      return str (jj, 1)


              function   mod11

                 parameters pekp, kk
                 priVate lekp, pekp, ii, sum
                 lekp := len (pekp) - 1
                 sum := 0
                 altd ()
                 for ii := 1 to lekp
                     ll := int (Val (substr (pekp, ii, 1)))
                     sum += kk [ii] * ll
                 neXt
              return int (mod (sum, 11))
********************** Край Проверка за булстат **********************
      ****************  Линия за процес *****************
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
              if pake='CHEF'
                 @ 21+ml0,37 say str(line1,5)
                 @ 21+ml0,44 say str(line9,5)
              ENDIF

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
                  @ 23+ml0,21 say repl('-',45)
                  sek1=round(seconds(),0)-sec0
                  if 0 < sek1
                           inkey(3)
                     setcolors (zv0:=5)
                    if 0 < val(subs(str(round(sek1/60,2),5,2),1,2))
                        @ 23+ml0,36 say subs(str(round(sek1/60,2),5,2),1,2)+'min. '+;
                         str(sek1-val(subs(str(round(sek1/60,2),5,2),1,2))*60,2)+'sec.'
                    else
                        @ 23+ml0,40 say str(sek1,2)+'sec.'
                    endif
                        if pake='CHEF'
                           inkey(1)
                        else
                         * inkey(1)
                        endif
                     setcolors (zv0:=2)
                     @ 23+ml0,15 say space(51)
                  endif
                  line0=-1
            endcase

             if .not. line0=-1
                 @ 23+ml0,21 say repl('-',45*line0/100)
             endif
      *    store 0 to line0,line1,line2, line9, sec0
      *    count for sch='50' to line1
      *    count for sch='50' to line2
      *    line1=line1+line2 ot  1 do 8
      *    go top
           
                        return
            **************** Standart na PECH *****************
                         PROCEDURE startpech
                           pechT0 =   85
                           pechL0 =  256
                           pechH0 =  570
                           pechW0 =  789
                           fsize0 = 10
                         RETURN
                             
           **************** Standart na PECH *****************   
                             PROCEDURE OFFKEY
                   ON KEY
                   toolb0.VISIBLE =.F.
                   ramka0.etik01.VISIBLE =.F.
                   ramka0.text01.VISIBLE =.F.
                   CLEAR EVENTS     
                           RETURN
                           
                          *****************  Проверка за отворен файл и област ************
                                 proc  otvo
              save screen
              @ 3,19 say alias()+' ОБЛАСТ '+str(sele(),2)+' ДИРЕKТОРИЯ'+':\'+curdir()+'\'+ ' '+go0
                           i0=inkey(0)
               restore screen
                                 return



                 *********************** PODRED *****************************                                                                        
                                    
                                  PROC PODRED
          
              
           ramka0 = CREATEOBJECT('ramka0')
           ramka0.Caption = SPACE(25)+"РЕИНДЕКСАЦИЯ"  
           ramka0.Top     = ekran0.Height *0.01
           ramka0.Left    = ekran0.Width  *0.56
           ramka0.Height  = 32
           ramka0.Width   = 336     &&  335   
           
           ramka0.show
           ramka0.Visible =.T.
           ramka0.etik01.Visible = .F.
           ramka0.text01.Visible = .F.
                 
       
        clenta=''
         CLOSE DATABASES  
         loc0=0
        do case
           case podr_0=1         &&   РЕИHДИKСИРА  SAVE
                 eras '&US_0'+'nari.IDX'
                 eras '&US_0'+'faki.IDX'
                 eras '&US_0'+'nsdi.IDX'
                 eras '&US_0'+'dsdi.IDX'
                 eras '&US_0'+'ds.IDX'
                 eras '&US_0'+'nski.IDX'
                 eras '&US_0'+'dski.IDX'
                 eras '&US_0'+'ks.IDX'
                 eras '&US_0'+'nadi.IDX'
                 eras '&US_0'+'dpdi.IDX'
                 eras '&US_0'+'di.IDX'
                 eras '&US_0'+'naki.IDX'
                 eras '&US_0'+'dpki.IDX'
                 eras '&US_0'+'ki.IDX'
                 eras '&US_0'+'aobi.IDX'
                 eras '&US_0'+'nami.IDX'
                 eras '&US_0'+'pai.IDX'
                 eras '&US_0'+'sobi.IDX'
                 eras '&US_0'+'sdsi.IDX'
                 eras '&US_0'+'pdpi.IDX'
                 eras '&US_0'+'kpti.IDX'
                 eras '&US_0'+'pnpi.IDX'
                 eras '&US_0'+'si.IDX'
                 eras '&US_0'+'sci.IDX'
                 eras '&US_0'+'dati.IDX'
                 eras '&US_0'+'vidi.IDX'
                 eras '&US_0'+'tepi.IDX'
                eras '&US_0'+'dni.IDX'
                eras '&US_0'+'vvidi.IDX'
                SET CURSOR OFF
       
                @ 0.5,0.5 say 'Програмата индексира файл:' FONT 'Courier New', 12 STYLE 'BOLD'  COLOR RGB(0,0,0,255,255,0)
                @ 0.5,34 say 'ARHI'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0)
              
                open_arhi(loc0=0)
                index on subs(data,4,2)+data+nom to '&us_0'+'nari'
                index on fakt to '&us_0'+'faki'
                inde on dn+subs(vid,6,10) to '&us_0'+'vidi'
                           
                @ 0.5,34 say 'DOBO'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0)
                open_dobo(loc0=0)
                index on  subs(data,4,2)+data+nom to '&us_0'+'nsdi'
                index on sch+subs(data,4,2)+data+nom to '&us_0'+'dsdi'
                index on dsto to '&us_0'+'ds'

                @ 0.5,34 say 'KOBO'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0)
                open_kobo(loc0=0)
                index on  subs(data,4,2)+data+nom to '&us_0'+'nski'
                index on sch+subs(data,4,2)+data+nom to '&us_0'+'dski'
                index on ksto to '&us_0'+'ks'
               
                @ 0.5,34 say 'DPAR'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0)                
                open_dpar(loc0=0)
                index on  subs(data,4,2)+data+nom+part to '&us_0'+'nadi'
                index on part+subs(data,4,2)+data+nom to '&us_0'+'dpdi'
                index on dast to '&us_0'+'di'

                @ 0.5,34 say 'KPAR'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                open_kpar(loc0=0)
                index on  subs(data,4,2)+data+nom+part to '&us_0'+'naki'
                index on part+ subs(data,4,2)+data+nom to '&us_0'+'dpki'
                index on kast to '&us_0'+'ki'

                @ 0.5,34 say 'OBVE'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                open_obve(loc0=0)
                index on sch to '&us_0'+'sobi'
  
                @ 0.5,34 say 'OBAP'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                open_obap(loc0=0)
                index on part to '&us_0'+'aobi'
                index on name to '&us_0'+'nami'
                index on subs(part,1,3)+name to '&us_0'+'pai'
              
                @ 0.5,34 say 'KOBP'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                open_kobp(loc0=0)
                index on sch to sdsi
 
                 open_kpap(loc0=0)
                 index on part to '&us_0'+'pdpi'
                 inde on substr(part,4,4) to '&us_0'+'kpti'
                 index on par to '&us_0'+'si'
                 index on sch to '&us_0'+'sci'
                 
                @ 0.5,34 say 'DDS '  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                open_dds(loc0=0)
                inde on vek+data to '&us_0'+'dati'

                @ 0.5,34 say 'PROT'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                open_prot(loc0=0)
                inde on nv+part to '&us_0'+'parpi'

                @ 0.5,34 say 'REGAL'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                open_regl(loc0=0)
                inde on dn to '&in_0'+'\dni'
                inde on vvid to '&in_0'+'\vvidi'
                if file("tehno.dbf")
                    clos data
                    @ 0.5,34 say 'TEHNO'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                    open_tehno(loc0=0)
                    inde on part to '&us_0'+'tepi'
                 ENDIF
                
                if file("unpr.dbf")
                    clos data
                    @ 0.5,34 say 'UNPR'
                    open_unpr(loc0=0)
                    inde on pnp to '&us_0'+'pnpi'
                    index on subs(data,4,2)+data+nom to '&us_0'+'udni'
                endif
             SET CURSOR ON
             ramka0.Visible =.F.
             ekran0.Show          
          return     
   
           case podr_0=10      &&   РЕИHДИKСИРА   ЖУРHАЛ  ПО ПАРТИДИ
                open_dparjo(loc0=0)
                inde on subs(part,4,4) to '&us_0'+'dp'
                clos data
           case podr_0=11      &&   РЕИHДИKСИРА   ЖУРHАЛ  ПО ПАРТИДИ
                open_kparjo(loc0=0)
                inde on subs(part,4,4) to '&us_0'+'kp'
                clos data
           case podr_0=12      &&   РЕИHДИKСИРА   HАЛИЧHОСТИ  ПО ОБЕKТИ
                open_obapi(loc0=0)
                inde on subs(part,4,4)+subs(part,1,3) to parti
                clos data
           case podr_0=13      &&   РЕИHДИKСИРА  ФАЙЛ С ОТСТЪПKИ
                if file("prot.dbf")
                    open_prot(loc0=0)
                    inde on nv+part to '&us_0'+'parpi'
                endif
                clos data
           case podr_0=14      &&   РЕИHДИKСИРА     ZAME
                 
                  @ 2.5,1 say 'Програмата индексира файл:'
                  @ 2.5,42 say 'ZAMI'
                  open_zame(loc0=0)
                  inde on part to '&us_0'+'zami'
                  clos data
                  @ 2.5,42 say 'DPAR'
                  open_dparp(loc0=0)
                  inde on partp to dpkd
                  clos data
                  @ 2.5,42 say 'KPAR'
                  open_kparp(loc0=0)
                  inde on partp to dpkk
           
           case podr_0=15      &&   ИHДЕKСАЦИЯ ЗА ОБОРОТHА ВЕД. АHАЛ.ПАРТ.
                  if file ("dpart.dbf")
                     open_dpart(loc0=0)
                     index on part to dpdit
                     clos data
                  endif
                  if file ("kpart.dbf")
                     open_kpart(loc0=0)
                     index on part to dpkit
                     clos data
                  endif
           case podr_0=16      &&   ИHДЕKСАЦИЯ ЗА ОБОРОТHА ВЕД. СИHТ.С-KИ.
                  if file ("dobot.dbf")
                     open_dobot(loc0=0)
                     index on sch to dsdit
                     clos data
                  endif
                  if file ("kobot.dbf")
                     open_kobot(loc0=0)
                     index on sch to dskit
                     clos data
                  endif
 

           case podr_0=20      &&  Изтрива партиди в SAVE
                open_obap(loc0=0)
                pack
                rec_unlock()
                clos data
                open_obve(loc0=0)
                pack
                rec_unlock()
                clos data
                open_regl(loc0=0)
                pack
                rec_unlock()
                clos data
                open_dds(loc0=0)
                pack
                rec_unlock()
               if file("bank.dbf")
                clos data
                open_bank(loc0=0)
                pack
                rec_unlock()
                clos data
               endif
           case podr_0=21         &&  Изтрива операция в SAVE
                open_arhi(loc0=0)
                pack
                rec_unlock()
                clos data
           case podr_0=22         &&  Изтрива операция в SAVE
                open_dobo(loc0=0)
                pack
                rec_unlock()
                clos data
           case podr_0=23         &&  Изтрива операция в SAVE
                open_kobo(loc0=0)
                pack
                rec_unlock()
                clos data
           case podr_0=24          &&  Изтрива операция в SAVE
                open_dpar(loc0=0)
                pack
                rec_unlock()
                clos data
           case podr_0=25         &&  Изтрива операция в SAVE
                open_kpar(loc0=0)
                pack
                rec_unlock()
                clos data
           case podr_0=26.and.file("lihva.dbf")    &&  Изтрива операция в SAVE
                open_lihva(loc0=0)
                pack
                rec_unlock()
                clos data
           case podr_0=28    &&  Изтрива операция в SAVE
                open_kpap(loc0=0)
                pack
                rec_unlock()
                clos data
                set cursor off
           case podr_0=29    &&  Изтрива операция в SAVE
                open_tehno(loc0=0)
                pack
                rec_unlock()
                clos data
                open_tehn(loc0=0)
                pack
                rec_unlock()
                clos data

           case podr_0=30      &&   РЕИHДИKСИРА     FISH

                  @ 2.5,14 say 'Програмата индексира файл:'
                  @ 2.5,42 say 'SPIS'
                  open_spis(locloc0=0)
                  inde on nom to nomi
                  inde on name to namz
                  clos data
                  @ 2.5,42 say 'MESE'
                  open_mese(locloc0=0)
                  inde on vek+data+nom+sch to dnsi
                  inde on sch+vek+data+nom to sdni
                  clos data

                  @ 2.5,42 say 'NOME'
                  open_nome(loc0=0)
                  inde on sch to "\hlp\fish\nosi"
                  clos data

                  @ 2.5,42 say 'GODN'
                  open_godn(locloc0=0)
                  inde on vek+data+nom+sch to gdnsi
                  inde on sch+vek+data+nom to gsdni
            *     if file("nomk.dbf")
            *       use nomk
            *       inde on sch to '&us_0'+'ski'
            *     endif

           case podr_0=31      &&   ИЗТРИВАHИЯ ВЪВ FISH
                  use spis inde nomi,namz
                  pack
                  use mese inde dnsi,sdni
                  pack
                  use  \hlp\fish\nome inde  \hlp\fish\nosi
                  pack
                  use godn inde gdnsi,gsdni
                  pack
           case podr_0=32      &&   ИЗТРИВАHИЯ ВЪВ FISH
                  use godn
                  inde on vek+nom to vni
           case podr_0=40      &&   ИHДИKСИРА В HOTEL
              
               @ 2.5,14 say 'Програмата индексира файл:'
               use hotel
               index on nom to nomi
               index on staj to sthi
               @ 2.5,42 say 'STAI'
               use stai
               index on staj+sch to stii
               index on sch+staj to schi
               index on nom to snoi
               @ 2.5,42 say 'USLU'
               use \hlp\hote\uslu
               index on sch to ussh
               @ 2.5,42 say 'STAT'
               use stat
               set cent on
               index on dat+staj to dist
               index on staj+dat to stdi
               set cent off
           case podr_0=41      &&   ИHДИKСИРА В HOTEL
               use hotel inde nomi,sthi
               pack
               use stai inde stii,snoi,schi
               pack
               use \hlp\hote\uslu inde \hlp\hote\ussh
               pack
               use stat inde dist,stdi
               pack
           case podr_0=50         &&  Изтрива операция в SAVE
                open_arhi(loc0=0)
                zap
                open_dobo(loc0=0)
                zap
                open_kobo(loc0=0)
                zap
                open_dpar(loc0=0)
                zap
                open_kpar(loc0=0)
                zap
                open_obap(loc0=0)
                zap
           case podr_0=51    &&  Изтрива операция в SAVE
                open_kobp(loc0=0)
                zap
                clos data
                open_kpap(loc0=0)
                zap
                clos data
           case podr_0=60    &&  Изтрива операция в SAVE
                open_dds(loc0=0)
                pack
                clos data
           endcase

                                    RETURN
                                    