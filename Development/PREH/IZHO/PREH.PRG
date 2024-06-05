
         set exclu on
         ram1=chr(201)+chr(205)+chr(215)+chr(199)+chr(216)+chr(205)+chr(200)+chr(199)
         disc_1='\disc\hlp'
         clenta=''
         vr0=''
         store 0 to x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,loc0,asci1
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
         loc:=100
               @ 12,21,14,59 box ram1
               @ 13,22 clea to 13,58
               @ 13,23 say '…•‚š‹Ÿ ‚ ASCII ŠŽ„'

           @ 13,51 say 'HLP '
          clos data
        * do raboti
          open_hlp(loc:=100)   &&   hlp
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


          @ 13,51 say 'REGL'
          clos data
          open_regl(loc:=100)   &&   hlp
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
          enddo




          @ 13,51 say 'INFO'
          clos data
          open_info(loc:=100)
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
          enddo

          @ 13,51 say 'ARHI'
          clos data
          open_arhi(loc:=100)
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
   
       @ 13,51 say 'BANK'
        clos data
        open_bank(loc:=100)
          go top
          do while .not. eof()
              asci0=reas
              do asci
               rec_lock()
                 repl reas  with asci1
               rec_unlock()
               
                asci0=reas1
              do asci
               rec_lock()
                 repl reas1  with asci1
               rec_unlock()
                 
                if .not. eof()
                 skip
              else
                 exit
              endif
          enddo                  

          @ 13,51 say 'DPAR'
          clos data
          open_dpar(loc:=100)
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

          @ 13,51 say 'KPAR'
          clos data
          open_kpar(loc:=100)
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
          
          @ 13,51 say 'KPAP'
          clos data
          open_kpap(loc:=100)
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

          @ 13,51 say 'OBVE'
          clos data
          open_obve(loc:=100)
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
          enddo

          @ 13,51 say 'OBAP'
          clos data
          open_obap(loc:=100)
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
          enddo

         @ 13,51 say 'UNPR'
          clos data
          open_unpr(loc:=100)
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





       ***************  Transform ot asci->ansi     ****************
                            func asci
      * asci-> 128 - 191  ansi-> 192 - 255
       *  do case
       *     case l0=1
       *      store ''   to asci1
       *     for i0 = 1 to len(asci0)                  &&   asci -> ansi
       *        if 127 < asc(subs(asci0,i0,1)) .and. asc(subs(asci0,i0,1)) < 192
       *           asci1=asci1+chr(asc(subs(asci0,i0,1))+64)
       *        else
       *           asci1=asci1+subs(asci0,i0,1)
       *        endif
       *     next
       *     case l0=2
              store ''   to asci1
              for i0= 1 to len(asci0)                  &&   ansi->asci
                 if 191 < asc(subs(asci0,i0,1)) .and. asc(subs(asci0,i0,1)) < 256
                    asci1=asci1+chr(asc(subs(asci0,i0,1))-64)
                 else
                    asci1=asci1+subs(asci0,i0,1)
                 endif
               next
       *     endcase
                            return

        ******************* “¯° ¢«¥­¨¥ ”€‰‹Ž‚… ******************

                            func open_info(loc0)  && INFO
                                   sele 1
                                   filee="&in_0\info"
                                   file_lock ()
                          return

                            func open_arhi  && ARHI
                                 sele 1
                                 filee='&us_0'+'arhi'
                                 file_lock ()
                           return

                            func open_regl  && REGL
                                 sele 1
                                 filee='&in_0\regl'
                                 file_lock ()
                           return


                            func open_bank  && BANK
                                 sele 1
                                 filee='&us_0'+'bank'
                                 file_lock ()
                           return


                            func open_hlp  && HLP
                                 sele 1
                                 filee="&disc_1\save\hlp"
                                 file_lock ()
                           return

                            func open_dds  && DDS
                                 sele 1
                                 filee='&us_0'+'dds'
                                 file_lock ()
                           return

                            func open_dobo  && DOBO
                                 sele 1
                                 filee='&us_0'+'dobo'
                                 file_lock ()
                           return

                            func open_dobot  && DOBOT
                                 sele 1
                                 filee='dobot'
                                 file_lock ()
                           return

                            func open_kobo  && KOBO
                                 sele 1
                                 filee='&us_0'+'kobo'
                                 file_lock ()
                           return

                            func open_kobot && KOBOT
                                 sele 1
                                 filee='kobot'
                                 file_lock ()
                           return

                            func open_dpar  && DPAR
                                 sele 1
                                 filee='&us_0'+'dpar'
                                 file_lock ()
                           return

                            func open_dparjo  && DPARJO
                                 sele 1
                                 filee='&us_0'+'dpar'
                                 file_lock ()
                           return

                            func open_dpart  && DPART
                                 sele 1
                                 filee='dpart'
                                 file_lock ()
                           return

                            func open_dparp  && DPARP
                                 sele 1
                                 filee='dpar'
                                 file_lock ()
                           return

                            func open_kpar  && KPAR
                                 sele 1
                                 filee='&us_0'+'kpar'
                                 file_lock ()
                           return

                            func open_kpart && KPART
                                 sele 1
                                 filee='kpart'
                                 file_lock ()
                           return

                            func open_kparp && KPARP
                                 sele 1
                                 filee='kpar'
                                 file_lock ()
                           return

                            func open_kparjo  && KPARJO
                                 sele 1
                                 filee='&us_0'+'kpar'
                                 file_lock ()
                           return

                            func open_obap  && OBAP
                                 sele 1
                                 filee='&us_0'+'obap'
                                 file_lock ()
                           return

                            func open_obapi && OBAPI
                                 sele 1
                                 filee='&us_0'+'obap'
                                 file_lock ()
                           return

                            func open_obve  && OBVE
                                 sele 1
                                 filee='&us_0'+'obve'
                                 file_lock ()
                           return

                            func open_zame  && ZAME
                                 sele 1
                                 filee='&us_0'+'zame'
                                 file_lock ()
                           return


                            func open_kobp  && KOBP
                                 sele 1
                                 filee='kobp'
                                 file_lock ()
                           return

                            func open_kpap  && KPAP
                                 sele 1
                                 filee='kpap'
                                 file_lock ()
                           return


                            func open_prot && PROT
                                 sele 1
                                 filee='&us_0'+'prot'
                                 file_lock ()
                           return

                            func open_zeni && ZENI
                                 sele 1
                                 filee='&us_0'+'zeni'
                                 file_lock ()
                           return

                            func open_lihva && LIHVA
                                 sele 1
                                 filee='&us_0'+'lihva'
                                 file_lock ()
                           return

                            func open_unpr && UNPR
                                 sele 1
                                 filee='&us_0'+'unpr'
                                 file_lock ()
                           return
                            func open_tehno && TEHNO
                               sele 1
                               filee='&us_0'+'tehno'
                               file_lock ()
                            return

                            func open_tehn && TEHN
                               sele 1
                               filee='&us_0'+'tehn'
                               file_lock ()
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
                          loc:=100
                          unlock  &&  § ª®¢ ­® ¥ !
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

        ******************* “¯° ¢«¥­¨¥ ‡€ˆ‘ˆ ******************

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


         ***************** ¥¨­¤¥ª± ¶¨¿ ************************
                        proc podred
    if file("&disc_1\podr\podred.exe")
       clos all
       ! &disc_1\podr\podred.exe
     endif
                        return





