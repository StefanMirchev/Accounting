       **  IMA PROMQNA W f6 NA SCHET. OPERACIQ 
       ** Ald+d KAKTO I 4/6/3 SE IZRABOTWA NE PREZ PRODAGBI I POKUPKI A PREZ DISK   
          
   
         
          deacti popup    
          ramka0 = CREATEOBJECT('ramka0')
          ramka0.Caption = SPACE(85)+"СЧЕТОВОДНА ОПЕРАЦИЯ"  
          ramka0.show 
          READ events
 WAIT '22222222222222222222222222222222'
 
    * EXTERNAL 
   **  adob dobor fkt fnom gkor gzik kdso kdao kkso kobob konpart
   **  prodpri prodraz regt sav33 starkey vazkey viddok
    *  do pro2 WE4E E STARTIRANA
      data0=substr(dtoc(date0),4,5)
      tt0='20'
             open_arhi(loc0=36)
             set filter to substr(papk,1,1)='k'.and.data=data0
             go bott
             if .not.data0=data
             setcolors (zv0+=2)
             @ 23+ml0,15 say ' ВHИМАHИЕ !'
             setcolors (zv0)
             @ 23+ml0,26 say '  ПОСЛЕДHАТА ОПЕРАЦИЯ Е ОТ ДАТА :'+data+'  '
                  zvan()
                  pauza()
             endif
             set filter to substr(papk,1,1)='k'.and.data=data0
               go top
               declare fiel[1]
               fiel[1]='dok'
               declare imem[1]
               imem[1]=''
               @  4,18,20,62 box ram1
               @  5,19 clea to 19,61
               @  5,22 say 'Определяне групата на документацията'
                dbedit( 6,26,19,53,fiel," ",'xxxxxxxxxxxxxxxxxxxxxxxxxx',imem,' ')
                       if lastkey()=27.or.substr(dok,23,4)='    '
                           return
                       endif

       nom1=subs(data0,4,2)+data0+str(val(substr(dok,23,4)),4)
       dok2= substr(dok,1,26)
   @  1, 0 clea to 24+ml0,80
   @  1,30 say 'Счетоводна операция'
   @  2,29 say '---------------------'
   @  3, 5 say 'Hомер на СО :'
   @  3,33 say 'Папка -'
   @  3,63 say 'Дата   '
   @  4, 5 say 'ДЕБИТ'
   @  4,12 say '/ESC - изход'
   @  4,56 say 'F2 - помощ/'
   @  4,69 say 'KРЕДИТ'
   @  4,27 say dok2
   @  5, 5 say repli('¦',70)
   @ 19, 1 say repli('-',79)
   p0=6
   b0=0
   bg_0='BG'
      do while b0<11
         @ p0,40 say '¦'
         p0=p0+1
         b0=b0+1
      enddo
      open_arhi(loc0=0)
     find '&nom1'
        if found()
          skip -1
        else
        endif
   nom0=val(nom)
		      if file("\hlp\sc\sc9").and.file("\hlp\sc11")
                        if nom0 < 2000
                             eras sc9
                             sc9='н'
                             sc11='д'
                             dd0='sc11'
                             han0=fcreate("&dd0")
                             fclose(han0)
                        else
                             eras sc11
                             sc11='н'
                             sc9='д'
                             dd0='sc9'
                             han0=fcreate("&dd0")
                             fclose(han0)
                        endif
                      endif
   clos data
   store  'н' to l2,l9,barc1
   dr22=' '
   fn0=0
   vid4=space(23)
    store date0 to date1
   do while .t.    &&           ГЛАВЕH ЦИKЪЛ
  * if file("sc9").or.file("\hlp\sc\sc9")
  *    sc9='д'
  *   else
  *    sc9='н'
  *   endif
   store 'н' to l4,l5,l7,l8,l11,regl0,ll7,ll11,ll12 && l4 изравнява операция
   sch2=' '
   vd0='01'
   store 0 to nvo0, kkol0,ksal0,kk0
   @  6, 0 clea to 17,37
   @  6,43 clea to 17,75
   @ 17,0 say '                                                                      '
   if sc9='д'
      papk0=val(subs(sch00,3,1))
   endif
   nom0=nom0+1
        if nom1=data0+str(nom0,4)
           @ 18,25 say 'Заделeните номера са изчерпани !'
           i0=inkey(0)
           return
        endif
           do startkey
          if file ("\hlp\vika\vika.txt")
             do vika
          endif
   @  3,19 say str(nom0,5)
   @  3,70 say data0
   @  3,42 get papk0  pict '999'
   chet() && read
   @ 22,20 say space(50)
         do vazkey
         if lastkey()=27
            do vazkey
            clos data
            return
         endif
       if sc9='н'
         spdok() &&  pro1
       endif
       p0=7
         if lastkey()=27.and.(p0=17.or.p0<>8)
            set key -3 to
            set key -4 to
            return
         endif
        if l9='д'
                 store 0 to ksto0, ksto1, dsto1
        else
                          store 0 to dsto1,ksto1,min0
                          do dobor
        endif
          if sc11='д'.and.dsto1=0
             l8='д'
          endif
        if .not.l8='д'
                          do kobor
        endif
       if p0=7
          set key -3 to
          set key -4 to
          return
       endif
      if  l5='д'.and.ksto0=0.and.ll12='н'
            open_arhi(loc0=)
         find '&nom1'
         if found()
           skip -1
         endif
        nom0=val(nom)
          loop
      endif
       izrav()
       do regt
      open_arhi(loc0=36)
      appe blank
                rec_lock()
                if dr2='д'.or.dr2='п'
                    repl sd with sd2, vd with vd0
                    if dsto1 < 0
                       vid0='к-ие'+subs(vid0,5,44)
                       repl vd with '03'
                    endif
                else
                    repl sd with ' '
                endif


                if dr2='п'
                    repl fakt with substr(vid0,6,10)
                    if l4='д'
                       if vd0='09'
                          repl f with 'о'
                       else
                          repl f with 'к'
                       endif
                    endif

                       if dn1='147164000 '
                      *   dok0='пром.стоки. '+'касов бон'+space(5)+'-'+dtoc(date0)+space(4)+subs(dok0,40,1)
                          dok0='пром.стоки. '+space(4)+fakt+'-'+dtoc(date0)+space(4)+subs(dok0,40,1)
                       endif

                endif

                if sc4='д'.and.substr(dok0,1,10)=space(10)
                    repl dok with dnev0+substr(dok0,11,30)
                endif
                rec_unlock()
                if sch2='411'.and.dr2='п'
                   dok0=subs(dok0,1,39)+'Б'
                else
                   if subs(dok0,40,1)='Б'
                      dok0=subs(dok0,1,39)+' '
                   endif
                endif
            if sc9='д'
                if sch2='501'.and.dr2='п'
                   dok0=subs(dok0,1,39)+'К'
                else
                   if subs(dok0,40,1)='К'
                      dok0=subs(dok0,1,39)+' '
                   endif
                endif
                if l11='д'
           dok0=subs(dok0,1,38)+'*'+subs(dok0,40,1)
                endif
            endif
               rec_lock()
   repl nom with str(nom0,4), papk with str(papk0,3),dok with dok0,vid with vid0,;
   dn with dn2,dr with dr2,data with data0, vek with subs(vek0,1,2),;
   vek with subs(str(year(date0),4),1,2), reg with dtoc(date())
   if (dr2='п'.and.sd='и').or.(dr2='д'.and.sd='в')
      repl dn with subs(dn30,3,10), bg with subs(dn30,1,2), dn3 with subs(dn30,13,3)
   endif
               re0=recn()
               re_0=recno()
               rec_unlock()
               papk0=val(papk)
               clos data
                     dsto1=round(dsto1,j1)
                     ksto1=round(ksto1,j1)
             if .not. dsto1=ksto1
                 if dsto1>ksto1
                    l0='д'
                 else
                    l0='к'
                 endif
   @ 18, 1 say 'Hяма равенство по Д-та-'+str(dsto1,14,2)+' и K-та-';
   +str(ksto1,14,2)+' <'+l0+'> '+str(abs(dsto1-ksto1),14,2)
   store ksto1 to ksto11
                 pauza()
   @ 18,0 say '                                                                                '
                 do gkor
   data0=substr(dtoc(date0),4,5)
   dt0=substr(dtoc(date0),7,2)
   ra2=0
   @  1, 0 clea to 24+ml0,80
   @  1,30 say 'Счетоводна операция'
   @  2,29 say '---------------------'
   @  3, 5 say 'Hомер на СО :'
   @  3,32 say 'Папка -'
   @  3,63 say 'Дата   '
   @  4, 5 say 'ДЕБИТ'
   @  4,12 say '/ESC - изход'
   @  4,56 say 'F2 - помощ/'
   @  4,69 say 'KРЕДИТ'
   @  4,27 say dok2
   @  5, 5 say repli('¦',70)
   @ 19, 1 say repli('-',79)
   p0=6
   b0=0
   store 'н' to l11,ll7,ll9
   do while b0<11
   @ p0,40 say '¦'
   p0=p0+1
   b0=b0+1
   enddo
      open_arhi(loc0:=37)
     find '&nom1'
        if found()
          skip -1
        endif
   nom0=val(nom)
             else
                  loop
             endif
   enddo
   *   1     Hачало на процедурата за въвеждане на Дебитните обороти
                                proc dobor
   dk1='d'     && d2
     if sc13='д'
        l4='д'
     endif
   do while p0<16
   store 0 to dsto0, ksto0
   if sc9='д'.and.p0=7
             if dn1='147164000 '
                 sch0='411'
                 dsto0=0
             else
                 sch0='501'
                 dsto0=1
             endif
   else
      sch0='   '
   endif
   set key 176 to prodraz
   set key -33 to zadalz
   @ p0, 6 get sch0
   chet() && read
   set key -33 to  && Alt+F4
   set key 176 to
   if lastkey()=27.and.ll11='н'
      @ p0,6 clea to p0+1,36
      return
   endif
   if sch0='41'.or.sch0='498'.or.sch0='501'
      store sch0 to sch2
   else
      if .not. sch0='   '
         sch2=' '
      endif
   endif
   @ 18,0 say space(79)
   if ll11='д'.and.dr2='д'.and.(sd2='с'.or.sd2='в')
      if dsto2=0
         return
      endif
             setcolors (zv0+=4)
             @ p0, 6 say '453'
             @ p0, 23 say str(round(dsto2*d_s0,j1),j0,j1)
             setcolors (zv0)
      ll12='н'
      ll11='н'
      set key -3 to ddok
      @ 16,22 say str(dsto1,14,2)
             return
   endif
      if sch0='   '.or.l8='д'.or.lastkey()=9
        @ p0,6 clear to p0+1,36
        exit
      endif
             if substr(sch0,1,1)='6'.and.sc2='д'
                 ss1='6'
             endif
      open_obve(loc0:=21)
      find '&sch0'
     if .not.found()
        nsinf()
        loop
     endif
          if sc6='д'.and.substr(sch,1,1)='3'
             ra2=0
             proze()
          endif
        a0=a
        if a='д'
                if l4='д'.or.sc9='д'
                   l7='д'
                   dtno0=subs(data0,4,2)+data0+str(nom0,4)
                endif
           t0=t
           clos data
           adob()
               if dsto0=0 .and. ll12='н'
                  loop
               endif
        else
           clos data
                if l4='д'.or.sc9='д'
                   dtno0=subs(data0,4,2)+data0+str(nom0,4)
                endif
             set key  -4 to prik
             @ p0,23 get dsto0 pict "99999999999.99"
             chet() && read
             set key  -4 to
                   if ll7='д'.and.sch0='7'
                      dsto0=round(dsto0/(1+d_s0),j1)  && round(dsto0/1.22,2)
                      @ p0,23 say dsto0 pict "99999999999.99"
                      ll7='н'
                   endif
                  @ 18,18 say '                                            '
               if dsto0=0 .and. ll12='н'
                  @ 18,18 say 'Hямате право да въвеждате нулеви стойности !'
                          i0=inkey(0)
                  @ 18,18 say '                                            '
                  loop
               endif
        endif
   p0=p0+1
          open_dobo(loc0:=30)
          if sc9='д'
             find '&dtno0'
            if found()
               return
            endif
          endif
   set order to 2
   ss0=sch0+subs(data0,4,2)+data0+str(nom0,4)
   find "&ss0"
   if .not. found()
       appe blank
   endif
               rec_lock()
   repl nom with str(nom0,4), sch with sch0, nvo with str(nvo0,4), dsto with dsto0, data with data0
               rec_unlock()
   dsto1=dsto1+dsto
          clos data
          if sc9='д'
             exit
          endif
   enddo

   @ 16,22 say str(dsto1,14,2)
   return
   *   2     Hачало на процедурата за въвеждане на Kредитни обороти
                             proc kobor
       dk1='k'
       nvo0=0
       if p0=7.and.l9='н'
          set key -3 to
          return
       endif
                   if l9='д'
                      p0=8
                   endif
    k1=' '
             if p0<9
                 p1=17
             else
                 p1=p0+1
             endif
   do while p0<p1
   sch0='   '
   ksto0=0
   l6='н'
   if sc9='н'
      set key 175 to prodpri  && sav2
   endif
   if sc9='д'
        store sch00 to sch0
        setcolors (zv0)
     @ p0,43 get sch0
     chet() && read
         if sch0=sch00
            prodag()
            sele 4
            clos data
            @ p0,60 say ksto0 pict "99999999999.99"
         else
            l7='н'
            sc9='н'
            @ 21, 0 clear to 24+ml0,80
            spdok() &&  pro1
         endif
   else
     @ p0,43 get sch0
     chet() && read
     set key -33 to
   endif
           set key 175 to
   if sc9='н'
           @ 18,0 say  space(79)
          if sch0='   '
            if k1='y'
               @ p0,43 clear to p0+1,74
               exit
            else
               loop
            endif
          endif
             if (substr(sch0,1,1)='5'.or.substr(sch0,1,1)='4').and.(ss1='6') && .and.(.not.substr(sch0,1,2)='45')) && сл. бряг
                nivo()    &&  sav3
             endif
                ss1=' '
            * if sch0='501'.or.sch0='401'
            *    sch01=sch0
                 sch01='501'
            * endif
      open_obve(loc0:=22)
   go top
   find '&sch0'
     if .not.found()
         nsinf()
         loop
     endif
          if sc6='д'.and.substr(sch,1,1)='3'
             ra2=0
             proze()
          endif
        a0=a
        if a='д'
           t0=t
                adob()
               if ksto0=0 .and. ll12='н'
                  loop
               endif
        else
                    if dr2='п'.and.(sd2='о'.or.sd2='с')
                      store round(dsto1/(1+d_s0),j1) to ksto0
                    else
                      store dsto1 to ksto0
                    if sch0='777'
                       ksto0=dsto1-ksto1
                    endif
                    endif
             set key -4 to prik
             @ p0,60 get ksto0 pict "99999999999.99"
             chet()
             set key -4
                   if ll7='д'.and.sch0='7'
                      ksto0=round(ksto0/(1+d_s0),j1)
                      @ p0,60 say ksto0 pict "99999999999.99"
                      ll7='н'
                   endif
                  @ 18,18 say '                                            '
               if ksto0=0 .and. ll12='н'
                @ 18,18 say 'Hямате право да въвеждате нулеви стойности !'
                          i0=inkey(0)
                  @ 18,18 say '                                            '
                loop
               endif
        endif
   p0=p0+1
   k1='y'
   endif
          open_kobo(loc0:=28)
   set order to 2
   ss0=sch0+subs(data0,4,2)+data0+str(nom0,4)
   find "&ss0"
   if .not. found()
       appe blank
   endif
               rec_lock()
   repl nom with str(nom0,4), sch with sch0, nvo with str(nvo0,4), ksto with ksto0,;
   data with data0
               rec_unlock()
   ksto1=ksto1+ksto
         if sc9='д'   &&   изтрива записи от продажна операция в магазин
          if ksto0=0.and.ll12='н'  && при отказ от операция
            @ 20,1 clea
            store nom1 to nom3
            store nom0 to nom1,nom2
            l0='м'
            markir()
            iztri()
            store nom3 to nom1
          endif
            return
         endif
   enddo
   return
   *    3  Hачало на процедурата за въвеждане на  обороти по анал с-ки
                            proc adob
       clos data
       store 0 to part0,dast1
       if sc9='д'
           l11='н'
             if dn1='147164000 '
                if sch00='717'.or.sch00='718'
                   part0=25
                else
                   part0=26
                endif
                dast1=1
             endif
	    if file("\hlp\sc\sc9").and.file("\hlp\sc\sc11")
                dast1=1
                part0=1
            endif
       endif
       do while .t.
          if dk1='d'.and.sc9='д'.and.part0=0
            @ 20, 0 clea to 24+ml0,69
              ll7='н'
              l11='н'
              ll9='н'
              return
          endif
	    if file("\hlp\sc\sc9").and.file("\hlp\sc\sc11")
                part0=0
            endif
                              set key -32 to sav33
               konpart()
                               set key -32 to
                           if lastkey()=27
                               @ 20, 0 clea to 24+ml0,69
                               ll7='н'
                               l11='н'
                               ll9='н'
                               return
                           endif
         part1=sch0+str(part0,4)
         l2='н'
       kol0=0
       if sc13='д'
         kol0=1
       endif
      if part2='7'.or.part2='3'
         @ 20, 1 say 'HАЛИЧHИ KОЛИЧЕСТВА'
         @ 21, 3 say str(kkol0,j2,j3)
      endif
         @ 23,13 say 'МЯРKА         K-ВО         ЕД.ЦЕHА         СТ-СТ'
                   do while .t.
                    * set key 300 to pp
                      set key 279 to ddok
                      @ 24,15 get mk0
                   if .not. mk0='лв'
                      @ 24,22 get kol0 pict "99999999.999"
                      @ 24,38 get zena0 pict "&picze_0"
                           if lastkey()=27
                               set key -32 to
                               set key 300 to
                               set key 279 to
                               exit
                           endif
                   else
                     if dk1='k'
                        store dsto1 to dast1
                     endif

                        if dk1='k'.and.dr2='п'.and.(sd2='о'.or.sd2='и'.or.sd2='с')
                         if  kk0=276
                          dast1=round(dsto1/((1+d_s12)*1.2-d_s12),j1+1)
                         else
                           dast1=round(dsto1/(1+d_s0),j1+1)
                         endif
                        endif
                   endif
                      chet()
                   if .not. mk0='лв'
                      dast1=round(zena0*kol0,j1+1)
                   endif
                           if lastkey()=27
                               set key 300 to
                               set key 279 to
                               exit
                           endif

                         if sch0='453'

                                if d_s0*100 < 20
                                  @ 24,47 say 'x'+str(d_s0*100,2)+'%'
                                endif
                            if  sd2='с'.or.sd2='в'.or.sd2='ч'.or.sd2='о'.or.sd2='и'
                              if dk1='d'
                                   dast1=round(dsto1*d_s0,j1+1)
                              else
                                  if kk0=276
                                    dast1=round((ksto1+(ksto1-min0)*d_s12)*d_s0,j1+1)
                                  else
                                    dast1=round(ksto1*d_s0,j1+1)
                                  endif
                              endif
                            else
                          zvan()
                          @ 18,14 say 'Внимание операцията не е характеризирана като данъчна !'
                          i0=inkey(0)
                          @ 18,14 say '                                                        '
                            endif
                         endif
                 if dast1<-9999999999.99.or.dast1>99999999999.99
                          zvan()
                          @ 18,27 say 'Внимание препълвате регистъра !'
                          loop
                  else
                          @ 18,20 say '                                            '
                 endif
                              if ll7='д'
                                 if mk0='лв'.or.zena0=0
                                   @ 24,53 get dast1 pict "99999999999.99"
                                   chet()
                                   if dk1='k'
                                      dast1=round(dast1/(1+d_s0),j1+1)
                                   endif
                                 else
                                   zena0=round(zena0/(1+d_s0),4) && небива да се променя
                                   setcolors (zv0+=4)
                                   @ 24,38 say zena0 pict "9999999.999"
                                   setcolors (zv0)
                                   dast1=round(zena0*kol0,j1+1)
                                 endif
                              endif && endif
                                   setcolors (zv0+=4)
                                 if l11='д'
                                   if sc12='д'
                                      zena0=round(zena0/(100+ra2)*100,3)
                                      @ 24,38 say zena0 pict "9999999.999"
                                      dast1=round(zena0*kol0,j1+1)
                                   else
                                      zena0=zena0-round(zena0*ra2/100,3)
                                      @ 24,38 say zena0 pict "9999999.999"
                                      dast1=round(zena0*kol0,j1+1)
                                   endif
                                 endif
                                   if ll9='д'
                                      zena0=zena0+round(zena0*ra1/100,3)
                                      @ 24,38 say zena0 pict "9999999.999"
                                      dast1=round(zena0*kol0,j1+1)
                                   endif
                                   setcolors (zv0)



                                   @ 24,53 get dast1 pict "99999999999.99"
                                   chet()
                           if lastkey()=27
                               loop
                           endif
                           if dast1 < -0
                              min0 = dast1
                           endif
                        if dast1=0 .and. ll12='н'
                          @ 18,20 say 'Hямате право да въвеждате нулеви стойности !'
                          loop
                        else
                          @ 18,20 say '                                            '
                          exit
                        endif
                   enddo
                      	    if file("\hlp\sc\sc9").and.file("\hlp\sc\sc11")
                               dast1=0
                            endif
                         if (sch0='503'.or.sch0='504')   &&   .and.(lastkey()=13)
                           rec_lock()
                           if dk1='d'
                              repl kkol with kkol+kol0, ksal with ksal+dast1
                           else
                              repl kkol with kkol-kol0, ksal with ksal-dast1
                           endif
                           rec_unlock()
                           kkol0=kkol
                           ksal0=ksal
      if sch0='504'
         @ 20, 1 say ' САЛДО HА СМЕТKАТА'
         @ 21, 3 say 'кл'+str(kkol0,j2,j3)
         @ 22, 3 say 'са'+str(ksal0,j2,j3)
      endif
      if sch0='503'
         @ 20, 1 say ' САЛДО HА СМЕТKАТА'
         @ 21, 3 say str(ksal0,j2,j3)
      endif
                         endif
                      *  if sch0='501'.or.sch0='401'
                      *     part01=part1
                      *  endif
                        if sc5='д'.and.sch0='411'
                           store nom0 to nom2
                           store dast1 to sald0
                          if dk1='k'
                           lihva()   && sav3
                          endif
                        endif
              if lastkey()=27
                 loop
              endif
  if dk1='d'
         open_dpar(loc0:=25)
          if sc9='д'
             find '&dtno0'
            if found()

               store dast1 to dsto0
               exit
            endif
          endif
         appe blank
               rec_lock()
   repl  nom with str(nom0,4), part with part1,mk with mk0, zena with zena0,;
   kol with kol0, dast with dast1, data with data0
         rec_unlock()
         dsto0=dsto0+dast
  else
         open_kpar(loc0:=26)
         appe blank
               rec_lock()
   repl  nom with str(nom0,4), part with part1, mk with mk0, zena with zena0,;
   kol with kol0, kast with dast1, data with data0
         ksto0=ksto0+kast
   if part='7'.or.(709 < val(part).and. val(part) < 721)
    if field(3)='PARTP'.and.sc1='д'
       repl partp with part
    endif
    if field(8)='OTST'
       repl otst with ra2
    endif
   endif
               rec_unlock()
  endif
         if zena=0.and.kol<>0.and.(substr(part,1,3)='304'.or.substr(part,1,3)='302'.or.substr(part,1,3)='702'.or.substr(part,1,3)='502')
            if dk1='d'
                  rec_lock()
               repl zena with round(dast/kol,3)
                  rec_unlock()
            else
                  rec_lock()
               repl zena with round(kast/kol,3)
                  rec_unlock()
            endif
         endif
         part3=part
         l2='д'
                 if dsto1<-9999999999.99.or.dsto1>99999999999.99
                         zvan()
                         @ 18,27 say 'Внимание препълвате регистъра !'
                         dsto1=0
                  else
                          @ 18,20 say '                                            '
                 endif
               if subs(part,1,3)='702'.and.dk1='k'.and.sc3='д'  &&  вади налични количества
               clos data
                  open_obap(loc0:=49)
                  part2=sch0+str(part0,4)
                  find '&part2'
                   if t0='а'
                      find '&part2'
                      if found()
                         rec_lock()
                         repl kkol with kkol-kol0
                         rec_unlock()
                      endif
                   else
                      part2='304'+str(part0,4)
                      find '&part2'
                      if found()
                         rec_lock()
                         repl kkol with kkol-kol0
                         rec_unlock()
                       endif
                   endif
                     rec_unlock()
               endif

               if subs(part,1,3)='304'.and.go0='m0'
                  part2='304'+str(part0,4)
                  open_obap(loc0:=50)
                  find '&part2'
                  if found()
                      rec_lock()
                      repl zena with zena0
                      rec_unlock()
                  endif
               endif
               clos data
             setcolors (zv0+=4)
     if dk1='d'
         @ p0,23 say dsto0 pict "99999999999.99"
     else
         @ p0,60 say ksto0 pict "99999999999.99"
     endif
             setcolors (zv0)
          if dk1='d'.and.sc9='д'
             exit
          endif
       enddo
   return
    ************ Процедура за въвеждане на партида по контираната сметка ******
                                 proc konpart
                  do while .t.
     if barc1='д'.and.sc13='д'
               barc0='                         '
               set key 287 to barcod
               @ 20, 1 clea to 24+ml0,69
               @ 20+ml0,22 say 'ПРОЧЕТЕТЕ БАРКОД   ' get barc0
               chet()
                if barc1='н'
                   loop
                endif
               if lastkey()=27
                  return
               endif
               set key 287 to
               open_obap(loc0:=51)
               set order to 0
               locate for barc=barc0
               if found()
                  part0=val(subs(part,4,4))
                  kol0=1
               else
                      l0='н'
                      set filter to substr(part,1,3)=sch0
                      go bott
                      part0=val(substr(part,4,4))+1
                      zena0=zena
               endif
               l4='д'
     else
         set key 287 to barcod
         set key -2 to spisk1
         set key -4 to prik
         set key -34 to zavar   &&  sav3
         set key -40 to proze   &&  sav2
         set key -41 to nadc    &&  sav7
         @ 18,20 say '                                                        '
         @ 18,23 say 'F3 - издирва желаната анал. партида'
         @ 20,50 say '                 '
             if sch0='453'.and.dr2='д'.and.(sd2='с'.or.sd2='в')
                part0=1
             endif
             if sch0='453'.and.dr2='п'
                part0=2
             endif
         @ 20, 1 clea to 24+ml0,69
      if sch0='504'
         @ 20, 1 say ' САЛДО HА СМЕТKАТА'
         @ 21, 3 say 'кл'+str(kkol0,j2,j3)
         @ 22, 3 say 'са'+str(ksal0,j2,j3)
      endif
      if sch0='503'
         @ 20, 1 say ' САЛДО HА СМЕТKАТА'
         @ 21, 3 say str(ksal0,j2,j3)
      endif
            if (sch0='401'.or.sch0='411').and.(.not.dn2=space(9))
               open_obap(loc0:=51)
               set filter to substr(part,1,3)=sch0
             if .not. dn1='147164000 '
               locate for dn2=subs(name,27,9)
              endif
                 if found()
                   part0=val(substr(part,4,4))
                   @ 21,23 say name
                 else
                   part0=0
                 endif
            endif
         @ 20,22 say 'Въведете шифъра на анал. партида:' get part0 picture "9999"
         read
          if barc1='д'
             loop
          endif
         if sc14='д'
            if dk1='d'.and.(sch2='41'.or.sch2='498'.or.sch2='501')
               part5=str(part0,4)
            endif
            if dk1='k'.and.(sch2='41'.or.sch2='498'.or.sch2='501').and.(sch0='702'.or.sch0='71')
               if .not. lastkey()=27
                   proze()
               endif
            endif
         endif

         set key 287 to
         set key -4 to
         set key -34 to
         set key -40 to
         set key -41 to
         @ 18,23 say '                                   '
         @ 21, 0  clea to 24+ml0,69
         l2='н'
                           if lastkey()=27
                               return
                           endif
                           if part0<1
                               loop
                           endif
     endif
         open_obap(loc0:=53)
         part1=sch0+str(part0,4)
         part2=sch0+str(part0,4)
             find '&part2'
                if  found()
                   @ 21,23 say  name
                   name01=name
                   mk0=mk
                   store zena to zena0, zena1
                   dn00=dnev
                   if  type(subs(name,27,9))='N'
                        dn2=subs(name,27,9)+' '
                   else
                     if (sch0='401'.or.sch0='411').and.(.not.dn2=space(9))
                        if (subs(name,27,9)=space(9)).and.(.not.dn2=space(9))
                            rec_lock()
                            repl name with subs(name,1,26)+dn2
                            rec_unlock()
                        endif
                     endif
                   endif
      if sch0='504'
                   kkol0=kkol
                   ksal0=ksal
         @ 20, 1 say ' САЛДО HА СМЕТKАТА'
         @ 21, 3 say 'кл'+str(kkol0,j2,j3)
         @ 22, 3 say 'са'+str(ksal0,j2,j3)
      endif
      if sch0='503'
                   kkol0=kkol
                   ksal0=ksal
         @ 20, 1 say ' САЛДО HА СМЕТKАТА'
         @ 21, 3 say str(ksal0,j2,j3)
      endif



                   if sch0='41'.or.sch0='498'.or.sch0='501'
                      nv_0=subs(name,35,1)
                   endif
               if (subs(part,1,3)='702'.or.subs(part,1,2)='71').and.sc3='д'
                  if t0='а'
                      find '&part2'
                      if found()
                         kkol0=kkol &&  МОЖБИ ПРЕЧИ НА БАРКОДА
                      endif
                   else
                      part2='304'+str(part0,4)
                      find '&part2'
                      if found()
                         kkol0=kkol &&  МОЖБИ ПРЕЧИ НА БАРКОДА
                         ksal0=ksal &&  МОЖБИ ПРЕЧИ НА БАРКОДА
                      endif
                   endif
                 if sc13='д'
                    kkol0=1
                 endif
               endif
                     if .not. substr(part2,1,3)='453'
                           dnev0=dnev
                     endif
                   if sc5='д'
                      open_zeni()
                      dnpa0=dn2+substr(part1,4,4)
                      find "&dnpa0"
                        if found()
                           zena0=zena
                        endif
                   endif
                   sele 6
                   return
                else
                    l0='н'
   @ 18,5 say 'Hямате партида с този номер желаете ли да въведете нова партида д/н ?' get l0  valid l0='д'.or.l0='н'
                         chet()
   @ 18,0 say '                                                                             '
                                     if l0='д'
                                       zena0=0
      if sch0='401'.or. sch0='411'
         name0=vid4+'   '+subs(dn2,1,9)
         mk0='лв'
      endif
     @ 21,0 clea
     @ 18,19 say 'Въведете наименованието на анал. партида'
     @ 23, 6 say 'М-KА      Hаименование на партидата           Цена    О-ние в р-р'
     @ 24, 7 get mk0
     @ 24,11 get name0
     @ 24,48 get zena0 pict "9999999.999"
     @ 24,61 get dnev0
     chet()
                                                if t0=' '
   t1=' '
   @ 18,1 say 'Сметката е активно-пасивна  въведете "д"-за Д-тна и "к"-за K-тна анал. п-да ' get t1 valid t1='д'.or.t1='к'
                         chet()
   @ 18,1 say '                                                                                 '
                                                endif
                         appe blank
                         rec_lock()
                         repl part with part1,mk with mk0,name with name0,zena with zena0,dnev with dnev0,zena with zena0
                         if barc1='д' .and. sc13='д'
                            repl barc with barc0
                         endif
                             zena0=zena
                             if t0=' '
                                repl t with t1
                             endif
                         rec_unlock()

     if (substr(part,1,1)='3'.or.substr(part,1,1)='7').and.sc3='д'
                        part4=subs(part,4,4)
                        preh()
      endif
                         @ 18,19 say '                                          '
                         @ 23+ml0,0 clea
                         @ 21,23 say  name
                       else
                            loop
                                     endif
                endif

                  enddo
                                 return
   *   6      Kорекция при грешна кореспонденция
                     proc gkor
   set dele off
   data0=substr(dtoc(date0),4,5)    && струва ми се че трябва да се изтрие
   @  1, 0 clea to 24+ml0,80
   p0=6
   b0=0
   kk0=0
   @  1,26 say 'Kорекция на счетоводна операция'
   @  2,26 say '-------------------------------'
          @  5, 5 say repli('¦',70)
        do while b0<11
          ll7='н'
          store 'н' to l11,ll12
          @ p0,40 say '¦'
          p0=p0+1
          b0=b0+1
        enddo
          @ 19, 1 say repli('-',79)
     do gzik
   @  4,12 say '/ESC - изход'
   @  4,56 say 'F2 - помощ/'
   return
   *   60     Kорекция на грешна процедура - цикъл
                    proc gzik
   @  6, 0 clea to 17,37
   @  6,43 clea to 17,75
      if  valtype(nom0)='C'
          nom0=val(nom0)
      endif
   do while .t.
   @ 18,0 say '                                                                   '
   @  3, 5 say 'Въведете номера на СО :' get nom0 pict "9999"
   chet()
   if nom0=0
      return
   endif
   @ 18,0 say '                                                                   '
   @  3,42 say 'Дата'
   @  3,49 get data0
   chet()
      open_arhi(loc0:=39)
   go top
   dn0=subs(data0,4,2)+data0+str(nom0,4)
   find '&dn0'
      if found()
          papk0=val(papk)
          @  3,63 say 'Папка -'
          @  3,71 get papk0 pict '999'
          chet()
           dn2=dn
           bg_0=bg
           vid1=substr(vid,1,4)
           vid2=substr(vid,6,10)
           date1=substr(vid,17,8)
           date1=ctod(subs(date1,1,6)+vek+subs(date1,7,2))
           vid4=substr(vid,26,23)
           dok0=dok
           dn3=dn3
           dr21=dr
           sd21=sd
           vd0=vd
  if sc9='д'
          @ 18,32 say 'ДАHHИ ЗА ФАKТУРА'
  else
          @ 18,30 say 'Справка за документа'
  endif
                    dr2=dr21
 * if sc9='н'
     @ 20, 3 say 'ВИД HА РЕГИСТЪРА доставки  - "д", продажбите - "п", не се включва - " " :' get dr2  valid dr2=' '.or.dr2='д'.or.dr2='п'
                         chet()
 * endif
              if dr2='д'
                    sd2=sd21
   @ 21, 8 say 'СДЕЛKА без данък или без право на ДK-"н", с право на пълен ДK-"с"'
   @ 22, 22 say 'с право на частичен ДK-"ч"  внос-"в":' get sd2  valid sd2='с'.or.sd2='в'.or.sd2='н'.or.sd2='ч'
                         chet()
              endif

                if dr2='п'
                    sd2=sd21
  if sc9='н'
   @ 21, 3 say 'СДЕЛKА  20%-k.13-"о" ВОП-k.15/внос/-"в" k.17-"д" 7%-k.18-"с" износ k.20-"л"'
   @ 22, 7 say 'ВОД k.21-"и" k.22-"е" k.23-"з" k.24-"ч" освд-k.25-"н" k.26-"я":' get sd2 valid sd2='о'.or.sd2='в'.or.sd2='д'.or.sd2='с'.or.sd2='и'.or.sd2='л'.or.sd2='е'.or.sd2='з'.or.sd2='ч'.or.sd2='н'.or.sd2='я'
 * @ 22,76 get bg_0
                         chet()
  endif
                endif
     @ 20,0 clea
     if dr2='д'.or.dr2='п'
          dn30=bg+dn2+dn3
          set key -3 to dnspis
          set key -5 to viddok
           set cent on
           @ 20, 1 say 'ИN'
           if (dr2='п'.and.(sd='в'.or.sd='и'.or.sd='д')).or.(dr2='д'.and.(sd='в'.or.sd='з'))
             if (dr2='п'.and.(sd='в'.or.sd='и'.or.sd='д'))
                @ 20, 1 say 'ИN   износ'
                @ 21, 3 get dn30
             else
                @ 20, 1 say 'ИN   внос '
                @ 21, 3 get dn30
             endif
           else
             @ 20, 3 get dn2
           endif
           @ 20,14 say 'ВИД'
           @ 20,18 get vid1
           @ 20,23 say 'N'
           @ 20,25 get vid2
           @ 20,36 say 'ДАТА'
           @ 20,41 get date1
           @ 20,52 say 'ФИРМА'
           @ 20,57 get vid4
           @ 24,10 say 'ОПИСАHИЕ HА ОПЕРАЦИЯТА' get dok0
           chet()
           set cent off
          set key -3 to
          set key -5 to
            if !prekpp (trim(dn2)) .or. ((len (trim(dn2)) != 9) .and. (len (trim(dn2)) != 13)).and.(.not.dn2=space(10))
                @ 22,35  say "БУЛСТАТЪТ НЕ Е ВЕРЕН !"
                inkey(2)
            endif
     else
           date1=date0
           @ 24,10 say 'ОПИСАHИЕ HА ОПЕРАЦИЯТА' get dok0
        chet()
     endif
     nulfakt()  &&   pro5
          @ 18,30 say '                      '
          @ 20,0 clea
   reca()
   rec_lock()
   repl dok with dok0,vid with vid0,dn with dn2,dr with dr2, bg with bg_0
                if dr2='д'.or.dr2='п'
                    repl sd with sd2, vd with vd0
                    if dr2='п'
                       repl fakt with vid2
                    endif

                else
                    repl sd with ' '
                endif
           if (dr2='п'.and.(sd='в'.or.sd='и'.or.sd='д')).or.(dr2='д'.and.(sd='в'.or.sd='з'))
              repl dn with subs(dn30,3,10), bg with subs(dn30,1,2), dn3 with subs(dn30,13,3)
           endif
    rec_unlock()
           if papk0>0
   rec_lock()
              repl papk with str(papk0,3)
   rec_unlock()
           endif
          exit
      else
        @ 18,18 say 'Hяма на тази дата операция с този номер'
                 i0=inkey(0)
        loop
      endif
   enddo
   @  4, 5 say 'ДЕБИТ'
   @  4,69 say 'KРЕДИТ'
   @  4,12 say '/ESC - изход'
   @  4,56 say 'F2 - помощ/'
   @  1,63 say str(ksto11,14,2)
   set key -3 to ddok
   do regt
   do kdso
   do kkso
   dsto1=round(dsto1,2)
   ksto1=round(ksto1,2)
             if .not. dsto1=ksto1
                 if dsto1>ksto1
                    l0='д'
                 else
                    l0='к'
                 endif
   @ 18, 1 say 'Hяма равенство по Д-та-'+str(dsto1,14,2)+' и K-та-';
   +str(ksto1,14,2)+' <'+l0+'> '+str(abs(dsto1-ksto1),14,2)
   store ksto1 to ksto11
                 pauza()
       @ 18,0 say '                                                                                '
                 do gzik
             else
   if sc9='д'
      open_arhi(loc0:=40)
      go top
      dn0=subs(data0,4,2)+data0+str(nom0,4)
      find '&dn0'
    if l11='д'
               rec_lock()
      repl dok with subs(dok,1,38)+'*'+subs(dok,40,1)
               rec_unlock()
    endif
   endif
                   p0=7
                   set key -3 to
                   return
             endif
   return
   *   61   Kорекции на Дебитни обороти
                 proc kdso
   dk1='d'  && d2
   nvo0=0
   p0=7
   store 0 to dsto1,ksto1,dsto0,ksto0
          open_dobo(loc0:=31)
   go top
   find '&dn0'
   ll11='н'
    if sc11='д'
          set key -33 to zadalz
          setcolors (zv0+=4)
          @ p0, 6 say sch
          do pauza
          set key -33 to
          if l2='н'.and.dr2='д'
             @ p0, 6 say '453'
             @ p0, 23 say str(round(dsto2*d_s0,j1),j0,j1)
          endif
          setcolors (zv0)
          if ll12='д'
             ll12='н'
             @ 16,22 say str(dsto1,14,2)
             return
          endif
    endif
    if ll11='н'
         do while data=data0.and.nom=str(nom0,4)
           setcolors (zv0+=4)
           @ p0, 6 say sch
           setcolors (zv0)
             if substr(sch,1,1)='6'.and.sc2='д'
                 ss1='6'
             endif
           sch0=sch
           dns0=subs(data,4,2)+data+nom+sch
           nvo0=val(nvo)
           re0=recno()
              open_obve(loc0:=23)
           find '&sch0'
           a0=a
           t0=t
              if a0='д'
                 kdao()
                 open_dobo()
                 go re0
                 rec_lock()
                 repl nvo with str(nvo0,4), dsto with dsto0
                 rec_unlock()
              else
                 sele 2
                 set key -4 to prik
                 @ p0,23 get dsto pict "99999999999.99"
                 chet()
                 set key -4 to
                 rec_lock()
                 repl nvo with str(nvo0,4)
                 rec_unlock()
              endif
                  if dsto=0 .and. ll12='н'
                     @ p0,6 clea to p0+1,37
                     del()
                     han0=fcreate("chop")
                     fclose(han0)
                     p0=p0-1
                  else
                     reca()
                  endif
           dsto1=dsto1+dsto
           p0=p0+1
              if eof()
                exit
              else
                skip
              endif
         enddo
          l0='н'
          @ 18,20 say 'Желаете ли да въведете нова сметка д/н ?' get l0  valid l0='д'.or.l0='н'
          chet()
          @ 18,0 say '                                                                               '
          @ 22,0 say '                                                                               '
             if l0='д'
                dobor()
             endif
   endif
   @ 16,22 say str(dsto1,14,2)
   return
   *   62   Kорекции на Kредитни обороти
         proc kkso
   dk1='k'
   nvo0=0
   @ 7,43 clear to 17,74
   k1='y'
          open_kobo(loc0:=29)
   go top
   find '&dn0'
   if sc9='д'.and.sch00=sch
              store sch00 to sch0
              setcolors (zv0+=4)
        @ p0,43 say sch0
        @ p0,60 say ksto pict "99999999999.99"
             setcolors (zv0)
        prodag()
        store ksto0 to ksto1,dsto1
          open_dobo(loc0:=32)
        find "&dn0"
        rec_lock()
        repl dsto with dsto1
        rec_unlock()
            open_dpar(loc0:=26)
        find "&dn0"
        if found()
           rec_lock()
           repl dast with dsto1
           rec_unlock()
        endif
          open_kobo(loc0:=30)
        find '&dn0'
           if found()
              rec_lock()
              repl ksto with ksto0
              rec_unlock()
           else
              appe blank
              rec_lock()
              repl nom with str(nom0,4), sch with sch0, ksto with ksto0, data with data0
              rec_unlock()
           endif
        @  7,23 say ksto0 pict "99999999999.99"
        @ p0,60 say ksto0 pict "99999999999.99"
             setcolors (zv0)
        return
   else
         do while data=data0.and.nom=str(nom0,4)
           setcolors (zv0+=4)
           @ p0,43 say sch
           setcolors (zv0)
           sch0=sch
           dns0=subs(data,4,2)+data+nom+sch
           sdn0=sch+subs(data,4,2)+data+nom
           nvo0=val(nvo)
           re0=recno()
              open_obve(loc0:=24)
           find '&sch0'
           a0=a
           d0='k'
           t0=t
             if (substr(sch,1,1)='5'.or.substr(sch,1,1)='4').and.(ss1='6')  && .and.(.not.substr(sch0,1,2)='45'))
                nivo()    && sav3
             endif
                ss1=' '
              if a0='д'
                 kdao()
                 open_kobo()
                 go re0

                 rec_lock()
                 repl nvo with str(nvo0,4), ksto with ksto0
                 rec_unlock()

              else
                 sele 3
                 set key -4 to prik
                 @ p0,60 get ksto pict "99999999999.99"
                 chet()
                 set key -4 to
                 rec_lock()
                 repl nvo with str(nvo0,4)
                 rec_unlock()
              endif
                if ksto=0 .and. ll12='н'
                  @ p0,43 clear to p0+1,74
                  p0=p0-1
                     del()
                  han0=fcreate("chop")
                  fclose(han0)
                else
                   reca()
                endif

           ksto1=ksto1+ksto
           p0=p0+1
              if eof()
                exit
              else
                skip
              endif
         enddo
                      l0='н'
                      @ 18,20 say 'Желаете ли да въведете нова сметка д/н ?' get l0 valid l0='д'.or.l0='н'
                      chet()
                    @ 18,0 say '                                                                               '
                    @ 22,0 say '                                                                               '
                       if l0='д'
                       kobor()
                       endif
   endif
          return
   *   63   Hачало на корективана процедура по анал. парт.
                           proc kdao
            if dk1='d'
                  open_dpar(loc0:=27)
            else
                  open_kpar(loc0:=27)
            endif
                  go top
                  find '&dns0'
               store 'н' to l2,l6
               if sc11='д'
                  @ 24,70 say 'БЕЗ УМHОЖ.'
                  l6='н'
               endif
               store 0 to dsto0, ksto0
               @ 20,24 say 'Шифъра на анал. партида:'
               @ 23,13 say 'МЯРKА         K-ВО         ЕД.ЦЕHА         СТ-СТ'
               @ 18,15 say space(53)
    do while data=data0.and.substr(nom,1,4)=str(nom0,4).and.substr(part,1,3)=sch0
               dp2=part
               open_obap(loc0:=54)
               find '&dp2'
               name1=name
               zena0=zena
               dn00=dnev   && да се изтрие
               part0=substr(part,4,4)
                 if part='7'.and.field(8)='OTST'.and.0 < otst
                    ra2=otst   && този if е за отстъпка
                    save screen
                    @ 13,22,15,59 box ram1
                    @ 14,23 clea to 14,58
                    @ 14,24 say 'Въведете % на отстъпката : ' get ra2 pict'999.99'
                    chet()
                    restore screen
                    kol0=kol
                    zena0=zena0-round(zena0*ra2/100,3)
                    @ 24,38 say zena0 pict "9999999.999"
                  * @ 24,38 say zena0 pict "&picze_0"
                    dast2=round(zena0*kol0,j1+1)
                 else
               if dk1='d'
                  sele 4
               else
                  sele 5
               endif
                    zena0=zena
                 endif
               if dk1='d'
                  sele 4
               else
                  sele 5
               endif
               @ 24, 0 say space(70)
               @ 20,50 say part0
              store part0 to part5
              nv_0=subs(name1,35,1)
               @ 21,23 say name1
           set key 28 to umnoz
               @ 24,15 get mk
           if .not. mk='лв'
               if dk1='k'
                  if field(8)='OTST'
                     ra2=otst
                  endif
               endif
               kol0=kol
               kkol1=kol
               @ 24,22 get kol0 pict "99999999.999"
               zena0=zena
          *    @ 24,38 get zena0 pict "9999999.999"
               @ 24,38 get zena0 pict "&picze_0"
           else
               kol0=kol
               zena0=0
           endif
           set key 300 to
            if dk1='d'
               dast2=dast
            else
               dast2=kast
            endif
               if l6='д'   &&  .and.(part='7'.or.part='3')
                  umnoz()
               endif
               @ 24,53 get dast2 pict "99999999999.99"
               chet()
               set key 28 to
                      if dast2=0 .and. ll12='н'.and.(.not.mk='**')
                         @ 18,18 say 'Hямате право да въвеждате нулеви стойности !'
                         loop
                      else
                         @ 18,18 say '                                            '
                      endif
            if mk='**'
               del()
               han0=fcreate("chop")
               fclose(han0)
            else
                   reca()
           if dk1='d'
               rec_lock()
               repl kol with kol0,zena with zena0,dast with dast2
              if field(3)='PARTP'
                 if .not. subs(partp,1,2)='  '.and.(subs(partp,1,3)='304'.or.subs(partp,1,3)='702')
                    repl partp with part
                 endif
               endif
               dsto0=dsto0+dast
               rec_unlock()
           else
               rec_lock()
              if field(3)='PARTP'
                 if .not. subs(partp,1,2)='  '.and.(subs(partp,1,3)='304'.or.subs(partp,1,3)='702')
                  repl partp with part
                 endif
              endif
               repl kol with kol0, zena with zena0,kast with dast2
               rec_unlock()
               ksto0=ksto0+kast
                      if part='7'
                       if field(8)='OTST'
                          rec_lock()
                          repl otst with ra2
                          rec_unlock()
                       endif
                      endif
           endif
               l2='д'
            endif
               if subs(part,1,3)='702'.and.dk1='k'
                     open_obap(loc0:=55)
                  part2=sch0+part0
                  find '&part2'
                   if t0='а'
                      find '&part2'
                   else
                      part2='304'+part0
                      find '&part2'
                   endif
                 if found()
                   rec_lock()
                   repl kkol with kkol+kkol1-kol0
                   rec_unlock()
                 endif
               endif
               if dk1='d'
                  sele 4
               else
                  sele 5
               endif
           setcolors (zv0+=4)
       if dk1='d'
          @ p0,23 say str(dsto0,14,2)
       else
          @ p0,60 say str(ksto0,14,2)
       endif
           setcolors (zv0)
               if eof()
                 exit
               else
                 skip
               endif
    enddo
             if sc5='д'.and.sch0='411'
                store nom0 to nom2
                store date0 to dati0
               if dk1='d'
                store dsto0 to sald0
               else
                store ksto0 to sald0
               endif
               if dk1='k'
                  lihva()    && sav3
               endif
             endif
               if dk1='d'
                  sele 4
               else
                  sele 5
               endif
                   do while .t.
                       i0=inkey(0)
                       if lastkey()=27
                          exit
                       endif
                   enddo
                       l0='н'
                       @ 18,20 say 'Желаете ли да въведете нова партида д/н ?' get l0 valid l0='д'.or.l0='н'
                       chet()
                     @ 18,0 say '                                                                               '
                     @ 22,0 say '                                                                               '
                        if l0='д'
                           adob()
                       endif
           @ 20, 0 clea to 24+ml0,69
   return
       *         Процедура за фактурен номер *
                              proc fnom
                              kk0=lastkey()
                              l4='д'
                              open_arhi(loc0:=41)
                              set order to 2
                             if lastkey()=289.or.vd0='09'
                                set filter to f='о'
                                go bott
                             else
                                set filter to f='к'
                                go bott
                             endif
                         do case
                            case lastkey()=289
                              vid1='пр-л'
                              vd0='09'
                            case lastkey()=304
                              vid1='ф-ра'
                              vd0='01'
                            case lastkey()=280
                              vid1='ди-e'
                              vd0='02'
                            case lastkey()=278
                              vid1='ки-e'
                              vd0='03'
                         endcase

                            if lastkey()=289.or.vd0='09'
                              if val(fakt) < 2
                                 restore from fn_0 additive
                                 store str(val(fn_1)+1,10) to vid2,fn_1
                              else
                                 store str(val(fakt)+1,10) to vid2,fn_1
                              endif
                            else
                              if val(fakt) < 2
                                 restore from fn_0 additive
                                 store str(val(fn_0)+1,10) to vid2,fn_0 &&  vid2
                              else
                                 store str(val(fakt)+1,10) to vid2,fn_0 &&  vid2
                              endif
                            endif
                                 fn_1=' '
                                 save all like fn_* to fn_0
                                 open_arhi(loc0:=42)
                              return


       *         Процедура за листене на ф-ра*
                              proc fkt
                              kk0=lastkey()
                              vazkey()
                              save screen to ekr4
                              fakt()
                              restore screen  from ekr4
                              stor 0 to ra2
                              startkey()
                                @  3,42 get papk0  pict '999'
                                chet()
                              return

    ********* Процедура за изчисляване на търговска отстъпка ************

            *********  Процедура за автомат. операция за разходи ************
                        proc prodraz
                      clea gets
                        l8='д'
                      ksto0=dsto1+round(dsto1*d_s0,j1)
                      dsto0=round(dsto1*d_s0,j1)
                      store ksto0 to dsto1, ksto1
                      setcolors (zv0+=4)
                      @ p0, 6 say '453'
                      @ p0,23 say dsto0 pict "99999999999.99"
                      p0=p0+1
                      @ p0,43 say sch01
                    *  if sch01='401'
                    *     @ 21,17 say part01+'  '+name01
                    *  endif
                      setcolors (zv0)
                      @ p0,60 get ksto0 pict "99999999999.99"
                      read
                     ksto1=round(ksto0,j1)
          open_dobo(loc0:=33)
          appe blank
          rec_lock()
          repl nom with str(nom0,4), sch with '453', nvo with str(nvo0,4), dsto with dsto0,;
          data with data0
          rec_unlock()
          open_kobo(loc0:=31)
          appe blank
          rec_lock()
             sch01='501'
            repl nom with str(nom0,4), sch with '501', nvo with str(nvo0,4), ksto with ksto0,;
            data with data0
          rec_unlock()
          open_dpar(loc0:=28)
          appe blank
          rec_lock()
          repl  nom with str(nom0,4), part with '453   1',mk with 'лв',;
          dast with dsto0, data with data0
          rec_unlock()
                      p0=p0+1
                        return
            *********  Процедура за автомат. операция за приходи ************
                        proc prodpri
                        clea gets
                        l8='д'
                      kast0=round(ksto1*d_s0,j1)
                      @ p0,43 say '453'
                      @ p0,60 get kast0 pict "99999999999.99"
                      chet()
                      dsto0=round(ksto1+kast0,j1)
                      setcolors (zv0+=4)
                      @  7, 6 say '501'
                      @  7,23 say dsto0 pict "99999999999.99"
                      setcolors (zv0)
                      store dsto0 to dsto1, ksto1
          open_kobo(loc0:=32)
          appe blank
          rec_lock()
          repl nom with str(nom0,4), sch with '453', nvo with str(nvo0,4), ksto with kast0,;
          data with data0
          rec_unlock()
          open_dobo(loc0:=34)
          appe blank
          rec_lock()
          repl nom with str(nom0,4), sch with '501', nvo with str(nvo0,4), dsto with dsto0,;
          data with data0
          rec_unlock()
          open_kpar(loc0:=28)
          appe blank
          rec_lock()
          repl  nom with str(nom0,4), part with '453   2', mk with 'лв',;
          kast with kast0, data with data0
          rec_unlock()
          @ 18,29 say 'Hатиснете кой да е клавиш'
                      pauza()
                      p0=p0+1
                        return


       *         Процедура за стартиране на клавишите
                              proc startkey
           set key -2 to izpis
           set key -3 to ddok
           set key -4 to prikdds  && sav7
           set key -5 to pr60
           set key -6 to gr61
           set key -7 to r7
           set key -8 to nnom
           set key -9 to ddok
           set key -34 to zenisme
           set key -36 to nepr  &&  sav3
           set key -37 to obob
           set key -38 to nootst  && pro1
           set key -39 to ddsizv  && pro1
           set key -46 to proze1
           set key 161 to fkt     && pro1
           set key 171 to fkt     && pro1 протокол за строителднво спрян
           set key 280 to fkt
           set key 275 to operi   && sav1
           set key 276 to fkt     && sav1
           set key 278 to fkt
           set key 286 to amort
           set key 292 to tehnol  && sav6
           set key 300 to fkt     && pro1
           set key 304 to fkt
           set key 306 to ddok
           set key 289 to fkt
               return
       *         Процедура за възстановяване на клавишите
                              proc vazkey
           set key -2 to  &&  F3
           set key -3 to  &&  F4
           set key -4 to  &&  F5
           set key -5 to  &&  F6
           set key -6 to  &&  F7
           set key -7 to  &&  F8
           set key -8 to  &&  F9
           set key -9 to  &&  F10
           set key -34 to &&  Alt+F5
           set key -35 to &&  Alt+F6
           set key -36 to &&  Alt+F7
           set key -37 to &&  Alt+F8
           set key -38 to &&  Alt+F9
           set key -39 to &&  Alt+F10
           set key -46 to &&  Alt+F11
           set key 161 to &&  Alt+б
           set key 171 to &&  Alt+л
           set key 176 to &&  Alt+р
           set key 280 to && Alt+д
           set key 275 to && Alt+и
           set key 276 to && Alt+ш
           set key 278 to && Alt+к
           set key 286 to && Alt+а /лат./
           set key 292 to && ALt+т
           set key 300 to && Alt+ю
           set key 304 to && Alt+ф
           set key 306 to && Alt+п /кир./
           set key 289 to && Alt+о /кир./
           set dele off
                              return


       ***************  Вид на документа за дискета ****************
                          proc viddok
    save screen
    @  7,11,19,69 box ram1
    @  8,12 clea to 17,68
    @  8,13 prompt '01 Фактура'
    @  9,13 prompt '02 Дебитно известие'
    @ 10,13 prompt '03 Kредитно известие'
    @ 11,13 prompt '07 Митническа деклар.  '
    @ 12,13 prompt '09 Протокол или др. д-мент'
    @ 13,13 prompt '81 Отчет за извършените продажбите'
    @ 14,13 prompt '82 Отчет за извършените прод. при спец. ред на облаг.'
    @ 15,12 say repli(chr(205),57)
    @ 16,25 prompt 'ENTER = ИЗБОР,   ESC = ОТKАЗ'
      menu to v2
         do case
            case v2=1
                 vd0='01'
                 vid1='ф-ра'
            case v2=2
                 vd0='02'
                 vid1='ди-е'
            case v2=3
                 vd0='03'
                 vid1='ки-е'
            case v2=4
                 vd0='07'
                 vid1='мд-я'
            case v2=5
                 vd0='09'
                 vid1='п-ол'
            case v2=6
                 vd0='81'
                 vid1='о-ет'
            case v2=7
                 vd0='82'
                 vid1='о-ет'
         endcase
          if sc9='д'.and.(vd0='01'.or.vd0='02'.or.vd0='03'.or.vd0='09')
                   re0=recno()
                   fnom()
                   go re0
          else
          endif
     restore screen
                          return

       ***************  Стартира процедура за баркод ****************
                          proc barcod
              if sc13='д'
                  if barc1='н'
                     barc1='д'
                     clea gets
                  else
                     barc1='н'
                     clea gets
                  endif
              endif
                          return
       ***************  Стартира процедура за баркод ****************
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

 
