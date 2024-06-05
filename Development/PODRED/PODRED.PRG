         *PODRED.PRG
         set exclu on
         ram1=chr(201)+chr(205)+chr(203)+chr(204)+chr(202)+chr(205)+chr(200)+chr(204)
         disc_1='\disc\hlp'
         clenta=''
         vr0=''
         store 0 to x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,loc0
         store 0 to x11,x12,x13,x14,x15,x16,x17,x18,x19,x20
          if file("podred.mem")
             restore from podred additive
          else
             podr_0=1
             save all like podr_0 to podred
          endif

	  if file ("us_0.mem")
              restore from us_0 additive
          else
              memowrit('prov.bat','echo %~dp0 > aaaa.txt')
              !&disc_1\exe\hstart.exe /NOCONSOLE prov.bat
              inkey(1)
              us_0=subs(memoread('aaaa.txt'),1,2)+'\'+curdir()+'\'
              save all like us_0 to us_0
              erase prov.bat
              erase aaaa.txt
      	  endif

          in_0='&disc_1\job'

       	  if file ("zvetia.mem")
  	     restore from zvetia additive
	  else
	     zv0=2
       	  endif

             setcolor ('GR+/B')
         loc0=0
        do case
           case podr_0=1         &&   êÖàHÑàKëàêÄ  SAVE

                 eras '&US_0'+'nari.ntx'
                 eras '&US_0'+'faki.ntx'
                 eras '&US_0'+'nsdi.ntx'
                 eras '&US_0'+'dsdi.ntx'
                 eras '&US_0'+'ds.ntx'
                 eras '&US_0'+'nski.ntx'
                 eras '&US_0'+'dski.ntx'
                 eras '&US_0'+'ks.ntx'
                 eras '&US_0'+'nadi.ntx'
                 eras '&US_0'+'dpdi.ntx'
                 eras '&US_0'+'di.ntx'
                 eras '&US_0'+'naki.ntx'
                 eras '&US_0'+'dpki.ntx'
                 eras '&US_0'+'ki.ntx'
                 eras '&US_0'+'aobi.ntx'
                 eras '&US_0'+'nami.ntx'
                 eras '&US_0'+'pai.ntx'
                 eras '&US_0'+'sobi.ntx'
                 eras '&US_0'+'sdsi.ntx'
                 eras '&US_0'+'pdpi.ntx'
                 eras '&US_0'+'kpti.ntx'
                 eras '&US_0'+'pnpi.ntx'
                 eras '&US_0'+'si.ntx'
                 eras '&US_0'+'sci.ntx'
                 eras '&US_0'+'dati.ntx'
                 eras '&US_0'+'vidi.ntx'
                 eras '&US_0'+'tepi.ntx'

                 eras '&in_0'+'\dni.ntx'
                 eras '&in_0'+'\vvidi.ntx'

                @ 12,21,14,59 box ram1
                @ 13,22 clea to 13,58
                @ 13,23 say 'è∞Æ£∞†¨†≤† ®≠§•™±®∞† ¥†©´'
                @ 13,51 say 'ARHI'
                open_arhi(loc:=1)
                index on subs(data,4,2)+data+nom to '&us_0'+'nari'
                index on fakt to '&us_0'+'faki'
                inde on dn+subs(vid,6,10) to '&us_0'+'vidi'

                clos data
                @ 13,51 say 'DOBO'
                open_dobo(loc:=100)
                index on  subs(data,4,2)+data+nom to '&us_0'+'nsdi'
                index on sch+subs(data,4,2)+data+nom to '&us_0'+'dsdi'
                index on dsto to '&us_0'+'ds'

                clos data
                @ 13,51 say 'KOBO'
                open_kobo(loc:=100)
                index on  subs(data,4,2)+data+nom to '&us_0'+'nski'
                index on sch+subs(data,4,2)+data+nom to '&us_0'+'dski'
                index on ksto to '&us_0'+'ks'
                clos data

                @ 13,51 say 'DPAR'
                open_dpar(loc:=100)
                index on  subs(data,4,2)+data+nom+part to '&us_0'+'nadi'
                index on part+subs(data,4,2)+data+nom to '&us_0'+'dpdi'
                index on dast to '&us_0'+'di'

                clos data
                @ 13,51 say 'KPAR'
                open_kpar(loc:=100)
                index on  subs(data,4,2)+data+nom+part to '&us_0'+'naki'
                index on part+ subs(data,4,2)+data+nom to '&us_0'+'dpki'
                index on kast to '&us_0'+'ki'

                clos data
                @ 13,51 say 'OBVE'
                open_obve(loc:=100)
                index on sch to '&us_0'+'sobi'

                clos data
                @ 13,51 say 'OBAP'
                open_obap(loc:=100)
                index on part to '&us_0'+'aobi'
                index on name to '&us_0'+'nami'
                index on subs(part,1,3)+name to '&us_0'+'pai'

                clos data
                @ 13,49 say 'KOBP-KPAP'
                open_kobp(loc:=100)
                index on sch to sdsi

                open_kpap(loc:=100)
                index on part to '&us_0'+'pdpi'
                 inde on substr(part,4,4) to '&us_0'+'kpti'
                 index on par to '&us_0'+'si'
                 index on sch to '&us_0'+'sci'
                
                clos data
                @ 13,49 say 'DDS '
                open_dds(loc:=100)
                inde on vek+data to '&us_0'+'dati'

                @ 13,49 say 'PROT '
                open_prot(loc:=100)
                inde on nv+part to '&us_0'+'parpi'



                clos data
                @ 13,49 say '  REGAL  '
                open_regl(loc:=100)
                inde on dn to '&in_0'+'\dni'
                inde on vvid to '&in_0'+'\vvidi'

                clos data
                if file("tehno.dbf")
                    @ 13,49 say ' TEHNOL  '
                    open_tehno(loc:=100)
                    inde on part to '&us_0'+'tepi'
                endif
                clos data
                if file("unpr.dbf")
                    clos data
                    @ 13,49 say '  UNPR   '
                    open_unpr(loc:=100)
                    inde on pnp to '&us_0'+'pnpi'
                    index on subs(data,4,2)+data+nom to '&us_0'+'udni'
                endif
                clos all
           case podr_0=10      &&   êÖàHÑàKëàêÄ   ÜìêHÄã  èé èÄêíàÑà
                open_dparjo(loc:=100)
                inde on subs(part,4,4) to '&us_0'+'dp'
                clos data
           case podr_0=11      &&   êÖàHÑàKëàêÄ   ÜìêHÄã  èé èÄêíàÑà
                open_kparjo(loc:=100)
                inde on subs(part,4,4) to '&us_0'+'kp'
                clos data
           case podr_0=12      &&   êÖàHÑàKëàêÄ   HÄãàóHéëíà  èé éÅÖKíà
                open_obapi(loc:=100)
                inde on subs(part,4,4)+subs(part,1,3) to parti
                clos data
           case podr_0=13      &&   êÖàHÑàKëàêÄ  îÄâã ë éíëíöèKà
                if file("prot.dbf")
                    open_prot(loc:=100)
                    inde on nv+part to '&us_0'+'parpi'
                endif
                clos data
           case podr_0=14      &&   êÖàHÑàKëàêÄ     ZAME
                  @ 12,21,14,59 box ram1
                  @ 13,22 clea to 13,58
                  @ 13,23 say 'è∞Æ£∞†¨†≤† ®≠§•™±®∞† ¥†©´'
                  @ 13,51 say 'ZAMI'
                  open_zame(loc:=100)
                  inde on part to '&us_0'+'zami'
                  clos data
                  @ 13,51 say 'DPAR'
                  open_dparp(loc:=100)
                  inde on partp to dpkd
                  clos data
                  @ 13,51 say 'KPAR'
                  open_kparp(loc:=100)
                  inde on partp to dpkk
                  @ 11,21 clea to 13,59
           case podr_0=15      &&   àHÑÖKëÄñàü áÄ éÅéêéíHÄ ÇÖÑ. ÄHÄã.èÄêí.
                  if file ("dpart.dbf")
                     open_dpart(loc:=100)
                     index on part to dpdit
                     clos data
                  endif
                  if file ("kpart.dbf")
                     open_kpart(loc:=100)
                     index on part to dpkit
                     clos data
                  endif
           case podr_0=16      &&   àHÑÖKëÄñàü áÄ éÅéêéíHÄ ÇÖÑ. ëàHí.ë-Kà.
                  if file ("dobot.dbf")
                     open_dobot(loc:=100)
                     index on sch to dsdit
                     clos data
                  endif
                  if file ("kobot.dbf")
                     open_kobot(loc:=100)
                     index on sch to dskit
                     clos data
                  endif

           case podr_0=18    &&  Iztriva   & unpr
               open_unpr(loc0:=1)
               pack
               rec_unlock()
               clos data


           case podr_0=19    &&  Iztriva   &in_0\hlp
                open_hlp(loc0:=1)
                pack
                rec_unlock()
                clos data
                open_hlp(loc0:=1)
                pack
                rec_unlock()
                clos data

           case podr_0=20      &&  Iztriva Ø†∞≤®§® ¢ SAVE
                open_obap(loc0:=1)
                pack
                rec_unlock()
                clos data
                open_obve(loc0:=1)
                pack
                rec_unlock()
                clos data
                open_regl(loc0:=1)
                pack
                rec_unlock()
                clos data
                open_dds(loc0:=1)
                pack
                rec_unlock()
               if file("bank.dbf")
                clos data
                open_bank(loc0:=1)
                pack
                rec_unlock()
                clos data
               endif
           case podr_0=21         &&  Iztriwa 
                open_arhi(loc0:=1)
                pack
                rec_unlock()
                clos data
           case podr_0=22         &&  Iztriwa 
                open_dobo(loc0:=1)
                pack
                rec_unlock()
                clos data
           case podr_0=23         &&  Iztriwa 
                open_kobo(loc0:=1)
                pack
                rec_unlock()
                clos data
           case podr_0=24          &&  Iztriwa 
                open_dpar(loc0:=1)
                pack
                rec_unlock()
                clos data
           case podr_0=25         &&  Iztriwa 
                open_kpar(loc0:=1)
                pack
                rec_unlock()
                clos data
           case podr_0=26.and.file("lihva.dbf")    &&  Iztriwa 
                open_lihva(loc0:=1)
                pack
                rec_unlock()
                clos data
           case podr_0=28    &&  Iztriwa 
                open_kpap(loc0:=1)
                pack
                rec_unlock()
                clos data
                set cursor off
           case podr_0=29    &&  Iztriwa 
                open_tehno(loc0:=1)
                pack
                rec_unlock()
                clos data
                open_tehn(loc0:=1)
                pack
                rec_unlock()
                clos data

           case podr_0=30      &&   êÖàHÑàKëàêÄ     FISH

                  @ 12,21,14,59 box ram1
                  @ 13,22 clea to 13,58
                  @ 13,23 say 'è∞Æ£∞†¨†≤† ®≠§•™±®∞† ¥†©´'
                  @ 13,51 say 'SPIS'
                  open_spis(loc:=1)
                  inde on nom to nomi
                  inde on name to namz
                  clos data
                  @ 13,51 say 'MESE'
                  open_mese(loc:=1)
                  inde on vek+data+nom+sch to dnsi
                  inde on sch+vek+data+nom to sdni
                  clos data

                  @ 13,51 say 'NOME'
                  open_nome(loc:=1)
                  inde on sch to "&disc_1\fish\nosi"
                  clos data
                  @ 13,51 say 'GODN'
                  open_godn(loc:=1)
                  inde on vek+data+nom+sch to gdnsi
                  inde on sch+vek+data+nom to gsdni
            *     if file("nomk.dbf")
            *       use nomk
            *       inde on sch to '&us_0'+'ski'
            *     endif

           case podr_0=31      &&   àáíêàÇÄHàü ÇöÇ FISH
                  use &disc_1\fish\fhlp
                  pack
                  use &disc_1\fish\nome inde &disc_1\fish\nosi
                  pack
                  use spis inde nomi,namz
                  pack
                  use mese inde dnsi,sdni
                  pack
                  use godn inde gdnsi,gsdni
                  pack
           case podr_0=32      &&   àáíêàÇÄHàü ÇöÇ FISH
                  use godn
                  inde on vek+nom to vni
           case podr_0=40      &&   àHÑàKëàêÄ Ç HOTEL
               @ 12,21,14,59 box ram1
               @ 13,22 clea to 13,58
               @ 13,23 say 'è∞Æ£∞†¨†≤† ®≠§•™±®∞† ¥†©´'
               use hotel
               index on nom to nomi
               index on staj to sthi
               @ 13,51 say 'STAI'
               use stai
               index on staj+sch to stii
               index on sch+staj to schi
               index on nom to snoi
               @ 13,51 say 'USLU'
               use &disc_1\job\uslu
               index on sch to ussh
               @ 13,51 say 'STAT'
               use stat
               set cent on
               index on dat+staj to dist
               index on staj+dat to stdi
               set cent off
           case podr_0=41      &&   àHÑàKëàêÄ Ç HOTEL
               use hotel inde nomi,sthi
               pack
               use stai inde stii,snoi,schi
               pack
               use &disc_1\job\uslu inde &disc_1\job\ussh
               pack
               use stat inde dist,stdi
               pack
           case podr_0=50         &&  Iztriva 
                open_arhi(loc0:=1)
                zap
                open_dobo(loc0:=1)
                zap
                open_kobo(loc0:=1)
                zap
                open_dpar(loc0:=1)
                zap
                open_kpar(loc0:=1)
                zap
                open_obap(loc0:=1)
                zap
           case podr_0=51    &&  Iztriva 
                open_kobp(loc0:=1)
                zap
                clos data
                open_kpap(loc0:=1)
                zap
                clos data
           case podr_0=60    &&  Iztriva 
                open_dds(loc0:=1)
                pack
                clos data
           endcase
           clos all


        ******************* ìØ∞†¢´•≠®• îÄâãéÇÖ ******************
                            func open_arhi  && ARHI
                                 sele 1
                                 filee='&us_0'+'arhi'

                                 file_lock ()
                                 if file ("&us_0\nari.ntx")
                                 set inde to '&us_0'+'nari','&us_0'+'faki','&us_0'+'vidi'
                                 endif
                           return

                            func open_regl  && REGL
                                 sele 1
                                 filee='&in_0\regl'
                                 file_lock ()
                                 if file("&in_0\dni.ntx")
                                 set inde to '&in_0'+'\dni','&in_0'+'\vvidi'
                                 endif
                           return

                            func open_bank  && BANK
                                 sele 13
                                 filee='&us_0'+'bank'
                                 if file("&us_0\dtbi.ntx")
                                 set inde to '&us_0'+'dtbi'
                                 endif
                           return


                            func open_hlp  && HLP
                                 sele 13
                                 filee="&disc_1\save\hlp"
                                 file_lock ()
                           return

                            func open_dds  && DDS
                                 sele 1
                                 filee='&us_0'+'dds'
                                 file_lock ()
                                 if file("&us_0\dati.ntx")
                                 set inde to '&us_0'+'dati'
                                 endif
                           return

                            func open_dobo  && DOBO
                                 sele 2
                                 filee='&us_0'+'dobo'
                                 file_lock ()
                                 if file("&us_0\nsdi.ntx")
                                 set inde to '&us_0'+'nsdi','&us_0'+'dsdi','&us_0'+'ds'
                                 endif
                           return

                            func open_dobot  && DOBOT
                                 sele 2
                                 filee='dobot'
                                 file_lock ()
                                 if file("dsdit.ntx")
                                 set inde to dsdit
                                 endif
                           return

                            func open_kobo  && KOBO
                                 sele 3
                                 filee='&us_0'+'kobo'
                                 file_lock ()
                                 if file("&us_0\nski.ntx")
                                 set inde to '&us_0'+'nski','&us_0'+'dski','&us_0'+'ks'
                                 endif
                           return

                            func open_kobot && KOBOT
                                 sele 3
                                 filee='kobot'
                                 file_lock ()
                                 if file("dskit.ntx")
                                 set inde to dskit
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

                            func open_dparjo  && DPARJO
                                 sele 4
                                 filee='&us_0'+'dpar'
                                 file_lock ()
                                 if file("&us_0\dp.ntx")
                                 set inde to '&us_0'+'dp'
                                 endif
                           return

                            func open_dpart  && DPART
                                 sele 4
                                 filee='dpart'
                                 file_lock ()
                                 if file("&us_0\dpdit.ntx")
                                 set inde to dpdit
                                 endif
                           return



                            func open_dparp  && DPARP
                                 sele 4
                                 filee='dpar'
                                 file_lock ()
                                 if file("dpkd.ntx")
                                 set inde to dpkd
                                 endif
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
                                 if file("dpkit.ntx")
                                 set inde to dpkit
                                 endif
                           return

                            func open_kparp && KPARP
                                 sele 5
                                 filee='kpar'
                                 file_lock ()
                                 if file("dpkk.ntx")
                                 set inde to dpkk
                                 endif
                           return

                            func open_kparjo  && KPARJO
                                 sele 5
                                 filee='&us_0'+'kpar'
                                 file_lock ()
                                 if file("&us_0\kp.ntx")
                                 set inde to '&us_0'+'kp'
                                 endif
                           return

                            func open_obap  && OBAP
                                 sele 6
                                 filee='&us_0'+'obap'
                                 file_lock ()
                                 if file("&us_0\aobi.ntx")
                                 set inde to '&us_0'+'aobi','&us_0'+'nami','&us_0'+'pai'
                                 endif
                           return

                            func open_obapi && OBAPI
                                 sele 6
                                 filee='&us_0'+'obap'
                                 file_lock ()
                                 if file("'&us_0'+'aobi'")
                                 set inde to '&us_0'+'parti'
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

                            func open_zame  && ZAME
                                 sele 7
                                 filee='&us_0'+'zame'
                                 file_lock ()
                                 if file("&us_0\zami.ntx")
                                 set inde to '&us_0'+'zami'
                                 endif
                           return


                            proc open_kobp  && KOBP
                                 sele 8
                                 filee='kobp'
                                 file_lock ()
                                 if file("sdsi.ntx")
                                 set inde to sdsi
                                 endif
                           return

                            proc open_kpap  && KPAP
                                 sele 9
                                 filee='kpap'
                                 file_lock ()
                                 if file("pdpi.ntx")
                                 set inde to pdpi,kpti,si
                                 endif
                           return


                            proc open_prot && PROT
                                 sele 14
                                 filee='&us_0'+'prot'
                                 file_lock ()
                                 if file("&us_0\parpi.ntx")
                                 set inde to '&us_0'+'parpi'
                                 endif
                           return

                            proc open_zeni && ZENI
                                 sele 14
                                 filee='&us_0'+'zeni'
                                 file_lock ()
                                 if file("&us_0\zdpi.ntx")
                                 set inde to '&us_0'+'zdpi'
                                 endif
                           return

                            func open_lihva && LIHVA
                                 sele 14
                                 filee='&us_0'+'lihva'
                                 file_lock ()
                                 if file("&us_0\dnii.ntx")
                                 set inde to '&us_0'+'dnii','&us_0'+'ddii','&us_0'+'daii'
                                 endif
                           return

                            func open_unpr && UNPR
                                 sele 14
                                 filee='&us_0'+'unpr'
                                 file_lock ()
                                 if file("&us_0\pnpi.ntx")
                                 set inde to '&us_0'+'pnpi'
                                 endif
                           return
                            proc open_tehno && TEHNO
                               sele 9
                               filee='&us_0'+'tehno'
                               file_lock ()
                                 if file("&us_0\tepi.ntx")
                                 set inde to '&us_0'+'tepi'
                                 endif
                            return

                            proc open_tehn && TEHN
                               sele 9
                               filee='&us_0'+'tehn'
                               file_lock ()
                           return

            ************ áÄèãÄíà **********************

                            func open_spis && SPIS
                                 sele 1
                                 filee='spis'
                                 file_lock ()
                                 if file("nomi.ntx")
                                 set inde to nomi, namz
                                 endif
                           return
                            func open_mese && MESE
                                 sele 2
                                 filee='mese'
                                 file_lock ()
                                 if file('dnsi.ntx')
                                 set inde to dnsi,sdni
                                 endif
                           return

                            func open_nome  && NOME
                                 sele 1
                                 filee='&disc_1\fish\nome'
                                 file_lock ()
                                 if file("&disc_1\fish\nosi.ntx")
                                 set inde to "&disc_1\fish\nosi"
                                 endif
                           return

                            func open_godn && GODN
                                 sele 4
                                 filee='godn'
                                 file_lock ()
                                 if file('gdnsi.ntx')
                                 set inde to gdnsi,gsdni
                                 endif
                           return

       FUNCTION  FILE_LOCK
                          set exclu off
                          if loc0=1
                             use &filee  exclu
                          else
                             use &filee
                          endif
                 do while .t.
                      if  flock()=.T.
                          loc0=0
                          unlock  &&  ß†™Æ¢†≠Æ • !
                          return
                      else
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

        ******************* ìØ∞†¢´•≠®• áÄèàëà ******************

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


