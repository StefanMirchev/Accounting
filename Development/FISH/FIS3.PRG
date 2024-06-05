   * FIS3.PRG   budzhet raboti sentinel timecount  vedomost
   * @  0,15  say 'bbbb' ; inkey(0) //kkk
     do while .t.
     tt0=' 30'

                      @ 3,23,20,56 box ram1
                      @ 4,24 clea to 19,55
                      @  4,29 say ' … K €  ˆ ’ “ ‹ € – ˆ Ÿ'
                      @  5,28 say '---------------------------'
                      @  7,31 prompt '1. ‚¥¤®¬®±²         '
                      @  9,31 prompt '2. ¾¤¦¥²­¨ ¢§¥¬ ­¨¿'
                      @ 11,31 prompt '3. ¥ª ¯¨²³« ¶¨¿'
                      @ 13,31 prompt '4. ‘·¥². ®¯¥° ¶¨¨   '
                      @ 15,31 prompt '5. ¥ª ¯¨². ¯® ¸¨´º°'
                      @ 17,31 prompt '6. M¥±¥·­  ±¯° ¢ª   '
                      save screen
                          menu to v2
                       if lastkey()=27
                              exit
                       endif
          do case

             case v2=1
               vedomost()
             case v2=2
                budzhet()
      l0=2
      @ 2, 1 clea to 21,75
      @ 23,15 say space(51)
      @ 23,17 say '’…—€’‚€H… H€ „-–ˆŸ ‡€ ‚‡…M€HˆŸ ’ „'
      @ 23,58 prompt '„€'
      @ 23,61 prompt 'H…'
      menu to l0
      @ 23,15 say space(51)
      if lastkey()=27
         exit
      endif
                 if l0=1
     kast1=0
     @ 2,22 say '’…—€’‚€H… H€ „…K‹€€–ˆŸ ‡€ ‚‡…M€HˆŸ ’ „'
     @ 23,15 say space(51)
       izrab()
  * ?? norm0
  ?
  ? space(7)+'’............................'
  ? space(7)+'N......................20....£.  „«º¦­®±²­® «¨¶¥...................'
  ?
  ? space(25)+' „ … K ‹ €  € – ˆ Ÿ '
  ?
  ? space( 7)+'¯® ·«.7,  «.8 ®² K®¤¥ª±  §  § ¤º«¦¨²¥«­®²® ®¡¹¥±²¢¥­® ®±¨£³°¿¢ ­¥'
  ? space(15)+'„®«³¯®¤¯¨± ­¨¿²/ ² /  '+nam
  ? space( 7)+'‹.K. '+lkar+'  …ƒH '+egn0+ ' ¤«º¦­®±² '+dlaz
  ? space( 7)+'ª ²® ³¯° ¢«¿¢ ¹ /±®¡±²¢¥­¨ª/ ¨ ¯°¥¤±² ¢«¿¢ ¹ ®±¨£³°¨²¥«¿ '
  ? space( 7)+subs(fir,6,36)+' '+'³«±² ² '+buls
  ?
  ? space(27)+' „ … K ‹ €  ˆ  € M :'
  ?
  ? space(12)+'‚­¥±¥­¨ ±  ¤º«¦¨¬¨²¥ ®±¨£³°¨²¥«­¨ ¢­®±ª¨ §  ¤º°¦ ¢­®²®'
  ? space( 7)+'®¡¹¥±²¢¥­® ®±¨£³°¿¢ ­¥, §¤° ¢­®²® ®±¨£³°¿¢ ­¥, £ ° ­²¨° ­¨ '
  ? space( 7)+'¢§¥¬ ­¨¿ ¨ ¤®¯º«­¨²¥«­® § ¤º«¦¨²¥«­® ¯¥­±¨®­­® ®±¨£³°¿¢ ­¥ §  '
  ? space( 7)+'¯¥°¨®¤  ®² '+dtoc(dte1)+' ¤® '+dtoc(dte2)+' ª ª²® ±«¥¤¢ :'
  ? space( 7)+'1. ‡  ´®­¤®¢¥²¥ ­  ¤º°¦ ¢­® ®¡¹¥±²¢¥­® ®±¨£³°¿¢ ­¥'
  store b_11+b_13+b_14+b_15+b_16+b_26+b_40+b_41+b_42+b_42t to kast0
  slovom()
  ? space( 7)+'‘³¬  '+str(b_11+b_13+b_14+b_15+b_16+b_26+b_40+b_41+b_42+b_42t,10,j1)+'«¢. '+'‘«®¢®¬: '+ss0+' ‹E‚€ ¨ '+substr(x,N0,2)+' ‘’.'
  ? space( 7)+'2. ‡  §¤° ¢­® ®±¨£³°¿¢ ­¥'
  store b_50+b_51+b_52 to kast0
  slovom()
  ? space( 7)+'‘³¬  '+str(b_50+b_51+b_52,10,j1)+'«¢. '+'‘«®¢®¬: '+ss0+' ‹E‚€ ¨ '+substr(x,N0,2)+' ‘’.'
  ? space( 7)+'3. ‡  ¤®¯º«­¨²¥«­® § ¤º«¦¨²¥«­® ¯¥­±¨®­­® ®±¨£³°¿¢ ­¥'
  store b_30+b_31+b_32+b_33+b_34 to kast0
  slovom()
  ? space( 7)+'‘³¬  '+str(b_30+b_31+b_32+b_33+b_34,10,j1)+'«¢. '+'‘«®¢®¬: '+ss0+' ‹E‚€ ¨ '+substr(x,N0,2)+' ‘’.'
  ? space( 7)+'4. ‡  ´®­¤ £° ­²¨° ­¨ ¢§¥¬ ­¨¿'
  store b_25 to kast0
  slovom()
  ? space( 7)+'‘³¬  '+str(b_25,10,j1)+'«¢. '+'‘«®¢®¬: '+ss0+' ‹E‚€ ¨ '+substr(x,N0,2)+' ‘’.'
  ?
  ? space(14)+'ˆ§¢¥±²­  ¬¨ ¥ ­ ª § ²¥«­ ²  ®²£®¢®°­®±² ¯® ·«.313 ®² H ª § ²¥«­¨¿ ª®¤¥ª±'+norm0
  ?
  ? space(8)+'„€’€: ...........'+vek0+' £®¤.    „ˆ‘.............../¯¥· ²/'
  ?
  ?
  ?
    pech()
     memowrit('s0002.prn',memoread('s0001.prn')+memoread('s0004.prn'))
                 endif

             case v2=3
                dvzem() ; store 0 to  b_11,b_30,b_50   && sav7
                dopl()   && sav7

             case v2=4


   ramka()
        if .not. file('arhi.dbf')
            @ 10,37 say '‚HˆM€Hˆ… !'   color 'R+/B'
            @ 12,18 say 'M¥­¾²® ¥ ­¥ ° ¡®²­® ¡¥§ ¨­±² «¨° ­® ±·¥²®¢®¤±²¢®'
            return
       inkey(5)
        endif
   @ 2,23 say '‘ — … ’  ‚  „ H €    …  € – ˆ Ÿ'
   @ 3,22 say '-------------------------------------'

                       v3=0
                       @ 10,36 prompt '1. H ·¨±«¥­¨¿'
                       @ 12,36 prompt '2. « ¹ ­¨¿  '
                       menu to v3
     sele 5
     use arhi inde nari
               set filter to substr(papk,1,1)='k'.and.data=data0
               save screen
               go top
               declare fiel[1]
               fiel[1]='dok'
               declare imem[1]
               imem[1]=''
               @  4,18,20,62 box ram1
               @  5,19 clea to 19,61
               @  5,22 say '¯°¥¤¥«¿­¥ £°³¯ ²  ­  ¤®ª³¬¥­² ¶¨¿² '
               @ 19,35 say ' ESC ˆ§µ®¤'
                dbedit( 6,26,16,53,fiel," ",'xxxxxxxxxxxxxxxxxxxxxxxxxx',imem,' ')
                       if lastkey()=27.or.substr(dok,23,4)='    '
                           return
                       endif
       nom1=subs(data0,4,2)+data0+substr(dok,23,4)
       dok2= substr(dok,1,26)
         sele 5
         use arhi inde nari,faki,vidi

       sele 5
       find '&nom1'
        if found()
          skip -1
        endif
        nom2=val(nom)+1
       restore screen
       @  5,19 clea to 19,61
       @  7,28 say '² ­®¬¥° ®¯¥° ¶¨¿ ' get nom2   pict "9999"
       read
            if lastkey()=27
               return
            endif
        nom2=str(val(nom)+1,4)

         store 0 to x610,x602,x603,x604,x700
    *  if file("obap.dbf")
    *          sele 1
    *          use obap inde aobi
    *          find '453   9'                                   && 6 „„‘
    *     if round(ksal,j1) >0
    *        x610=round(ksal,j1)
    *     endif
    *  endif
              dvzem() ; store 0 to  b_11,b_30,b_50   && sav7
              @  3,10 clea to 21,75
          if b_99 = 0 .and. b_99t = 0
              @  9,37 say '‚HˆM€Hˆ… !'   color 'R+/B'
              @ 11,19 say '‡€„š‹†ˆ’…‹H … …„ˆ ‹‡“‚€H…’ H€ ’‚€ M…H'
              @ 13,21 say '„€ ‘… ˆ‡€’ˆ ‚…„M‘’’€ ‘€M H€ …K€H !'
              pauza()
              return
              @  9,18 clea to 13,75
          endif
         clos all
         sele 5
         use arhi inde nari,faki,vidi
         sele 6
         use dobo inde nsdi,dsdi,ds
         sele 7
         use kobo inde nski,dski,ks
         sele 8
         use dpar inde nadi,dpdi,di
         sele 9
         use kpar inde naki,dpki,ki

               do case
                 case v3=1
       @  4,18 clea to 20,62
       @ 23,24 say '°®£° ¬ ²  ° ¡®²¨, ¬®«¿ ¨§· ª ©²¥ !'
         sele 5
     if  sb_9 > 0
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '­ ·. ‡   .zpl......'+data0, data with data0,vek with vek0
         sele 6
         appe blank
         repl nom with nom2, sch with '604',dsto with sb_9, data with data0
         sele 7
         appe blank
         repl nom with nom2, sch with '421',ksto with sb_9, data with data0
         sele 8
         appe blank
         repl nom with nom2, part with '604   1',mk with '«¢', dast with sb_9, data with data0
         nom2=str(val(nom2)+1,4)
     endif
     if  b_11 > 0     &&  „ ­  ±®¡±²¢¥­¨ª 
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '¤®®  ±®«            '+data0, data with data0,vek with vek0
         sele 6
         appe blank
         repl nom with nom2, sch with '469',dsto with b_11, data with data0
         sele 7
         appe blank
         repl nom with nom2, sch with '455',ksto with b_11, data with data0
         sele 9
         appe blank
         repl nom with nom2, part with '455  11',mk with '«¢', kast with b_11, data with data0
         nom2=str(val(nom2)+1,4)
     endif
      *   clos data
     if  b_13+b_14+b_15+b_16+b_26 > 0          &&  ¤®® §  ±/ª  ­  ±®¡±²¢¥­¨ª 
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '¤®®                 '+data0, data with data0,vek with vek0
         sele 6
         appe blank
         repl nom with nom2, sch with '605',dsto with b_13+b_15+b_26, data with data0
         if b_13+b_15 > 0
         appe blank
         repl nom with nom2, sch with '421',dsto with b_14+b_16, data with data0
         endif
         sele 7
         appe blank
         repl nom with nom2, sch with '455',ksto with b_13+b_14+b_15+b_16+b_26, data with data0
         sele 8
         appe blank
         repl nom with nom2, part with '605   1',mk with '«¢', dast with b_13+b_15+b_26, data with data0
         sele 9
         appe blank
         repl nom with nom2, part with '455  13',mk with '«¢', kast with b_13+b_14+b_15+b_16+b_26, data with data0
         nom2=str(val(nom2)+1,4)
     endif
     if  b_30 > 0
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '¤§¯® ±®«            '+data0, data with data0,vek with vek0
         sele 6
         if 0 < b_30
            appe blank
            repl nom with nom2, sch with '469',dsto with b_30, data with data0
         endif
         sele 7
         appe blank
         repl nom with nom2, sch with '455',ksto with b_30, data with data0
         sele 9
         appe blank
         repl nom with nom2, part with '455  30',mk with '«¢', kast with b_30, data with data0
         nom2=str(val(nom2)+1,4)
     endif
     if  b_31+b_32 > 0
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '¤§¯®                '+data0, data with data0,vek with vek0
         sele 6
         if 0 < b_31
         appe blank
         repl nom with nom2, sch with '605',dsto with b_31, data with data0
         endif
         if 0 < b_32
         appe blank
         repl nom with nom2, sch with '421',dsto with b_32, data with data0
         endif
         sele 7
         appe blank
         repl nom with nom2, sch with '455',ksto with b_31+b_32, data with data0
         sele 8
         if 0 < b_31
         appe blank
         repl nom with nom2, part with '605   1',mk with '«¢', dast with b_31, data with data0
         endif
         sele 9
         appe blank
         repl nom with nom2, part with '455  31',mk with '«¢', kast with b_31+b_32, data with data0
         nom2=str(val(nom2)+1,4)
     endif
     if  b_33+b_34 > 0
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '¤§¯® ¯°®´. ´®­¤     '+data0, data with data0,vek with vek0
         sele 6
         appe blank
         repl nom with nom2, sch with '605',dsto with b_33+b_34, data with data0
         sele 7
         appe blank
         repl nom with nom2, sch with '455',ksto with b_33+b_34, data with data0
         sele 8
         appe blank
         repl nom with nom2, part with '605   1',mk with '«¢', dast with b_33+b_34, data with data0
         sele 9
         appe blank
         repl nom with nom2, part with '455  33',mk with '«¢', kast with b_33+b_34, data with data0
         nom2=str(val(nom2)+1,4)
     endif
     if  b_42+b_42t > 0
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '¤®® ¢/³ ¡®«­¨·¥­    '+data0, data with data0,vek with vek0
         sele 6
         appe blank
         repl nom with nom2, sch with '605', dsto with b_42+b_42t, data with data0
         sele 7
         appe blank
         repl nom with nom2, sch with '455',ksto with b_42+b_42t, data with data0
         sele 9
         appe blank
         repl nom with nom2, part with '455  42',mk with '«¢', kast with b_42+b_42t, data with data0
         nom2=str(val(nom2)+1,4)
     endif
     if  b_50 > 0
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '­§ª® ±®«            '+data0, data with data0,vek with vek0
         sele 6
         appe blank
         repl nom with nom2, sch with '469',dsto with b_50, data with data0
         sele 7
         appe blank
         repl nom with nom2, sch with '455',ksto with b_50, data with data0
         sele 9
         appe blank
         repl nom with nom2, part with '455  50',mk with '«¢', kast with b_50, data with data0
         nom2=str(val(nom2)+1,4)
     endif
     if  b_51 > 0
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '­§ª®                '+data0, data with data0,vek with vek0
         sele 6
         appe blank
         repl nom with nom2, sch with '605',dsto with b_51, data with data0
         if 0 < b_52
           appe blank
           repl nom with nom2, sch with '421',dsto with b_52, data with data0
         endif
         sele 7
         appe blank
         repl nom with nom2, sch with '455',ksto with b_51+b_52, data with data0
         sele 8
         appe blank
         repl nom with nom2, part with '605   1',mk with '«¢', dast with b_51, data with data0
         sele 9
         appe blank
         repl nom with nom2, part with '455  51',mk with '«¢', kast with b_51+b_52, data with data0
         nom2=str(val(nom2)+1,4)
     endif
     if  b_52+bT_53 > 0
         nom2=str(val(nom2)+1,4)
     endif
     if  b_94 > 0
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '¤®¤                 '+data0, data with data0,vek with vek0
         sele 6
         appe blank
         repl nom with nom2, sch with '421',dsto with b_94, data with data0
         sele 7
         appe blank
         repl nom with nom2, sch with '454',ksto with b_94, data with data0
         sele 9
         appe blank
         repl nom with nom2, part with '454  94',mk with '«¢', kast with b_94, data with data0
         nom2=str(val(nom2)+1,4)
     endif
     if  u_3 > 0
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '¡®«­¨·­¨            '+data0, data with data0,vek with vek0
         sele 6
         appe blank
         repl nom with nom2, sch with '455',dsto with u_3, data with data0
         sele 7
         appe blank
         repl nom with nom2, sch with '421',ksto with u_3, data with data0
         sele 8
         appe blank
         repl nom with nom2, part with '455 201',mk with '«¢', dast with u_3, data with data0
         nom2=str(val(nom2)+1,4)
     endif
     if  u_4+ut_4 > 0
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '¤¥²±ª¨              '+data0, data with data0,vek with vek0
         sele 6
         appe blank
         repl nom with nom2, sch with '455',dsto with u_4+ut_4, data with data0
         sele 7
         appe blank
         repl nom with nom2, sch with '421',ksto with u_4, data with data0
         if 0 < ut_4
            appe blank
            repl nom with nom2, sch with '469',ksto with ut_4, data with data0
         endif
         sele 8
         appe blank
         repl nom with nom2, part with '455 207',mk with '«¢', dast with u_4+ut_4, data with data0
         nom2=str(val(nom2)+1,4)
     endif
     if  u_5 > 0
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '3 ¤­¨ ¡®«­¨·¥­      '+data0, data with data0,vek with vek0
         sele 6
         appe blank
         repl nom with nom2, sch with '455',dsto with u_5, data with data0
         sele 7
         appe blank
         repl nom with nom2, sch with '421',ksto with u_5, data with data0
         sele 8
         appe blank
         repl nom with nom2, part with '455 205',mk with '«¢', dast with u_5, data with data0
         nom2=str(val(nom2)+1,4)
     endif
     if  u_7 > 0
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '¡°¥¬¥­®±²           '+data0, data with data0,vek with vek0
         sele 6
         appe blank
         repl nom with nom2, sch with '455',dsto with u_7, data with data0
         sele 7
         appe blank
         repl nom with nom2, sch with '421',ksto with u_7, data with data0
         sele 8
         appe blank
         repl nom with nom2, part with '455 204',mk with '«¢', dast with u_7, data with data0
         nom2=str(val(nom2)+1,4)
     endif
     if  b_99 > 0
         sele 5
         appe blank
         repl nom with nom2,papk with '  0',dok with '¨§¯«. ‡            '+data0, data with data0,vek with vek0
         sele 6
         appe blank
         repl nom with nom2, sch with '421', dsto with b_99, data with data0
         sele 7
         appe blank
         repl nom with nom2, sch with '501',ksto with b_99, data with data0
         nom2=str(val(nom2)+1,4)
     endif
                 case v3=2
          @  4,18 clea to 20,62
             part0=1
              @  4,26 say '‚º¢¥¤¥²¥ ¯ °²¨¤¥­ ¯® 503' get part0 pict "9999"
              read
                if lastkey()=27
                   return
                endif
    b_13=b_13+b_14+b_15+b_16+b_28
    b_31=b_31+b_32
    b_33=b_33+b_34
    b_40=b_40+b_41
    b_42=b_42+b_42t
    u_4=u_4+ut_4
  @  6,28 say '‹€™€HˆŸ                               ’…ƒ‹…HˆŸ'
  @  8, 2 say '11  „  ‘‹               ' get b_11 pict "999999999.99"
  @  9, 2 say '13  „                    ' get b_13 pict "999999999.99"
  @ 10, 2 say '25  ƒ€€H’ˆ€Hˆ ‚‡…M€HˆŸ   ' get b_25 pict "999999999.99"
  @ 11, 2 say '26  ’“„‚€ ‡‹‹“K€      ' get b_26 pict "999999999.99"
  @ 12, 2 say '31  „‡ IIIª.             ' get b_31 pict "999999999.99"
  @ 13, 2 say '33  „‡ II ª.             ' get b_33 pict "999999999.99"
  @ 14, 2 say '40  ‘–ˆ€‹Hˆ €‡•„ˆ        ' get b_40 pict "999999999.99"
  @ 15, 2 say '42  „ ‚/“ ‹Hˆ—…H       ' get b_42 pict "999999999.99"
  @ 16, 2 say '50  H‡Š ‘‹               ' get b_50 pict "999999999.99"
  @ 17, 2 say '51  H‡Š ‡€ ‘/K€ H€ ‘‘’‚.' get b_51 pict "999999999.99"
  @ 18, 2 say '52  H‡Š ‡€ ‘/K€ H€ €’H.' get b_52 pict "999999999.99"
  @ 19, 2 say '94  „„                    ' get b_94 pict "999999999.99"
  @  8,44 say '201 ¡®«­¨·¥­         ' get u_3  pict "999999999.99"
  @ 14,44 say '610 „„‘              ' get x610 pict "999999999.99"
  @ 15,44 say '602 „€HšK ™ˆH€     ' get x602 pict "999999999.99"
  @ 16,44 say '603 „€HšŠ …—€‹€    ' get x603 pict "999999999.99"
  @ 17,44 say '604 „-K …—. ET      ' get x604 pict "999999999.99"
  @ 18,44 say '603 ’º°£. °¥£¨±²º°   ' get x700 pict "999999999.99"
    read
                if lastkey()=27
                   return
                endif
    b_455=b_11+b_13+b_25+b_26+b_30+b_31+b_50+b_51+b_52
    dsto1=u_4+ut_4+u_5+u_6+u_7
    ksto0=b_11+b_13+b_25+b_26+b_30+b_31+b_50+b_51+b_52+b_94+x603+x610+x602+x603+x604+x700
    if ksto0 <> 0
       sele 5
         appe blank
         repl nom with nom2, papk with '  0',dok with data0, data with data0,vek with vek0
         sele 6
       if 0 < b_455
         appe blank
         repl nom with nom2, sch with '455', dsto with b_455, data with data0
       endif
       if 0 < b_94
         appe blank
         repl nom with nom2, sch with '454', dsto with b_94, data with data0
       endif
       if 0 < x610
         appe blank
         repl nom with nom2, sch with '453', dsto with x610, data with data0
       endif
       if 0 < x602
         appe blank
         repl nom with nom2, sch with '451', dsto with x602, data with data0
       endif
       if 0 < x603
         appe blank
         repl nom with nom2, sch with '452', dsto with x603, data with data0
       endif
       if 0 < x604
         appe blank
         repl nom with nom2, sch with '452', dsto with x604, data with data0
       endif
       if 0 < x700
         appe blank
         repl nom with nom2, sch with '609', dsto with x700, data with data0
       endif
         sele 8
         if 0 < b_11
            appe blank
            repl nom with nom2, part with '455  11',mk with '«¢', dast with b_11, data with data0
         endif
         if 0 < b_13
            appe blank
            repl nom with nom2, part with '455  13',mk with '«¢', dast with b_13+b_26, data with data0
         endif
         if 0 < b_25
            appe blank
            repl nom with nom2, part with '455  25',mk with '«¢', dast with b_25, data with data0
         endif
         if 0 < b_30
            appe blank
            repl nom with nom2, part with '455  30',mk with '«¢', dast with b_30, data with data0
         endif
         if 0 < b_31
            appe blank
            repl nom with nom2, part with '455  31',mk with '«¢', dast with b_31, data with data0
         endif
         if 0 < b_33
            appe blank
            repl nom with nom2, part with '455  33',mk with '«¢', dast with b_33, data with data0
         endif
         if 0 < b_50
            appe blank
            repl nom with nom2, part with '455  50',mk with '«¢', dast with b_50, data with data0
         endif
         if 0 < b_51
            appe blank
            repl nom with nom2, part with '455  51',mk with '«¢', dast with b_51+b_52, data with data0
         endif
         if 0 < b_94
            appe blank
            repl nom with nom2, part with '454  94',mk with '«¢', dast with b_94, data with data0
         endif
         if 0 < x610
            appe blank
            repl nom with nom2, part with '453   9',mk with '«¢', dast with x610, data with data0
         endif
         if 0 < x602
            appe blank
            repl nom with nom2, part with '451   1',mk with '«¢', dast with x602, data with data0
         endif
         if 0 < x603
            appe blank
            repl nom with nom2, part with '452   1',mk with '«¢', dast with x603, data with data0
         endif
         if 0 < x604
            appe blank
            repl nom with nom2, part with '452   2',mk with '«¢', dast with x604, data with data0
         endif
         if 0 < x700
            appe blank
            repl nom with nom2, part with '609   1',mk with '«¢', dast with x700, data with data0
         endif
         sele 7
         appe blank
         repl nom with nom2, sch with '503',ksto with ksto0, data with data0
         sele 9
         appe blank
         repl nom with nom2, part with '503'+str(part0,4),mk with '«¢', kast with ksto0, data with data0
    endif
    if 0 < u_4+ut_4+u_5+u_6+u_7
         nom2=str(val(nom2)+1,4)
         sele 5
         appe blank
         repl nom with nom2, papk with '  0',dok with data0, data with data0,vek with vek0
         sele 6
         appe blank
         repl nom with nom2, sch with '503', dsto with dsto1, data with data0
         sele 8
         appe blank
         repl nom with nom2, part with '503   1',mk with '«¢', dast with dsto1, data with data0
         sele 7
         appe blank
         repl nom with nom2, sch with '455',ksto with dsto1, data with data0
         sele 9
         if 0 < u_3
         appe blank
         repl nom with nom2, part with '455 201',mk with '«¢', kast with u_3, data with data0
         endif
         if 0 < u_7
         appe blank
         repl nom with nom2, part with '455 204',mk with '«¢', kast with u_7, data with data0
         endif
         if 0 < u_5
         appe blank
         repl nom with nom2, part with '455 205',mk with '«¢', kast with u_5, data with data0
         endif
         if 0 < u_6
         appe blank
       * repl nom with nom2, part with '455 206',mk with '«¢', kast with u_5, data with data0
         endif
         if 0 < u_4+ut_4
         appe blank
         repl nom with nom2, part with '455 207',mk with '«¢', kast with u_4+ut_4, data with data0
         endif
    endif
               endcase
         return
          case v2=5
               do rekapi &&     fis5

          case v2=6

          *    dospr()

                  ramka()
                      @ 2,33 say 'M…‘…—H€ ‘€‚Š€'
                      @ 3,32 say '-----------------'

                      data1=subs(data0,1,2)+subs(data0,4,2)
                      disgod0='\DISC\god&dt0\zapl\&go0\ZPL&data1..pdf'
                      v3=0
                    if pake='CHEF'
                      @ 11, 4 say '°®¶¥¤³° ²  ° ¡®²® ¯¥°´¥ª²­® ¨ ¬¥­¾²¿ 3/1,2,3 ±  ­ ¯º«­® ¨§«¨¸­¨.'
                      @ 12, 4 say 'H  ²®¢  ¬¿±²® ¢±¨·ª¨ ±¯° ¢ª¨ ¬®£ ² ¤  ±¥ °¥¤ ª²¨° ² ¨ ®²­®¢® ¯¥· ² ².'
                      @ 14, 4 say 'Aª® ¯°®¶¥¤³° ²  ­¥ ° ¡®²¨ ²® ¥ §¹®²®:'
                      @ 15, 4 say '1. H¥ e § ¤ ¤¥­  ®¯¶¨¿² -> Zan Image-> Settings-> General-> Generate a '
                      @ 16, 4 say 'sentinel file after printing finishes  '
                      @ 17, 4 say '2. ‚ fis5.prg -> func zanvi -> °¥¤  1323 '
                      @ 18, 4 say '®¿¢¿¢  ±¥ Program too big to fit in memory¨ ­¥ ¯° ¢¨ xcopy ®² IZKL ¯ ¯ª '
                      @ 19, 4 say '­  *.app  ´ ©«®¢¥, ­¥ §­ ¬ ª®¥ ¯°¥¤¨§¢¨ª¢  ² §¨ £°¥¸ª .  ³±­¨ aaa.bat   '
                    endif

                      @  5,25 prompt '1. ˆ§° ¡®²¢ ­¥ ¬¥±¥·­  ±¯° ¢ª '
                      @  7,25 prompt '2. „®¡ ¢¿­¥ °®²ª®« ®¡°.1 / ®¡°.6'
                      menu to v3
                      if lastkey()=27
                            exit
                      endif
      do case  //  mesechna sprawka
         case v3=1

             @ 9,1 clea to 21,78
             @  9,37 say '‚HˆM€Hˆ… !'  color 'R+/B'
             @ 11,19 say '’…—€’‚€H…’ H€ ‚…„M‘’’€ ‘‹…„‚€ „€ ‘… H€€‚ˆ'
             @ 13,19 say ' H€ …—€’ ‘ –ˆŸ’€ -> F4-°¥ªº±­ ² ¯¥· ²!'
             inkey(5)

             vedomost()   //   fis3

               if file ("p*.prn")=.T.
                  ! del p*.prn
               endif
            if ll14='­'
              b3=0
              do while .t.
                b3=b3+1
                save_0='s'+nulb3()+'.prn'
                save_1='p'+nulb3()+'.prn'
                if file ("&save_0")
                  copy file &save_0 to &save_1
                else
                   exit
                endif
              enddo
             else
                @ 3,1 clea to 21,78
                @  9,37 say '‚HˆM€Hˆ… !'  color 'R+/B'
                @ 11,17 say 'M‹Ÿ, ‡€—H…’… –…„“€’€ ’ H€—€‹ ˆ ‡€š‹†ˆ’…H'
                @ 13,17 say '‡€„€‰’… H€ …—€’ ‘ –ˆŸ’€ -> F4-°¥ªº±­ ² ¯¥· ²!'
                inkey(10)
                return
            endif

             @ 9,1 clea to 21,78
             @ 11,15 say '’…—€’‚€H…’ H€ ‘‹…„€‚™ˆ’… ‘€‚Šˆ ‘€M H€ …Š€H.'
             inkey(3)

             budzhet()  // fis3

            if file ("s0001.prn")
             copy file s0001.prn to p4.prn
            endif

            dopl()

            if file ("s0001.prn")
              copy file s0001.prn to p5.prn
            endif
            plateg()

            set prin to
            b4=b4-1
            save_1='p'+nulb4()+'.prn'
            if file ("p6.prn")
                copy file p6.prn to &save_1
            endif
            save_1='p'+nulb4()+'.prn'
            if file ("p7.prn")
                copy file p7.prn to &save_1
            endif
              *          set cons on
              b3=1
              b4=0
             do while .t.
               save_0='p'+nulb4()+'.prn'
               save_1='s'+nulb3()+'.prn'
               if file("&save_0")
                  copy file &save_0 to &save_1
                  b3=b3+1
               else
                  exit
               endif
             enddo

               if file ("p*.prn")=.T.
                  ! del p*.prn
               endif
       disc0='\disc\god'+dt0+'\zapl\'+go0
       b2=5 // !!!!!!!  trqbwa de e s 1 poveche ot broya na s????.prn filovete
   *********************  osmicniite.prn / osmicniite.prn faylove ****************
      *** zkpo ne eme na fail a e noseshta /mezhdinna promenliva
      *** ako se polzuva za pchatne za drugo ne e neobhodimo da se promenq
               @ 2,26 say '’…—€’‚€H… H€ M…‘…—H€’€ ‘€‚Š€'
               @ 3,25 say '----------------------------------'
      l0=2
    * @ 2, 1 clea to 21,75
      @ 23,15 say space(51)
      @ 23,20 say '’…—€’‚€H…'
      @ 23,33 prompt '…‡ ‹€’…†Hˆ'
      @ 23,47 prompt '‘ ‹€’…†Hˆ'
      menu to l0
      @ 23,15 say space(51)
      if lastkey()=27
         exit
      endif

             b4=0
             @ 23,15 say '°®¶¥¤³° ²  ¹¥ ¯°®¤º«¦¨ ®ª®«® 1 ¬¨­³²  ¨ 40 ±¥ª³­¤¨'
                inkey(2)
             raboti(sek0:=100)
             do while .t.
                timecount(sek2:=1)
               save_1='s'+nulb4()+'.prn'
               if file("&save_1")
                 loop
               else
                  exit
               endif
             enddo

                if l0=1
                  store b4-2 to b2
                else
                  store b4-1 to b2
                endif
         if file("&disc_1\zan\izkl\app.ini")
               zanvi(zan0:='izkl')
         endif
                if file("&disc_0\zan.pdf")
                   dele file "&disc_0\zan.pdf"
                endif
                if file("zapl.pdf")
                   dele file zapl.pdf
                endif

          for i0=1  to b2   && prashta s0001.prn v \hlp za da se otpechata v .pdf
              timecount(sek2:=1)
                 save_0='s'+nulb3()+'.prn'
                 b3=i0
              save_0='s'+nulb3()+'.prn'

              if file("&save_0") &&  otbroyava i s0???.prn  failovete
                  copy file "&save_0" to "\disc\&save_0"

              do sentinel

                     if .not. file("zapl.pdf")
                       timecount(sek2:=5)
                  *    inkey(5)  //  ne pipay i ne go maha neka da se vigda
                       copy file "&disc_0\zan.pdf" to zapl.pdf
                       timecount(sek2:=4)
                  *    inkey(4) // ok!!! ne pipay
                     else
                        rename zapl.pdf to aaa.pdf
                        timecount(sek2:=4)
                  *     inkey(4)
                        ! &disc_1\exe\pdf\pdftk.exe aaa.pdf "&disc_0\zan.pdf" output zapl.pdf
                         timecount(sek2:=5)
                  *     inkey(5)
                        dele file "&disc_0\zan.pdf"
                        dele file aaa.pdf
                  endif
              endif
          next
                   @ 23,15 say space(51)
                *  timecount(sek2:=5)  ;  inkey(5)
                   copy file zapl.pdf to &disgod0
                     if file("zapl.pdf")
                        dele file zapl.pdf
                     endif
        if file("&disgod0")
          zvan()
          ! cmd /c start &pdfxc_0  &disgod0
       *  timecount(sek2:=6)  ;  inkey(6)
       *  inkey(6)
          @ 23+ml0,15 say '              ” ©«º² ­¥ ¥ ­ ¬¥°¥­.                 '
          timecount(sek2:=4)
       *  inkey(4)
          @ 23+ml0,15 say '              F7 - ·¥²¥ ¤®ª³¬¥­²                   '
        endif
       if file("&disc_1\zan\vkl\app.ini")
          zanvi(zan0:='vkl')
       endif
                 *  ! del zan.*
                   dele file zapl.pdf
                   if file("p*.prn")
                      ! del p*.prn
                   endif

                   if file("&disc_0\vdm*.tmp")=.T.
                      disc1=subs(disc_0,1,5)
                      !del &disc1\vdm*.tmp
                   endif
         case v3=2
                   @ 4,1 clea to 21,78
                   @ 2,30 say '„€‚Ÿ ’Š‹ .1 / .6'
                   @ 3,29 say '------------------------------'
     @  8+ml0,15 say '          °®£° ¬ ²  ¨§°¡®²¢  ZPLxxxx.PDF          '
            if file("&disc_0\zan.pdf")

               if file("&disgod0")=.T.
                     copy file &disgod0 to aaa.pdf

                      ! &disc_1\exe\pdf\pdftk.exe aaa.pdf "&disc_0\zan.pdf"  output &disgod0
               *      inkey(0)
                      erase aaa.pdf
               else
                   @ 4,24 clea to 21,75
                   @ 10,37 say '‚HˆM€Hˆ… !'  color 'R+/B'
                   @ 12,19 say '‡€„š‹†ˆ’…‹H … …„ˆ ‹‡“‚€H…’ H€ ’‚€ M…H'
                   @ 13,25 say '„€ ‘… ˆ‡€’ˆ M…‘…—H€’€ ‘€‚Š€ !'
                   pauza()
                   return

               endif
               ! cmd /c start &pdfxc_0  &disgod0
            else
               @ 4,24 clea to 21,75
               @ 11,20 say '‚HˆM€Hˆ…!'  color 'R+/B'
               @ 11,30 say '’Š‹ .1/.6 H… … ‘‚€‹…H!'
               pauza()
               return
            endif
      endcase  //  mesechna sprawka
          endcase
        *       inkey(0)
       set cent off
       restore screen
     enddo
                            func raboti


     @ 23+ml0,15 say '       °®£° ¬ ²  ° ¡®²¨, ¬®«¿ ¨§· ª ©²¥ ...       '
          sec0=round(seconds(),0)
      if 0 < sek0
         sekundi0='sek0-(round(seconds(),0)-sec0)'  // obraton broene
      else
         sekundi0='round(seconds(),0)-sec0'  // broene nagore
      endif
                   timecount(sek2:=1)
                            return

                             return // raboti

                       proc vedomost  //  vedomost za zaptai
                      ramka()
          if file("harved.mem")
              restore from harved  additive
           else
              save all like x_* to harved
           endif
          if file("namhar.mem")
              restore from namhar  additive
           else
              save all like y_* to namhar
           endif
           store subs(data0,1,2)+subs(data0,4,2) to data1
                      set key -2 to harve
                      @  2,29 say '‚…„M‘’  ‡€  ‡€‹€’ˆ '
                      @  3,28 say '------------------------'
                      @ 23,23 say 'F3 - ®¯°¥¤¥«¿ µ-ª¨²¥ ¢º¢ ¢¥¤®¬®±²² '
                      @ 10,28 say '”€‰‹ ‡€‹€’ˆ ’…K“™ M…‘…–'
                      @ 12,25 say '\DISC\god&dt0\ZAPL\&go0\ZPL&data1..pdf'
                      @ 14,23 say 'H ²¨±­¥²¥ ª« ¢¨¸ §  ¤  ¯°®¤º«¦¨²¥...'
                      pauza()
                       if lastkey()=27
                           return
                       endif
                      set key -2 to
              dvzem()    && sav7
                      @ 2,24 clea to 21,75
                      @  2,29 say '‚…„M‘’  ‡€  ‡€‹€’ˆ '
                      @  3,28 say '------------------------'

             sele 3
             use &disc_1\fish\nome inde &disc_1\fish\nosi
             mego()
             set order to 1
             set filter to &fimes0  .and. &fimem0

             sdn3=vek0+data0+'      '+'  1'
             find '&sdn3'
             x1=stoi  && °®© ° ¡®²­¨ ¤­¨ ²¥ª. ¬¥±¥¶
             sele 1
             use spis inde nomi
             set filter to (nom_1<=val(nom).and.val(nom)<=nom_2)
             go top
             i=' '
      izrab()
        if lastkey()=27
               return
        endif

              ll0='1'
                 ?? 'OLP20A65'
              ?
              ?
              set marg to 1
           if ekpr0=2
              b1=44
           endif
           do nammese
   ? space(71)+'  €  ‡    ‹  €  ™  €  ’  …  ‹  H  €          ‚  …  „    M    ‘  ’  '
   ?
   ?space(78)+' ­  '+ltrim(trim(fir))+'   §  ¬¥±¥¶ '+namme0+' '+vek0+' £®¤.'
   ? repl('-',230)
   ? ' •                                               ‚° ²°    ‚º§­               „®¯« ¹ ­¨¿                  ‚±¨·ª®  ‡  ±¬¥²ª  ­  ° ¡®².       ‚±¨·ª®   ‡  ‚   „      „‹.   ‘³¬      „  „             “¤°º¦ª¨       ‚±¨·ª®    ‘³¬  '
   ? ' ¯®      ˆ¬¥, ¯°¥§¨¬¥, ´ ¬¨«¨¿     „«º¦­®±²      ¥  ¤­¨    £° ¦¤ '+y_0+i+y_2+i+y_4+i+y_6+i+y_8+'           '+y_10+i+y_12+i+y_14+'                            „     ¨§·¨±«.        '+y_16+i+'                              § '  &&  ®¤¯¨±'
   ? '°¥¤                                              ¬¥        ¥­¨¥  '+y_1+i+y_3+i+y_5+i+y_7+i+y_9+'           '+y_11+i+y_13+i+y_15+'                                    ­  „„         '+y_17+i+'                  ³¤°º¦.   ¯®«³·.'
   ? repl('-',230)


   store 0 to b0,sb_9,b_7,sb_1,sb_10,b_94,b_52,b_5253,b_14,b_30,b_31,b_32,b_71,;
   b_95,b_38,b_99,b_70,u_0,u_1,u_2,u_3 ,u_4,u_5,u_6,u_7,u_8 ,u_9,u_10,;
   u_00,u_01,u_02,u_03,u_04,u_05,u_06,u_07,u_08 ,u_09,u_010,br3,x201,x207,x207
            b0=10
            j0=8
            j2=1
        do while .not. eof()
      store 0 to sb9,b7,sb1,sb10,b52,b53,b14,b32,b71,b95,b94,b38,b99,b110,b122;
             ,u0,u1,u2,u3 ,u4,u5,u6,u7,u8 ,u9,u10,x201,x205,x204,x207
        nom0=nom
        name0=name
        egn0=egn
        td_0=td
        rabo0=rabo
        bsp0=bs
        dns0=vek0+data0+nom+' 99'
    if .not. td_0='’'
        if l3='¬'
             sele 2
        else
             sele 4
        endif
                dns0=vek0+data0+nom0+'  7'
                find '&dns0'
                  if found()
                    b7=round(stoi,j1)
                    b_7=b_7+round(suma,j1)
                    pnv0=str(suma,1)
                  endif
                dns0=vek0+data0+nom0+'  8'
                find '&dns0'
                if found()
                   sb1=round(suma,j1)
                   sb_1=sb_1+round(suma,j1)
                endif
                dns0=vek0+data0+nom0+'  9'
                find '&dns0'
                if found()
                   sb9=round(suma,j1)
                   sb_9=sb_9+round(suma,j1)
                endif
                dns0=vek0+data0+nom0+' 10'
                find '&dns0'
                if found()
                   sb10=round(suma,j1)
                   sb_10=sb_10+round(suma,j1)
                endif
                dns0=vek0+data0+nom0+' 52'
                find '&dns0'
                if found()
                   b52=round(suma,j1)
                   b_52=b_52+round(suma,j1)
                endif
                dns0=vek0+data0+nom0+' 14'
                find '&dns0'
                if found()
                   b14=round(suma,j1)
                   b_14=b_14+round(suma,j1)
                endif

                dns0=vek0+data0+nom0+' 16'
                find '&dns0'
                if found()
                   b14=round(suma,j1)
                   b_14=b_14+round(suma,j1)
                endif

                dns0=vek0+data0+nom0+' 32'
                find '&dns0'
                if found()
                   b32=round(suma,j1)
                   b_32=b_32+round(suma,j1)
                endif

                dns0=vek0+data0+nom0+' 41'
                find '&dns0'
                if found()
                   b14=b14+round(suma,j1)     &&  ¢¿°­®
                   b_14=b_14+round(suma,j1)   &&  ¢¿°­®
                endif
                dns0=vek0+data0+nom0+' 95'
                find '&dns0'
                if found()
                   b95=round(suma,j1)
                   b_95=b_95+round(suma,j1)
                endif
                dns0=vek0+data0+nom0+' 94'
                find '&dns0'
                if found()
                   b94=round(suma,j1)
                   b_94=b_94+round(suma,j1)
                endif
                dns0=vek0+data0+nom0+' 99'
                find '&dns0'
                if found()
                   b99=round(suma,j1)
                   b_99=b_99+round(suma,j1)
                endif
                dns0=vek0+data0+nom0+'110'
                find '&dns0'
                if found()
                   b110=stoi
                endif
                dns0=vek0+data0+nom0+'122'
                find '&dns0'
                if found()
                   b122=suma
                endif

                dns0=vek0+data0+nom0+'160'
                find '&dns0'
                if found()
                   if td_0='ƒ'
                      sb10=sb10-round(suma,j1)
                      sb_10=sb_10+round(suma,j1)
                   endif
                endif
               br0=0
               br00=9
               br1='0'
               br11=0
               br2='0'
               do while br0<110
                 br2=ltrim(str(br0,3))
                 dns0=vek0+data0+nom0+x_&br2
                 find '&dns0'
                    if found()
                          u&br1=u&br1+round(suma,j1)
                          u_&br1=u_&br1+round(suma,j1)   &&   §  ¢±¨·ª¨ ®±² ­¨«¨ ±¯° ¢ª¨
                       if  td_0='T'
                          u_0&br1=u_0&br1+round(suma,j1)  &&  §  ¢¥¤®¬®±²
                       endif
               do case
                  case  sch='151'.or.sch='201'
                        x201=x201+round(stoi,3)
               endcase
                    endif
                            if br0=br00
                                br00=br00+10
                                br11=br11+1
                                br1=ltrim(str(br11,2))
                            endif
               br0=br0+1
               enddo
           if sb10<>0.or.0<b110.or.0<b122.or.0<x201.or.0<x205
                                && !!  ³±«®¢¨¿ §  ¢ª«. ¢º¢ ¢¥¤®¬.
                  if 0 < sb1
                    sb1=str(sb1,j0,j1)
                  else
                    sb1=space(j0)
                  endif
                  if 0 < u0
                    u0=str(u0,j0-j2,j1)
                  else
                    u0=space(j0-j2)
                  endif
                  if 0 < u1
                    u1=str(u1,j0-j2,j1)
                  else
                    u1=space(j0-j2)
                  endif
                  if 0 < u2
                    u2=str(u2,j0-j2,j1)
                  else
                    u2=space(j0-j2)
                  endif
                  if 0 < sb9
                    sb9=str(sb9,j0,j1)
                  else
                    sb9=space(j0)
                  endif
                  if 0 < u3
                    u3=str(u3,j0-j2,j1)
                  else
                    u3=space(j0-j2)
                  endif
                  if 0 < u4
                    u4=str(u4,j0-j2,j1)
                  else
                    u4=space(j0-j2)
                  endif
                  if 0 < u5
                    u5=str(u5,j0-j2,j1)
                  else
                    u5=space(j0-j2)
                  endif
                  if 0 < u6
                    u6=str(u6,j0-j2,j1)
                  else
                    u6=space(j0-j2)
                  endif
                  if 0 < u7
                    u7=str(u7,j0-j2,j1)
                  else
                    u7=space(j0-j2)
                  endif
                  if 0 < sb10
                    sb10=str(sb10,j0,j1)
                  else
                    sb10=space(j0-j2)
                  endif
                  if 0 < b52
                    b52=str(b52,j0-j2,j1)
                  else
                    b52=space(j0-j2)
                  endif
                  if 0 < b53
                    b53=str(b53,j0-j2,j1)
                  else
                    b53=space(j0-j2)
                  endif
                  if 0 < val(b52)+val(b53)
                    b5253=str(val(b52)+val(b53),j0-j2,j1)
                  else
                    b5253=space(j0-j2)
                  endif
                  if 0 < b14
                    b14=str(b14,j0-j2,j1)
                  else
                    b14=space(j0-j2)
                  endif
                  if 0 < b32
                    b32=str(b32,j0-j2,j1)
                  else
                    b32=space(j0-j2)
                  endif
                  if 0 < b71
                    b71=str(b71,j0-j2,j1)
                  else
                    b71=space(j0-j2)
                  endif
                  if 0 < b95
                     do case
                        case subs(data0,4,2)='99'
                             b95=space(j0)
                     other
                             b95=str(b95,j0,j1)
                     endcase
                  else
                    b95=space(j0)
                  endif
                  if 0 < b94
                    b94=str(b94,j0-j2,j1)
                  else
                    b94=space(j0-j2)
                  endif
                  if 0 < u8
                    u8=str(u8,j0-j2,j1)
                  else
                    u8=space(j0-j2)
                  endif
                  if 0 < u9
                    u9=str(u9,j0-j2,j1)
                  else
                    u9=space(j0-j2)
                  endif
                  if 0 < u10
                    u10=str(u10,j0-j2,j1)
                  else
                    u10=space(j0-j2)
                  endif
                  if 0 < val(sb10)
                    b99=str(b99,j0,j1)
                    b38=str(val(sb10)-val(b99),j0,j1)
                  else
                    b99=space(j0)
                    b38=space(j0)
                  endif
               if subs(data0,4,2)='99'
                    b38=space(j0)
               endif
           do case
              case subs(data0,4,2)='99'
? substr(nom0,4,3)+i+name0+i+rabo0+i+pnv0+i+str(b7,3)+i+sb1+i+u0+i+u1+i+u2+i+u3+i+u4+i+sb9+i+;
   u5+i+u6+i+u7+i+sb10+i+b5253+i+b14+i+i+b71+i+b95+i+b94+i+u8+i+u9+i+u10+i+b38+i+b99
              case subs(data0,4,2)='00'.or.subs(data0,4,2)='01'
? substr(nom0,4,3)+i+name0+i+rabo0+i+pnv0+i+str(b7,3)+i+sb1+i+u0+i+u1+i+u2+i+u3+i+u4+i+sb9+i+;
   u5+i+u6+i+u7+i+sb10+i+b5253+i+b14+i+i+b71+i+b95+i+b94+i+u8+i+u9+i+u10+i+b38+i+b99
               other
   if .not. file("&disc_1\job\win")
? substr(nom0,4,3)+i+name0+i+rabo0+i+pnv0+i+str(b7,3)+i+sb1+i+u0+i+u1+i+u2+i+u3+i+u4+i+sb9+i+;
   u5+i+u6+i+u7+i+sb10+i+b5253+i+b14+i+i+b32+i+b95+i+b94+i+u8+i+u9+i+u10+i+b38+i+b99
   else
? substr(nom0,4,3)+i+name0+i+rabo0+i+pnv0+i+str(b7,3)+i+sb1+i+u0+i+u1+i+u2+i+u3+i+u4+i+sb9+i+;
   u5+i+u6+i+sb10+i+b5253+i+b14+i+i+b32+i+b95+i+b94+i+u8+i+i+b38+i+b99
   endif
           endcase
?
     b0=b0+1
     spri()
        if  b0=0   && .and.ekpr0=2
            * if vprn0=2
            *    ?? ''+'M'+sbit0
            * else
                 ?? 'OLP20A65'
            * endif
        endif
    endif
           endif
        sele 1
                  if .not. eof()
                       skip
                  endif
        enddo
   if .not. file("&disc_1\job\win")
      ? repl('-',230)
   else
      ? repl('-',207)
   endif
       if 0 < sb_1
         sb_1=str(sb_1,j0,j1)
       else
         sb_1=space(j0)
       endif
       if 0 < u_0
         u_0=str(u_0,j0-j2,j1)
       else
         u_0=space(j0-j2)
       endif
       if 0 < u_1
         u_1=str(u_1,j0-j2,j1)
       else
         u_1=space(j0-j2)
       endif
       if 0 < u_2
         u_2=str(u_2,j0-j2,j1)
       else
         u_2=space(j0-j2)
       endif
       if 0 < sb_9
         sb_9=str(sb_9,j0,j1)
       else
         sb_9=space(j0)
       endif
       if 0 < u_3
         u_03=str(u_3-u_03,j0-j2,j1)
         u_3=str(u_3,j0-j2,j1)
       else
         u_03=space(j0-j2)
         u_3=space(j0-j2)
       endif
       if 0 < u_4
         u_04=str(u_4-u_04,j0-j2,j1)
         u_4=str(u_4,j0-j2,j1)
       else
         u_4=space(j0-j2)
         u_04=space(j0-j2)
       endif
       if 0 < u_5
         u_05=str(u_5,j0-u_05-j2,j1)
         u_5=str(u_5,j0-j2,j1)
       else
         u_5=space(j0-j2)
         u_05=space(j0-j2)
       endif

       if 0 < u_6
         u_06=str(u_6-u_06,j0-j2,j1)
         u_6=str(u_6,j0-j2,j1)
       else
         u_6=space(j0-j2)
         u_06=space(j0-j2)
       endif
       if 0 < u_7
         u_07=str(u_7-u_07,j0-j2,j1)
         u_7=str(u_7,j0-j2,j1)
       else
         u_7=space(j0-j2)
         u_07=space(j0-j2)
       endif
       if 0 < sb_10
         sb_10=str(sb_10,j0,j1)
       else
         sb_10=space(j0)
       endif
       if 0 < b_52
         b_52=str(b_52,j0-j2,j1)
       else
         b_52=space(j0-j2)
       endif
       if 0 <  val(b_52)
         b_5253=str(val(b_52),j0-j2,j1)
       else
         b_5253=space(j0-j2)
       endif

       if 0 < b_14
         b_14=str(b_14,j0-j2,j1)
       else
         b_14=space(j0-j2)
       endif
       if 0 < b_32
         b_32=str(b_32,j0-j2,j1)
       else
         b_32=space(j0-j2)
       endif
       if 0 < b_95
         b_95=str(b_95,j0,j1)
       else
         b_95=space(j0)
       endif
       if 0 < b_94
         b_94=str(b_94,j0-j2,j1)
       else
         b_94=space(j0-j2)
       endif
       if 0 < u_8
         u_8=str(u_8,j0-j2,j1)
       else
         u_8=space(j0-j2)
       endif
       if 0 < u_9
         u_9=str(u_9,j0-j2,j1)
       else
         u_9=space(j0-j2)
       endif
       if 0 < u_10
         u_10=str(u_10,j0-j2,j1)
       else
         u_10=space(j0-j2)
       endif
       if 0 < b_99
         b_99=str(b_99,j0,j1)
         b_38=str(val(sb_10)-val(b_99),j0,j1)
       else
         b_99=space(j0)
         b_38=space(j0)
       endif
           do case
              case subs(data0,4,2)='99'.or. subs(data0,4,2)='00'.or. subs(data0,4,2)='01'
  ? '      1     ‚±¨·ª®:'+space(37)+sb_1+i+u_0+i+u_1+i+u_2+i+u_03+i+u_04+i+sb_9+i+;
    u_05+i+u_06+i+u_07+i+sb_10+i+b_5253+i+b_14+i+i+b_95+i+b_94+i+u_8+i+u_9+i+u_10+i+b_38+i+b_99
               other
   if .not. file("&disc_1\job\win")
  ? '            ‚±¨·ª®:'+space(37)+sb_1+i+u_0+i+u_1+i+u_2+i+u_03+i+u_04+i+sb_9+i+;
    u_05+i+u_06+i+u_07+i+sb_10+i+b_5253+i+b_14+i+i+b_32+i+b_95+i+b_94+i+u_8+i+u_9+i+u_10+i+b_38+i+b_99
   else
  ? '            ‚±¨·ª®:'+space(37)+sb_1+i+u_0+i+u_1+i+u_2+i+u_03+i+u_04+i+sb_9+i+;
    u_05+i+u_06+i+sb_10+i+b_5253+i+b_14+i+i+b_32+i+b_95+i+b_94+i+u_8+i+i+b_38+i+b_99

   endif
  ? norm0
           endcase
 * if .not. file("&disc_1\job\win")
 * if ekpr0=1
 * ? repl('-',230)
 * ? ' •                                               ‚° ²°    ‚º§­                       „®¯« ¹ ­¨¿           ‚±¨·ª®    ‡  ±¬¥²ª  ­  „       ‚±¨·ª®   ‡  ‚   „      „‹.   ‘³¬      „  „         “¤°º¦ª¨           ‚±¨·ª®   ‘³¬  '
 * ? ' ¯®      ˆ¬¥, ¯°¥§¨¬¥, ´ ¬¨«¨¿     „«º¦­®±²      ¥  ¤­¨    £° ¦¤ '+y_0+i+y_2+i+y_4+i+y_6+i+y_8+'          '+y_10+i+y_12+i+y_14+'                             „     ¨§·¨±«.        '+y_16+i+y_18+i+y_20+'             § ' &&   ®¤¯¨±'
 * ? '°¥¤                                              ¬¥        ¥­¨¥  '+y_1+i+y_3+i+y_5+i+y_7+i+y_9+'          '+y_11+i+y_13+i+y_15+'                                     ­  „„         '+y_17+i+y_19+i+y_21+'   ³¤°º¦.   ¯®«³·.'
 * ? repl('-',230)
 * endif
 * else
 * if ekpr0=1
 * ? repl('-',207)
 * ? ' •                                               ‚° ²°    ‚º§­               „®¯« ¹ ­¨¿                  ‚±¨·ª®  ‡  ±¬¥²ª  ­  „  ‚±¨·ª®   ‡  ‚   „      „‹.   ‘³¬     „  „   “¤°º¦ª¨   ‚±¨·ª®    ‘³¬  '
 * ? ' ¯®      ˆ¬¥, ¯°¥§¨¬¥, ´ ¬¨«¨¿     „«º¦­®±²      ¥  ¤­¨    £° ¦¤ '+y_0+i+y_2+i+y_4+i+y_6+i+y_8+'          '+y_10+i+y_12+i+y_14+'                     „     ¨§·¨±«.        '+y_16+i+'             § '  &&  ®¤¯¨±'
 * ? '°¥¤                                              ¬¥        ¥­¨¥  '+y_1+i+y_3+i+y_5+i+y_7+i+y_9+'          '+y_11+i+y_13+i+y_15+'                             ­  „„         '+y_17+i+'    ³¤°º¦.  ¯®«³·.'
 * ? repl('-',207)
 * endif
 * endif
       for i=1 to 49-b0
     *   ?
       next
      pech()

    sb_1=val(sb_1)
    u_0=val(u_0)
    u_1=val(u_1)
    u_2=val(u_2)
    sb_9=val(sb_9)
    u_3=val(u_3)
    u_03=val(u_03)
    u_4=val(u_4)
    u_04=val(u_04)
    u_5=val(u_5)
    u_05=val(u_05)
    u_6=val(u_6)
    u_06=val(u_06)
    u_7=val(u_7)
    u_07=val(u_07)
    sb_10=val(sb_10)
    b_52=val(b_52)
    b_14=val(b_14)
    b_94=val(b_94)
    u_8=val(u_8)
    u_9=val(u_9)
    u_10=val(u_10)
    b_99=val(b_99)

      mpls()  &&  fis8.prg


                                  return  // vedomost za zaptai
           *********
                          proc budzhet  //  Procedurata izchislyava budzhetnite vzemaniya
              set cons on
             ramka()
              @  9,37 say '‚HˆM€Hˆ… !'   color 'R+/B'
              @ 11,19 say '‡€„š‹†ˆ’…‹H … …„ˆ ‹‡“‚€H…’ H€ ’‚€ M…H'
              @ 13,21 say '„€ ‘€ ’…—€’€Hˆ ”ˆ˜‚…’… ‡€ ‡€‹€’ˆ !'

              dvzem()   && sav7
              b_11_s=b_11 ; b_30_s=b_30 ; b_50_s=b_50
              store 0 to  b_11,b_30,b_50
              sele 3
              use &disc_1\fish\nome inde &disc_1\fish\nosi
   izrab()

                       if lastkey()=27
                              return
                       endif
   b00=11
   ll0='2'
   ?? norm0
   ?
   set marg to 12
  ?  '   „ š  † € ‚ H ˆ   ‚ ‡ … M € H ˆ Ÿ   ‡ €  '+data0
  ?  '             ­  '+trim(ltrim(fir))
       *              do case
       *                 case prsl_0='¯'
       *   ?  '          ‡€ „…Hˆ …„ˆ 01.01.1960 ƒ„.'
       *                 case prsl_0='±'
       *   ?  '          ‡€ „…Hˆ ‘‹…„  31.12.1959 ƒ„.'
       *                 case prsl_0=' '
       *
       *
       *   ?  '                     ™ … H ˆ '
       *              endcase

  ?  '-----------------------------------------------------'
   do case
      case prsl_0='¯'
  ?  '±¨£³°¨²¥«¥­ ¤®µ®¤ ¯°¥¤¨ 60 £®¤¨­     %  '+str(bp92,12,j1)
  ?  '-----------------------------------------------------'
    if 0 < b_11
  ?  ' 11  „ ‘‘’‚…Hˆ–ˆ/               '+str(pt_11,5,2)+str(b_11,12,j1)
    endif
    if 0 < b_13
  ?  ' 13  „  III   ‡€ ‘/K€ H€ ‘‘’‚.  '+str(p_13,5,2)+str(b_13,12,j1)
    endif
    if 0 < b_14
  ?  ' 14  „  III   ‡€ ‘/K€ H€ €’H.  '+str(p_14,5,2)+str(b_14,12,j1)
    endif
    if 0 < b_15
  ?  ' 15  „ I ¨ II ‡€ ‘/K€ H€ ‘‘’‚.  '+str(p_15,5,2)+str(b_15,12,j1)
    endif
    if 0 < b_16
  ?  ' 16  „ I ¨ II ‡€ ‘/K€ H€ €’H.  '+str(p_16,5,2)+str(b_16,12,j1)
    endif
    if 0 < b_33
  ?  ' 33  „.„ II ª.  ‘/K€ H€ ‘‘’.  '+str(p_33,5,2)+str(b_33,12,j1)
    endif
    if 0 < b_34
  ?  ' 34  „.„  I ª.  ‘/K€ H€ €’ . '+str(p_34,5,2)+str(b_34,12,j1)
    endif
    if 0 < b_40
  ?  ' 40  ‘–.€‡•„ˆ ‡€ ‘/K€ H€ ‘‘’.   '+str(p_40,5,2)+str(b_40,12,j1)
    endif
    if 0 < b_41
  ?  ' 41  ‘–.€‡•„ˆ ‡€ ‘/K€ H€ €’H. '+str(p_41,5,2)+str(b_41,12,j1)
    endif

      case prsl_0='±'
  ?  '±¨£³°¨²¥«¥­ ¤®µ®¤ ±«¥¤  59 £®¤¨­     %  '+str(bs92,12,j1)
  ?  '-----------------------------------------------------'
    if 0 < b_11
  ?  ' 11  „             ‘‘’‚…Hˆ–ˆ/   '+str(pt_11,5,2)+str(b_11,12,j1)
    endif
    if 0 < b_13
  ?  ' 13  „  III   ‡€ ‘/K€ H€ ‘‘’‚.  '+str(p_13,5,2)+str(b_13,12,j1)
    endif
    if 0 < b_14
  ?  ' 14  „  III   ‡€ ‘/K€ H€ €’H.  '+str(p_14,5,2)+str(b_14,12,j1)
    endif
    if 0 < b_15
  ?  ' 15  „ I ¨ II ‡€ ‘/K€ H€ ‘‘’‚.  '+str(p_15,5,2)+str(b_15,12,j1)
    endif
    if 0 < b_16
  ?  ' 16  „ I ¨ II ‡€ ‘/K€ H€ €’H.  '+str(p_16,5,2)+str(b_16,12,j1)
    endif
    if 0 < b_30
  ?  ' 30  „‡ H€ ‘‘’‚…HˆK€            '+str(p_30,5,2)+str(b_30,12,j1)
    endif
    if 0 < b_40
  ?  ' 40  ‘–.€‡•„ˆ ‡€ ‘/K€ H€ ‘‘’   '+str(p_40,5,2)+str(b_40,12,j1)
    endif
    if 0 < b_41
  ?  ' 41  ‘–.€‡•„ˆ ‡€ ‘/K€ H€ €’H  '+str(p_41,5,2)+str(b_41,12,j1)
    endif
    if 0 < b_31
  ?  ' 31  „‡ ‘/K€ H€ ‘‘’.            '+str(p_31,5,2)+str(b_31,12,j1)
    endif
    if 0 < b_32
  ?  ' 32  „‡ ‘/K€ H€ €’.            '+str(p_32,5,2)+str(b_32,12,j1)
    endif
    if 0 < b_33
  ?  ' 33  „‡ II ª.  ‘/K€ H€ ‘‘’.     '+str(p_33,5,2)+str(b_33,12,j1)
    endif
    if 0 < b_34
  ?  ' 34  „‡  I ª.  ‘/K€ H€ €’.     '+str(p_34,5,2)+str(b_34,12,j1)
    endif
      case prsl_0=' '

  ?  '±¨£³°¨²¥«¥­ ¤®µ®¤ ¯°¥¤¨ 60 £®¤¨­        '+str(bp92,12,j1)
  ?  '-----------------------------------------------------'
  ?  '±¨£³°¨²¥«¥­ ¤®µ®¤ ±«¥¤  59 £®¤¨­        '+str(bs92,12,j1)
  ?  '-----------------------------------------------------'
    if 0 < b_11
  ?  ' 11  „  H€  ‘‘’‚…Hˆ–ˆ           '+'     '+str(b_11,12,j1)
       b00=b00+1
    endif
    if 0 < b_13
  ?  ' 13  „  H€  €’Hˆ–ˆ  III        '+'     '+str(b_13,12,j1)
       b00=b00+1
    endif
    if 0 < b_14
  ?  ' 14  „  III   ‡€ ‘/K€ H€ €’H.  '+'     '+str(b_14,12,j1)
       b00=b00+1
    endif
    if 0 < b_15
  ?  ' 15  „ I ¨ II ‡€ ‘/K€ H€ ‘‘’‚.  '+'     '+str(b_15,12,j1)
       b00=b00+1
    endif
    if 0 < b_16
  ?  ' 16  „ I ¨ II ‡€ ‘/K€ H€ €’H.  '+'     '+str(b_16,12,j1)
       b00=b00+1
    endif
    if 0 < b_25
  ?  ' 25  ƒ€H’ˆ€Hˆ ‚‡…M€HˆŸ            '+str(p_25,5,2)+str(b_25,12,j1)
       b00=b00+1
    endif
    if 0 < b_26
  ?  ' 26  ’“„‚€ ‡‹‹“K€              '+str(p_26,5,2)+str(b_26,12,j1)
       b00=b00+1
    endif
    if 0 < b_30
  ?  ' 30  „‡ H€ ‘‘’‚…HˆK€            '+'     '+str(b_30,12,j1)
       b00=b00+1
    endif
    if 0 < b_31
  ?  ' 31  „‡ ‘/K€ H€ ‘‘’.            '+'     '+str(b_31,12,j1)
       b00=b00+1
    endif
    if 0 < b_32
  ?  ' 32  „‡ ‘/K€ H€ €’.            '+'     '+str(b_32,12,j1)
       b00=b00+1
    endif
    if 0 < b_33
  ?  ' 33  „‡  II ª. ‘/K€ H€ ‘‘’.     '+'     '+str(b_33,12,j1)
       b00=b00+1
    endif
    if 0 < b_34
  ?  ' 34  „‡   I ª. ‘/K€ H€ €’.     '+'     '+str(b_34,12,j1)
       b00=b00+1
    endif
    if 0 < b_40
  ?  ' 40  ‘–.€‡•„ˆ ‡€ ‘/K€ H€ ‘‘’.  '+'     '+str(b_40,12,j1)
       b00=b00+1
    endif
    if 0 < b_41
  ?  ' 41  ‘–.€‡•„ˆ ‡€ ‘/K€ H€ €’H. '+'     '+str(b_41,12,j1)
       b00=b00+1
    endif
   endcase
    if 0 < b_42+b_42t
  ?  ' 42  „ ‚/“ ˆ‡‹€’…Hˆ ‹Hˆ—Hˆ     '+str(p_42,5,2)+str(b_42+b_42t,12,j1)
       b00=b00+1
    endif
    if 0 < b_50
  ?  ' 50  ‡‚  H€  ‘‘’‚…HˆK€           '+str(p_50,5,2)+str(b_50,12,j1)
       b00=b00+1
    endif
    if 0 < b_51
  ?  ' 51  ‡‚  ‡€ ‘/K€ H€ ‘‘’‚.        '+str(p_51,5,2)+str(b_51,12,j1)
       b00=b00+1
    endif
    if 0 < b_52
  ?  ' 52  ‡‚  ‡€ ‘/K€ H€ €’H.        '+str(p_52,5,2)+str(b_52,12,j1)
       b00=b00+1
    endif
    if 0 < b_94
  ?  ' 94  H€—ˆ‘‹…H „„ ‡€ M…‘…–         '+'     '+str(b_94,12,j1)
       b00=b00+1
    endif
    if 0 < x603
  ?  '603  „€HšŠ …—€‹€                  '+'     '+str(x603,12,j1)
       b00=b00+1
    endif

    if 0 < x610
         if .not.(x610data0=data0)
  ?  '‘’‰H‘’’€ H€ „€HšŠ€ H… … ‡€ ’…Š“™ˆŸ M…‘…–  '+str(x610,12,j1)
         else
  ?  '610  „„‘                            '+'     '+str(x610,12,j1)
    endif
       b00=b00+1
    endif
    if 0 < x700
  ?  '610  „„‘                            '+'     '+str(x700,12,j1)
       b00=b00+1
    endif
  ?  '-----------------------------------------------------'
  ?  '   ‚‘ˆ—K'+space(32)+str(b_11+b_13+b_14+b_15+b_16+b_25+b_26+b_30+b_31+;
      b_32+b_33+b_34+b_40+b_41+b_42+b_42t+b_50+b_51+b_52+b_94+x603+x610+x700,12,j1)
    * if 0 < b_11+b_50
    * ?  '   ‘€M‘ˆƒ“Ÿ‚€™  11 '+str(b_11+b_50,9,j1)+'     „‡ 30 '+str(b_30,9,j1)
    * endif
    * if 0 < b_13+b_14+b_15+b_16+b_25+b_26+b_40+b_41+b_42+b_42t+b_51+b_52+b_94+x603+x610+x700
    * ?  '   – Hˆ H‡Š     13 '+str(b_13+b_14+b_15+b_16+b_25+b_26+b_40+b_41+b_42+;
    *     b_42t+b_51+b_52+b_94+x603+x610+x700,9,j1)+'     „‡ 31 '+str(b_31+b_32+b_33+b_34,9,j1)
  pech()
  set marg to
                                  return // budzhet  


******************     Procedurata izchakva izrabotwaneto na pdf file *********

                              proc  sentinel
                 if file("&disc_0\sentinel.txt") //  tova iztrivane ne e neobhodimo
                    dele file "&disc_0\sentinel.txt"  // na drugo mqsto v p
                 endif // a i v programata
         do while  .t.
                 timecount(sek2:=1)
           @ 23,15 say space(44)
           if file("&disc_0\sentinel.txt")
             @ 23+ml0,15 say '      °®£° ¬ ²  ° ¡®²¨, ¬®«¿ ¨§· ª ©²¥ ...'
             exit
           else
             @ 23,22 say '   °®£° ¬ ²  ¯¥· ²  '+save_0
           endif
         enddo
                              return // sentinel




     ***************Pokazwa ostanalite sekundi   *****************
                            func timecount
     i00=0  // dan se polzuwa nikade drugade tazi promenliva
         for i00 = 1 to sek2
                 sek1=&sekundi0

                 if sek1 < 0
                      @ 23,61 say '0: 0'
                 else
                   if 0 < val(subs(str(round(sek1/60,2),5,2),1,2))
                      @ 23,60 say subs(str(round(sek1/60,2),5,2),1,2)+':'+;
                      str(sek1-val(subs(str(round(sek1/60,2),5,2),1,2))*60,2)
                   else
                      @ 23,61 say '0:'+str(sek1,2)
                   endif
                  endif
                          inkey(1)
           next
                           return  // timecount





