*@  0,15  say 'bbbb ' ; inkey(0) //kkk
  *PRO1.PRG  chet ddsizv dubl lusi
  **  pfzame protokol read slovo spdok

       ******************  ˆ§¢ ¦¤ ­¥ ­  „„‘ *********************
                          proc ddsizv
            save screen
            ramka()
            @  2,32 say 'ˆ‡‚€†„€H… H€ „„‘ '
            @  5,17 say '‚HˆŒ€Hˆ… ! –…„“€’€ ‘… ˆ‡š‹HŸ‚€ ‘€Œ ‡€ 702'
          @ 18,18 say '°®¬¿­  ¸¨´º°  ­  ±¬¥²ª¨ ¢ ±·¥²®¢®¤­  ®¯¥° ¶¨¿'
          restore from harsmet additive
          clea gets
             br0=1 ; br1=3 ; br2='  ' ; sch0='702'
            do while br0 < 20
              br2=ltrim(str(br0,2)) ; @ 19,br1 get z_&br2
              br0=br0+1 ; br1=br1+4
             enddo
          @ 21,35 say '‘º± ±¬¥²ª  ' get sch0
             chet()
          save all like z_* to harsmet
          open_kobo(loc0:=1)
   repl all sch with sch0  for sch=z_1.or.sch=z_2.or.sch=z_3.or.sch=z_4.or.sch=z_5;
   .or.sch=z_6.or.sch=z_7.or.sch=z_8.or.sch=z_9.or.sch=z_10.or.sch=z_11.or.sch=z_12.or.sch=z_13.or.;
   sch=z_14.or.sch=z_15.or.sch=z_16.or.sch=z_17.or.sch=z_18.or.sch=z_19
          clos data
          open_kpar(loc0:=1)
   repl all part with sch0+subs(part,4,4), partp with sch0+subs(partp,4,4) for part=z_1.or.part=z_2.or.part=z_3.or.part=z_4.or.part=z_5;
   .or.part=z_6.or.part=z_7.or.part=z_8.or.part=z_9.or.part=z_10.or.part=z_11.or.part=z_12.or.part=z_13.or.;
   part=z_14.or.part=z_15.or.part=z_16.or.part=z_17.or.part=z_18.or.part=z_19
          clos data
      open_dobo(loc0:=1)
   repl all sch with sch0  for sch=z_1.or.sch=z_2.or.sch=z_3.or.sch=z_4.or.sch=z_5;
   .or.sch=z_6.or.sch=z_7.or.sch=z_8.or.sch=z_9.or.sch=z_10.or.sch=z_11.or.sch=z_12.or.sch=z_13.or.;
   sch=z_14.or.sch=z_15.or.sch=z_16.or.sch=z_17.or.sch=z_18.or.sch=z_19
          clos data
     open_dpar(loc0:=1)
   repl all part with sch0+subs(part,4,4), partp with sch0+subs(partp,4,4) for part=z_1.or.part=z_2.or.part=z_3.or.part=z_4.or.part=z_5;
   .or.part=z_6.or.part=z_7.or.part=z_8.or.part=z_9.or.part=z_10.or.part=z_11.or.part=z_12.or.part=z_13.or.;
   part=z_14.or.part=z_15.or.part=z_16.or.part=z_17.or.part=z_18.or.part=z_19
          clos data
            l0=2
            @  7,23 say '’‚š†„€‚€’… ‹ˆ ˆ‡š‹HEHˆ…’'
            @  7,53 prompt '„€'
            @  7,56 prompt 'H…'
            menu to l0
             if l0=2
                restore screen
                return
             endif
             set confirm on ; @  9,23 say '‘:' ; sch0='702'
               open_arhi(loc0:=13) ; open_dobo(loc0:=13) ; open_kpar(loc0:=13)
               open_kobo(loc0:=13) ; set order to 2
               dn0=sch0+subs(data0,4,2)+data0
               find '&dn0'
           do while ! eof().and.data=data0
              if ! sch=sch0
                 if ! eof() ; skip ; loop ; else ; exit ; endif
              endif
             re0=recno()
             nom3=val(nom)
             dn0='453'+subs(data0,4,2)+data0+str(nom3,4)
             find "&dn0"   &&  ¯°®¢¥°ª  ¤ «¨ ¥ ¨§¢ ¤¥­® ¤¤±-²®
             if found()
                go re0
                 if ! eof() ; skip ; loop ; else ; exit ; endif
             else
               go re0
             endif
             @  9,27 say nom
             dn0=subs(data0,4,2)+data0+str(nom3,4)
             sele 1
             find "&dn0"
                   @  9,37 say '” ª²³°  No '+fakt
             sele 2
             find "&dn0"
                if sch='501'
                   @ 15,44 say '« ¹ ­¥ ¢ ¡°®©  '
                else
                   @ 15,44 say '« ¹ ­¥ ¯® €HK€'
                endif
             sele 3
             go re0
             ksto0=ksto
             rec_lock()
             repl ksto with round(ksto0/(1+d_s0),j1)
             rec_unlock()
             dn0=subs(data0,4,2)+data0+str(nom3,4)+sch0
             sele 5
             find "&dn0"
                store 0 to ksto1, ksto2
                do while  nom=str(nom3,4).and.data=data0.and.substr(part,1,3)=sch0
                    rec_lock()
                    ksto1=ksto1+round(kast/(1+d_s0),4)
                    repl zena with round(zena/(1+d_s0),j4), kast with round(kast/(1+d_s0),j1)
                    ksto2=ksto2+kast
                    rec_unlock()
                            if ! eof() ; skip ; else ; exit ; endif
                enddo
                ksto1=round(ksto1,j1)
            @ 12,39 say '„„‘    '+str(ksto0-ksto1,12,2)
            @ 13,39 say '‚±¨·ª® '+str(ksto0,12,2)
            @ 11,23 say '‘²®©­®±² ­  ±¤¥«ª ²  ' get ksto1
            chet()
            @ 12,39 say '„„‘    '+str(ksto0-ksto1,12,2)
            @ 13,39 say '‚±¨·ª® '+str(ksto0,12,2)
            inkey(0)
          skip -1
             if ksto2 < ksto1
                store ksto2 to ksto1
             else
                rec_lock()
                repl kast with kast-(ksto2-ksto1)
                rec_unlock()
             endif
             appe blank
             rec_lock()
             repl nom with str(nom3,4),part with '453   2', mk with '«¢',kast with  ksto0-ksto1, data with data0 &&  ksto0-round(ksto0/(1+d_s0),j1), data with data0
             rec_unlock()
             sele 3
             appe blank
             rec_lock()
             repl nom with str(nom3,4),sch with '453',nvo with '   0', ksto with ksto0-ksto1, data with data0
             rec_unlock()
             sele 3
             go re0
             rec_lock()
             repl ksto with ksto1
             rec_unlock()
                 if ! eof() ; skip ; loop ; else ; exit ; endif
           enddo
           set confirm off
           restore screen
                          return 0
  ***********************  ‘¯° ¢ª  §  ¤®ª³¬¥­²   ************************
                            proc  spdok
     @ 18,30 say '‘¯° ¢ª  §  ¤®ª³¬¥­² '
     if l9='¤'.or.sc9='¤' ; dr2='¯'; else ; store dr22 to dr2 ; endif
   bg_0='BG'
   if  sc9='­'
   set key 289 to fnom   && Alt-®
   @ 20, 3 say '‚ˆ„ H€ …ƒˆ‘’š€ ¤®±² ¢ª¨  - "¤", ¯°®¤ ¦¡¨²¥ - "¯", ­¥ ±¥ ¢ª«¾·¢  - " " :' get dr2 valid dr2=' '.or.dr2='¤'.or.dr2='¯'
   chet() ; endif
   store dr2 to dr22
      if dr2=' ' ; vid4=space(23) ;  dn2=space(10) ; endif
              if dr2='¤' ; sd2='±'
   if  sc9='­'
      @ 21, 8 say '‘„…‹K€ ¡¥§ ¤ ­ºª ¨«¨ ¡¥§ ¯° ¢® ­  „K-"­", ± ¯° ¢® ­  ¯º«¥­ „K-"±"'
      @ 22, 22 say '± ¯° ¢® ­  · ±²¨·¥­ „K-"·"  ¢­®±-"¢":' get sd2  valid sd2='±'.or.sd2='¢'.or.sd2='­'.or.sd2='·'
      chet() ; set key 289 to
   endif
              endif
                if dr2='¯' ; sd2='®'
   if  sc9='­'
   @ 21, 3 say '‘„…‹K€  20%-k.12-"®" ‚-k.15/¢­®±/-"¢" k.16-"¤" 7%-k.18-"±" ¨§­®± k.29-"«"'
   @ 22, 7 say '‚„ k.20-"¨" k.21-"¥" k.22-"§" k.23-"·" ®±¢¤-k.24-"­" k.25-"¿":' get sd2 valid sd2='®'.or.sd2='¢'.or.sd2='¤'.or.sd2='±'.or.sd2='¨'.or.sd2='«'.or.sd2='¥'.or.sd2='§'.or.sd2='·'.or.sd2='­'.or.sd2='¿'
 * @ 22,76 get bg_0
                         chet() && read
    endif
                endif
       if sc9='¤'
             if dn1='147164000 '
              * vid1='®-¥²'
              * vd0='81'
                dok0='¯°®¬.±²®ª¨.'+' ª ±®¢ ¡®­.'+admi00+'-'+dtoc(date0)+subs(dok0,37,4)
             else
                dok0=subs(dok0,1,27)+'-'+dtoc(date0)+subs(dok0,37,4)
             endif
       endif

       *  !!! MNOGO VNIMTAELNO DOBAVI NESHTO W TAZI PROCEDURA!!!!!!!

     @ 20,0 clea ; store date0 to dati0,dati1 ; vid4='                       '
     dn2='          '
   if  sc9='­'
     set key 304 to fnom   && Alt-´
     set key 280 to fnom   && Alt-¤
     set key 276 to fnom   && Alt-ª
     set key 278 to fnom   && Alt-±
     set key 289 to fnom   && Alt-®
     set key -5 to viddok
   endif
     set key -2 to dspis
     set key -3 to dnspis
     set key -6 to explorer
       if len(dok0) < 40
         dok0=space(40)
       endif
     if dr2='¤'.or.dr2='¯'
           set cent on
          br0=0
          dn30=space(15)
           @ 20, 1 say 'ˆN'
           dok01=subs(dok0,1,10)
           dok02=subs(dok0,11,17)
           dok03=subs(dok0,28,13)

           *   @  0,15  say 'supto 05 spdok '+sc17+space(15) ;  inkey(0) //kkk

        if sc17='y'
           if (dr2='¯'.aNd.(sd2='¢'.or.sd2='¨'.or.sd2='¤')).or.(dr2='¤'.and.(sd2='¢'.or.sd2='§'))
             if (dr2='¯'.and.(sd2='¢'.or.sd2='¨'.or.sd2='¤'))
                @ 20, 1 say 'ˆN   ¨§­®±'
                @ 21, 2 get dn30
             else
                @ 20, 1 say 'ˆN   ¢­®± '
                @ 21, 2 get dn30
             endif
           else
             @ 20, 3 get dn2  valid provvar("dn2")
           endif
           @ 20,14 say '‚ˆ„'
           @ 20,18 get vid1
           @ 20,22 say vd0
           @ 20,25 get vid2
           @ 20,36 say '„€’€'
           @ 20,41 get date1
           @ 20,52 say '”ˆŒ€'
           @ 20,57 get vid4
           @ 24,10 say 'ˆ‘€Hˆ… H€ …€–ˆŸ’€'
           @ 24,33 get dok01
           @ 24,44 get dok02
           @ 24,62 get dok03
           chet() && read
        else
            dn2='          '
           vid1='´¡®­'
            vd0='01'
           vid2='0000000000'
           vid4='´.¡®­                  '
          dok01='´.¡®­     '
        endif
           dok0=dok01+dok02+dok03
            set cent off
     else
          dok01=subs(dok0,1,10)
          dok02=subs(dok0,11,17)
          dok03=subs(dok0,28,13)
          @ 24,10 say 'ˆ‘€Hˆ… H€ …€–ˆŸ’€'
          @ 24,33 get dok01
          @ 24,44 get dok02
          @ 24,62 get dok03
          chet() && read
          dok0=dok01+dok02+dok03
     endif
      if empty(subs(dok0,1,10)) ; dok0=subs(vid4,1,10)+subs(dok0,11,30) ; endif
       @ 18, 0 say space(80) ; @ 20,0 clea
     set key -2 to  ; set key -3 to ddok ; set key -5 to ; set key -6 to
     set key 304 to;set key 280 to;set key 276 to;set key 278 to;set key 289 to
              if empty(vid4)
                 vid0=vid1+' '+vid2+' '+dtoc(date1)+' '+' '
              else
                 vid0=vid1+' '+vid2+' '+dtoc(date1)+' '+vid4
              endif
              if sc9='¤' .and. (! subs(str(nom0,4),1,1)='7')
               vid2=space(10) ; vid0=vid1+' '+vid2+' '+dtoc(date1)+' '
               dr2='¯' ; sd2=' ' ; timeb0='  :  :' // vd0='60' ne se opredelq tuka
              endif
           dok4=substr(dok0,38,3) ; store date0 to dati0
           open_regl(loc0:=12) ; find "&dn2"
           find "&dn2"
         if found() ; rec_lock() ; repl vvid with vid4 ; rec_unlock() ; endif
         if subs(vvid,1,1)='*'; del() ; endif
                             return   // spdok
          ***************    °®²®ª®« §  ±²°®¨²¥«±²¢®  *****************************
                             proc protokol
            ramka()
            set key -32 to
            clea gets
            dn0=subs(data0,4,2)+data0+str(nom2,4)
            open_arhi(loc0:=16)  && nari
            find '&dn0'
            store ctod(substr(vid,17,6)+vek+substr(vid,23,2) ) to ddat0,dati0
            dok0=dok
            open_obap(loc0:=16) && aobi
            open_kpar(loc0:=15)  && naki
            find '&dn0'
            izrab()
      if ekpr0=2
         set marg to 3
      endif
     ? space(29)+'’K‹ N.....'
     ?
     ?
     ? 'ˆ­¢¥­±²¨²®°: '+vid1+space(24)+vid00
     ? 'ˆ§¯º«­¨²¥« : '+ltrim(fir)
     ? '¡¥ª²      : '+dok0+space(9)+str(nom2,4)+'-'+dtoc(ddat0)
   * ? 'Œ  ‹  '+ml0+space(30)+'Œ  ‹  '+sas0
   ? '---------------------------------------------------------------------------'
   ? '€-ˆ‡          H€ˆŒ…H‚€Hˆ…             Œ-K€      K-‚   …„.–…H€   ‘’‰H‘’'
   ? '---------------------------------------------------------------------------'
       b0=10
       store 0 to kol0,ksto0
                    do while data=data0.and.nom=str(nom2,4)
                         part0=part
                      sele 6
                      find "&part0"
                       name1=name
                       mk1=mk
                  sele 5
     if  substr(part,4,4)=' 999'
        ? space(61)+repl('-',14)
        ? space(50)+'™'+space(7)+str(ksto0,j0,j1)
        ? space(61)+repl('-',14)
        ? space(19)+name1+space(10)+str(round(kol*zena,j1),11,j4)
     else
        ? substr(part,4,4)+' '+name1+' '+mk+' '+str(kol,11,j3)+' '+str(round(zena,j4),8,j4)+str(round(kol*zena,j1),11,j4)
     endif
                    kol0=kol0+kol
                    ksto0=ksto0+round(kast,j1)
        spri()
                     sele 5
                     if ! eof() ; skip ; else ; exit ; endif
                    enddo
    ? space(61)+repl('-',14)
    ? space(46)+'‘’‰H‘’ '+space(6)+str(ksto0,j0,j1)
    ?
    ?
    ?
    ?
    ? space(5)+'ˆ‡š‹Hˆ’…‹:.............       ˆH‚…‘’ˆ’:..............'
    ?
    do pech
     open_arhi(loc0:=17)
     go bott
                                     return
        ******************* °®¶¥¤³°  READ *******************
                             func chet
                             if (1 < sele())   &&  .or.(.not. empty(indexkey(sele())))
                                rec_lock()
                                read
                                rec_unlock()
                             else
                                 read
                             endif
                             return
        ******************* STOINOST SLOWOM  *******
                  proc slovo
       store '' to s0,s1,s2,s3,s4,s5,s6,s7,s8,s9
       x=ltrim(str(abs(slov0),14,2))
       N=len(x)-3
       N0=N+2
       p=9
       l1=' '
     ***********
     do while N>0   &&.and.(!eof())
            do case
               case substr(x,N,1)='0'
               sN=' '
               case substr(x,N,1)='1'
               sN='…„ˆH'
               case substr(x,N,1)='2'
               sN='„‚€'
               case substr(x,N,1)='3'
               sN='’ˆ'
               case substr(x,N,1)='4'
               sN='—…’ˆˆ'
               case substr(x,N,1)='5'
               sN='…’'
               case substr(x,N,1)='6'
               sN='˜…‘’'
               case substr(x,N,1)='7'
               sN='‘…„…Œ'
               case substr(x,N,1)='8'
               sN='‘…Œ'
               case substr(x,N,1)='9'
               sN='„…‚…’'
            endcase
            do case
               case P=9                        && ¥¤¨­¨¶
               s9=sN
               case P=8                        &&¤¥±¥²¨¶¨
                 do case
                    case sN='…„ˆH'
                 if s9=' '
               s9='„…‘…’ '
                 l1='y'
                 else
                   if s9='…„ˆH'
               s9='…„ˆ'+'H€„…‘…’ '
                   else
               s9=s9+'H€„…‘…’ '
                   endif
                 l1='y'
                 endif
                    case sN=' '
               s8=' '
                    case s9=' '
               s8=sN+'„…‘…’ '
                     otherwise
               s8=sN+'„…‘…’ ˆ '
                 endcase
               case P=7                        && ±²®²¨¶¨
                  do case
                     case sN='…„ˆH'
               s7='‘’ '
                     case sN='„‚€'
               s7='„‚…‘’€ '
                     case sN='’ˆ'
               s7='’ˆ‘’€ '
                     case (!sN=' '.or.sN='…„ˆH'.or.sN='„‚€'.or.sN='’ˆ')
               s7=sN+'‘’’ˆH '
                    case sN=' '
               s7=' '
                  endcase
                  do case
                     case l1='y'
               s7=s7+'ˆ '
                     case s8=' '.and. (!s9=' ')
               s7=s7+'ˆ '
                     case (!s8=' ').and.s9=' '
               s7=s7+'ˆ '
                  endcase
               case P=6                        && µ¨«¿¤­¨
                    ss6=sN
                    do case
                       case sN='…„ˆH'
                            s6='•ˆ‹Ÿ„€ '
                       case sN='„‚€'
                            s6='„‚… •ˆ‹Ÿ„ˆ '
                    other
                            s6=sN+' •ˆ‹Ÿ„ˆ '
                  endcase
                     do case
                       case s8=' '.and.s9=' '.and.(!s7=' ')
               s6=s6+'ˆ '
                    endcase
               case P=5                    && ¤¥±¥²®µ¨«¿¤­¨
                 s6=''
                 s5=sN
                 ss5=sN
                 do case
                    case sN='…„ˆH'
                 if ss6=' '
               s5='„…‘…’ '
                 else
                   if ss6='…„ˆH'
               s5='…„ˆ'+'H€„…‘…’ '
                   else
               s5=ss6+'H€„…‘…’ '
                   endif
                 endif
                    case ss6=' '
                    if  !sN=' '
                       s5=sN+'„…‘…’ '
                    endif
                    case !(ss6=' ')
                        do case
                           case ss6='…„ˆH'
                              ss6='…„H€'
                           case ss6='„‚€'
                              ss6='„‚…'
                        endcase
                    if  !sN=' '
                        s5=sN+'„…‘…’ ˆ '+ss6
                     else
                        s5=sN+'ˆ '+ss6
                     endif
                    case sN=' '
               s5=' '
                    endcase
                     if s8=' '.and.s9=' ' .and.(!s7=' ')
               s5=s5+' •ˆ‹Ÿ„ˆ ˆ '
                     else
               s5=s5+' •ˆ‹Ÿ„ˆ '
                     endif
               case P=4               && ±²®µ¨«¿¤¨
                  do case
                     case sN='…„ˆH'
               s4='‘’ '
                     case sN='„‚€'
               s4='„‚…‘’€ '
                     case sN='’ˆ'
               s4='’ˆ‘’€ '
                     case (!sN=' '.or.sN='…„ˆH'.or.sN='„‚€'.or.sN='’ˆ')
               s4=sN+'‘’’ˆH '
                    case sN=' '
               s4=' '
                  endcase
                       do case
                          case ss5='…„ˆH'
                           s4=s4+'ˆ '
                           case ss6=' '.and.(!ss5=' ')
                           s4=s4+'ˆ '
                       endcase
               case P=3   &&   ¬¨«¨®­
                 ss3=sN
                 do case
                    case sN='…„ˆH'
                    s3=sN+' Œˆ‹ˆH '
                     otherwise
                    s3=sN+' Œˆ‹ˆH€ '
                 endcase
               case P=2
                 s5=''
                 s3=''
                 s2=sN
                 ss2=sN
                 do case
                    case s2='…„ˆH'
                 if ss3=' '
               s2='„…‘…’ '
                 else
                   if ss3='…„ˆH'
               s2='…„ˆ'+'H€„…‘…’ '
                   else
               s2=ss3+'H€„…‘…’ '
                   endif
                 endif
                    case ! s2='…„ˆH'
                       if ss3=' '
                        s2=s2+'„…‘…’'
                     else
                        s2=s2+'„…‘…’ ˆ '+ss3
                     endif
                 endcase
               s2=s2+' Œˆ‹ˆH€ '
            endcase
              N=N-1
              p=p-1
     enddo
    *************
     ss0=s1+s2+s3+s4+s5+s6+s7+s8+s9
         if len(ss0)<67
            ? '‘«®¢®¬: '+ss0+' ‹E‚€ ¨ '+substr(x,N0,2)+' ‘’.'
         else
            ? '‘«®¢®¬: '+substr(ss0,1,67)
            ? '        '+trim(substr(ss0,68,60))+' ‹E‚€ ¨ '+substr(x,N0,2)+' ‘’.'
         endif
                    return
      ************** °®¶¥¤³°  §  ¤³¡«¨° ­¨ ´ ª²³°¨  *****************
                            proc dubl
            l0=' '
      do while .t.
          ramka()
                @  2,27 say '‚K€ ‡€ „“‹ˆ€Hˆ ”€K’“ˆ'
                @  3,26 say '------------------------------'
                @  8,27 say '°®¤ ¦­¨ - "¯" ¤®±² ¢­¨ "¤" ' get l0
                chet()
                if lastkey()=27    &&  .or.l0=' '
                     set dele off
                     exit
               endif
               open_arhi(loc0:=50)  && nari
           do case
              case l0='¯'
                   set order to 2
                   set filter to dr='¯'
             store ' ' to l1, l2, l3
             go top
             do while !eof()
                fkt0=fakt
                if ! eof() ; skip ; else ; exit ; endif
               if fkt0=fakt.or.(!val(fakt)=val(fkt0)+1)
                  l1='¤'
                  if fkt0=fakt
                    @ 23+ml0,16 say '   ”®ª³²³° ²  ± ­®¬¥° '+fkt0+' ¥ ¤³¡«¨° ­  ! '
                  else
                    @ 23+ml0,16 say '    ”®ª³²³° ²  ± ­®¬¥° '+str(val(fkt0)+1,10)+' ¥ «¨¯±¢ ¹  !   '
                  endif
                  i0=inkey(0)
                if ! eof() ; skip -1 ; else ; exit ; endif
                declare fiel[6]
                  fiel[1]='fakt'
                  fiel[2]='f'
                  fiel[3]='vid'
                  fiel[4]='dr'
                  fiel[5]='nom'
                  fiel[6]='data'
                declare imem[6]
                  imem[1]='”€K’“€'
                  imem[2]='F'
                  imem[3]='             …ƒˆ‘’š H€ „€†ˆ’…'
                  imem[4]='’'
                  imem[5]='HŒ…'
                  imem[6]='„€’€ '
                @  4, 2 say repl('Í',75)
                dbedit( 5, 2,21+ml0,76,fiel,"pfunk1",'',imem,'Í','Ó')
                  if ! eof() ; skip ; else ; exit ; endif
               endif
             enddo
                  if l1=' '
                    @ 23+ml0,15 say '                 H¿¬  ®²ª°¨²¨ £°¥¸ª¨               '
                    i0=inkey(0)
                  endif

              case l0='¤'
                   set order to 3
                   set filter to dr='¤'
            l1=' '
             go top
             do while !eof()
                dnvi0=dn+subs(vid,6,10)
                if ! eof() ; skip ; else ; exit ; endif
               if dn+subs(vid,6,10)=dnvi0
                    l1='¤'
                    @ 23+ml0,15 say '”®ª³²³° ²  ± ­®¬¥° '+subs(vid,6,10)+' ¥ ¤³¡«¨° ­  !'
                    i0=inkey(0)
                if ! eof() ; skip -1 ; else ; exit ; endif
                declare fiel[5]
                  fiel[1]='dn'
                  fiel[2]='vid'
                  fiel[3]='dr'
                  fiel[4]='nom'
                  fiel[5]='data'
                declare imem[5]
                  imem[1]='„. HŒ…'
                  imem[2]='             …ƒˆ‘’š H€ K“Kˆ’…'
                  imem[3]='’'
                  imem[4]='HŒ…'
                  imem[5]='„€’€ '
                @  4, 3 say repl('Í',73)
                dbedit( 5, 3,21+ml0,75,fiel,"pfunk1",'',imem,'Í','Ó')
                if ! eof() ; skip ; else ; exit ; endif
               endif
             enddo
                  if l1=' '
                    @ 23+ml0,15 say '                 H¿¬  ®²ª°¨²¨ £°¥¸ª¨               '
                    i0=inkey(0)
                  endif
              case l0=' '
                   set order to 3
                   set filter to dr='¤'.or.dr='¯'
             go top
                declare fiel[5]
                  fiel[1]='dn'
                  fiel[2]='vid'
                  fiel[3]='dr'
                  fiel[4]='nom'
                  fiel[5]='data'
                declare imem[5]
                  imem[1]='„. HŒ…'
                  imem[2]='       …ƒˆ‘’š H€ K“Kˆ’… ˆ „€†ˆ’…'
                  imem[3]='’'
                  imem[4]='HŒ…'
                  imem[5]='„€’€ '
                @  4, 3 say repl('Í',73)
                dbedit( 5, 3,21+ml0,75,fiel,"pfunk1",'',imem,'Í','Ó')
           endcase
      enddo
                            return
     *************** °®¶¥¤³°  ‹¾±¨  *************************
                         proc lusi
          save screen
           vazkey()
           clea gets
           open_arhi(loc0:=11)
           open_dobo(loc0:=11)
           open_kobo(loc0:=11)
           open_dpar(loc0:=11)
           open_kpar(loc0:=11)
           open_obap(loc0:=82)
          do while .t.
            @  8,32 prompt '1. €‡•„Hˆ         '
            @  9,32 prompt '2. ˆ•„ˆ          '
            @ 10,32 prompt '3. €HK€            '
            @ 11,32 prompt '4. €HK€-A‚’Œ€’    '
                menu to v4
            @ 14,02 clea to 15,75
            @ 23+ml0,15 say space(51)
            do case
               case lastkey()=27
                     return
               case v4=1
           clear gets
           store date0 to date1
           mat0='¬-«¨     .     '
           vid2=0
           store 0 to sto0, sto1
           sch1='304'
           part1=1
           sch0='501'
           part0=0
           mk0='«¢'
           @ 06,26,17,54 box ram1
           @ 07,27 clea to 16,53
           @  7,37 say '€‡•„Hˆ'
           @  8,36 say '----------'
           open_obve(loc0:=12)
      do while .t.
           set confirm on
           dn2=subs(dn2,1,9)
           set key -2 to dspis
           set key -3 to dnspis
           @ 20,15 clea to 23,75
           @  9,28 say 'ˆ¤¥­². N:     ' get dn2
          chet()
           set confirm off
           set key -2 to
           set key -3 to
              if lastkey()=27
                  restore screen
                   set cent off
                   vid2=''
                  return
              endif
           open_regl(loc0:=12)
           dn20=trim(dn2)
           find "&dn20"
         if  found()
           vid4=vvid
           @ 23+ml0,21 say '   K®­²° £¥­²: '+vid4
         else
           vid4=space(23)
           @ 23+ml0,21 say 'H®¢ ª®­²° £¥­²:' get vid4
            chet()
              if lastkey()=27
                   loop
                  return
              endif
               appe blank
               rec_lock()
               repl dn with dn2, vvid with vid4
               rec_unlock()
         endif
           set key -2 to spisk1
           set key -32 to spisk1
           @ 10,28 say '-­  ±-ª /¯-¤ '
           @ 10,43 get sch1 pict "999" valid helpproba("sch1")
           @ 10,48 get part1 pict "9999"
           @ 11,28 say '501/401_¯-¤   '
           @ 11,43 get sch0 pict "999"
           chet()
           sele 7
           find "&sch0"
          a0='­'
          part0=0
       if found()
          a0=a
       else
           loop
       endif
       if a0='¤'
            open_obap(loc0:=12)
            if sch0='401'.or.sch0='411'
             if ! dn1='147164000 '
               locate for dn20=subs(name,27,9)
             endif
                 if found().and.(!eof())
                   part0=val(substr(part,4,4))
                   nam0=subs(name,1,26)
                   @ 12,28 say nam0
                 else
                   part0=0
                 endif
            endif
           set key -2 to spisk1
           set key -32 to spisk1
           @ 11,48 get part0 pict "9999"
           chet()
           set key -2 to
           set key -32 to
              if lastkey()=27
                  loop
              endif
           part10=sch0+str(part0,4)
           open_obap(loc0:=12)
           find "&part10"
         if  found()
           nam0=subs(name,1,26)
           mk1=mk
           @ 12,28 say nam0
         else
           nam0=vid4+'   '+dn2
           mk1='«¢'
           @ 22,11 say 'Œ¿°ª :' get mk1
           @ 22,22 say 'H®¢ ¤®±² ¢·¨ª:' get nam0
            chet()
              if lastkey()=27
                  loop
              endif
               @ 22,11 say space(65)
               @ 12,28 say subs(nam0,1,26)
               appe blank
               rec_lock()
               repl mk with mk1, part with sch0+str(part0,4), name with nam0
               rec_unlock()
         endif
       else
           @ 11,48 say '    '
           @ 12,28 say space(26)
       endif
           do case
              case sch1='304'
                   do case
                      case buls='201333312'.or.buls='102858422'
                      mat0='±²°. ¬-«¨  '
                      case buls='102905637'
                      mat0='µ°.¯°®¤³ª².'
                   endcase
              case sch1='601'
                   mat0='¬-«       .'
              case sch1='601'
                   mat0=subs(vid4,1,6)+'    .'
           endcase
           @ 13,28 say '¯¨± ­¨¥ ' get mat0
           chet()

         set cent on
       do while .t.
           @ 18, 0 say space(80)
           @ 18, 0 say '·'+space(78)+'·'
           @  9,28 say 'ˆ¤¥­². N:     '+' '+dn2
           @ 10,28 say '-­  ±-ª /¯-¤ '+' '+sch1+'  '+str(part1,4)
           @ 11,28 say '501/401_¯-¤   '+' '+sch0+'  '+str(part0,4)
           @ 13,28 say '¯¨± ­¨¥  '+mat0
           @ 14,28 say '” ª²³°  ­®¬¥° ' get vid2 pict "9999999999"
           @ 15,28 say '„ ²  ´ ª²³°   ' get date1
           @ 16,28 say '‘²-±² ¡¥§ „„‘:' get sto0 pict "9999999.99"
           chet()
              if lastkey()=27
                  exit
              endif
              if vid2=0.or.sto0=0
                 loop
              endif
          sto1= round(sto0*.2,2)
           set confirm on
          @ 18,16 say '¡±²  ±²-±² ­  ´ ª²³° ²  '+str(sto0+round(sto0*.2,2),9,2)+'  ¤¤±:' get sto1  pict "9999999.99"
               read
           set confirm off
           if lastkey()=13
            *  vid2=str(vid2,10) &&
            *  nulfakt()         &&  procedurata e izlishna fn0 = vid2 i fn0 trqbva da se mahne
            *  vid2=val(vid2)    &&
               sele 4
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch1+str(part1,4),;
               mk with mk0, dast with sto0,data with data0
               appe blank
               repl nom with str(nom0,4),part with '453   1',;
               mk with mk0, dast with sto1,data with data0
               rec_unlock()
               sele 2
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch1,nvo with '   0',;
               dsto with sto0,data with data0
               appe blank
               repl nom with str(nom0,4), sch with '453',nvo with '   0',;
               dsto with sto1,data with data0
               rec_unlock()
               if sch0='401'
               sele 5
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch0+str(part0,4),;
               mk with '«¢',kast with sto0+sto1, data with data0
               rec_unlock()
               endif
               sele 3
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch0,nvo with '   0',;
               ksto  with sto0+sto1,data with data0
               rec_unlock()
               open_arhi(loc0:=11)
               appe blank
               rec_lock()
               set cent off
                 repl nom with str(nom0,4),papk with '  0', dn with dn20,;
                 vid with '´-°  '+vid2+' '+dtoc(date1)+' '+vid4, dr with '¤',;
                 vd with '01', sd with '±', vek with subs(vek0,1,2),;
                 dok with mat0+' ',data with data0
               if sto0 < 0
                 repl vid with 'ª¨-¥ '+vid2+' '+dtoc(date1)+' '+vid4, vd with '03'
               endif
                  repl reg with dtoc(date())
               rec_unlock()
               re_0=recno()
               set cent on
               nom0=nom0+1
               @  5,31 say 'H®¬¥° ­  ‘: '+str(nom0,4)
           endif
       enddo
      enddo
       set cent off
                case v4=2
           store date0 to date1
           mat0='          '
           vid2=space(10)
           kol0=0
           kur0=1.95583
           sto0=0
           sch1='412'
           part1=0
           sch0='411'
           part0=0
           @ 06,26,17,54 box ram1
           @ 07,27 clea to 16,53
           @  7,37 say 'ˆ•„ˆ'
           @  8,36 say '---------'
      do while .t.
           set confirm on
           dn2=subs(dn2,1,10)
           set key -2 to dspis
           set key -3 to dnspis
           store subs(dn2,1,10) to dn2
           kol0=0
           kol1=0
           @  9,28 say 'ˆ¤¥­². N:     ' get dn2
           @ 10,28 say '¯¨± ­¨¥      ' get mat0
          chet()
           set confirm off
           set key -2 to
           set key -3 to
              if lastkey()=27
                  restore screen
                   set cent off
                  return
              endif
           open_regl(loc0:=12)
           dn20=trim(dn2)
           find "&dn20"
           @ 21,20 say space(55)
         if  found()
           vid4=vvid
           @ 21,24 say 'K®­²° £¥­²: '+vid4
         else
           vid4='a'+space(22)
           @ 21,21 say 'H®¢ ª®­²° £¥­²:' get vid4
            chet()
              if lastkey()=27
                   exit
                  return
              endif
               appe blank
               rec_lock()
               repl dn with dn2, vvid with vid4
               rec_unlock()
         endif
           set key -2 to spisk1
           set key -32 to spisk1
           @ 11,28 say '412     ¯-¤   '
           @ 11,43 get sch0 pict "999"
           @ 11,48 get part0 pict "9999"
           chet()

              if lastkey()=27.or.(!sch0='411').or.part0=0
                  exit
              endif

           @ 20,2 say space(78)
           open_obap(loc0:=12)
           part10=sch0+str(part0,4)
           find "&part10"
         if  found()
           nam0=subs(name,1,26)
           @ 12,28 say nam0
         else
           nam0=space(26)
           @ 21,24 say 'H®¢ ª«¨¥­²:' get nam0
            chet()
              if lastkey()=27
                  exit
              endif
               @ 21,22 say space(35)
               @ 12,28 say nam0
               appe blank
               rec_lock()
               repl mk with '«¢', part with sch0+str(part0,4), name with nam0
               rec_unlock()
         endif
         set cent on
           set key 304 to fnom
           @ 13,28 say '” ª²³°  ­®¬¥° ' get vid2 pict "9999999999"
           @ 14,28 say '„ ²  ´ ª²³°   ' get date1
           @ 15,28 say '‚ «³²¥­ ª³°± :' get kur0 pict "99.9999999"
           @ 16,28 say 'Amount        ' get kol0 pict "9999999.99"
           set confirm on
           chet()
           set key -2 to
           set key -32 to
           set key 304 to
           set confirm off
              if lastkey()=27
                  exit
              endif
            sto0=round(kol0*kur0,2)
              if mat0=space(10)
                 dok0=' ¯.'+subs(nam0,1,7)+' '+subs(vid4,1,23)+space(6)
              else
                 dok0=mat0+' '+space(29)
              endif
            if sch0='411'
               dok0=subs(dok0,1,39)+''
            endif
              if vid2=space(10).or.sto0=0
                 loop
              endif
          store part0 to part1
          @ 18,4 say '‘²-±² ­  ´ ª²³° ²  '+str(round(sto0/1.2,2),9,2)+' ¤¤±:'+str(sto0-round(sto0/1.2,2),9,2)+' ¡¹®               ¬2'
          @ 18,52 get sto0 pict "999999999.99"
          @ 18,69 get kol1 pict "9999.999"
            read
            *  nulfakt()
               sele 4
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch0+str(part0,4),;
               mk with '¥¢', kol with kol0, dast with sto0,data with data0
                   if kur0=1
                      repl mk with '«¢', kol with 0
                   endif
               rec_unlock()
               sele 2
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch0,nvo with '   0',;
               dsto with sto0,data with data0
               rec_unlock()
               sele 5
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch1+str(part1,4),;
               mk with '¬2',kol with kol1,kast with round(sto0/1.2,2), data with data0
               appe blank
               repl nom with str(nom0,4),part with '453   2',;
               mk with '«¢', kast with sto0-round(sto0/1.2,2),data with data0
               rec_unlock()
               sele 3
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch1,nvo with '   0',;
               ksto  with round(sto0/1.2,2),data with data0
               appe blank
               repl nom with str(nom0,4), sch with '453',nvo with '   0',;
               ksto with sto0-round(sto0/1.2,2),data with data0
               rec_unlock()
               open_arhi(loc0:=11)
               appe blank
               rec_lock()
               set cent off
               repl nom with str(nom0,4),papk with '  0', dn with dn20,;
               vid with '´-°  '+vid2+' '+dtoc(date1)+' '+vid4, dr with '¯',;
               vd with '01', sd with '®', vek with subs(vek0,1,2), f with 'ª',;
               fakt with vid2, dok with dok0, data with data0
                if sto0 < 0
                   repl vid with 'ª°-¥', vd with '03'
                endif
                  repl reg with dtoc(date())
               rec_unlock()
               re_0=recno()
               set cent on
               nom0=nom0+1
               @  3,20 say str(nom0,4)
      enddo
             set cent off
             case v4=3
           clear gets
           store date0 to date1
           mat0='±²°. ¬-«¨ '
           kol0=0
           kur0=1.95583
           sch1='503'
           part1=1
           sch0='   '
           part0=0
           store '«¢' to mk0, mk1
           @ 06,26,18,54 box ram1
           @ 07,27 clea to 17,53
           @ 11,27 say repl('Í',27)
           open_obve(loc0:=12)
           open_obap(loc0:=12)
      do while .t.
      *    set confirm on
           @  7,28 say '® €HK€'
           @  7,44 get sch1 pict "999"
           @  7,49 get part1 pict "9999"
          chet()
           set confirm off
           part10=sch1+str(part1,4)
           open_obap(loc0:=12)
           find "&part10"
              if ! found()
                 restore screen
                 set cent off
                 return
              endif
              if lastkey()=27
                 rec_lock()
                 ? recno()
                 repl kkol with kkol0, ksal with ksal0
                 rec_unlock()
                 restore screen
                 set cent off
                 return
              endif
         if  found()
           nam0=subs(name,1,26)
           mk0=mk
           kkol0=kkol
           ksal0=ksal
           @  8,28 say nam0
         else
           @  8,28 say 'H¿¬¿ ¯ °²¨¤  ± ²®§¨ ­®¬¥°'
              inkey(3)
           @  8,28 say '                         '
              loop
         endif

           if sch1='504'
              @  9,28 say '‘-„  K-‘’‚     ‘’‰H‘’'
              @ 10,28 say str(kkol0,j2,j3)+' '+str(ksal0,j2,j3)
           endif
           if sch1='503'
              @  9,28 say '‘-„             ‘’‰H‘’'
              @ 10,41 say str(ksal0,j2,j3)
           endif
          dk1=1
          do while .t.    &&   ­ · «® ­  ¶¨ªº« 
           sto0=0
           @ 17,28 say '‘³¬          ' + str(sto0,12,2)
           @ 12,28 get sch0 pict "999"
           chet()
              if lastkey()=27
                  exit
              endif
           sele 7
           find "&sch0"
          a0='­'
          part0=0
       if found()
          a0=a
       else
           loop
       endif
       if a0='¤'
           set key -2 to spisk1
           set key -32 to spisk1
           @ 12,33 get part0 pict "9999"
           chet()
           set key -2 to
           set key -32 to
              if lastkey()=27
                  loop
              endif
           part10=sch0+str(part0,4)
           open_obap(loc0:=12)
           find "&part10"
         if  found()
           nam0=subs(name,1,26)
           mk1=mk
           @ 13,28 say nam0
         else
            if part0=0
              loop
            endif
           nam0=vid4+'   '+dn2
           @ 21,13 say 'Œ¿°ª :' get mk1
           @ 21,25 say 'H®¢ ª®­²° £¥­²' get nam0
            chet()
           @ 21,13 say space(70)
              if lastkey()=27
                  loop
              endif
               @ 21,13 say space(65)
               @ 13,28 say subs(nam0,1,26)
               appe blank
               rec_lock()
               repl mk with mk1, part with sch0+str(part0,4), name with nam0
               rec_unlock()
         endif
       else
           @ 12,33 say '    '
           @ 13,28 say space(26)
       endif
            if sch0='6'.or.sch0='40'.or.sch0='45'
              dk1=1
            else
              dk1=2
            endif
           @ 20,20 say space(40)
           @ 12,45 say '„-²  K-²'
           @ 12,45 prompt '„-²'
           @ 12,50 prompt 'K-²'
           menu to dk1
              if lastkey()=27
                   loop
              endif
          if (sch0='602'.or.sch0='621'.or.sch0='401'.or.sch0='499').and.dk1=2
            @ 23+ml0,28 say 'H¥¯° ¢¨«­® ª°¥¤¨²¨° ²¥ '+ sch0
               inkey(0)
            @ 23+ml0,15 say space(51)
          endif
          if (sch0='411'.or.sch0='498'.or.sch0='721').and.dk1=1
            @ 23+ml0,28 say 'H¥¯° ¢¨«­® ¤¥¡¨²¨° ²¥  '+  sch0
               inkey(0)
            @ 23+ml0,15 say space(51)
          endif
         set cent on
           @ 14,28 say '„ ²  ­  ¯« ¹. ' get date1
        if mk0='«¢'
           @ 17,28 say '‘³¬          ' get sto0 pict "99999999.99"
        else
           @ 15,28 say '‚ «³²¥­ ª³°± :' get kur0 pict "99.9999999"
           @ 16,28 say 'K «¨·¥±²¢®    ' get kol0 pict "9999999.99"
        endif
           set confirm on
           chet()
           set confirm off
              if !lastkey()=13
                  loop
              endif
             if !mk0='«¢'
                 store round(kur0*kol0,2) to sto0
                 @ 17,28 say '‘³¬          ' + str(sto0,12,2)
             endif
                if sto0=0
                   loop
                endif
            if dk1 = 1
               sele 2
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch0, nvo with '   0',;
               dsto with sto0,data with data0
               sele 3
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch1, nvo with '   0',;
               ksto with sto0, data with data0
              if a0='¤'
               sele 4
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch0+str(part0,4),;
               mk with mk1, dast with sto0,data with data0
                    if !mk0='«¢'
                       rec_lock()
                       repl kol with kol0, zena with kur0
                    endif
              endif
               sele 5
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch1+str(part1,4),;
               mk with mk0, kast with sto0,data with data0
                    if !mk0='«¢'
                       rec_lock()
                       repl kol with kol0, zena with kur0
                    endif
            else
               sele 2
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch1,nvo with '   0',;
               dsto with sto0,data with data0
               sele 3
               appe blank
               rec_lock()
               repl nom with str(nom0,4), sch with sch0,nvo with '   0',;
               ksto with sto0, data with data0
               sele 4
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch1+str(part1,4),;
               mk with mk0, dast with sto0,data with data0
                    if !mk0='«¢'
                       rec_lock()
                       repl kol with kol0, zena with kur0
                    endif
              if a0='¤'
               sele 5
               appe blank
               rec_lock()
               repl nom with str(nom0,4),part with sch0+str(part0,4),;
               mk with mk1, kast with sto0,data with data0
                    if !mk0='«¢'
                       rec_lock()
                       repl kol with kol0, zena with kur0
                    endif
              endif
            endif
               set cent off
               dok0=space(10)+'.'
               do case
                  case sch0='401'.or.sch0='499'
                       dok0='­   '+nam0+'  '+dtoc(date1)
                  case sch0='411'.or.sch0='498'
                       dok0='®²  '+nam0+'  '+dtoc(date1)
                  case sch0='453'.and.dk1=1
                       dok0='../.. ¤¤± '+space(22)+dtoc(date1)
                  case (sch0='455'.or.sch0='454').and.dk1=1
                       dok0='../..'+space(27)+dtoc(date1)
                  case sch0='455'.and.dk1=2
                       dok0='../..'+space(27)+dtoc(date1)
                  case sch0='602'
                       dok0='¡. ² ª±   '+space(22)+dtoc(date1)
                  case sch0='621'.or.sch0='721'
                       dok0='«¨µ¢      '+space(22)+dtoc(date1)
                  case (sch0='501'.or.sch0='502').and.dk1=1
                       dok0='®² ¡ ­ª  ¢ ª ± '+space(17)+dtoc(date1)
                  case (sch0='501'.or.sch0='502').and.dk1=2
                       dok0='®² ª ±  ¢ ¡ ­ª '+space(17)+dtoc(date1)
               endcase
                       dok0=dok0+space(40-len(dok0))
                           if dk1=2
                             kkol0=kkol0+kol0
                             ksal0=ksal0+sto0
                           else
                             kkol0=kkol0-kol0
                             ksal0=ksal0-sto0
                           endif
           if sch1='504'
              @  9,28 say '‘-„  K-‘’‚     ‘’‰H‘’'
              @ 10,28 say str(kkol0,j2,j3)+' '+str(ksal0,j2,j3)
           endif
           if sch1='503'
              @  9,28 say '‘-„             ‘’‰H‘’'
              @ 10,41 say str(ksal0,j2,j3)
           endif


          dok01=subs(dok0,1,10)
          dok02=subs(dok0,11,17)
          dok03=subs(dok0,28,13)
          @ 23,10 say 'ˆ‘€Hˆ… H€ …€–ˆŸ’€'
          @ 23,33 get dok01
          @ 23,44 get dok02
          @ 23,62 get dok03
          chet() && read
          dok0=dok01+dok02+dok03

            @ 20,8 say space(70)
               open_arhi(loc0:=11)
               appe blank
               rec_lock()
               set cent off
               repl nom with str(nom0,4),papk with '  0',dok with dok0, ;
               data with data0,vek with subs(vek0,1,2)
               rec_unlock()
               re_0=recno()
               set cent on
               nom0=nom0+1
               @  3,20 say str(nom0,4)
          enddo   &&    ª° © ­  ¶¨ªº« 
      enddo
               case v4=4
               ramka()
               l0=1
               l1='­'
               l3='¤'
          @  2,30 say ' ­ª®¢® ¨§¢«¥·¥­¨¥'
          @  3,29 say '--------------------'
          @  5,22 say '†¥« ¥²¥ «¨ ¢«¨§ ­¥ ¢ ¡ ­ª ² :'
          @  5,52 prompt 'H…'
          @  5,55 prompt '„€'
          menu to l0
          @ 2+ml0,04 clea to 21, 78
           if l0=2
             do while .t.
                  @  2,33 say ' ­ª®¢  ±¬¥²ª     '
                  @  3,32 say '----------------'
                if file ("bank.mem")
                   restore from bank additive
                endif
               if empty(bank1)
               @  7,35 say '‚HˆŒ€Hˆ… !' color 'R+/B'
               @  9,20 say 'H¥ ±²¥ ¯®±®·¥«¨ ³¥¡ ±²° ­¨¶ ²  ­  ¡ ­ª ² !'
               @ 11,13 say 'H ¯° ¢¥²¥ ²®¢  ¢ ¬¥­¾ 5/3 "¥¤ ª¶¨¿ ´¨°¬¥­  ±¬¥²ª  -> „€"'
               @ 13,24 say '°®¶¥¤³° ²  ¹¥ ¡º¤¥ ¯°¥ª° ²¥­ !'
                  inkey(12)
                return
              endif
               @  5,30  prompt '1. Web Site'
               @  7,30  prompt '2. ®²°¥¡¨²¥«±ª® ¨¬¥'
               @  9,30  prompt '3.  °®« '
               @ 11,30  prompt '4. ²¢ °¿­¥ ­  bank.csv'
                   chet()
               menu to v2
                if lastkey()=27
                  return
                endif
                      do case
                        case v2=1
       @ 23,26 say '®²°¥¡¨²¥«±ª®²® ¨¬¥ § ¯¨± ­®!'
       store trim(bank2) to x1
       ! echo &x1| &disc_1\exe\clip.exe
       ! cmd /c start &disc_1\url\&go0-bank.url
       set cursor on ; inkey(5)
                        case v2=2
              @ 23,26 say '®²°¥¡¨²¥«±ª®²® ¨¬¥ § ¯¨± ­®!'
              store trim(bank2) to x1
              ! echo &x1| &disc_1\exe\clip.exe
              inkey(5)
                        case v2=3
              @ 23,31 say ' °®« ²  ¥ § ¯¨± ­a!'
              store trim(bank3) to x1
              ! echo &x1| &disc_1\exe\clip.exe
              inkey(5)
                        case v2=4
               @ 02+ml0,04 clea to 21, 78
               @  2,30 say 'ˆ§° ¡®²¢ ­¥ ­  .csv file'
               @  3,29 say '--------------------------'

                 store us_0+'bank.xls' to x1
                 ! echo &x1| &disc_1\exe\clip.exe
            * do case
            *    case subs(bf00,5,4)='RZBB'.or.subs(bf00,5,4)='BUIN'
                      store us_0+'bank' to x1
                      ! echo &x1| &disc_1\exe\clip.exe
                 @  6,36 say ' ­ª :'
                 @  8,16 say '1. ‘¢ «¿ xls ´®°¬ ²'
                 @  9,16 say '2. ‘ºµ° ­¨ ->  '+us_0+'bank.xls'
                 @ 10,16 say '3. Clpiboard-> '+us_0+'bank.xls'
                 @ 11,16 say '4. ˆ‡’ˆ‰ ‡€ƒ‹€‚Hˆ’… …„‚… ‚š‚ XLS ”€‰‹€'   color 'R+/B'
                 @ 12,16 say '5. Save as: Ctrl+s -> bank.csv  -> Cyrillic (Windows-1251)'
                 @ 13,16 say '6. Field Delimiter: -> |'   color 'R+/B'
               * @ 18,16 say '3. ² xls ´ ©«  ±¥ ª®­¢¥­²¨°  ¢ csv 50 °¥¤  '

                 ! cmd /c start BANK.xls
                   set cursor on
              *   @ 23,17 say '‡  ¤  ±¥ ŠH‚…’ˆ€ ­ ²¨±­¥²¥ ª®© ¤  ¥ ª« ¢¨¸...'
                  inkey(0)
              *   @ 23,17 say '  °®£° ¬ ²  ª®­¢¥°²¨²°  bank.xls ¢ bank.csv '
              *    if file("bank.xls")
              *     eras bank.prn ; eras bank.txt ; eras bank.csv
              *     *  !&disc_1\exe\xlsc\xlscnv.exe bank.xls bank.txt /SEPPIPE
              *     *  !&disc_1\exe\xlsc\xlscnv.exe bank.xls bank.csv
              *    endif
              *    inkey(5)
           *     endcase
               @ 02+ml0,04 clea to 21, 78
             ! cmd /c start %SystemRoot%\notepad.exe bank.csv
               set cursor on ; inkey(5)
                      endcase
              @ 23,15 say space(50)
             enddo
           endif
               set key -6 to
               l1='­'
               l3='­'
               @ 06+ml0,04 clea to 21, 78
               @  2,30 say ' ­ª®¢® ¨§¢«¥·¥­¨¥'
               @  3,29 say '--------------------'
               if ! file ("bank.csv")
                   @ 23,16 say 'Œ®«¿ ­ ¯° ¢¥²¥ -> †¥« ¥²¥ «¨ ¢«¨§ ­¥ ¢ ¡ ­ª ² : „€'
                *  @ 23,18 say '‘ ¬® ´ ©« bank.csv -> Cyrillic (Windows-1251)'
                  inkey(6)
                  return
               endif
               @  6,26 say 'ˆ§° ¡®²¢ ­¥ ­  ² ¡«¨¶ ² ' get l1 valid l1='¤'.or.l1='­'.or.l1='d'
               @  8,32 say '® ¬¥±¥¶¨ ¤/­' get l3 valid l3='¤'.or.l3='­'.or.l3='d'
                  read
                   if lastkey()=27
                       return
                   endif

           @ 06,17 clea to 21,76
       if l1='¤'.or.l1='d'
            bankline0="memoline(ssss,215,i)"
           open_bank(loc0:=1) ; set order to ; dele all ; pack ; set cent on ; eras  aaaa.txt
           set cursor on
          do case
             case subs(bf00,5,4)='RZBB'    //  88888888888888888888888 ,
               raboti()
           // l0 - obsht broy redove v bank.csv
           // i  - poreden red
           // p  - e dylzhina /v stojnost/ mezhdu dve vert. cherti
           // x0 - tsifrata sled prom p p1 p2 p3 ....
           // p se prisvoyava v p&x0 -> p1-p13
              ssss= memoread("bank.csv")
              l0=mlcount(memoread("bank.csv"),215)
               @  4,21 say '¡¹ ¡°®© °¥¤®¢¥ '+str(l0,3)
              for i=1 to l0  &&   cikyl ot parvi do posleden red
                      x0=' '
                      store 0 to p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13
                  for p=1 to len(memoline(ssss,215,i))    &&   red w fajl bank.csv
                   @  4,41 say '²¥ª³¹ °¥¤ '+str(i,3)

                   if subs(memoline(ssss,215,i),p,1)='|' && broi wert. cherti i go privo
                       x0=ltrim(str(val(x0)+1,2))        && v promenlivite p1-p13
                       store p to p&x0
                   endif
                  next
                  appe blank
                  repl datb  with dtoc(ctod(subs(memoline(ssss,215,i),p1+1,10)))
                if val(subs(memoline(ssss,215,i),p3+1,p4-1)) < 0
                  repl kt  with str(abs(val(subs(memoline(ssss,215,i),p3+1,p4-1-p3))),14,2)
                else
                  repl dt    with subs(memoline(ssss,215,i),p3+1,p4-1-p3)
                endif

                if ! empty(subs(memoline(ssss,215,i),p7+1,p8-1-p7))
                  repl reas  with subs(memoline(ssss,215,i),p7+1,p8-1-p7)
                else
                  repl reas  with subs(memoline(ssss,215,i),p2+1,p3-1-p2)
                endif
                  repl sald  with str(val(subs(strtran(subs(memoline(ssss,215,i),p6+1,p7-1-p6),",",""),1,12)),12,2)

                  if ! empty(subs(memoline(ssss,215,i),p9+1,p10-1-p9))
                     repl reas1 with subs(memoline(ssss,215,i),p9+1,p10-1-p9)
                  endif
                  if subs(memoline(ssss,215,i),p8+1,2)='BG'
                     repl iban  with subs(memoline(ssss,215,i),p8+1,22)
                  endif
              *003
              next  // END RZBB
             case subs(bf00,5,4)='UBBS' .or. subs(bf00,5,4)='BUIN'
               raboti()
              ssss= memoread("bank.csv")
              l0=mlcount(memoread("bank.csv"),215)
              @  4,21 say '¡¹ ¡°®© °¥¤®¢¥ '+str(l0,3)
              for i=1 to l0  &&   pretyrswa fajl bank.csv
                   @  4,41 say '²¥ª³¹ °¥¤ '+str(i,3)
                *  @  6,27 say '’¥ª³¹  ¤ ²  '+datb
                      x0=' '
                      store 0 to p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13
                  for p=1 to len(memoline(ssss,215,i))  && red w fajl bank.txt
                   if subs(memoline(ssss,215,i),p,1)='|' && broi werikalni cherti
                       x0=ltrim(str(val(x0)+1,2))
                       store p to p&x0
                   endif
                  next
                  appe blank
                  repl datb with subs(memoline(ssss,215,i),1,p1-1)
                if subs(memoline(ssss,215,i),p3+1,p4-1-p3)='K'
                  repl dt  with subs(memoline(ssss,215,i),p2+1,p3-1-p2)
                  repl sald  with str(val(subs(strtran(subs(memoline(ssss,215,i),p2+1,p3-1-p2),",",""),1,12)),12,2)
                elseif subs(memoline(ssss,215,i),p3+1,p4-1-p3)='D'
                  repl kt  with subs(memoline(ssss,215,i),p2+1,p3-1-p2)
                  repl sald  with str(val(subs(strtran(subs(memoline(ssss,215,i),p2+1,p3-1-p2),",",""),1,12))*(-1),12,2)
                else
                     set cons on
                 aaaa=memoread('aaaa.txt')
                 aaaa0=memoline(ssss,215,i)
                 memowrit('aaaa.txt',aaaa+chr(13)+chr(10)+str(i-1,3)+' '+aaaa0, .F.)
                 @ 23+ml0,15 say 'ˆ¬  ­¥¤®¯³±²¨¬® ³±«®¢¨¥! ‘ ¬® "K" ili "D" a e -> '+subs(memoline(ssss,215,i),p3+1,1)
                 inkey(0.1)  ;  raboti()
                     if lastkey()=27 ; exit ; endif
                     set cons off
                endif

                if ! empty(subs(subs(memoline(ssss,215,i),p5+1,p6-1-p5),1,35))
                   repl reas  with ltrim(subs(subs(memoline(ssss,215,i),p5+1,p6-1-p5),1,35))
                else
                   repl reas  with ltrim(subs(subs(memoline(ssss,215,i),p4+1,p5-1-p4),1,35))
                endif
                   repl reas1 with ltrim(subs(subs(memoline(ssss,215,i),p6+1,p7-1-p6),1,20))
                if len(trim(subs(memoline(ssss,215,i),p8+1,22)))=22 .and. ;
                        subs(subs(memoline(ssss,215,i),p8+1,22),1,2)='BG'
                   repl iban  with subs(memoline(ssss,215,i),p8+1,22)
                endif
              next   // END BUIN  UBBS
          otherwise
               @ 12,10say 'Œ®«¿ ¢º¢¥¤¥²¥ ¡ ­ª®¢ ²  ±¬¥²ª  ¢ µ ° ª²¥°¨±²¨ª ²  ­  ´¨°¬ ² !'
               @ 14,33say 'ƒ« ¢¬® ¬¥­¾ F9'
                 inkey(10)
          endcase
            go top
            do while ! eof()
               store '' to reas0, reas10
               for i = 1 to len(reas)
                  if 191 < asc(subs(reas,i,1)) .and. asc(subs(reas,i,1)) < 256
                     reas0=reas0+chr(asc(subs(reas,i,1))-64)
                  else
                     reas0=reas0+subs(reas,i,1)
                  endif
                  if 191 < asc(subs(reas1,i,1)) .and. asc(subs(reas1,i,1)) < 256
                     reas10=reas10+chr(asc(subs(reas1,i,1))-64)
                  else
                     reas10=reas10+subs(reas1,i,1)
                  endif
               next
                 rec_lock()
                 repl  reas with reas0, reas1 with reas10, datb with dtoc(ctod(trim(datb)))
          do case
             case subs(bf00,5,4)='RZBB'
                   repl dt with str(val(strtran(dt,",",".")),14,2), kt with str(val(strtran(kt,",",".")),14,2)
             case subs(bf00,5,4)='UBBS'.or.subs(bf00,5,4)='BUIN'
                   repl dt with str(val(strtran(dt,",","")),14,2), kt with str(val(strtran(kt,",","")),14,2)
          endcase
                   if val(dt)=0
                      repl dt with space(14)
                   endif
                   if val(kt)=0
                      repl kt with space(14)
                   endif
                 rec_unlock()
                if ! eof() ; skip ; else ; exit ; endif
            enddo
              go top
              dele all for val(dt)=0 .and.val(kt)=0
              pack
       endif
           @ 07,17 clea to 21,76
           open_bank() ;  set filter to
 aaaa=space(0) ;  aaaa=memoread('aaaa.txt')
 if ! empty(aaaa) 
               @  6,35 say '‚HˆŒ€Hˆ… !' color 'R+/B'
               @  8,12 say '€ª® ¯°®£° ¬ ²  ¥ ª®­±² ²¨° «  ¯°®¡«¥¬ ¯°¨ ·¥­¥²® ­  bank.csv'
               @ 10,12 say '²®¢  ®¡¨ª­®¢¥­® ¥ ¯®° ¤¨ ¯®¢¥·¥ ®² 215 ±¨¬¢®«  ¢ °¥¤ .      '
               @ 12,12 say '°®£° ¬ ²  ± ¬  ª®°¨£¨°  ²®§¨ ¯°®¡«¥¬ ¨ ¤°³£® ­¥ ¥ ­¥®¡µ®¤¨¬®.'
               @ 14,12 say '‚º¢ ´ ©«  bank.txt ¥ ¯®ª § ­ ­®¬¥°  ¨ ²¥ª±²  ­  £°¥¸­¨¿ °¥¤.'
                  inkey(12)  
    ! cmd /c "start %SystemRoot%\notepad.exe aaaa.txt  &&  start %SystemRoot%\notepad.exe bank.csv "   
    @ 23+ml0,15 say space(51) ;  @ 23,17say 'H ²¨±­¥²¥ ª®© ¤  ¥ ª« ¢¨¸ §  ¤  ¯°®¤º«¦¨²¥.....' 
    inkey(0) ; eras  aaaa.txt
 endif 
       if l3='¤' ;  set filter to subs(datb,4,3)+subs(datb,9,2)=data0  ;  endif
       go bottom ; go top 
                   x1=086 ; x2=061 ; x3=033 ; x4=094 ; x5=125  && da ne se promenja
                  set key -6 to
                declare fiel[7]
                  fiel[1]='datb'  ;  fiel[2]='dt'   ; fiel[3]='kt'   ; fiel[4]='reas' 
                  fiel[5]='reas1' ;  fiel[6]='iban' ; fiel[7]='sald' 
                declare imem[7]
                  imem[1]='„€’€ '+str(x1,3) ; imem[2]='„…ˆ’ '+str(x2,3)
                *  imem[3]='Š…„ˆ’' ; imem[4]='ˆ‘€Hˆ… H€ ’€H‡€Š–ˆŸ’€' +str(x3,3)
                  imem[3]='Š…„ˆ’' ; imem[4]='ˆ‘€Hˆ… H€ ’€H‡€Š–ˆŸ’€' 
                  imem[5]='H€…„ˆ’…‹ '+str(x4,3)+space(14)+' ' ; imem[6]='IBAN     '+str(x5,3)
                  imem[7]='‘€‹„    '
                @  2, 1,16,78 box ram1 ;  @  17, 5 say '‘ «¤®'
                 dbedit( 3, 2,15+ml0,77,fiel,"pfunk8",'',imem,chr(45),chr(124))
               set filter to subs(datb,4,3)+subs(datb,9,2)=data0 ;  go top
               l1='­' ;  @ 23+ml0,15 say space(51)
                @ 23+ml0,30 say 'ˆ§° ¡®²¢ ­¥ ­  ‘' get l1 valid l1='¤'.or.l1='­'
                read
                   if lastkey()=27
                       return
                   endif
                      set cent off
                      set date brit
                   if l1='¤'
                      banko()   &&   pro4
                   endif
                clos all
                return
             endcase
           loop
          enddo
           set cent off
           set date brit
           return

