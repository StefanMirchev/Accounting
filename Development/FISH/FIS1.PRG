  *FIS1.PRG  AZBUKA DDOHOD DOBAVI GRUPPROM MARK PFISH PROMIA PROMIME VZEMI

* store substr(dtoc(date0),4,5) to data00,data0
  set talk off
  tt0=' 10'
     ramka()
                sele 1
                use spis inde nomi,namz
                sele 2
                use mese inde sdni,dnsi
                sele 3
                use &disc_1\fish\nome inde &disc_1\fish\nosi
                sele 4
                use godn inde gsdni,gdnsi
           nom0=1
           do while .t.
    @  2,10 say '                       è Ö ê ë é H Ä ã  '
    pp0='§'
    store '≠' to l1
    store '§' to l2
    store ' ' to sch2
    store 0 to i0,x110,x150,t38,brdn0,vazn0
               @ 20,14 clea to 23,66
               @ 21,14,24,66 box ram1
     if ll1='§'
        @  0,30 say ' ÅÖá ÑöêÜÄÇHà ÇáÖåÄHàü '
     endif
     if izch_0='§'
        @  0,28 say 'ëöë áÄèàë HÄ àáóàëãÖHàÖ'
     endif
     @ 22,16 say 'ëØ®±. ±∫±≤†¢ ØÆ Äß°. ∞•§ - F3  ØÆ  í†°.N - Alt+F3'
     @ 23,16 say 'É∞≥Ø.Ø∞Æ¨ø≠†- F4  Ç ¨•±∂† - F6  Ç £Æ§®≠† - Alt+F6'
     set key -1 to azbuka
     set key -2 to azbuka
     set key -3 to gruprom
     set key -4 to promime
     set key -5 to mego
     set key -31 to azbuka
     set key -32 to azbuka
     set key -35 to mego
     set key 172 to mark
     set key 162 to mark
               @  4, 3 say 'í†°•´•≠ ≠Æ¨•∞' get nom0 pict "999999"
               read
               @ 11, 3 clea to 19,75
     set key -1 to
     set key -2 to
     set key -3 to
     set key -4 to
     set key -31 to
     set key -32 to
     set key 172 to
     set key 162 to
             if lastkey()=27
                return
             endif
                if l3='¨'
                   sele 2
                   use mese inde sdni,dnsi
                else
                   sele 4
                   use godn inde gsdni,gdnsi
                endif
                  sdn0='  7'+vek0+data0+str(nom0,6)
                  find '&sdn0'
               @  4,25 say '®¨• ≠† ±´≥¶®≤•´ø'
               @  8,20 say 'é≤∞†°Æ≤•≠® §≠®/∑†±Æ¢• Æ≤ ¨•±•∂†'
                if .not.found()
                  l0='≠'
                  @ 23,15 say space(51)
                  @ 23,15 say ' ã®∂•≤Æ • ≠Æ¢Æ, ¶•´†•≤• ´® §† £Æ ¢∫¢•§•≤• §/≠ ?' get l0 valid l0='§'.or.l0='≠'.or.l0='Ñ'
                     read
                 if l0='≠'.or.lastkey()=27
                    @ 23,15 say space(51)
                    loop
                 endif
                 nom1=str(nom0,6)  &&  Ç†¶≠Æ §† ≠• ±• ¨•±≤® ≠†Ø∞•§
                     azbuka()
                 store val(nom1) to nom0
                  sele 1
                  use spis inde nomi,namz
                  find "&nom1"
                 if .not. found()
         appe blank
         td0='ê'
         vod0=1
         pnv0=8
         repl nom with str(nom0,6), name with name0,ime with ime0,prime with prime0,family with family0, inic with inic0,egn with  egn0
         repl obl with obl0,nasm with nasm0, adr with adr0,pk with pk0, god with 0
         repl dd with dd0,mm with mm0,gg with gg0,mg with mg0,bold with bold0,mayd with mayd0,detd with detd0,bch with bch0,vod with vod0,kpd with kpd0
         repl pnm with pnm0,rs with rs0,pnv with pnv0,voz with voz0,oid with oid0,vpz with vpz0
         repl dpz with dpz0,rabo with rabo0,td with td0,lkn with lkn0
         repl lkd with lkd0, izd with izd0, obra with obra0,godc with godc0
         repl vazn with vazn0, osig with osig0, osnn with osnn0
         repl  nkp with nkp0, nkid with nkid0, kd with kd0, pd with pd0
         vod0=vod
         god_0=god
                 endif
                     set key  -3 to
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
                     promime()
                     vod0=vod
                     god_0=god
                     td_0=td
                    parvich()  &&  fis7
                    sele 1
                    @ 11, 7 clea to 19,75
                else
                  sele 1
                  use spis inde nomi,namz
                  nom1=str(nom0,6)
                  find '&nom1'
                  @  4,43 say  name   color  'n/w'
            *     pnv0=pnv
                    if dele()
                      @ 23,15 say '         ã®∂•≤Æ • ¨†∞™®∞†≠Æ ß† ®ß≤∞®¢†≠• !         '
                       pauza()
                      @ 23,15 say space(51)
                      loop
                    endif
                    dani()
                endif
             if l3='¨'
               sele 2
             else
               sele 4
             endif
               sdn0='  8'+vek0+data0+str(nom0,6)
               find '&sdn0'
                  if found().and.(2002 < val(vek0))
                     if .not. found()
                         appe blank
                         repl nom with str(nom0,6), sch with '  8',stoi with vazn0,dni with '±',data with data0,vek with vek0
                     else
                         if stoi=0
                             repl stoi with vazn0
                         endif
                     endif
                  endif
               sdn0='  6'+vek0+data0+str(nom0,6)
               find '&sdn0'
                  if found().and.(2002 < val(vek0))
                     if .not. found()
                         appe blank
                         repl nom with str(nom0,6), sch with '  6',stoi with osig0,dni with '±',data with data0,vek with vek0
                     else
                         if stoi=0
                             repl stoi with osig0
                         endif
                     endif
                  endif
               sdn0='  7'+vek0+data0+str(nom0,6)
               find '&sdn0'
               set key -3 to promia
               set key 161 to nach  && °
               set key 163 to nach  && £
               set key 164 to nach  && §
               set key 167 to nach  && ß
               set key 168 to nach  && ®
               set key 171 to nach  && ´
               set key 174 to nach  && Æ
               set key 179 to nach  && ≥
               set key 180 to pfish && ¥
               set key 185 to nach  && π
               l6='≠'
               @ 22,14 clea to 23,66
               @ 21,14,24,66 box ram1
               @ 22,16 say '"π"-π†≤, "ß"-§. ¢ß•¨., "¥"-Ø•∑†≤ ¥®∏, "®"-®≠¢†´®§'
               @ 23,18 say '"§"- §ÆØ´†π†≠®ø, "Æ"- Æ±®£≥∞Æ¢™®, "≥"- ≥§∞∫¶™®'
               x7=stoi
               if 0 < suma
                 pnv0=suma
               else
                 pnv0=8
               endif
               @  8,20 say 'é≤∞†°Æ≤•≠® §≠®/∑†±Æ¢• Æ≤ ¨•±•∂†' get x7 pict "999.9"
               @ 10,26 say 'è∞® ∑†±Æ¢ ∞†°Æ∞•≠ §•≠' get pnv0 pict "9"
               read
               if l3='¨'
                  sele 2
                  use mese inde sdni,dnsi
               else
                  sele 4
                  use godn inde gsdni,gdnsi
               endif
               sdn7='  7'+vek0+data0+str(nom0,6)
               find '&sdn7'     && éíêÄÅéíÖHà ÑHà íÖK  åÖëÖñ
               if .not. found()
                  loop
               endif
               repl stoi with x7,suma with pnv0
               sdn7=' 92'+vek0+data0+str(nom0,6)
               find '&sdn7'     && éëàÉ. ÑéïéÑ
               if .not. found()
                  loop
               endif
               repl stoi with pnv0
               set key  -3 to
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
               sele 1
           enddo

    ********* è∞Æ∂•§≥∞† ß† ¨†∞™®∞†≠• ≠† ´®∂• Æ≤ ≤•™≥π®ø ¨•±•∂     ********
                           proc mark
                  save screen
  if l3='¨'
     sele 2
     use mese inde sdni,dnsi
  else
     sele 4
     use godn inde gsdni,gdnsi
  endif
                  sdn0='  6'+vek0+data0+str(nom0,6)
                  find '&sdn0'
    set filter to nom=str(nom0,6).and.vek+data=vek0+data0
    go top
                    do while nom=str(nom0,6)
                       if lastkey()=172
                          @ 23,15 say ' ã®∂•≤Æ • ¨†∞™®∞†≠Æ ß† ®ß≤∞®¢†≠• ß† ≤•™. ¨•±•∂ !  '
                          dele
                       endif
                       if lastkey()=162
                          @ 23,15 say '     ã®∂•≤Æ • ¢∫ß±≤†≠Æ¢•≠Æ ¢ ≤•™. ¨•±•∂ !         '
                         reca
                        endif
                             if .not.eof()
                                skip
                             endif
                    enddo
                          i0=inkey(1)
                  restore screen
                           return
    ***** è∞Æ∂•§≥∞† ß† ®ß´®±≤¢†≠• ≠† ±Ø®±∫∑≠®ø ±∫±≤†¢ ØÆ †ß°≥∑•≠ ∞•§  ********
                         proc azbuka
     set key 172 to
     set key 162 to
     set cent on
                  sele 1
               do case
                  case lastkey()=-1
                       use spis inde namz
                  case lastkey()=-2
                       use spis inde namz
                       set filter to .not.pd=' '
                       go top
                  case lastkey()=-31
                       use spis inde nomi
                  case lastkey()=-32
                       use spis inde nomi
                       set filter to .not.pd=' '
                       go top
               endcase
            *  if lastkey()=-2
            *     use spis inde namz
            *  else
            *     use spis inde nomi
            *  endif
                  save screen
           @ 11, 1,19,78 box ram1
	   @ 12, 2 clea to 18,77
	   @ 13, 2 say repli('Õ', 76)
                  declare fiel[19]
                  fiel[1]='nom'
                  fiel[2]='name'
                  fiel[3]='kd'
                  fiel[4]='pd'
                  fiel[5]='pnm'
                  fiel[6]='dvd'
                  fiel[7]='kpd'
                  fiel[8]='dpd'
                  fiel[9]='rabo'
                  fiel[10]='egn'
                  fiel[11]='datp'
                  fiel[12]='datu'
                  fiel[13]='vazn'
                  fiel[14]='osig'
                  fiel[15]='nkid'
                  fiel[16]='nkp'
                  fiel[17]='oid'
                  if field(54)='BS'
                     fiel[18]='bs'
                  endif
                  fiel[19]='vod'
                  declare imem[20]
                  imem[1]='ëèàë.N '
                  imem[2]='ëéÅëíÇÖHé ÅÄôàHé à îÄåàãHé àåÖ'
                  imem[3]='KOÑ'
                  imem[4]='íàè'
                  imem[5]='åÖëÖñ'
                  imem[6]='ÑHÄá'
                  imem[7]='Ñé/áé'
                  imem[8]='ÑìÇé'
                  imem[9]='èêéîÖëàü'
                  imem[10]='  E  É  H'
                  imem[11]='èéëíöèÇÄHÖ'
                  imem[12]='ìÇéãHÖH '
                  imem[13]='éëH.íê. '
                  imem[14]='åàH.èêÄÉ'
                  imem[15]='HKàÑ'
                  imem[16]='HKè'
                  imem[17]='èNÆ'
                  if field(54)='BS'
                     imem[18]='ÅÄHKéÇÄ ëåÖíKÄ'
                  endif
                  imem[19]='ÇàÑ éë.'
                  dbedit(14, 2,18,77,fiel,"pfuncaz",'',imem,'Õ','”')
                  nom0=val(nom)
                  set key 172 to mark
                  set key 162 to mark
                  set cent off
                   for i0 = 1 to 55
                         if field(i0)='NAME'
                            name0  =name
                         endif
                         if field(i0)='IME'
                            ime0=ime
                         endif
                         if field(i0)='PRIME'
                            prime0 =prime
                         endif
                         if field(i0)='FAMILY'
                            family0=family
                         endif
                         if field(i0)='EGN'
                            egn0   =egn
                         endif
                         if field(i0)='INIC'
                            inic0  =inic
                         endif
                         if field(i0)='PK'
                            pk0    =pk
                         endif
                         if field(i0)='OBL'
                         obl0   =obl
                         endif
                         if field(i0)='NASM'
                            nasm0  =nasm
                         endif
                         if field(i0)='ADR'
                            adr0   =adr
                         endif
                         if field(i0)='DD'
                            dd0=dd
                         endif
                         if field(i0)='MM'
                            mm0=mm
                         endif
                         if field(i0)='GG'
                            gg0=gg
                         endif
                         if field(i0)='MG'
                            mg0=mg
                         endif
                         if field(i0)='BOLD'
                            bold0=bold
                         endif
                         if field(i0)='MAYD'
                            mayd0=mayd
                         endif
                         if field(i0)='DETD'
                            detd0=detd
                         endif
                         if field(i0)='BCH'
                            bch0=bch
                         endif
                         if field(i0)='VOD'
                            vod0=vod
                         endif
                         if field(i0)='KPD'
                            kpd0=kpd
                         endif
                         if field(i0)='DVD'
                            dvd0=dvd
                         endif
                         if field(i0)='DPD'
                            dpd0=dpd
                         endif
                         if field(i0)='PNM'
                            pnm0=pnm
                         endif
                         if field(i0)='RS'
                            rs0=rs
                         endif
                         if field(i0)='PNV'
                       *    pnv0=pnv
                         endif
                         if field(i0)='OID'
                        *   oid0=oid
                         endif
                         if field(i0)='VOZ'
                            voz0=voz
                         endif
                         if field(i0)='VPZ'
                            vpz0=vpz
                         endif
                         if field(i0)='DVZ'
                            dvz0=dvz  &&  tova e weche e EKATTE
                         endif
                         if field(i0)='DPZ'
                            dpz0=dpz
                         endif
                         if field(i0)='GOD'
                            god0=god
                         endif
                         if field(i0)='GODC'
                            godc0=godc
                         endif
                         if field(i0)='RABO'
                            rabo0=rabo
                         endif
                         if field(i0)='TD'
                            td0=td
                         endif
                         if field(i0)='DATN'
                            datn0=datn
                         endif
                         if field(i0)='CHLN'
                            chln0=chln
                         endif
                         if field(i0)='SROK'
                            srok0=srok
                         endif
                         if field(i0)='DATU'
                           datu0=datu
                         endif
                         if field(i0)='DATP'
                           datp0=datp
                         endif
                         if field(i0)='LKN'
                           lkn0 =lkn
                         endif
                         if field(i0)='LKD'
                            lkd0=lkd
                         endif
                         if field(i0)='IZD'
                            izd0=izd
                         endif
                         if field(i0)='CHLU'
                            chlu0=chlu
                         endif
                         if field(i0)='OBRA'
                            obra0=obra
                         endif
                         if field(i0)='VAZN'
                            vazn0=vazn
                         endif
                         if field(i0)='OSIG'
                            osig0=osig
                         endif
                         if field(i0)='OSNN'
                            osnn0=osnn
                         endif
                         if field(i0)='OSNP'
                            osnp0=osnp
                         endif
                         if field(i0)='NKP'
                            nkp0=nkp
                         endif
                         if field(i0)='NKID'
                       *    nkid0=nkid
                         endif
                         if field(i0)='KD'
                               kd0=kd
                         endif
                         if field(i0)='PD'
                              pd0=pd
                         endif
                         if field(i0)='BS'
                              bs0=bs
                         endif
                   next

                  restore screen
                  use spis inde nomi,namz
                        return



      ************ èÆ≤∞•°®≤•´±™† ¥≥≠™∂®ø **********
                function pfuncaz
                parameters mode0,fld0
                private fld0
                cur0=fiel[fld0]
                 do case
                   case mode0 < 4
                      @ 12, 2 say nom+' '+name+str(god,2)
                    if dele()
                      @ 23,15 say '         ã®∂•≤Æ • ¨†∞™®∞†≠Æ ß† ®ß≤∞®¢†≠• !        '
                       i0=inkey(1)
                      @ 23,16 say 'É∞≥Ø.Ø∞Æ¨ø≠†- F4  Ç ¨•±∂† - F6  Ç £Æ§®≠† - Alt+F6'
                    endif
                        return 1
                   case lastkey()=27
                        return 0
		   case lastkey()=13
                         save screen to  ek0
                         clea gets
			 set cursor on
        	      @ row(),col() get &cur0
         	 * @ 19,20 say '        Ç∫¢•§•≤• ¶•´†≠®≤• Ø∞Æ¨•≠®         '
	         * @ 20,18 say '                                            '
			 read
                   if lastkey()=27
                          restore screen from ek0
	              *   return 0
                    endif
			 set cursor off
            case lastkey()=172
                 @ 23,15 say '    ã®∂•≤Æ ±• ¨†∞™®∞† ß† ®ß≤∞®¢†≠• Æ≤ ±Ø®±∫™†!    '
                          dele
                          i0=inkey(1)
                 @ 23,16 say 'É∞≥Ø.Ø∞Æ¨ø≠†- F4  Ç ¨•±∂† - F6  Ç £Æ§®≠† - Alt+F6'
            case lastkey()=162
                 @ 23,15 say '        ã®∂•≤Æ • ¢∫ß±≤†≠Æ¢•≠Æ ¢ ±Ø®±∫™† !         '
                          recal
                          i0=inkey(1)
                 @ 23,16 say 'É∞≥Ø.Ø∞Æ¨ø≠†- F4  Ç ¨•±∂† - F6  Ç £Æ§®≠† - Alt+F6'
                   otherwise
                         return 1
                 endcase
                return 1


    ***** è∞Æ∂•§≥∞† ß† ®ß´®±≤¢†≠• ≠† ±Ø®±∫∑≠®ø ±∫±≤†¢ ØÆ †ß°≥∑•≠ ∞•§  ********
                     proc promia
               @ 21,14 clea to 23,66
               @ 22,14,24,66 box ram1
               clea gets
                  sdn0='  9'+vek0+data0+str(nom0,6)
                  find '&sdn0'
               @ 23,20 say 'Ç±®∑™Æ ≤∞≥§Æ¢Æ ¢∫ß≠†£∞†¶§•≠®• ' get suma
                  read
             if l3='¨'
               sele 2
             else
               sele 4
             endif
                    return


         *********** è∞Æ∂•§≥∞† ß† §Æ°†¢ø≠• ≠† ß†Ø®± ¢ ≠Æ¨•≠™´†≤≥∞†≤† **********
                         proc dobavi
                          go bott
                          sch2=sch
                           appe blank
                           repl sch with str(val(sch2)+1,3),dni with '±'
                           sch2=sch
                           skip
                         keyboard chr(6)
                        return

         *********** è∞Æ∂•§≥∞† ß† ¢ß•¨†≠• ≠† µ†∞†™≤•∞®±≤®™†  ***********
                         proc vzemi
                          sch2=sch
                          dni0=dni
                           sdn0=sch2+vek0+data0+str(nom0,6)
                           if l3='¨'
                             sele 2
                           else
                             sele 4
                           endif
                             find '&sdn0'
                        if .not. found()
                           appe blank
                           repl nom with str(nom0,6), sch with sch2, dni with dni0, data with data0, vek with vek0
                        endif
                          sele 3
                        return
                *********** é≤Ø•∑†≤¢†≠• ≠† ¥®∏†  ***********
                      proc pfish
            *********** ï†∞†™≤•∞®±≤®™® ≤•™≥π ¨•±•∂  ***************
               set dele on
               if vod0=27
                  x7=0
               endif
               store x7*(pnv0/8) to x7o
               store 0 to br0,br1,xb0,xb7,x151,x160,br201,xb151
               sch0='   '
               store x7*(pnv0/8) to brdn0
                if l3='¨'
                   sele 2
                   use mese inde sdni,dnsi
                else
                   sele 4
                   use godn inde gsdni,gdnsi
                endif

          sdn3='  1'+vek0+data0+'      '
          find '&sdn3'
          x1=stoi     && Å∞Æ© ∞†°Æ≤≠® §≠® ≤•™. ¨•±•∂

          sdn3='  2'+vek0+data0+'      '
          find '&sdn3'
          x2=stoi  && å®≠. ê á ß† ¨•±•∂†

          sdn3='  3'+vek0+data0+'      '
          find '&sdn3'
          data1=abs(stoi)  && å•±•∂ ß† ®ß∑®±´ø¢†≠• ≠† ÑéÑ
            if stoi < 0
               vek2=val(vek0)-1
            else
               vek2=val(vek0)
            endif

          sdn3='  4'+vek0+data0+'      '
          find '&sdn3'
          x4=stoi  && å†™±®¨†´•≠ ∞†ß¨•∞ ≠† Æ±®£. §ÆµÆ§'

          sdn3=' 11'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k11=stoi/100

          sdn3=' 14'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k14=round(stoi,2)  && Ñéé        ß† ±/™† ≠† ∞†°Æ≤≠®™†

          sdn3=' 16'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k16=round(stoi,2)  && Ñéé  II ™†≤•£. ±/™† ≠† ∞†°Æ≤≠®™†

          sdn3=' 30'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k30=round(stoi,2)  && Ñéé      §ÆØ´. §ÆÆ ≠† ±Æ°±≤¢•≠®™†

          sdn3=' 32'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k32=round(stoi,2)  && Ñéé ß† ±/™† ≠† ∞†°Æ≤≠®™†

          sdn3=' 40'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k40=round(stoi,2)  && ëÆ∂ ∞-§® ß† ±-™† ≠† ±Æ°±≤¢≠•™†

          sdn3=' 41'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k41=round(stoi,2)  && ëÆ∂ ∞-§® ß† ±-™† ≠† ∞†°Æ≤≠®™†

          sdn3=' 42'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k42=round(stoi,2)  && Ñéé ¢/≥ °Æ´≠®∑•≠

          sdn3=' 50'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k50=round(stoi,2)  && áéÇ ≠† ±Æ°±≤¢•≠®™†

          sdn3=' 51'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k51=round(stoi,2)  && áéÇ ß† ±¨•≤™† ≠† ±Æ°±≤¢•≠®™†

          sdn3=' 52'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k52=round(stoi,2)  && áéÇ ß† ±¨•≤™† ≠† ∞†°Æ≤≠®™†

          sdn3=' 53'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k53=round(stoi*t38,2)  && áéÇ ≠•≥±®£≥∞•≠ ∑´≠ ≠† ±•¨•©±≤¢Æ≤Æ

          sdn3=' 71'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k71=round(stoi,2)  && èKÅ ß† ±¨•≤™† ≠† ∞†°Æ≤≠®™†

          sdn3=' 70'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k70=round(stoi,2)  && èKÅ ß† ±¨•≤™† ≠† ±Æ°±≤¢•≠®™†

          sdn3=' 94'+vek0+data0+str(nom0,6)
          find '&sdn3'
          k94=round(stoi/100,2)  && ÑéÑ




          sdn3='  6'+vek0+data0+str(nom0,6)
          find '&sdn3'
          x6=stoi

          sdn3='  8'+vek0+data0+str(nom0,6)
          find '&sdn3'
          x8=stoi

        * sdn3=' 11'+vek0+data0+str(nom0,6)
        * find '&sdn3'
        * x11=stoi/100

          sdn3=' 13'+vek0+data0+str(nom0,6)
          find '&sdn3'
          x13=stoi/100

          sdn3=' 15'+vek0+data0+str(nom0,6)
          find '&sdn3'
          x15=stoi/100

          sdn3=' 16'+vek0+data0+str(nom0,6)
          find '&sdn3'
          x16=stoi/100

          sdn3=' 25'+vek0+data0+str(nom0,6)
          find '&sdn3'
          x25=stoi/100

          sdn3=' 26'+vek0+data0+str(nom0,6)
          find '&sdn3'
          x26=stoi/100

          sdn3=' 31'+vek0+data0+str(nom0,6)
          find '&sdn3'
          x31=stoi/100

          sdn3=' 33'+vek0+data0+str(nom0,6)
          find '&sdn3'
          x33=stoi/100

          sdn3=' 34'+vek0+data0+str(nom0,6)
          find '&sdn3'
          x34=stoi/100

          sdn3=' 94'+vek0+data0+str(nom0,6)
          find '&sdn3'
          dni1=dni

          sdn3='110'+vek0+data0+str(nom0,6)
          find '&sdn3'
          x110=stoi  && H•Ø´†≤•≠ £Æ§. Æ≤Ø≥±™

          sdn3='150'+vek0+data0+str(nom0,6)
          find '&sdn3'
          x150=stoi  && ëÆ∂. ∞†ßµÆ§®

          sdn3='151'+vek0+data0+str(nom0,6)
          find '&sdn3'
          xb151=stoi  && bolni4en z a smetka na rabotodatelq


           if td_0='í'
                hbb6=stoi
           endif
          sdn3='102'+vek0+data0+str(nom0,6)
          find '&sdn3'
          x102=stoi/100

          sdn3='406'+vek0+data0+str(nom0,6)
          find '&sdn3'
            if found()
               x19=stoi && °∞Æ© §≠® ¢ ™Æ¨†≠§®∞Æ¢™†
            else
               x19=0
            endif

          sdn3='407'+vek0+data0+str(nom0,6)
          find '&sdn3'
            if found()
               x21=stoi && á†Ø´†≤† ØÆ Ø∫∞¢® ≤∞≥§Æ¢ §-∞
            else
               x21=0
            endif

          sdn3='408'+vek0+data0+str(nom0,6)
          find '&sdn3'
            if found()
               x3=stoi  && Ñ†≠∫™ ØÆ Ø∫∞¢® ≤∞≥§Æ¢ §-∞
            else
               x3=0
            endif

        *     sdn3='409'+vek0+data0+str(nom0,6)   && å•±•∂† Æ≤ ™Æ©≤Æ ±• ®ß∑®±´ø¢† °Æ´≠®∑•≠
        *     find '&sdn3'
        *   if stoi < 0
        *      vek0=str(val(vek0)-1,4)
        *   else
        *      vek0=subs(vek0,1,2)+subs(str(stoi,10,2),9,2)
        *   endif
        *      stor vek0 to vek0

          sdn3='410'+vek0+data0+str(nom0,6) && å•±•∂ Æ≤ ™Æ©≤Æ ±• ®ß∑®±´ø¢† Æ≤Ø≥±™
          find '&sdn3'
                 if val(substr(str(abs(stoi),10,2),6,2))<10
                    st0='0'+substr(str(abs(stoi),10,2),7,1)
                 else
                    st0=substr(str(abs(stoi),10,2),6,2)
                 endif
            if found()
               xxo=st0+'/'+substr(str(abs(stoi),10,2),9,2)
            else
               xxo=data0
            endif
            if stoi < 0
               vek3=str(val(vek0)-1,4)
            else
               vek3=subs(vek0,1,2)+subs(str(stoi,10,2),9,2)
            endif
       ************  á† ®ß∑®±´ø¢†≠• ≠† Æ≤Ø≥±™   ***************
          sele 4
          use godn inde gsdni,gdnsi
          sdn3='  1'+vek3+xxo
          find '&sdn3'
          xo1=stoi     && Å∞Æ© ∞†°Æ≤≠® §≠® ¢ ¨•±•∂† ≠† °Æ´≠®∑≠®ø
          sdn3='109'+vek3+xxo+str(nom0,6)
          find '&sdn3'
          x109=suma
          sdn3='  9'+vek3+xxo+str(nom0,6)
          find '&sdn3'
          xo9=suma-x109
          sdn3='  7'+vek3+xxo+str(nom0,6)
          find '&sdn3'
          xo7=stoi
       *  xo7=suma
          sdn107='107'+vek3+xxo+str(nom0,6)
          find '&sdn107'
          xo7=xo7+stoi
          sdn3=' 10'+vek3+xxo+str(nom0,6)
          find '&sdn3'
          xo10=stoi
       ************  á† ®ß∑®±´ø¢†≠• ≠† °Æ´≠®∑•≠ ***************
          sele 2
          use mese inde sdni,dnsi

       if td_0='É'
          store 1 to x1,x7
       endif

                       **************  H†∑†´Æ ß† ®ß∑®±´ø¢†≠• ≠† ±°Æ∞† ® §≠®≤•
          sdn3='  1'+vek0+data0     &&  ¢±®∑™Æ ≤∞. ¢∫ß≠†£∞†¶§•≠®•
          find '&sdn3'
          sdn3='  2'+vek0+data0
          find '&sdn3'

          sdn3='  7'+vek0+data0+str(nom0,6)
          find '&sdn3'
       if found()
          br1=str(br0+1,1)
          xb7=xb7+stoi     && Å∞Æ© Æ≤∞†°Æ≤•≠® §≠® ≤•™. ¨•±•∂
       else
          br1=str(br0+1,1)
          sdn3='  1'+vek0+data0
          find '&sdn3'
          xb7=xb7+stoi     && Å∞Æ© ∞†°Æ≤≠® §≠® ß† ¨•±•∂†  †™Æ ≠• • ∞†°Æ≤•≠Æ ¢ ≤Æß® ¨•±•∂
       endif

          sdn3='  9'+vek0+data0+str(nom0,6)
          find '&sdn3'
       if found()
           xb0=suma    &&  Ç±.≤∞.¢-•≠®• ¢ ¨-∂† ß† ®ß∑. ≠† °Æ´.
       else
          sdn3='  2'+vek0+data0
          find '&sdn3'
          xb0=suma
       endif

          sdn3='107'+vek0+data0+str(nom0,6)
          find '&sdn3'
          if found()
            xb7=xb7+stoi
          endif
       *  sdn3='110'+vek0+data0+str(nom0,6)
       *  find '&sdn3'
       *  if found()
       *    xb7=xb7+stoi
       *  endif

          sdn3='201'+vek0+data0+str(nom0,6)
          find '&sdn3'
          if found()
            xb7=xb7+stoi     && Å∞Æ© §≠® ¢ °Æ´≠®∑•≠
            br201=br201+stoi
            k50=4.8
          endif

          sdn3='205'+vek0+data0+str(nom0,6)
          find '&sdn3'
          if found()
            xb7=xb7+stoi     && Å∞Æ© §≠® ¢ ¨†©∑•≠±≤¢Æ
            br201=br201+stoi
            k50=4.8
          endif
                       **************  K∞†© ß† ®ß∑®±´ø¢†≠• ≠† ±°Æ∞† ® §≠®≤•
                                   &&  ¢±®∑™Æ ≤∞. ¢∫ß≠†£∞†¶§•≠®•


                        me0=val(substr(data0,1,2))-1
                        dt0=val(substr(data0,4,2))
                        if me0 < 1
                               me0=12-me0
                               dt0=val(substr(data0,4,2))-1

                        endif
                        do case
                           case  me0 < 10
                             me0='0'+str(me0,1,2)
                           case me0 > 9.and.me0<13
                             me0=str(me0,2)
                        endcase
                        do case
                           case  dt0 < 10
                             dt0='0'+str(dt0,1,2)
                        *  case dt0 > 9.and.dt0<13
                           case 9 < dt0
                             dt0=str(dt0,2)
                        endcase
                        br0=br0+1
                if l3='¨'
                   sele 2
                   use mese inde sdni,dnsi
                else
                   sele 4
                   use godn inde gsdni,gdnsi
                endif
                           if l3='¨'
                             sele 2
                           else
                             sele 4
                           endif
               save screen
               store 0 to brtr0
                if l3='¨'
                   sele 2
                   use mese inde dnsi,sdni
                else
                   sele 4
                   use godn inde gdnsi,gsdni
                endif
                sdn5=vek0+data0+str(nom0,6)+'5'
                find "&sdn5"
                re0=recno()
                sdn4=vek0+data0+str(nom0,6)+'  8'
                find "&sdn4"
                re1=recno()
      *  do minosi
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
                 go re0
   if pp0='§'
      izrab()
   endif
        ?? norm0
        set marg to 3

  ? repli('-',75)
  ? 'íêìÑéÇé ÇöáHÄÉêÄÜÑÖHàÖ áÄ åÖëÖñ   '+data0+'            '+'áÄèãÄíÄ èé ôÄí '+ str(x8,9,2)
  ? 'íÄÅ.N '+str(nom0,6)+'-'+name0+'ÑãöÜHéëí '+rabo0+' ÇêÖåÖ '+ str(pnv0,1)+'∑'
  ? 'íêìÑéÇ ëíÄÜ '+gg0+'£.'+mm0+'¨.'+dd0+'§. '+'% áÄ èêéëãìÜÖHà ÉéÑàHà '+str(x102*100,5,2)+' éíêÄÅéíÖHà ÑHà '+str(x7*(8/pnv0),3)
  ? repli('-',75)
             go re1
              algo0=nome->algo
             brtr0=round(&algo0,j1)  && π†≤≠† ß†Ø´†≤† ¢ ß†¢®±®¨Æ±≤ Æ≤ Æ≤∞†°Æ≤•≠®≤• §≠®

   ?   '          HÄóàëãÖHàü     Ñ/ó    ëìåÄ          ìÑêöÜKà               ëìåÄ'
       ? nome->hara+'     '+str(brtr0,9,j1)   && ,2
             sdn1=vek0+data0+str(nom0,6)+'1'
             sdn2=vek0+data0+str(nom0,6)+'2'
             sdn3=vek0+data0+str(nom0,6)+'3'
              dn0=vek0+data0+str(nom0,6)
                if l3='¨'
                   sele 2
                   use mese inde dnsi, sdni
                else
                   sele 4
                   use godn inde gdnsi,gsdni
                endif
                find "&sdn1"
                sdn1=sch+vek0+data0+str(nom0,6)
                find "&sdn2"
                sdn2=sch+vek0+data0+str(nom0,6)
                find "&sdn3"
                sdn3=sch+vek0+data0+str(nom0,6)
                find "&dn0"
              sele 3
              * use &disc_1\fish\nome inde &disc_1\fish\nosi


                if l3='¨'
                   sele 2
                   use mese inde sdni,dnsi
                else
                   sele 4
                   use godn inde gsdni,gdnsi
                endif


             set relation to sch into nome
    store '§' to l0,l1
    store 0 to ud0,x9,x1_1,neobd0,neobo0,dod0,x14,x16,x32,x40,x41,x42,;
          x50, x51,x52,x53,x95,x151,x5b0,x205
    set filter to nom=str(nom0,6).and.vek+data=vek0+data0
    go top


 

    do while .t.
   

               find '&sdn3'
         if val(substr(sch,1,1))>2 .and.val(substr(sch,1,1))<4  && ®ß∑®±´ø¢† ≥§∞∫¶™®≤•

          if .not. eof()


            if empty(nome->algo)
     
               if izch_0='§'

   



                  repl suma with stoi
               endif
            else
                 stoi0=stoi
               algo0=nome->algo
               if izch_0='§'
                  repl suma with &algo0
               endif
            endif
               suma0=suma
          endif
              ud0=ud0+suma0  && ±≥¨† ≠† ≥§∞∫¶™®≤•
                      if dni='≠'.or.dni='°' &&  ÅÖá ÑéÑ  Ñéé
                        neobd0=neobd0+suma0
                      endif
                      if dni='•'.or.dni='°' &&  ÅÖá ÑéÑ  Ñéé
                        neobo0=neobo0+suma0
                      endif
                   if .not.eof()
                      skip
                   endif
                 if .not.nom=str(nom0,6)
                     l1='≠'
                 endif
              sdn3=sch+vek+data+nom
         else
                       l1='≠'
         endif
          find '&sdn1'
            if .not. found()
               find '&sdn2'
            endif
       if val(substr(sch,1,1))<3   && ®ß∑®±´ø¢† ≠†∑®±´•≠®ø≤†
         if .not. eof()


            if empty(nome->algo)
               if izch_0='§'
                  repl suma with stoi
               endif
            else
               stoi0=stoi
                  do case
                     case sch='107'
                          x7o=x7o+stoi*(pnv0/8)
                  *  case sch='110'  // sprqno zardi sluchai bez rabotni dni a samo otpusk i neplaten ->greshi
                  *       x7o=x7o+stoi*(pnv0/8)
                     case sch='160'
                            x160=suma*(-1)
                  endcase

                   algo0=nome->algo    && ®ß∑®±´ø¢† Æ±®£≥∞Æ¢™® ØÆ †´£Æ∞®≤∫¨

                   if izch_0='§'
                      repl suma with &algo0
                   endif


            endif
                   suma0=suma
         endif
            do case
               case substr(sch,1,1)='1'.and.(.not.sch='151')
                  x1_1=x1_1+suma0  &&  µ9 vsich. nach. kam shtat.RZ
                      if dni='≠'.or.dni='°'  &&  ÅÖá ÑéÑ  Ñéé
                        if sch='160'
                            neobd0=neobd0-suma0
                        else
                            neobd0=neobd0+suma0
                        endi
                      endif
                      if dni='•'.or.dni='°'  &&  ÅÖá ÑéÑ  Ñéé
                        if sch='160'
                            neobo0=neobo0-suma0
                        else
                            neobo0=neobo0+suma0
                        endif
                      endif
            endcase
                   if .not.eof()
                       skip
                   endif
                 if .not.nom=str(nom0,6)
                       l0='≠'
                 endif
           sdn1=sch+vek+data+nom
       else
        if l1='§'
          ? space(39)
        endif
          l0='≠'
       endif
          if l0='≠'.and.l1='≠'
              exit
          endif
    enddo
     if td_0='í'.or.td_0='ê'   &&  àß∑®±´ø¢†≠• ≠† éëàÉ. §ÆµÆ§
        store brtr0+x1_1-x150 to x9
        store x9-neobo0 to x92
        if x4 < x92       && Proverka osig dohod da ne nadhvarli
          stor x4 to x92  && MAX OSIG. PRAG kojto e v x4
          x92=x92-neobo0
        else
           if (x92 < x6/x1*x7o).and.(.not. x92 < 0.01)
              store x6/x1*x7o to x92
              x92=x92-neobo0
           endif
        endif
     else
           store x8-neobo0 to x92,x9
     endif
                  if x92 < x6/x1*x7o  &&  bruto tr.waznagr. <  min. osig. prag
                     x151=round(x92/x7o*.70*xb151,j1)
                  else
                     x151=round((x6/x1*.70*xb151),j1)
                  endif

         x10=brtr0+x1_1-x150+x151 &&   x10=x9

     if ll1='§'
        store 0 to dod0,x14,x16,x30,x32,x40,x41,x50,x51,x52,x53,x71,udra0,k_k0
        udra0=x14+x16+x32+x41+x52+x53+x71
     else

          *  á é Ç 1.2 ß† ±¨•≤™† ≠† ∞†°Æ≤≠.
           if x92 < x6/x1*x7o
              x52=round((x92+x151)*(k52)/100,j1)     &&+round(x5b0*k53/100,j1)
           else
             x52=round((x92+x151+x150)*(k52)/100,j1)     &&+round(x5b0*k53/100,j1)
           endif
          *      Æ≤∞†°Æ≤•≠Æ ¢∞•¨•                   °Æ´≠®∑•≠
           *  v01

         x53=round((x92+x151)*(k53)/100,j1)+round(x5b0*k53/100,j1);
            +round(x205*k53/100,j1)+round((x2/x1)*x110*k53/100,j1)
          *         ¨†©∑•≠±≤¢Æ                   ≠•Ø´†≤•≠ Æ≤Ø•±™
          x14=round((x92+x151)*k14/100,j1)  &&  Ñ é é
          x16=round((x92+x151)*k16/100,j1)  &&  Ñ é é
          x32=round((x92+x151+x150)*k32/100,j1)  &&  §ÆØ∫´≠®≤•´≠Æ Ñ é é 0
          x41=round((x150)*k41/100,j1)  &&  ëÆ∂. ∞-§® ß† ±-™† ≠† ∞†°Æ≤≠.
          x40=round((x150)*k40/100,j1)  &&  ëÆ∂. ∞-§® ß† ±-™† ≠† ±Æ°±≤¢•≠
          x70=round((x92)*k70/100,j1)  &&  è K Å
          x71=round((x92)*k71/100,j1)  &&  è K Å


          sdn1='151'+vek0+data0+str(nom0,6)
          find '&sdn1'    && 3 §≠® °Æ´≠®∑•≠ ß† ±/™† ≠† ∞†°Æ≤Æ§†≤•´ø
          if found()
               if izch_0='§'
                  repl  suma with round(x151,2)
               endif
          endif
             go re1
             sdn1=vek0+data0+str(nom0,6)+'1'
             sdn2=vek0+data0+str(nom0,6)+'2'
             sdn3=vek0+data0+str(nom0,6)+'3'
              dn0=vek0+data0+str(nom0,6)
                if l3='¨'
                   sele 2
                   use mese inde dnsi, sdni
                else
                   sele 4
                   use godn inde gdnsi,gsdni
                endif
                find "&sdn1"
                sdn1=sch+vek0+data0+str(nom0,6)
                find "&sdn2"
                sdn2=sch+vek0+data0+str(nom0,6)
                find "&sdn3"
                sdn3=sch+vek0+data0+str(nom0,6)
                find "&dn0"
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
    store '§' to l0,l1
    set filter to nom=str(nom0,6).and.vek+data=vek0+data0
    go top
    do while .t.
               find '&sdn3'
         if val(substr(sch,1,1))>2 .and.val(substr(sch,1,1))<4  && ®ß∑®±´ø¢† ≥§∞∫¶™®≤•
             ?? ' '+nome->hara+' '+str(suma,9,j1) && ,2
                   if .not.eof()
                      skip
                   endif
                 if .not.nom=str(nom0,6)
                     l1='≠'
                 endif
              sdn3=sch+vek+data+nom
         else
                       l1='≠'
         endif
          find '&sdn1'
            if .not. found()
               find '&sdn2'
            endif
       if val(substr(sch,1,1))<3   && ®ß∑®±´ø¢† ≠†∑®±´•≠®ø≤†
         do case
          case dni='±'.or.dni='≠'.or.dni='•'.or.dni='°'
                 ? nome->hara+'     '+str(suma,9,j1)
            case dni='§'
               if nome->sch='201'
                 ? nome->hara+' '+substr(str(stoi,7),5,3)+space(10)
               else
                 ? nome->hara+' '+substr(str(stoi,7),5,3)+' '+str(suma,9,j1)
               endif
            other
                 ? '                                       '
         endcase
     if sch='  7'.or.sch='107'.or.sch='110'.or.sch='151'
        brdn0=brdn0+stoi
          if sch='107'.and.(xo7=0.or.xo9=0)
               @ 13,17 say 'ÇHàåÄHàÖ !'  color 'R+/B'
               @ 13,29 say 'HE Ö ÇöÇÖÑÖH òàîöê 410 ÅÄáéÇàüí'
               @ 14,29 say 'åÖëÖñ áÄ àáóàëãüÇÄHÖ HÄ éíèìëK'
               i0=inkey(0)
          endif
        if x1 < brdn0
            @ 13,13 say 'ÇHàåÄHàÖ !'   color 'R+/B'
            @ 13,24 say 'ÇëàóKé ÑHà HÄÑïÇöêãü êÄÅéíHàíÖ ÑHà áÄ åÖëÖñÄ !'
            i0=inkey(0)
            @  8,20 say '                                      '
        endif
     endif
                   if .not.eof()
                       skip
                   endif
                 if .not.nom=str(nom0,6)
                       l0='≠'
                 endif
           sdn1=sch+vek+data+nom
       else
        if l1='§'
          ? space(39)
        endif
          l0='≠'
       endif
          if l0='≠'.and.l1='≠'
              exit
          endif
    enddo
              ?? ' Háéä    '+str(k52,4,2)+' %            '+str(x52,9,j1)
         if 0 < x53
          ? '                                       '
              ?? ' Háéä    '+str(k53,4,2)+' %            '+str(x53,9,j1)
         endif

         if 0 < x14
          ? '                                       '
              ?? ' Ñéé    '+str(k14,5,2)+' %            '+str(x14,9,j1)
         endif
         if 0 < x16
          ? '                                       '
              ?? ' Ñ é é  '+str(k16,5,2)+' %            '+str(x16,9,j1)
         endif
         if 0 < x32
          ? '                                       '
              ?? ' Ñéè.Ñéé '+str(k32,4,2)+' %            '+str(x32,9,j1)
         endif
         if 0 < x41
          ? '                                       '
              ?? ' ëéñ.ê-à '+str(k41,4,2)+' %            '+str(x41,9,j1)
         endif
         if 0 < x71
            ? '                                       '
            ?? ' è K Å   '+str(k71,4,2)+' %            '+ str(x71,9,j1)
         endif
            ddohod()
            ? space(40)+'Ñ†≠∫™ Æ°π §ÆµÆ§           '+str(dod0,9,j1)  &&,2
     endif


      *  if nom0=170 && .and.  sch='151'
      *      set cons on
      *      @  0, 0 clea to 24,80
      *      ? space(10)+'x1    - rabotni dni za meseca     '+ str(x1,7,2)
      *      ? space(10)+'x4    - max osig prag             '+ str(x4,7,2)
      *      ? space(10)+'x6    - min. osig. prag.          '+ str(x6,7,2)
      *      ? space(10)+'x9    - vsichko tr. vaznagr       '+ str(x9,7,2)
      *      ? space(10)+'x7o   - êÄÅéí. ÑHà Ç åÖëÖñ ë ÅéãH.'+ str(x7o,7,2)
      *      ? space(10)+'xo9-  9 Ç±®∑.≤∞.   ß† ®ß∑. Æ≤Ø≥±™.'+ str(xo9,7,2)
      *      ? space(10)+'xxo   - ¨•±•∂ ß† ®ß∑. ≠† Æ≤Ø≥±™     '+ xxo
      *      ? space(10)+'x8 stoi áÄèãÄíÄ áÄ éíêÄÅ.ÑHà      '+ str(x8,7,2)
      *      ? space(10)+'x8 suma algo-> x8/x1*x7o          '+ str(x8/x1*x7o,7,2)
      *      ? space(10)+'x1_1- vsich. nach. kam shtat.RZ   '+ str(x1_1,7,2)
      *      ? space(10)+'x9=xb0=suma(x8+x102) vsich nach.RZ'+ str(xb0,7,2)
      *      ? space(10)+'brtr0 - π†≤≠† êá Æ≤∞†°Æ≤•≠® §≠®   '+ str(brtr0,7,2)
      *      ? space(10)+'pr_6=í6 - åàH.éëàÉ.Ñ-Ñ ëÄåééëàÉ   '+ str(pr_6,7,2)
      *      ? space(10)+'neobo0  - ÅÖá ÑéÑ à Ñéé           '+ str(neobo0,7,2)
      *      ? space(10)+'udra0 - éëàÉ. áÄ ë/äÄ HÄ êÄÅéíHàäÄ'+ str(udra0,7,2)
      *      ? space(10)+'x92= mod/x9/ + x151               '+ str(x6/x1*x7o+x151,7,2)
      *      ? space(10)+'x95 = ÑéÑ = xb0-udr0              '+ str(xb0-udra0,7,2)
      *      ? space(5)+'pravi proverka koya sum e golqma i ako x9 < mod vzima st-sta na mod'
      *      ? space(10)+'mod -min.osig.dohod za otrab.vreme'+ str(x6/x1*x7o,7,2)
      *      ? space(5)+'analogichno e izchislqvaneto na x151'
      *      ? space(10)+'x151 - I-vi 3 dni bolnichen       '+ str(x151,7,2)
      *      wait 'vvv   èêéÑöãÜà ë vvv àåÄ éôÖ ÖÑHé åüëíé ë HÄÅãûÑÄÖåà ëí-íà'
      *      set cons off
      *  endif

  ? repli('-',75)
  ? 'ÇëàóKé íêìÑéÇé ÇöáHÄÉêÄÜÑÖHàÖ:'+str(x9,9,j1)+'  ÇëàóKé ìÑêöÜKà :         '+ str(ud0+dod0+x14+x16+x32+x41+x52+x53+x71,9,j1)
  ? 'ÅêìíHé íêìÑéÇé ÇöáHÄÉêÄÜÑÖHàÖ:'+str(x10,9,j1)
  ? 'ëìåÄ áÄ àáóàëãüÇÄHÖ HÄ Ñ é é :'+str(x92+x151,9,j1)
* ? 'ëìåÄ áÄ àáóàëãüÇÄHÖ HÄ Ñ é Ñ :'+str(x95+x151,9,j1)
  ? 'ëìåÄ áÄ àáóàëãüÇÄHÖ HÄ Ñ é Ñ :'+str(x95,9,j1)
  ? 'ëìåÄ áÄ èéãìóÄÇÄHÖ:           '+str(round(x9+x151-ud0-dod0-udra0,2),9,j1)+'  èéÑèàë            ................'
  ?
  ?
  ?
  ?
  ?
  ?
  set cons on
 if pp0='§'
    pech()
 else
  if l4='§'
     i0=inkey(1)
  endif
 endif
   if pp0='§'
     set cons off
   endif
  if izch_0='§'
                          if l3='¨'
                   sele 2
                   use mese inde sdni,dnsi
                else
                   sele 4
                   use godn inde gsdni,gdnsi
                endif

          sdn7='  7'+vek0+data0+str(nom0,6)
          find '&sdn7'     && éíêÄÅéíÖHà ÑHà íÖK. åÖëÖñ
          if  found()
             repl stoi with x7,suma with pnv0
          endif

          sdn1='  8'+vek0+data0+str(nom0,6)
          find '&sdn1'   && áÄèãÄíÄ áÄ éíêÄÅéíÖHà ÑHà
          if  found()
              repl suma with brtr0
          endif

          sdn3='  9'+vek0+data0+str(nom0,6)
          find '&sdn3'    &&  ÇëàóKé íêìÑéÇé ÇöáHÄÉêÄÜÑÖHàÖ /°•ß Ñéé/
          if  found()
              repl stoi with x9, suma with x9
          endif

          sdn10=' 10'+vek0+data0+str(nom0,6)
          find '&sdn10'    && ÅêìíHé íêìÑéÇé ÇöáHÄÉêÄÜÑÖHàÖ /± Ñéé/
          if  found()
              repl stoi with round(x10,j1), suma with round(x10,j1)
          endif

          sdn1=' 11'+vek0+data0+str(nom0,6)
          find '&sdn1'     && HÄóàëãÖHé Ñéé íÖK. åÖëÖñ
          if found()
              repl suma with  round(round(x92,j1)*k11,j1)+x21*.1
          endif

       if .not. td_0='í'   &&   Å•ß ±†¨Æ±®£≥∞ø¢†π ±•

          sdn1=' 13'+vek0+data0+str(nom0,6)
          find '&sdn1'     && HÄóàëãÖHé Ñéé III  ™†≤•£.
          if  found()
              repl suma with  round(round(x92+x151,j1)*x13,j1)+x21*.1
          endif

          sdn1=' 14'+vek0+data0+str(nom0,6)
          find '&sdn1'    && Ñ é é
          if found()
              repl suma with x14
          endif

          sdn1=' 15'+vek0+data0+str(nom0,6)
          find '&sdn1'     && HÄóàëãÖHé Ñéé III  ™†≤•£.
          if  found()
              repl suma with  round(round(x92,j1)*x15,j1)+x21*.1
          endif

          sdn1=' 16'+vek0+data0+str(nom0,6)
          find '&sdn1'     && HÄóàëãÖHé Ñéé III  ™†≤•£.
          if  found()
              repl suma with  x16
          endif

          sdn1=' 25'+vek0+data0+str(nom0,6)
          find '&sdn1'     && HÄóàëãÖHé Ñéé III  ™†≤•£.
          if  found()
              repl suma with  round(round(x9,j1)*x25,j1)+x21*.1
          endif

          sdn1=' 26'+vek0+data0+str(nom0,6)
          find '&sdn1'     && HÄóàëãÖHé Ñéé III  ™†≤•£.
          if  found()
              repl suma with  round(round(x92+x151,j1)*x26,j1)+x21*.1
          endif

          sdn1=' 31'+vek0+data0+str(nom0,6)
          find '&sdn1'     && HÄóàëãÖHé Ñéé íÖK. åÖëÖñ
          if  found()
              repl suma with  round(round(x92+x151,j1)*x31,j1)+x21*.1
          endif

          sdn1=' 32'+vek0+data0+str(nom0,6)
          find '&sdn1'     && HÄóàëãÖHé Ñéé íÖK. åÖëÖñ
          if  found()
              repl suma with  x32
          endif

          sdn1=' 33'+vek0+data0+str(nom0,6)
          find '&sdn1'     && HÄóàëãÖHé Ñéé íÖK. åÖëÖñ
          if  found()
              repl suma with  round(round(x92,j1)*x33,j1)+x21*.1
          endif

          sdn1=' 34'+vek0+data0+str(nom0,6)
          find '&sdn1'     && HÄóàëãÖHé Ñéé íÖK. åÖëÖñ
          if  found()
              repl suma with  round(round(x92,j1)*x34,j1)+x21*.1
          endif


          sdn40=' 40'+vek0+data0+str(nom0,6)
          find '&sdn40'    && ëÆ∂ ∞-§®  ß† ±¨•≤™† ≠† ±Æ°±≤¢•≠®™†
          if found()
             repl suma with x40
          endif

          sdn41=' 41'+vek0+data0+str(nom0,6)
          find '&sdn41'    && ëÆ∂ ∞-§®  ß† ±¨•≤™† ≠† ∞†°Æ≤≠.
          if  found()
             repl suma with x41
          endif

          sdn51=' 51'+vek0+data0+str(nom0,6)
          find '&sdn51'    && á é Ç ß† ±¨•≤™† ≠† ±Æ°±≤¢•≠®™
          if found()
            &&        á é Ç     ß† Æ≤∞†°.§≠®-≠•Æ°´.± Ñéé      °Æ´≠®∑®≠

                 store 0 to k0, n1, n2, n3, n4

                 k0 = round(k51/100,3)           // zadrawna za semetka na rabotod
                 n1 = round(x92+x151,2)    // za otraboteneo vreme + bolnon do 3 dni
               x150 = round(x150,2)
                 n2 = round(pr_6/x1*br201,2)     // bolnichen
               x205 = round(x205,2)   /// maychenstvo
                 n3 = round((x110/x1*x110)*(pr_6/2/x1),2)   // neplaten otpusk
      *    if x92 < x6/x1*x7o
      *         x51=round((x92+x151)*k51/100,j1)+round((pr_6/x1*br201)*k51/100,j1);
      *         +round(x205*k51/100,j1)+round((x110/x1*x110)*(pr_6/2/x1),2)*(k51/100) //  ,j1)
      *    else
      *         x51=round((x92+x151+x150)*k51/100,j1)+round((pr_6/x1*br201)*k51/100,j1);
      *         +round(x205*k51/100,j1)+round((x110/x1*x110)*(pr_6/2/x1),2)*(k51/100) //  ,j1)
      *    endif

           if x92 < x6/x1*x7o
                x51=round((n1+n2+x205+n3)*k0,j1)
           else
                x51=round((n1+x150+n2+x205+n3)*k0,j1)
           endif
            repl suma with x51
          endif

          sdn52=' 52'+vek0+data0+str(nom0,6)
          find '&sdn52'    && á é Ç ß† ±¨•≤™† ≠† ∞†°Æ≤≠.
          if found()
              repl suma with x52
          endif

          sdn70=' 70'+vek0+data0+str(nom0,6)
          find '&sdn70'    && è K Å
          if  found()
             repl suma with x70
          endif

          sdn71=' 71'+vek0+data0+str(nom0,6)
          find '&sdn71'    && è K Å
          if  found()
               repl suma with x71
          endif

       endif  &&   Å•ß ±†¨Æ±®£≥∞ø¢†π ±•
          sdn42=' 42'+vek0+data0+str(nom0,6)
          find '&sdn42'    && Ñ é é
          if .not. found()
             appe blank  &&  Ñéé ¢/≥ °Æ´≠®∑•≠
             repl nom with str(nom0,6),sch with ' 42', dni with '±', data with data0, vek with vek0
          endif
          repl  suma with x42
       if 0 < k30
          sdn30=' 30'+vek0+data0+str(nom0,6)
          find '&sdn30'    &&  ÑÆØ. Ñéé ß† ±¨•≤™† ≠† ±Æ°±≤¢•≠®™
          if  found()
              repl suma with  round(round(x92,j1)*k30/100,j1)
          endif
       endif

       if 0 < k50
          sdn50=' 50'+vek0+data0+str(nom0,6)
          find '&sdn50'    && á é Ç ß† ±¨•≤™† ≠† ±Æ°±≤¢•≠®™
          if  found()
            if k50=4.8
              repl suma with  round(round(pr_6,j1)*(k50+k53)/100,j1)
            else
              repl suma with  round(round(x92,j1)*(k50+k53)/100,j1)
            endif
          endif
       endif

          sdn52=' 53'+vek0+data0+str(nom0,6)
          find '&sdn52'    && á é Ç ß† ±¨•≤™† ≠† ∞†°Æ≤≠.
          if found()
              repl suma with x53
          endif

          sdn1=' 92'+vek0+data0+str(nom0,6)
          find '&sdn1'     && éëàÉ. ÑéïéÑ
          if  found()
              repl stoi with pnv0, suma with round(x92+x151,j1)
          endif

          sdn94=' 94'+vek0+data0+str(nom0,6)
          find '&sdn94'     &&  Ñ é Ñ
          if found()
             repl suma with dod0
          endif

          sdn95=' 95'+vek0+data0+str(nom0,6)
          find '&sdn95'    && éÅãÄÉÄÖå ÑéïéÑ
          if  found()
            *  repl suma with x95+x151
               repl suma with x95
          endif

          sdn2=' 99'+vek0+data0+str(nom0,6)
          find '&sdn2'      && ëìåÄ áÄ èéãìóÄÇÄHÖ
          if found()
              repl suma with round(x9+x151-ud0-dod0-udra0,j1)
          endif

          sdn1='  8'+vek0+data0+str(nom0,6)
          find '&sdn1'     && áÄèãÄíÄ èé ôÄí  íÖK.åÖëÖñ
          if found()
             if stoi=0
               repl stoi with vazn0
             else
              * if (.not.stoi=vazn0).and.(.not.vazn0=0)
              * endif
             endif
          endif

          sdn1='  6'+vek0+data0+str(nom0,6)
          find '&sdn1'     && éëàÉìÉ. èêÄÉ áÄ éíêÄÅéíÖHé ÇêÖåÖ
          if found()
             repl suma with x6/x1*x7o
          endif
  endif


        *   if nom0=170 && .and.  sch='151'
        *     *íéÇÄ ëÖ ÇàÜÑÄ ëÄåé èêà àáêÄÅéíäÄ 6/6
        *     set cons on
        *     @  0, 0 clea to 24,80
        *      ? space(10)+'x92'+ str(x92,7,2)
        *      ? space(10)+'x51'+ str(x51,7,2)
        *      ? space(10)+'x53'+ str(x53,7,2)
        *      ? space(10)+'x95'+ str(x95,7,2)
        *      ? space(10)+'neobd0'+ str(neobd0,7,2)
        *      ? space(10)+'udra0'+str(udra0,7,2)
        *      ? space(10)+'x21'+ str(x21,7,2)
        *      ? space(10)+'x9'+ str(x9,7,2)
        *
        *       wait 'vvv03'
        *      set cons off
        *    endif


     if pp0='§'
        @ 23,15 say '     Ü•´†•≤• ´® ®ß∑®±´ø¢†≠• ≠† °Æ´≠®∑•≠            '
        @ 23,56 prompt 'HÖ'
        @ 23,59 prompt 'ÑÄ'
        menu to l0
       if l0=2
          izch()
       endif
     endif
   restore screen
               set marg to
               set dele off
               return

      *************** è∞Æ∂•§≥∞† ß† ®ß∑®±´ø¢†≠• ≠† §†≠∫™ Æ°π®ø §ÆµÆ§ *****
                        proc ddohod
                        udra0=x14+x16+x32+x41+x52+x53+x71
                       if .not. vod0=27
                        x95=x9+x21-neobd0-udra0
                       endif
                do case
                   case td_0='É'
                        dod0=round(x95*k94,j1)
                   case td_0='í'
                        dod0=round(0,j1)
                   other

                      if  0 < k94
                  *     dod0=round((x95+x151)*k94,j1)
                        dod0=round((x95)*k94,j1)
                      else
                       dod0=round(0,j1)
                       sele 10
                       use &disc_1\fish\danak
                       set filter to data=data1.and.vek=vek2
                       go bott
                       do1=do
                       go top
                       do0=do
                        do while .not. eof()
                         do case
                            case ot = 0 .and. x95 < do0
                                      dod0=0
                                      exit
                            case ot < x95 .and. x95 < do
                                      dod0=round((x95-ot)*pr/100+dan,j1)
                                 exit
                            case ot = 0 .and. x95 > do1 .and. 0 < pr
                                 dod0=round((x95-do)*pr/100+dan,j1)
                                 exit
                         endcase
                                 skip
                        enddo
                      endif
                   endcase



                  if l3='¨'
                     sele 2
                  else
                     sele 4
                  endif
                     return

   *************** è∞Æ∂•§≥∞† ß† £∞≥ØÆ¢† Ø∞Æ¨ø≠† ≠† µ†∞†™≤•∞®±≤®™®≤• ******
                           proc  gruprom
                      clea gets
                      sch3=0
                      st0=0
                      @ 11,20,15,60 box ram1
                      @ 12,22 say 'Ç∫¢•§•≤• µ†∞†™≤•∞®±≤®™†≤†    ' get sch3  pict "999"
                      @ 14,22 say 'Ç∫¢•§•≤• ≠•©≠†≤† ±≤Æ©≠Æ±≤ ' get st0  pict "9999999.99"
                      read
                      scdt0=str(sch3,3)+vek0+data0
                if l3='¨'
                   sele 2
                   use mese inde sdni,dnsi
                else
                   sele 4
                   use godn inde gsdni,gdnsi
                endif
                            find '&scdt0'
                       if found()
                            do while sch=str(sch3,3).and.vek+data=vek0+data0
                              repl stoi with st0
                                           if .not.eof()
                                               skip
                                           else
                                               exit
                                           endif
                            enddo
                       else
                        @ 12,21 clea to 14,59
                        @ 12,22 say 'è∞Æ£∞†¨†≤† ≠• Æ≤™∞®¢† ∏®¥∫∞†'
                        @ 14,22 say '     ¢ ∞†°Æ≤≠®ø ¨•±•∂       '
                                 i0=inkey(0)
                       endif
                       @ 11,20 clea to 15,60
                               return

