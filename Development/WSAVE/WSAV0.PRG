** ok  asci aktdis budj call1  datsme ddspro direk0 dlme direk0 direk1 direk1 dnev FILE_LOCK fmrega inde_lock help gast 
**  otvo papka podp prehansi provdisk rec_lock startvar ustro
**  arhi  ar bala bank   dds dpar   dobo dobot  dparjo dpart  dparp  expo  info lihva hlp  kpar kobo kobot
** kobp kpart  kpapt kpap kpap  kobp kparp kparjo obap obapi obve  prot regl tehno  zame zen 
      


**********************************  Управление ЗАПИСИ  **************************************

                           FUNCTION rec_lock   &&  rec_lock
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

       function  rec_unlock  && REC_UNLOCK
                              *  do otvo && PROWERKA ZA OTWOREN FAIL 
                           unlock
                   return   &&  (.f.)

  ********************************  Край на Управление ЗАПИСИ  *******************************
************************************  Управление index failowe  **********************************
                                     FUNCTION INDE_LOCK
                             set inde to &indee
                 do while .t.
                      if  flock()=.T.
                          @  0,36 say '                '
                          i0=inkey(2)
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
   ****************************** KRAI Управление index failowe  **********************************
                                      func  aktdis
                                          ll11='д'
                                           aktual()
                                     return
         *****************  Проверка за отворен файл и област DA NE SE PUSKA ZA SEGA************
                                  proc  otvo
              * save screen
              * @ 23+ml0,19 say alias()+' ОБЛАСТ '+str(sele(),2)+' ДИРЕKТОРИЯ '+diskname()+':\'+curdir()+'\'+ ' '+go0
              *              i0=inkey(0)
              * restore screen
                                       return

  
   ************************************  Управление ФАЙЛОВЕ  **********************************
                             func open_arhi(loc0)  && ARHI
                                  sele 1
                                 filee='&us_0'+'arhi'
                                 file_lock ()
          
                              if .not. field(7)='DN3'
                copy file \hlp\arh.dbf to '&us_0'+'arh.dbf'
                clos data
                sele 8
                use '&us_0'+'arh'
                sele 6
                use '&us_0'+'arhi'
                store '' to bg_0, reg9
                do while .not. eof()
                 sele 6
                 nom9 = nom
                 papk9= papk
                 dok9 = dok
                 vid9 = vid
                 dn9  = dn
                 dr9  = dr
                 vd9  = vd
                 sd9  = sd
                 vi9  = vi
                  f9  = f
                fakt9 = fakt
                 data9= data

         *   if field(5)='BG'
         *      rec_lock
         *      repl bg with bg_0
         *      rec_unlock
         *   endif
       sele 8
       appe blank
   repl nom with nom9, papk with papk9,dok with dok9,vid with vid9,;
   dn with dn9,dr with dr9,vd with vd9, sd with sd9, vi with vi9, f with f9,;
   fakt with fakt9, data with data9, vek with subs(str(year(date0),4),1,2), reg with reg9
       sele 6
           if .not. eof()
              skip
           else
              exit
           endif
                enddo
               clos all
               eras '&us_0'+'arhi.dbf'
               rename '&us_0'+'arh.dbf' to '&us_0'+'arhi.dbf'
               podr_0=1
               save all like podr_0 to podred
               DO podred
               filee='&us_0'+'arhi'
               file_lock ()
                                 ENDIF
         
                                 if file("&us_0\nari.idx")
                                      set inde to '&us_0'+'nari','&us_0'+'faki','&us_0'+'vidi'
                                 endif
                           return
              
                          func open_regl(loc0)  && REGL
                                 sele 1
                                 filee="&in_0\regl"
                                 file_lock ()
                                 if file("&in_0\dni.idx")
                                   set inde to '&in_0'+'\dni','&in_0'+'\vvidi'
                                 endif
                           return

                            func open_info(loc0)  && INFO
                                   SELECT 1
                                   filee="&in_0\info"
                                   file_lock ()
                          return
                          func open_dds  && DDS
                              sele 1
                              filee='&us_0'+'dds'
                              file_lock ()
                              if file("&us_0\dati.idx")
                                 set inde to '&us_0'+'dati'
                              endif
                          return

                          func open_dds(loc0)  && DDS
                                 sele 1
                                 filee='&us_0'+'dds'
                                 file_lock ()
                                 if file("&us_0\dati.idx")
                                    set inde to '&us_0'+'dati'
                                 endif
                          return
                            func open_dobo(loc0)  && DOBO
                                 sele 2
                                 filee='&us_0'+'dobo'
                                 file_lock ()
                                 if file("&us_0\nsdi.idx")
                                   set inde to '&us_0'+'nsdi','&us_0'+'dsdi','&us_0'+'ds'
                                 endif
                           return

                            func open_dobot(loc0)  && DOBOT
                                 sele 2
                                 filee='dobot'
                                 file_lock ()
                                 if file("&us_0\dsdit.idx")
                                   set inde to dsdit
                                 endif
                           RETURN
                            func open_kobo(loc0)  && KOBO
                                 sele 3
                                 filee='&us_0'+'kobo'
                                 file_lock ()
                                 if file("&us_0\nski.idx")
                                    set inde to '&us_0'+'nski','&us_0'+'dski','&us_0'+'ks'
                                 endif
                           return

                            func open_kobot(loc0) && KOBOT
                                 sele 3
                                 filee='kobot'
                                 file_lock ()
                                 if file("&us_0\dskit.idx")
                                    set inde to dskit
                                 endif
                           return
                            func open_dpar(loc0)  && DPAR   111111111
                                 sele 4
                                 filee='&us_0'+'dpar'
                                 file_lock ()
                                 if file("&us_0\nadi.idx")
                                    set inde to '&us_0'+'nadi','&us_0'+'dpdi','&us_0'+'di'
                                 endif
                           return
                              func open_dparjo(loc0)  && DPARJO
                                 sele 4
                                 filee='&us_0'+'dparjo'
                                 file_lock ()
                                if file("&us_0\dp.idx")
                                 set inde to '&us_0'+'dp'
                               endif 
                           return

                            func open_dpart(loc0)  && DPART
                                 sele 4
                                 filee='&us_0'+'dpart'
                                 file_lock ()
                                  if file("&us_0\dpdit.idx")
                                      set inde to '&us_0'+'dpdit'
                                  endif
                           return
                            func open_dparp(loc0)  && DPAR
                                 sele 4
                                 filee='&us_0'+'dpar'
                                 file_lock ()
                                 if file("&us_0\dpkd.idx")
                                 set inde to '&us_0'+'dpkd
                                 endif
                           return
                            func open_kpar(loc0)  && KPAR
                                 sele 5
                                 filee='&us_0'+'kpar'
                                 file_lock ()
                                 if file("&us_0\naki.idx")
                                    set inde to '&us_0'+'naki','&us_0'+'dpki','&us_0'+'ki'
                                 endif
                           return
                            func open_kpart(loc0) && KPART
                                 sele 5
                                 filee='&us_0'+'kpart'
                                 file_lock ()
                                 if file("&us_0\dpkit.idx")
                                  set inde to '&us_0'+'dpkit'
                                 endif 
                           return

                            func open_kparp(loc0) && KPARP
                                 sele 5
                                 filee='&us_0'+'kpar'
                                 file_lock ()
                                if file("&us_0\dpkk.idx")
                                  set inde to '&us_0'+'dpkk'
                                endif  
                           return

                            func open_kparjo(loc0)  && KPARJO
                                 sele 5
                                 filee='&us_0'+'kparjo'
                                 file_lock ()
                                 if file("&us_0\kp.idx")
                                    set inde to '&us_0'+'kp'
                                 endif
                           return

                            func open_obap(loc0)  && OBAP
                                 sele 6
                                 filee='&us_0'+'obap'
                                 file_lock ()
                                 if file("&us_0\aobi.idx")
                                    set inde to '&us_0'+'aobi','&us_0'+'nami','&us_0'+'pai'
                                 endif
                           return

                            func open_obapi(loc0) && OBAPI
                                 sele 6
                                 filee='&us_0'+'obapi'
                                 file_lock ()
                                 if file("&us_0\parti.idx")
                                   set inde to '&us_0'+'parti'
                                 endif  
                           return


                            func open_obve(loc0)  && OBVE
                                 sele 7
                                 filee='&us_0'+'obve'
                                 file_lock ()
                                 if file("&us_0\sobi.idx")
                                    set inde to '&us_0'+'sobi'
                                 endif
                           return

                            func open_zame(loc0)  && ZAME
                                 sele 7
                                 filee='&us_0'+'zame'
                                 file_lock ()
                                 if file("&us_0\zami.idx")
                                  set inde to '&us_0'+'zami'
                                 endif
                           return

                            func open_ar && ar
                                 sele 8
                                 filee='&us_0'+'ar'
                                 file_lock ()
                           return

                            func open_bala(loc0)  && BALA
                                 sele 11
                                 filee="&in_0\bala"
                                 file_lock ()
                           return

                             func open_hlp(loc0)  && HLP
                                  sele 13
                                 filee="&disc_1\save\hlp"
                                  file_lock ()
                            return
                            func open_kobp(loc0)  && KOBP
                               sele 8
                               filee='&us_0'+'kobp'                          
                               file_lock ()
                               if file("&us_0\sdsi.idx")
                                     set inde to sdsi
                               endif
                           return

                          func open_kpap(loc0)  && 
                               sele 9
                               filee='&us_0'+'kpap'
                               file_lock ()
                               if file("&us_0\pdpi.idx")
                                    set inde to '&us_0'+'pdpi','&us_0'+'si','&us_0'+'kpti'
                                endif
                           return

                            func open_bank(loc0) && bank
                                 sele 13
                                 filee='&us_0'+'bank'
                                 file_lock ()
                           return
                         proc open_kpapt(loc0) && KPAPT
                            sele 9
                            filee='kpapt'
                            file_lock ()
                        return                                 
                            func open_tehno(loc0) && TEHNO
                               sele 10
                               filee='&us_0'+'tehno'
                               file_lock ()
                               if file("&us_0\tepi.idx")
                                 set inde to '&us_0'+'tepi'
                               endif          
                           return

                            func open_tehn(loc0) && TEHN
                               sele 10
                               filee='&us_0'+'tehn'
                               file_lock ()
                           return


                             func open_prot(loc0) && PROT
                               sele 14
                               filee='&us_0'+'prot'
                               file_lock ()
                               if file("&us_0\parpi.idx")
                                  set inde to '&us_0'+'parpi'
                               endif
                           return

                            func open_zeni(loc0) && ZENI
                               sele 14
                               filee='&us_0'+'zeni'
                               file_lock ()
                              if file("&us_0\zdpi.idx")
                               set inde to '&us_0'+'zdpi'
                              endif  
                           return
                         func open_unpr(loc0) && UNPR
                            sele 14
                            filee='&us_0'+'unpr'
                            file_lock ()
                             if file("&us_0\pnpi.idx")
                               set inde to '&us_0'+'pnpi', '&us_0'+'udni'
                             endif 
                         return
                            func open_lihva(loc0) && LIHVA
                                 sele 14
                                 filee='&us_0'+'lihva'
                                 file_lock ()
                                 if file("&us_0\dnii.idx")
                                     set inde to '&us_0'+'dnii','&us_0'+'ddii','&us_0'+'daii'
                                 endif 
                            func open_expo(loc0) && EXPO
                               sele 14
                               filee='&us_0'+'expo'
                               file_lock ()
                            return


                     FUNC FILE_LOCK
 
                          set exclu off
                       do case
                          case loc0=1
                               use &filee  exclu
                          other
               
                                *  ? filee
                                *  WAIT '!!!!!!!!!!' && da ne se iztriwa
                              
                               use &filee
                                 
                          endcase
                    *    @  0,25 say space(30)
               do while .t.
                      if used()=.F.
                         @  0,32 say filee+str(loc0,4)+' ?'
                           i0=inkey(2)
                         @  0,25 say space(30)
                           i0=inkey(1)
                       do case
                          case loc0=1
                             use &filee  exclu
                          other
                             use &filee
                          endcase
                        loop
                      endif
                      if  flock()=.T.
                        *  @  0,32 say '                  '
                          i0=inkey(1)
                          loc0=0
                          unlock  &&  заковано е !
                          return
                      else
                        @  0,32 say filee+str(loc0,4)
                        i0=inkey(1)
                          if loc0=1
                             use &filee  exclu
                          else
                             use &filee
                          endif
                          unlock
                          loop
                      endif
               enddo
                          set exclu on
       return (.f.)
  ************************************  KRAI NA Управление ФАЙЛОВЕ  **********************************      
  
  
  

******************************** NACHALO ARHIV **********************************
	    if file("\hlp\greshka")
              eras \hlp\greshka
          endif
	    v2=1
          for i = 65 to 90
               us0=lower(chr(i))
              _LOC5 := "&us0:\"+'__FLASH\a'
            IF .NOT.(NHANDLE := FCREATE (_LOC5)) == -1
                if file("&us0:\"+'__FLASH\a')
                   exit
                endif
            else
		   store subs(us_0,1,1) to us0
            endif
          next
		      go1='  '
		      @ 6,25,18,57 box ram1
		      @ 7,26 clea to 17,56
		      @  7,28 say 'АРХИВИРАHЕ и ВЪЗСТАHОВЯВАHЕ'
		      @  9,30 prompt '1. Архивиране с ZIP'
		      @ 10,30 prompt '2. Възстанов. с ZIP'
		      @ 11,30 prompt '3. Архивиране с COPY'
		      @ 12,30 prompt '4. Възстанов. с COPY'
		      @ 13,30 prompt '5. Актуализация     '
		      @ 14,30 prompt '6. Дати на архиви   '
		      @ 15,30 prompt '7. Общ архив        '
		      @ 16,30 prompt '8. Възс.от Общ архив'

			  menu to v2

                      if v2=2.or.v2=4
                               l0='н'
                               @ 23+ml0,15 clea to 23,65
                               setcolors (zv0+=2)
                               @ 23+ml0,16 say 'ВHИМАHИЕ !'
                               setcolors (zv0)
                               @ 23+ml0,28 say 'Потвърждавате ли възстанов. д/н ?' get l0  valid  l0='д'.or.l0='н'.or.l0='d'.or.l0='n'
                               chet()
                                       if l0='н' .or.l0='n'
                                          loop
                                       endif
                      endif
		       if lastkey()=27
                              store subs(us_0,1,1) to us0
			      loop    && return
		       endif

 		*	l0='d'
			      if lastkey()=27
				  loop  && return
			      else
		                   @ 7,26 clea to 17,56
                                   do case
                                      case v2=1
		                         @ 7,32 say '1. Архивиране с ZIP'
                                      case v2=2
		                         @ 7,32 say '2. Възстанов. с ZIP'
                                      case v2=3
		                         @ 7,32 say '3. Архивиране с COPY'
                                      case v2=4
		                         @ 7,32 say '4. Възстанов. с COPY'
                                      case v2=7
		                         @ 7,32 say '7. Общ архив        '
                                      case v2=8
		                         @ 7,32 say '8. Възс.от Общ архив'
                                   endcase

				    if v2=1 .or. v2=3
                                       if v2=3
                                          us0=' '
                                       endif
                   @ 10,28 say 'От у-ство:    на у-ство:'
                   @ 10,39 get us1 valid (64 < ASC(us1).and.;
                   (ASC(us1) < 91)).or.(96 < ASC(us1).and.(ASC(us1) < 123))
                   @ 10,53  get us0 valid (64 < ASC(us0).and.;
                   (ASC(us0) < 91)).or.(96 < ASC(us0).and.(ASC(us0) < 123))
                   chet()


                                   save screen
                                    endif				    if v2=2 .or. v2=4
                                       if v2=4
                                          us0=' '
                                       endif

      @ 10,33 say 'От устройство :' get us0 valid (64 < ASC(us0).and.(ASC(us0) < 91));
     .or.(96 < ASC(us0).and.(ASC(us0) < 123))
       chet()
                                    endif
                             if  v2=7.or.v2=8
				if v2=7
                                    ssss= memoread("\hlp\job\arhiv.lst")
                                    l0=mlcount(memoread("\hlp\job\arhiv.lst"),25)
                                    dele file \hlp\job\arhiv.lst
                                   for i=1 to l0
                                      if i=1
                                       memowrit("\hlp\job\arhiv.lst",memoread('\hlp\job\arhiv.lst');
                                       +'\arhi\'+'??'+subs(data0,4,2)+'.zip'+chr(13)+chr(10))
                                      endif
                                      if i=2
                                       memowrit("\hlp\job\arhiv.lst",memoread('\hlp\job\arhiv.lst');
                                       +'\arhi\f'+'??'+subs(data0,4,2)+'.zip'+chr(13)+chr(10))
                                      endif
                                      if 2 < i
                                       memowrit("\hlp\job\arhiv.lst",memoread('\hlp\job\arhiv.lst');
                                       +subs(memoline(ssss,40,i),1,25)+chr(13)+chr(10))
                                      endif
                                   next
                                   store us0+':\arhi\'+pake+'_'+substr(data0,4,2) to us_1
                                   clea
                                    ? memoread("\hlp\job\arhiv.lst")
                                    inkey(3)
                                endif
				if v2=8
                                   if v2=4
                                      us0=' '
                                   endif
                                   @ 17,30 say 'F7 - списък от директории'
                                   store us0+':\arhi\'+pake+'_'+subs(data0,4,2) to us_1
                                   set key -6 to direk1
                                   @ 12,27 say 'Пакетен файл:' get us_1
                                endif
				chet()
                             endif
			      if  lastkey()=27
				  loop  && return
			      endif
			      endif
		       if .not. (v2=5.or.v2=6.or.v2=7.or.v2=8)
			    dire()
			      if  lastkey()=27
				  loop  && return
			      endif
			  @ 12,26,14,55 box ram1
			  @ 13,27 clea to 13,54
                      if  .not. us0='a'
     *                   fl0='n'
     *                   for i = 67 to 90
     *                        us0=chr(i)
     *                     if .not.(NHANDLE := FCREATE ("&us0:\A_FLASH\A!")) == -1
     *                        fl0='y'
     *                     endif
     *                   next
     *                     if fl0='n'
     *                        !  @ net use i: \\stefan\f /yes
     *                        !  net use
     *                        !  pause
     *                     endif
     *  *  cance
			  store 'arhi' to dr2
                          if .not.file("&us0:\arhi\*.*")
                             !md &us0:\arhi
                             k0=fcreate("&us0:\arhi\a")
			     fclose(k0)
			  endif
		      else
                          HAND0=0
                          ISFLOPPYRE(HAND0)
                             if lastkey()=27
                               loop
                             endif
			  store go0 to go1
			  store trim(dr0) to dr2
		      endif

			  dr0=trim(dr0)
			  if .not.file("&us0:\&go0&dt0\*.*")
                             !md &us0:\&go0&dt0
			     k0=fcreate("&us0:\&go0&dt0\a")
			     fclose(k0)
			  endif

                     if.not. file("&us0:\"+subs(dr2,1,4)+"\*.*")
			  zvan()
			  @ 13,27 say 'ГРЕШИТЕ ДИРЕКТОРИЯТА '+"&us0:\"+subs(dr2,1,4)
				   i0=inkey(0)
		       loop  && return
		     else
		     endif
		       endif
                                  clos all
		    do case
		       case v2=1
		       clea
                ssss= memoread("\hlp\save\save.lst")
                l0=mlcount(memoread("\hlp\save\save.lst"),25)
                dele file \hlp\save\save.lst
                for i=1 to l0
           memowrit("\hlp\save\save.lst",memoread('\hlp\save\save.lst');
           +us1+':\'+dr0+'\'+subs(memoline(ssss,40,i),9,15)+chr(13)+chr(10))
                next
                      if .not. us0='a'
                fl0='n'
          for i = 67 to 90
               us0=chr(i)
              _LOC5 := "&us0:\arhi"
            IF .NOT.(NHANDLE := FCREATE (_LOC5 + "A!")) == -1
              if us0='C'.or.us0='E'.or.us0='F'.or.us0='G' &&  .or.us0='D'
                 eras  &us0:\arhi\&dr0..zip
                 !  \hlp\pk\pkzip  &us0:\arhi\&dr0 -3 @\hlp\save\save.lst
                   provdisk()
              endif
            endif
          next

                   if dirchange("d:\dropbox")=0
                      if dirchange("d:\dropbox\&pake")=3 && -> njama tykawa direktoriq, a 5 tja e edostypna
                           makedir("d:\dropbox\&pake")
                      endif
                        if dirchange("d:\dropbox\&pake")=0
                           copy file '\arhi\'+dr0+'.zip'to 'd:\dropbox\&pake\'+dr0+'.zip'
                        endif
                   endif

   if 4 < len(trim('&dr0'))
     if v22-1 < 10
        v22='0'+str(v22-1,1)
     else
        v22=str(v22-1,2)
     endif
     dr0=subs(trim('&dr0'),1,4)
     dr1=subs(trim('&dr0'),1,2)+v22+subs(trim('&dr0'),3,2)
   else
      store dr0 to dr1
   endif
       us1=diskname()+':\'+curdir()+'\'
       diskchange("&us_0")
      !  \hlp\pk\pkzip &us0:\&dr0\&dr1  -3 @\hlp\save\save.lst
   *  !  \hlp\pk\pkzip &us0:\&dr0\&dr1 -&v @\hlp\save\save.lst  && когато информацията е по-голяма от една дiскета
       diskchange("&us1")
		      endif

		       case v2=2
       clea
      provdisk()
      if file("\hlp\greshka")
         loop
      endif
       clea
                      if  .not. us0='a'  && КОГАТО НЕ Е "А"
      ! \hlp\pk\pkunzip -o  &us0:\arhi\&dr0
        inkey(1)
		      else
      clos all
   if 4 < len(trim('&dr0'))
     if v22-1 < 10
        v22='0'+str(v22-1,1)
     else
        v22=str(v22-1,2)
     endif
     dr3=subs(trim('&dr0'),1,4)
     dr1=subs(trim('&dr0'),1,2)+v22+subs(trim('&dr0'),3,2)
   else
      store dr0 to dr3,dr1
   endif
    * ! \hlp\pk\unzip -o  &us0:\&dr3\&dr1 \&dr0
      ! \hlp\pk\pkunzip -o  &us0:\&dr3\&dr1 \&dr0
		      endif
			      clea
                              podr_0=1
                              save all like podr_0 to podred
			      podred()
		       case v2=3
                             if diskname()=upper(us0)
                                @ 23+ml0,15 say space(51)
                                setcolors (zv0+=2)
                                @ 23+ml0,16 say 'ВHИМАHИЕ !'
                                setcolors (zv0)
                                @ 23+ml0,27 say 'не можете да архивирате в същото у-во !'
                                inkey(2)
                                loop
                             endif
			  store go0 to go1
			  dr0=trim(dr0)
			  store dr0 to dr2
                              if len(dr0)=4
                                  @ 13,28 say 'ПРОГРАМАТА АРХИВИРА - '+upper('&go1')+'&dt0'
                              else
                                  @ 13,28 say 'ПРОГРАМАТА АРХИВИРА - '+substr(dr2,6,4)
                              endif
		       copy file \&dr0\dobo.dbf to &us0:\&dr2\dobo.dbf
		       copy file \&dr0\kobo.dbf to &us0:\&dr2\kobo.dbf
		       copy file \&dr0\dpar.dbf to &us0:\&dr2\dpar.dbf
		       copy file \&dr0\kpar.dbf to &us0:\&dr2\kpar.dbf
		       copy file \&dr0\obve.dbf to &us0:\&dr2\obve.dbf
		       copy file \&dr0\obap.dbf to &us0:\&dr2\obap.dbf
		       copy file \&dr0\arhi.dbf to &us0:\&dr2\arhi.dbf
		       copy file \&dr0\kobp.dbf to &us0:\&dr2\kobp.dbf
		       copy file \&dr0\kpap.dbf to &us0:\&dr2\kpap.dbf
		       copy file \&dr0\dds.dbf to &us0:\&dr2\dds.dbf
			 if file (" \&dr0\edanni.dbf")
		       copy file \&dr0\edanni.dbf to &us0:\&dr2\edanni.dbf
                         endif
			 if file (" \&dr0\bank.dbf")
		       copy file \&dr0\bank.dbf to &us0:\&dr2\bank.dbf
                         endif
		       copy file \&dr0\dannom.mem to &us0:\&dr2\dannom.mem
			 if file (" \&dr0\belez.mem")
		       copy file \&dr0\belez.mem to &us0:\&dr2\belez.mem
			 endif
			 if file (" \&dr0\tehno.dbf")
		       copy file \&dr0\tehno.dbf to &us0:\&dr2\tehno.dbf
			 endif

                         dr0=trim(dr0)
                         store upper('&us0:\&dr0\') to us_0
                         save all like us_0 to us_0
                         podr_0=1
                         save all like podr_0 to podred
                         do podred
                         us_0=diskname()+':\'+curdir()+'\'
                         save all like us_0 to us_0

		       case v2=4
                             if diskname()=upper(us0)
                                @ 23+ml0,15 say space(51)
                                setcolors (zv0+=2)
                                @ 23+ml0,16 say 'ВHИМАHИЕ !'
                                setcolors (zv0)
                                @ 23+ml0,27 say 'не можете да възстонов. от същото у-во!'
                                inkey(2)
                                loop
                             endif
			  store go0 to go1
			  dr0=trim(dr0)
			  store dr0 to dr2
                               if len(dr0)=4
                                   @ 13,27 say 'ПРОГРАМАТА ВЪЗСТАHОВЯВА-'+upper('&go1')+'&dt0'
                               else
                                   @ 13,27 say 'ПРОГРАМАТА ВЪЗСТАНОВЯВА-'+substr(dr2,6,4)
                               endif
		       copy file &us0:\&dr2\dobo.dbf to \&dr0\dobo.dbf
		       copy file &us0:\&dr2\kobo.dbf to \&dr0\kobo.dbf
		       copy file &us0:\&dr2\dpar.dbf to \&dr0\dpar.dbf
		       copy file &us0:\&dr2\kpar.dbf to \&dr0\kpar.dbf
		       copy file &us0:\&dr2\obve.dbf to \&dr0\obve.dbf
		       copy file &us0:\&dr2\obap.dbf to \&dr0\obap.dbf
		       copy file &us0:\&dr2\arhi.dbf to \&dr0\arhi.dbf
		       copy file &us0:\&dr2\kobp.dbf to \&dr0\kobp.dbf
		       copy file &us0:\&dr2\kpap.dbf to \&dr0\kpap.dbf
		       copy file &us0:\&dr2\dds.dbf to \&dr0\dds.dbf
		       copy file &us0:\&dr2\dannom.mem to \&dr0\dannom.mem
			   if file ("&us0:\&dr0\belez.mem")
		       copy file &us0:\&dr2\belez.mem to \&dr0\belez.mem
			    endif
			   if file ("&us0:\&dr0\tehno.dbf")
		       copy file &us0:\&dr2\tehno.dbf to \&dr0\tehno.dbf
			    endif
			      clea
                              podr_0=1
                              save all like podr_0 to podred
			      podred()
                       case v2=5

  *********************** АKТУАЛИЗАЦИЯ ОТ ДИСПЕЧЕР **********************
    **  s000 s100 HА ДИСПЕЧЕРСKИЯ KОМПЮТЪР
    **  s000  HА МАГАЗИHСKИЯ KОМПЮТЪР

           sc6=1
           if go0='m0'  &&  оператор
                  ll11='д'
                  br0=1
                  dr1=go0+dt0
         *      @11,21,13,59 box ram1
         *      @ 12,22 say '     ПРОГРАМАТА ПРИХВЪРЛЯ ПРОДАЖБИ  '
         *     do while br0 < 30  &&  ТЕГЛИ ПРОДАЖБИ
         *        store subs(go0,1,1)+ltrim(str(br0,2))+dt0 to dr0
         *        dr2='&dr0\&dr0'+'.zip'
         *        if file ("a:\&dr0\a")
         *           exit
         *        endif
         *        br0=br0+1
         *     enddo
         *
         *    if file ("a:\&dr2")
         *        save screen
         *        clea
         *        ! cd c:\s000
         *        ! \hlp\pk\pkunzip -o  a:\&dr2
         *        restore screen
         *        us_0='c:\s000\'
         *        podr_0=1
         *        save all like podr_0 to podred
         *        podred()
         *        @11,21,13,59 box ram1
         *        @ 12,22 say '    ПРОГРАМАТА ПРЕХВЪРЛЯ ПРОДАЖБИ  '
         *        dr0=go0+dt0
         *        ! cd c:\&dr1
         *        us_0='c:\&dr0\'
         *        us_1='c:\s000\'
         *        nom2=3001
         *        nom3=9901
         *        @ 23+ml0,15 say space(51)
         *        oper()
         *        clos all
         *    endif
                  @11,21,13,59 box ram1
                  @ 12,22 say '   ПРОГРАМАТА ПРИХВЪРЛЯ ЗАДЪЛЖЕHИЕ  '
                  ! cd c:\s000
                  dr2='s000\s000.zip'
                  save screen
                  clea
                  ! \hlp\pk\pkunzip -o c:\&dr2
                  restore screen
                  podr_0=1
                  save all like podr_0 to podred
                  podred()
                  @11,21,13,59 box ram1
                  @ 12,22 say '   ПРОГРАМАТА ПРИХВЪРЛЯ ЗАДЪЛЖЕHИЕ  '
                  ! cd c:\s000
                  us_0='c:\s000\'
                  us_1='c:\&dr1\'
                  nom2=1
                  nom3=3500
                  @ 23+ml0,15 say space(51)
                  oper()
                  clos all
                  sc9='н'
                  aktual()
                  clos all
                  copy file &us_1\prot.dbf to &us_0\prot.dbf
                  clea
                  if .not.file("a:\s000\a")
                     !md a:\s000
                     k0=fcreate("a:\s000\a")
                     fclose(k0)
                  endif
                  if file("a:\s000\s000.zip")
                     eras a:\s000\s000.zip
                  endif
                  ! \hlp\pk\pkzip  \s000\s000 -3 @\hlp\save\save.lst
                  ! \hlp\pk\pkzip  &us0:\s000\s000 -3 @\hlp\save\save.lst
                  us0='a:'
                  dr0='s000'
                  provdisk()
                  us0='c:'
                  ! cd c:\&dr1
                  ll11='н'
                  loop
           endif
  ************************* АKТУАЛИЗАЦИЯ ЗА МАГАЗИHИ **************
	 if subs(go0,1,1)='m'.and.0 < val(subs(go0,2,1))
              _LOC5 := "&us0:\"+'__FLASH\a'
           if file ("&us0:\"+'save.exe')
              copy file &us0:\save.exe to \hlp\save\save.exe
           endif
                    ll11='д'
                    br0=1
                 dr0=go0+dt0
                 @11,21,13,59 box ram1
                 @ 12,22 say '   ПРОГРАМАТА ПРИХВЪРЛЯ ЗАДЪЛЖЕHИЕ  '           if file ("&us0:\"+"s000\s000.zip") &&  прехвърля задължения от диспечер
        	! cd c:\s000
               save screen
	 	clea
	 	! \hlp\pk\pkunzip -o &us0:\s000\s000.zip
	   	restore screen

               us_0='c:\s000\'
               podr_0=1
               save all like podr_0 to podred
	       podred()
               @11,21,13,59 box ram1
               @ 12,22 say '   ПРОГРАМАТА ПРИХВЪРЛЯ ЗАДЪЛЖЕHИЕ  '
	       ! cd c:\&dr0
               us_0='c:\&dr0\'
               us_1='c:\s000\'
       	       nom2=1
	       nom3=3500
               oper()
               l5='д'
               clos all
               copy file &us_1\prot.dbf to &us_0\prot.dbf
               podr_0=13
               save all like podr_0 to podred
	       podred()
               clos all
               aktual()
               analobo()
               clos all
               clos all
            endif
         *       if .not.file("&us0:\&dr0\*.*")
         *          !md &us0:\&dr0
         *          k0=fcreate("&us0:\&dr0\a")
         *          fclose(k0)
         *       endif
         *      @11,21,13,59 box ram1
         *      @ 12,22 say '     ПРОГРАМАТА ПРИХВЪРЛЯ ПРОДАЖБИ  '
         *      dr2='&dr0\&dr0'+'.zip'
         *      us_0='c:\s000\'
         *      us_1='c:\&dr0\'
         *      ! cd c:\s000
         *       save screen
         *       clea
         *       ! \hlp\pk\pkunzip -o  c:\s000\&dr0
         *       restore screen
         *       podr_0=1
         *       save all like podr_0 to podred
         *       podred()
         *     @11,21,13,59 box ram1
         *     @ 12,22 say '     ПРОГРАМАТА ПРИХВЪРЛЯ ПРОДАЖБИ  '
         *     nom2=3001
         *     nom3=9999
         *     @ 23+ml0,15 say space(51)
         *     oper()
         *     clos all
         *      clea
         *      !  \hlp\pk\pkzip  c:\s000\&dr0 -3 @\hlp\save\save.lst
         *  **  ЗА ФЛАШKА ДА СЕ ПУСHЕ
         *  *   !  \hlp\pk\pkzip  a:\&dr0\&dr0 -3 @\hlp\save\save.lst
         *       provdisk()
                ! cd c:\&dr0
                ll11='н'
         endif
                       case v2=6
                       do ramka
                       ! \hlp\job\arhi.exe
                       case v2=7
                          ! TASKKILL /F /IM Excel.exe /IM Excel.exe
                         open_info(loc0:=9)
                         set filter to  0 < val(no)
                         go top
                         sort on no to infs
                         use infs
                         do while .not. eof()
                            dr0=go+dt0+'.zip'
                            if file("\hlp\save\save.lst")
                                ssss= memoread("\hlp\save\save.lst")
                            else
                                ssss= memoread("\hlp\save\save.lst")
                            endif
                            l0=mlcount(ssss,25)

                            dele file \hlp\save\save.lst
                            for i=1 to l0
                                 memowrit("\hlp\save\save.lst",memoread('\hlp\save\save.lst');
                                 +us1+':\'+subs(dr0,1,4)+'\'+subs(memoline(ssss,40,i),9,15)+chr(13)+chr(10))
                            next

                           ! \hlp\pk\pkzip \arhi\&dr0 -3 @\hlp\save\save.lst

                            if file("\hlp\fish\fish.lst")
                                ssss= memoread("\hlp\fish\fish.lst")
                            else
                                ssss= memoread("\hlp\fish\fish.lst")
                            endif
                            l1=mlcount(ssss,25)
                            dele file \hlp\fish\fish.lst
                            for i=1 to l1
                                memowrit("\hlp\fish\fish.lst",memoread('\hlp\fish\fish.lst');
                                +us1+':\'+subs(dr0,1,4)+'\'+subs(memoline(ssss,40,i),9,15)+chr(13)+chr(10))
                            next


                     if file("&us1:\"+subs(dr0,1,4)+"\spis.dbf")
                            ! \hlp\pk\pkzip \arhi\f&dr0 -3 @\hlp\fish\fish.lst
                     else
                     endif
                           skip
                         enddo


                        dr0=subs(us_1,9,7)+'.zip'
                        ! \hlp\pk\pkzip \arhi\&dr0 -3 @\hlp\job\arhiv.lst
                       for i = 67 to 90
                           us0=chr(i)
                          _LOC5 := "&us0:\arhi"
                        IF .NOT.(NHANDLE := FCREATE (_LOC5 + "A!")) == -1
                          if us0=''.or.us0='C'.or.us0='F'.or.us0='G'.or.us0='H'
                                eras  &us0:\arhi\&dr0
                               ! \hlp\pk\pkzip &us0:\arhi\&dr0 -3 @\hlp\job\arhiv.lst
                           *   provdisk()
                          endif
                        endif
                      next
                         eras infs.dbf

                   if dirchange("d:\dropbox\arhi")=0
                     dr0=subs(us_1,3,13)+'.zip'
                     dr1='d:\dropbox\arhi\'+subs(us_1,9,7)+'.zip'
                      copy file &dr0 to &dr1
                   endif

                       case v2=8

                            dr0=subs(us_0,4,4)+'.zip'
                            ! \hlp\pk\pkunzip -o &us_1 &dr0
                            ! \hlp\pk\pkunzip -o &dr0
                            erase &dr0
                            podr_0=1
                            save all like podr_0 to podred
                            podred()
		    endcase

       endcase

******************************** KRAY ARHIV **********************************
      ************** Процедура за датата  *************
		
		                       proc datsme
	 *  set key -7 to
	 *  save screen
	         
           ramka0 = CREATEOBJECT('ramka0')
           ramka0.Caption = "Въведете работната дата"
           ramka0.Top     = ekran0.Height *0.01
           ramka0.Left    = ekran0.Width  *0.76 
           ramka0.Height  = 30
           ramka0.Width   = 165 && 370
           
           ramka0.show
           ramka0.Visible =.T.
         *  ramka0.etik01.Visible = .F.
         *  ramka0.text01.Visible = .F.

      SET CENTURY ON
          @ 0.3,3 get date0  pict "99/99/9999"  FONT 'Courier New', 12 STYLE 'BOLD'  COLOR RGB(0,0,0,255,255,255) && DEFAULT ll4
            CHET()
	  SET CENTURY OFF
     *  set curs off
         ramka0.Visible =.F.
         ekran0.Show
         
         save all like date0 to date
       
         set century off
         set curs off
         save all like date0 to date
         dt0=substr(dtoc(date0),7,2)
         data0=substr(dtoc(date0),4,5)
         vek0=substr(str(year(date0),6),3,4)
         dte1=ctod('01'+substr(dtoc(date0),3,6))
         dte2=ctod('30'+substr(dtoc(date0),3,6))       
         restore from us_0 additive 
             if sc9='д'.or. sc11='д'
                ekran0.Caption = subs(us_0,1,len(us_0))+SPACE(THISFORM.WIDTH*0.291)+dtoc(date0)) 
          else
               ekran0.Caption = subs(us_0,1,len(us_0))+SPACE(ekran0.WIDTH*0.296)+SUBSTR(dtoc(date0),4,5)   
          endif
	   
	                                        return

           ************** Процедура за устройство **********
		                        proc ustro
         l0=1
         us0=' '
	     set key -6 to
	     save screen
         set curs on
	  @  5,17,13,64 box ram1
	  @  6,18 clea to 12,63
	  @  6,19 say 'Въведете работната директория:'
	  @  8,19 say 'Мреждва буква:    Принтер:    Пакет:'
	  @  6,50 get us_0 valid 64<asc(us_0).and.asc(us_0)<123
	  @  8,34 get mb_0 valid 64<asc(mb_0).and.asc(mb_0)<123
	  @  8,46 get pb_0 valid 64<asc(pb_0).and.asc(pb_0)<123
	  @  8,56 get pake valid 64<asc(pake).and.asc(pake)<123
       *  @ 10,19 say 'Устройство за архив' get us0 valid 64<asc(us0).and.asc(us0)<123
          direk0()       	  chet()
          us_0=trim(us_0)
                 @ 12,32 prompt 'ВРЕМЕHHО'
                 @ 12,43 prompt 'ПОСТОЯHHО'
                 menu to l0
                  if l0=1
                     erase sc10
                  else
                    *dd0=ltrim(str(nom1,4))+'-'+substr(data0,1,2)+'.o'
                     han0=fcreate("sc10")
                     fclose(han0)
                  endif
	  set curs off
	  save all like us_0 to us_0
	  save all like mb_0 to mb_0
	  save all like pake to \hlp\job\pake
	  save all like pb_0 to \hlp\job\pb_0
	  set key -6 to ustro
	  restore screen
          @ 0, 0 say space(75)
          @ 0,0 say upper(us_0)+'-'+go0
	                               return

              ***********************  Защита ******************
		                         	 proc gast
	       clea
	     @ 10,20 say 'П Р О Г Р А М А Т А   Е  З А Щ И Т Е H А  !!!'
	     @ 12,23 say 'ПОТЪРСЕТЕ СЪЗДАТЕЛЯ HА ПРОГРАМАТА  !!!'
	     @ 14,23 say '        HА ТЕЛ.  2 - 30 - 13          '
		    inkey(0)
	       clea
	       canc
	                             		return
            
                    ************** Процедура за помощ help   ************
		                               proc help
	   save screen
	   on key label F1 on key 
	
	   @ 19,0 say ' '
	   ramka()
	   @  2, 2 clea to 21, 78
	   @ 23, 2 say '                  Следващ екран - PgUp    Предишен екран PgDu               '
	   @ 22,13 say repli(chr(205),59)
	    ff0 = select()
             open_hlp(loc0=0)
	    set filter to t=tt0
		go top
		declare fiel[1]
		fiel[1]='nam'
		declare imem[1]
		imem[1]='                              ПОМОЩЕH ЕKРАН'
	*	 dbedit( 6,18,17,62,fiel,"pfunk2",'',imem,'=','')
                 dbedit( 2, 2,21,78,fiel," ",'',imem,'=','')
	   restore screen
	   sele &ff0
	   set key 28 to help
	                                  return

                    ************** калкулатор  ********************
	                    		  proc call1
	                		  ! \hlp\cal1.exe
		                       	  return
                        
      ************** Процедура за печат на подпис **********
		                        proc podp
                  @  23,15 say space(51)
                  @  23,30 say 'Документът е подписан'

          memowrit('s0001.prn',+memoread('s0001.prn')+chr(13)+chr(10)+;
          chr(13)+chr(10)+chr(13)+chr(10)+chr(13)+chr(10)+chr(13)+chr(10)+;
          '          Съставителл:...............               Ръководител:..............')
                  inkey(2)
                  @  23,15 say 'Избор на меню стрелка     или неговия пореден номер '
		   return


       ******************   Процедура вика ДДС програма *******
		                       	proc dnev
                        copy file &disk0\deklar.txt to d:\deklar.txt
                        copy file &disk0\pokupki.txt to d:\pokupki.txt
                        copy file &disk0\prodagbi.txt to d:\prodagbi.txt
			save screen
			clea
	 		!  \dnev07\dnev07.exe
			restore screen
			return
       ******************   Процедура вика DLMENU ************
			proc dlme
			save screen
			clea
			! \hlp\djcp.exe
			restore screen
			return
  


******************  Вюджетни вземания    *******************
	                             proc budj
	       set key -31 to
	       save screen
	       @  1,10,24,70 box ram1
	       @  2,11 clea to 23,69
	       @  2,22 say 'Д Ъ Р Ж А В H И   В З Е М А H И Я'
               open_obap(loc0:=88)  && aobi
	       find '452   1'
	       @  5,22 say 'ДАHЪK ЗА ОБЩИНАТА    '+str(ksal,14,0)
	       find '452   2'
	       @  6,22 say 'ДАHЪK В/У ПЕЧАЛБАТА  '+str(ksal,14,0)
	       find '452   3'
	       @  7,22 say 'ФОHД "МИЛИОРАЦИИ"    '+str(ksal,14,0)
	       find '452   4'
	       @  8,22 say 'Д О Д  Чл. 13        '+str(ksal,14,0)

	       find '454   1'
	       @ 10,22 say 'Д О Д  Чл. 4         '+str(ksal,14,0)
	       find '454   2'
	       @ 11,22 say 'П K Б                '+str(ksal,14,0)
	       find '455   1'
	       @ 12,22 say 'Д О О                '+str(ksal,14,0)
	       find '453   9'
	       @ 13,22 say 'Д Д С                '+str(ksal,14,0)


	       find '455   2'
	       @ 16,22 say 'БОЛHИЧHИ             '+str(ksal,14,0)
	       find '455   3'
	       @ 17,22 say 'ДЕТСKИ               '+str(ksal,14,0)
	       find '455   4'
	       @ 18,22 say 'МАЙЧЕHСТВО           '+str(ksal,14,0)
	       find '455   5'
	       @ 19,22 say 'ЕДHОКРАТHА ПОМОЩ     '+str(ksal,14,0)
	       do pauza
	       set key -31 to budj
	       restore screen
	       return

            ******************** Процент на ДДС   *****************************
			                    proc ddspro
	   set key 279 to
           save screen
	  if file ("ddse.mem")
	     restore from ddse additive
	  endif
	  @  8,22,12,55 box ram1
	  @  9,23 clea to 11,54
	  set curs on
	  d_s0=d_s0*100
	  d_s10=d_s10*100
	  d_s11=d_s11*100
	  @ 09,26 say 'Въведете процент ДДС :' get d_s0 pict "99"
	  @ 10,26 say 'Данък при-то иму-тво :' get d_s10 pict "9.99"
	  @ 11,26 say 'Таксата за вписване  :' get d_s11 pict "9.99"
	  chet()
	  d_s0=d_s0/100
	  d_s10=d_s10/100
	  d_s11=d_s11/100
	  d_s12=d_s10+d_s11
	  save all like d_s* to ddse
	  set key 279 to ddspro
	  restore screen
	  return
			                              return
 
      ************** Процедура прави проверка на  дискетата ************
                          proc provdisk

           if file("&us0:\arhi\&dr0"+".zip")
              ! \hlp\testdisk.bat &us0:\arhi\&dr0..zip
	          @ 0,0 clea to 24,80
          	  @  9,15,12,61 box ram1
              if .not. file ("greshka")
                 @ 11,22 say 'АРХИВЪТ Е КОРЕКТЕН НА '+upper('&us0:\ARHI\&dr0')
                 inkey(3)
	          @ 0,0 clea to 24,80
              else
                  setcolors (zv0+=2)
                 @ 10,33 say 'ВHИМАHИЕ !'
                 setcolors (zv0)
	         @ 11,17 say 'Направен е некоректен архив на '+'&us0:\arhi\&dr0'
                   erase greshka
                   inkey(2)
              endif
           endif
                          return

      ********* Процедура за отпечатване на заглавна страница на пака ************
                              proc papka
                     set key 21 to
                     save screen
                     store subs(fir,7,31) to X_0
                     X_1='   K  А  С  А    .... 1  '
                     X_2='   ЯHУАРИ     -     ЮHИ  '
                     vek0=substr(str(year(date0),6),3,4)
                     set curs on
                 do while .t.
                     clea
                     ramka()
		     @  2,27 say 'ЗАГЛАВHА СТРАHИЦА НА ПАПКА'
		     @  3,26 say '----------------------------'
		     @  8,24 get X_0
		     @ 10,27 get X_1
		     @ 12,27 get X_2
                     chet()
                     if lastkey()=27
                        set key 21 to papka
                        set curs off
                        restore screen
                        return
                     endif
		     izrab()
                     set marg to 15
            ?? ' '
            ? 'г===============================+'
            ? 'ў'+X_0+'ў'
            ? 'ў                               ў'
            ? 'ў                               ў'
            ? 'ў                               ў'
            ? 'ў                               ў'
            ? 'ў    С Ч Е Т О В О Д С Т В О    ў'
            ? 'ў                               ў'
            ? 'ў                               ў'
            ? 'ў                               ў'
            ? 'ў                               ў'
            ? 'ў                               ў'
            ? 'ў   '+X_1+'   ў'
            ? 'ў                               ў'
            ? 'ў                               ў'
            ? 'ў   '+X_2+'   ў'
            ? 'ў                               ў'
            ? 'ў                               ў'
            ? 'ў                               ў'
            ? 'ў                               ў'
            ? 'ў                               ў'
            ? 'ў                               ў'
            ? 'ў         '+vek0+' ГОДИHА           ў'
            ? 'L===============================+'
               do pech
                 enddo

                                 RETURN
                                 
                              
 ************************     М  Р  Е  Ж  А    *******************************

 
                     
                          func direk0
        save screen
        q0=1
        @ 14,25,21,57 box ram1
        mrega0='\hlp\job\'+'mrega.mrg'
        mreg0=memoread("&mrega0")
        mreg0=memoedit(mreg0,15,26,20,56,.t.,"fmrega",31,4,1,1)
        memowrit('&mrega0',mreg0)
        if .not. empty(trim(subs(memoline(mreg0,31,q0),1,13)))
           us_0=trim(subs(memoline(mreg0,31,q0),1,16))
        endif
        @ 14,24 clea to 21,57
        restore screen
        @  8,53 say ' '
                          return
                          func direk1
        save screen
          q0=1
        @ 14,25,21,57 box ram1
        mrega0='\hlp\job\'+'mrega.mrg'
        mreg0=memoread("&mrega0")
        mreg0=memoedit(mreg0,15,26,20,56,.t.,"fmrega",31,4,1,1)
        memowrit('&mrega0',mreg0)
        if .not. empty(trim(subs(memoline(mreg0,31,q0),1,13)))
          * us_1=trim(subs(memoline(mreg0,31,q0),1,16))
            us_1=trim(memoline(mreg0,31,q0))
        endif
    *   @ 14,24 clea to 21,57
        restore screen
        @ 12,40 clea to 12,55
                          return

                          func fmrega
                             do case
                                case  str(lastkey(),1)='3' &&  PgDn
                                      if q0 < mlcount(mreg0,31)+1
                                         q0=q0+5
                                      else
                                         q0=mlcount(mreg0,31)
                                      endif
                                case  lastkey()=5  &&  стрелка нагоре
                                      if  2 < q0
                                      q0=q0-1
                                      endif
                                case  lastkey()=18  && PgUp
                                      if  2 < q0
                                          q0=q0-5
                                      else
                                          q0=1
                                      endif
                                      if mlcount(mreg0,31) < q0
                                         q0=mlcount(mreg0,31)
                                      endif
                                case  lastkey()=24 && стрелка  надолу
                                      if q0 < mlcount(mreg0,31)+1
                                         q0=q0+1
                                      endif
                             endcase
                          return

  
                                    
                   **************************** Func startira globalno promenliwi ***********************************************                                    
                                           proc startvar
                                           
            * 	? SYS(5)+SYS(2003) 
          
              
                                           
          *  restore from us_0 additive 
            restore from \hlp\job\razrjd additive
            store j7 to ml0
                                         RETURN
                                    
                         ****************** Prehwyrlqne ot asci w ansi na dbf******************
                                        proc prehansi   && asci->ansi
                INKEY(1)
                                        
            loc0=0   && da se mahne koato zaraboti programata
            asci1='aaaaa' && da se mahne koato zaraboti programata            SET CURSOR OFF                             
            SET CURSOR OFF
            * DEACTIVATE MENU Izbor
            * ekran0.Visible =.F.
            ramka0 = CREATEOBJECT('ramka0')                                   
            ramka0.Caption = SPACE(30)+"ПРОГРАМАТА ПРОМЕНЯ ОТ ASCII В ANSI КОД"  
            ramka0.Top     = ekran0.Height *0.35   && 0.05
            ramka0.Left    = ekran0.Width  *0.20   && 0.32
            ramka0.Height  = 48    &&   50
            ramka0.Width   = 448  && 370   160    
            ramka0.Visible =.T.   
            ramka0.Show 
              @ 1,2 say 'ПРОГРАМАТА ПРОМЕНЯ ОТ ASCII В ANSI НА :' COLOR RGB(0,0,0,255,255,0)   &&   w+/B* 
              
           *   @ 1, 1 CLEA TO 1,70                    
           *   @ 1, 46 say 'ARHI.DBF' COLOR RGB(0,0,0,0,255,0)    && w+/B* 
         
            *  @ 1, 46 CLEA TO 2,56 COLOR w+/B* 
            *  @ 1, 46 say 'HLP.DBF' COLOR  RGB(0,0,0,0,255,0)    &&    w+/B* 
             *      INKEY(0)
             
           *  RETURN 
           *  SET CURSOR ON
           *  ramka0.Visible =.F.
           *  ekran0.Show          
           *  loop        
                   
       @ 1, 46 CLEA TO 2,56 COLOR w+/B* 
       @ 1, 46 say 'HLP.DBF' COLOR  RGB(0,0,0,0,255,0)    &&    w+/B* 
          open_hlp(loc0=0)      && HLP
          go top
       
          do while .not. eof()
              asci0=nam
              do asci
               rec_lock()
                 repl nam with asci1
               rec_unlock()

              if .not. eof()
                 skip
              else
                 exit
              endif
          enddo
        *  BROWSE 
 
          @ 1, 46 CLEA TO 2,56 COLOR w+/B* 
          @ 1, 46 say 'REGL.DBF' COLOR  RGB(0,0,0,0,255,0)    &&    w+/B*                           
          open_regl(loc0=0)        && REGL
          go top
          do while .not. eof()
              asci0=vid
              do asci
               rec_lock()
                 repl vid with asci1
               rec_unlock()

              asci0=vvid
              do asci
               rec_lock()
                 repl vvid with asci1
               rec_unlock()
              asci0=gr
              do asci
               rec_lock()
                 repl gr with asci1
               rec_unlock()
              asci0=mol
              do asci
               rec_lock()
                 repl mol with asci1
               rec_unlock()
              asci0=pol
              do asci
               rec_lock()
                 repl pol with asci1
               rec_unlock()
              if .not. eof()
                 skip
              else
                 exit
              endif
          ENDDO
         * BROWSE                           
                       
          @ 1, 46 CLEA TO 2,56 COLOR w+/B* 
          @ 1, 46 say 'INFO.DBF' COLOR  RGB(0,0,0,0,255,0)    &&    w+/B*                    
          open_info(loc0=0)
          go top
          do while .not. eof()
              asci0=fir
              do asci
               rec_lock()
                 repl fir  with asci1
               rec_unlock()
              asci0=adr
              do asci
               rec_lock()
                 repl adr with asci1
               rec_unlock()
              asci0=grad
              do asci
               rec_lock()
                 repl grad with asci1
               rec_unlock()
              asci0=name
              do asci
               rec_lock()
                 repl name with asci1
               rec_unlock()
              asci0=dlaz
              do asci
               rec_lock()
                 repl dlaz with asci1
               rec_unlock()
              asci0=p
              do asci
               rec_lock()
                 repl p with asci1
               rec_unlock()
              asci0=tdd
              do asci
               rec_lock()
                 repl tdd with asci1
               rec_unlock()
              asci0=podr
              do asci
               rec_lock()
                 repl podr with asci1
               rec_unlock()
              asci0=vvid
              do asci
               rec_lock()
                 repl vvid with asci1
               rec_unlock()
              asci0=gr
              do asci
               rec_lock()
                 repl gr with asci1
               rec_unlock()
              asci0=ba
              do asci
               rec_lock()
                 repl ba with asci1
               rec_unlock()
              asci0=gb
              do asci
               rec_lock()
                 repl gb with asci1
               rec_unlock()
              asci0=lize
              do asci
               rec_lock()
                 repl lize with asci1
               rec_unlock()
              asci0=sas
              do asci
               rec_lock()
                 repl sas with asci1
               rec_unlock()
              if .not. eof()
                 skip
              else
                 exit
              endif
          ENDDO
        * BROWSE
                  
          @ 1, 46 CLEA TO 2,56 COLOR w+/B* 
          @ 1, 46 say 'ARHI.DBF' COLOR  RGB(0,0,0,0,255,0)    &&    w+/B*      
          open_arhi(loc0=0)
          go top
          do while .not. eof()
              asci0=dok
              do asci
               rec_lock()
                 repl dok  with asci1
               rec_unlock()

              asci0=vid
              do asci
               rec_lock()
                 repl vid with asci1
               rec_unlock()
              asci0=dr
              do asci
               rec_lock()
                 repl dr with asci1
               rec_unlock()
              asci0=sd
              do asci
               rec_lock()
                 repl sd with asci1
               rec_unlock()
              asci0=vi
              do asci
               rec_lock()
                 repl vi with asci1
               rec_unlock()
              asci0=f
              do asci
               rec_lock()
                 repl f with asci1
               rec_unlock()
              if .not. eof()
                 skip
              else
                 exit
              endif
          enddo          
       *   BROWSE
                    
          @ 1, 46 CLEA TO 2,56 COLOR w+/B* 
          @ 1, 46 say 'BANK.DBF' COLOR  RGB(0,0,0,0,255,0)    &&    w+/B*      
          open_bank(loc0=0)
          go top
          do while .not. eof()
              asci0=REAS
              do asci
               rec_lock()
                 repl REAS  with asci1
               rec_unlock()
               
                asci0=REAS1
              do asci
               rec_lock()
                 repl REAS1  with asci1
               rec_unlock()
                 
                if .not. eof()
                 skip
              else
                 exit
              endif
          enddo                  
         * BROWSE          
                    
          @ 1, 46 CLEA TO 2,56 COLOR w+/B* 
          @ 1, 46 say 'DPAR.DBF' COLOR  RGB(0,0,0,0,255,0)    &&    w+/B*      
          open_dpar(loc0=0)
          go top
          do while .not. eof()
              asci0=MK
              do asci
               rec_lock()
                 repl MK  with asci1
               rec_unlock()
                if .not. eof()
                 skip
              else
                 exit
              endif
          enddo              
         * BROWSE          
                   
          @ 1, 46 CLEA TO 2,56 COLOR w+/B* 
          @ 1, 46 say 'KPAR.DBF' COLOR  RGB(0,0,0,0,255,0)    &&    w+/B*      
          open_kpar(loc0=0)
          go top
          do while .not. eof()
              asci0=MK
              do asci
               rec_lock()
                 repl MK  with asci1
               rec_unlock()
                if .not. eof()
                 skip
              else
                 exit
              endif
          enddo                     
        *  BROWSE          
          
                                    
          @ 1, 46 CLEA TO 2,56 COLOR w+/B* 
          @ 1, 46 say 'KPAP.DBF' COLOR  RGB(0,0,0,0,255,0)    &&    w+/B*      
          open_kpap(loc0=0)
          go top
          do while .not. eof()
              asci0=MK
              do asci
               rec_lock()
                 repl MK  with asci1
               rec_unlock()
                if .not. eof()
                 skip
              else
                 exit
              endif
          enddo                     
         * BROWSE          
          
          @ 1, 46 CLEA TO 2,56 COLOR w+/B* 
          @ 1, 46 say 'OBVE.DBF' COLOR  RGB(0,0,0,0,255,0)    &&    w+/B*      
          open_obve(loc0=0)
          go top
          do while .not. eof()
              asci0=name
              do asci
               rec_lock()
                 repl name with asci1
               rec_unlock()
              asci0=t
              do asci
               rec_lock()
                 repl t with asci1
               rec_unlock()
              asci0=a
              do asci
               rec_lock()
                 repl a with asci1
               rec_unlock()
              if .not. eof()
                 skip
              else
                 exit
              endif
          ENDDO
        *  BROWSE
          
          
          @ 1, 46 CLEA TO 2,56 COLOR w+/B* 
          @ 1, 46 say 'OBAP.DBF' COLOR  RGB(0,0,0,0,255,0)    &&    w+/B*      
          open_obap(loc0=0)
          go top
          do while .not. eof()
              asci0=name
              do asci
               rec_lock()
                 repl name with asci1
               rec_unlock()
              asci0=mk
              do asci
               rec_lock()
                 repl mk with asci1
               rec_unlock()
              asci0=t
              do asci
               rec_lock()
                 repl t with asci1
               rec_unlock()
              asci0=ts
              do asci
               rec_lock()
                 repl ts with asci1
               rec_unlock()
              if .not. eof()
                 skip
              else
                 exit
              endif
          ENDDO
        *  BROWSE
                                              
          @ 1, 46 CLEA TO 2,56 COLOR w+/B* 
          @ 1, 46 say 'UNPR.DBF' COLOR  RGB(0,0,0,0,255,0)    &&    w+/B*      
          open_unpr(loc0=0)
          go top
          do while .not. eof()
              asci0=NOM
              do asci
               rec_lock()
                 repl NOM  with asci1
               rec_unlock()
                if .not. eof()
                 skip
              else
                 exit
              endif
          enddo                     
        *  BROWSE          
               podr_0=1
               save all like podr_0 to podred
               podred()
             
              SET CURSOR ON
              ramka0.Visible =.F.
              ekran0.Show          

          *    @ 1, 2 CLEA TO 2,56 COLOR w+/B*
          *    @ 1,15 say "ПРОГРАМАТА ПРИKЛЮЧИ"
           *   inkey(10)
               DEACTIVATE MENU Izbor
               restore screen
                                  return

         ************** Процедура за печат ASCI -> ANSI **********
                                 PROC asci   
        asci1=''
        for i0 = 1 to len(asci0) 
            if 127 < asc(subs(asci0,i0,1)) .and. asc(subs(asci0,i0,1)) < 192
               asci1=asci1+chr(asc(subs(asci0,i0,1))+64)
             ELSE
               asci1=asci1+subs(asci0,i0,1)
            endif
         NEXT
               
                                             return