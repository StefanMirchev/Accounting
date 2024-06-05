    *FIS7.PRG   dani dopl dvzem izrab harve parvich pech slovom nulb3 nulb4 platpi
    *     @  0,15  say 'bbbb' ; inkey(0) //kkk
    ******************** °®¶¥¤³°  §  ±«®¢  ­  ¯ °¨·­  ±³¬  ****************
                             proc slovom
 store '' to s0,s1,s2,s3,s4,s5,s6,s7,s8,s9
 x=ltrim(str(kast0,14,2))

 N=len(x)-3
 N0=N+2
 p=9
 l1=' '
 ***********
     do while N>0   &&.and.(.not.eof())
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
                     case (.not.sN=' '.or.sN='…„ˆH'.or.sN='„‚€'.or.sN='’ˆ')
               s7=sN+'‘’’ˆH '
                    case sN=' '
               s7=' '
                  endcase
                  do case
                     case l1='y'
               s7=s7+'ˆ '
                     case s8=' '.and. (.not.s9=' ')
               s7=s7+'ˆ '
                     case (.not.s8=' ').and.s9=' '
               s7=s7+'ˆ '
                  endcase
               case P=6                        && µ¨«¿¤­¨
                    ss6=sN
                    if sN='…„ˆH'
               s6='•ˆ‹Ÿ„€ '
                    else
               s6=sN+' •ˆ‹Ÿ„ˆ '
                  endif
                    do case
                       case s8=' '.and.s9=' '.and.(.not.s7=' ')
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
                    if  .not.sN=' '
                       s5=sN+'„…‘…’ '
                    endif
                    case .not.(ss6=' ')
                        do case
                           case ss6='…„ˆH'
                              ss6='…„H€'
                           case ss6='„‚€'
                              ss6='„‚…'
                        endcase
                    if  .not.sN=' '
                        s5=sN+'„…‘…’ ˆ '+ss6
                     else
                        s5=sN+'ˆ '+ss6
                     endif
                    case sN=' '
               s5=' '
                    endcase
                     if s8=' '.and.s9=' ' .and.(.not.s7=' ')
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
                     case (.not.sN=' '.or.sN='…„ˆH'.or.sN='„‚€'.or.sN='’ˆ')
               s4=sN+'‘’’ˆH '
                    case sN=' '
               s4=' '
                  endcase
                       do case
                          case ss5='…„ˆH'
                           s4=s4+'ˆ '
                           case ss6=' '.and.(.not.ss5=' ')
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
                    case .not. s2='…„ˆH'
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
                             return


    ********** °®¶¥¤³°  §  ¯º°¢®­ · «­® ¢º¢¥¦¤ ­¥ ­  µ ° ª²¨°¨±²¨ª¨ ******
                              proc parvich
             if l3='¬'
               sele 2
             else
               sele 4
             endif
                    appe blank  && ŒˆHˆŒ. ‘ˆƒ. „•„
  repl nom with str(nom0,6),sch with '  6', dni with '±', data with data0, vek with vek0
                    appe blank  && ’€’…Hˆ „Hˆ ’…K. Œ…‘…–  &&  ƒ„ 2001
  repl nom with str(nom0,6),sch with '  7', dni with '±', data with data0, vek with vek0
                    appe blank  && ‡€‹€’€ ‡€ ’€’…Hˆ „Hˆ
  repl nom with str(nom0,6),sch with '  8', dni with '±', data with data0, vek with vek0
                    appe blank  &&  ‚‘ˆ—K ’“„‚ ‚š‡H€ƒ€†„…Hˆ… /¡¥§ „/
  repl nom with str(nom0,6),sch with '  9', dni with '±', data with data0, vek with vek0
                    appe blank  && “’H ’“„‚ ‚š‡H€ƒ€†„…Hˆ… /± „/
  repl nom with str(nom0,6),sch with ' 10', dni with '±', data with data0, vek with vek0
            do case
               case td_0='’'    &&   ‘   ‘ ’ ‚ … H ˆ K
                      if god_0 < 60
                       appe blank  && „
  repl nom with str(nom0,6),sch with ' 11', dni with '²', stoi with pr_11,data with data0, vek with vek0
                      else
                       appe blank  && „
  repl nom with str(nom0,6),sch with ' 11', dni with '²', stoi with pr_111,data with data0, vek with vek0
                    appe blank  && „‹. „„  ‘‘’‚…HˆK
  repl nom with str(nom0,6),sch with ' 30', stoi with pr_30, dni with '²', data with data0, vek with vek0
                      endif
                    appe blank  && ‡  ‚  ‡‘‘’‚…HˆK
  repl nom with str(nom0,6),sch with ' 50', stoi with pr_50, dni with '²', data with data0, vek with vek0


               case td_0=''    &&         €   ’ H ˆ – ˆ
                    appe blank  && „  28.7 / 26.2
                      if god_0 < 60
                           if vod0=1
  repl nom with str(nom0,6),sch with ' 13', dni with '±', stoi with pr_13,data with data0, vek with vek0
                           else
  repl nom with str(nom0,6),sch with ' 15', dni with '±', stoi with pr_15,data with data0, vek with vek0
                           endif
                      else
                           if vod0=1
  repl nom with str(nom0,6),sch with ' 13', dni with '±', stoi with pr_113,data with data0, vek with vek0
                           else
  repl nom with str(nom0,6),sch with ' 15', dni with '±', stoi with pr_115,data with data0, vek with vek0
                           endif
                      endif
                    appe blank  && „  
                      if god_0 < 60
                           if vod0=1
  repl nom with str(nom0,6),sch with ' 14', stoi with pr_14, dni with '±', data with data0, vek with vek0
                           else
  repl nom with str(nom0,6),sch with ' 16', stoi with pr_16, dni with '±', data with data0, vek with vek0
                           endif
                      else
                           if vod0=1
  repl nom with str(nom0,6),sch with ' 14', stoi with pr_114, dni with '±', data with data0, vek with vek0
                           else
  repl nom with str(nom0,6),sch with ' 16', stoi with pr_116, dni with '±', data with data0, vek with vek0
                           endif
                      endif
                      if 59 < god_0
                    appe blank  && „š‹Hˆ’…‹H  „  
  repl nom with str(nom0,6) ,sch with ' 31', stoi with pr_31, dni with '±', data with data0, vek with vek0
                    appe blank  && „š‹Hˆ’…‹H „  
  repl nom with str(nom0,6),sch with ' 32', stoi with pr_32, dni with '±', data with data0, vek with vek0
                      endif
                   do case
                      case vod0=2
                      appe blank  && „š‹Hˆ’…‹H   I ª ².
      repl nom with str(nom0,6) ,sch with ' 34', stoi with pr_34, dni with '±', data with data0, vek with vek0
                      case vod0=3
                      appe blank  && „š‹Hˆ’…‹H  II ª ².
       repl nom with str(nom0,6) ,sch with ' 33', stoi with pr_33, dni with '±', data with data0, vek with vek0
                   endcase
                      if god_0 < 60
    * repl nom with str(nom0,6),sch with ' 40', stoi with pr_40, dni with '±', data with data0, vek with vek0
                      else
    * repl nom with str(nom0,6),sch with ' 40', stoi with pr_140, dni with '±', data with data0, vek with vek0
                      endif
    *               appe blank  &&  ‘®¶. °-¤¨ §  ±/ª  ­  ° ¡®²­¨ª 
                      if god_0 < 60
    * repl nom with str(nom0,6),sch with ' 41', stoi with pr_41, dni with '±', data with data0, vek with vek0
                      else
    * repl nom with str(nom0,6),sch with ' 41', stoi with pr_141, dni with '±', data with data0, vek with vek0
                      endif
    *               appe blank  &&  „ ¡®«­¨·¥­
                      if god_0 < 60
    * repl nom with str(nom0,6),sch with ' 42', stoi with 21.75, dni with '±', data with data0, vek with vek0
                      else
    * repl nom with str(nom0,6),sch with ' 42', stoi with 20.25, dni with '±', data with data0, vek with vek0
                      endif
                    appe blank  && ‡  ‚  ‡€ ‘Œ…’K€ H€ ‘‘’‚.
  repl nom with str(nom0,6),sch with ' 51', stoi with pr_51, dni with '±', data with data0, vek with vek0
                    appe blank  && ‡  ‚  ‡€ ‘Œ…’K€ H€ €’.
  repl nom with str(nom0,6),sch with ' 52', stoi with pr_52, dni with '±', data with data0, vek with vek0
                    appe blank  && Š‹€‘
  repl nom with str(nom0,6),sch with '102', dni with '±', stoi with round(gg0*0.6,1), data with data0, vek with vek0


               case td_0='ƒ'    &&        ƒ. „  ƒ  ‚   ˆ
                    appe blank  && „
                      if god_0 < 60
  repl nom with str(nom0,6),sch with ' 13', dni with '±', stoi with pr_13 ,data with data0, vek with vek0
                      else
  repl nom with str(nom0,6),sch with ' 13', dni with '±', stoi with pr_113,data with data0, vek with vek0
                      endif
                    appe blank  && „
                      if god_0 < 60
  repl nom with str(nom0,6),sch with ' 14', stoi with pr_14, dni with '±', data with data0, vek with vek0
                      else
  repl nom with str(nom0,6),sch with ' 14', stoi with pr_114, dni with '±', data with data0, vek with vek0
                      endif
                      if 59 < god_0
                    appe blank  && „š‹Hˆ’…‹H  „  
  repl nom with str(nom0,6) ,sch with ' 31', stoi with pr_31, dni with '±', data with data0, vek with vek0
                    appe blank  && „š‹Hˆ’…‹H  „  
  repl nom with str(nom0,6),sch with ' 32', stoi with pr_32, dni with '±', data with data0, vek with vek0
                      endif
     appe blank  && ‡  ‚  ‡€ ‘Œ…’K€ H€ ‘‘’‚.
  repl nom with str(nom0,6),sch with ' 51', stoi with pr_51, dni with '±', data with data0, vek with vek0
                    appe blank  && ‡  ‚  ‡€ ‘Œ…’K€ H€ €’.
  repl nom with str(nom0,6),sch with ' 52', stoi with pr_52, dni with '±', data with data0, vek with vek0
               endcase
                    appe blank  &&  ƒ ° ­²¨° ­¨ ¢§¥¬ ­¨¿
  repl nom with str(nom0,6),sch with ' 25', stoi with pr_25, dni with '±', data with data0, vek with vek0
                    appe blank  &&  ’°. §«®¯®«³ª 
  repl nom with str(nom0,6),sch with ' 26', stoi with pr_26,dni with '±', data with data0, vek with vek0
                    appe blank  &&  „  „
  repl nom with str(nom0,6),sch with ' 94', stoi with 10,dni with '±', data with data0, vek with vek0
                     if td_0='ƒ'
                        repl stoi with 15
                     endif
                    appe blank  && ‘“Œ€ ‡€ ˆ‡—ˆ‘‹Ÿ‚€H… „
  repl nom with str(nom0,6),sch with ' 92', dni with '±', data with data0, vek with vek0
                    appe blank  && ‹€ƒ€…Œ „•„
  repl nom with str(nom0,6),sch with ' 95', dni with '±', data with data0, vek with vek0
                    appe blank  &&  ‘“Œ€ ‡€ ‹“—€‚€H…
  repl nom with str(nom0,6),sch with ' 99', dni with '±', data with data0, vek with vek0
                              return

  ********************** °®¶¥¤³°  §  ¨­´®°¬ ¶¨¿ §  “‘ ************
                                 proc dani

            sele 1
            use spis inde nomi
            set filter to &fimes0
            go top
            find "&nom1"
          if .not.found()
          endif
          * nom0=val(nom)

            if td='’'
               name_T=name
               egn_T=egn
               bs_T=bs
            endif
            name0=name
            egn0=egn
            lkn0=lkn
            ime0=ime
            prime0=prime
            family0=family
            inic0=inic
            god_0=god
            kd0=kd
            pd0=pd
            pk0=pk
            adr0=adr
            obl0=obl
            osnn0=osnn
            osnp0=trim(osnp)
            set cent on
            datn0=dtoc(datn)
          if dtoc(datp)="  /  /    "
             repl datp with datn
          endif
            datp0=dtoc(datp)
            srok0=dtoc(srok)
            datu0=dtoc(datu)
            chlu0=chlu
            set cent off
            nasm0=nasm
            store osig to osig0
            vazn0=vazn
            rabo0=rabo
            gg0=str(gg,3)
            mm0=str(mm,3)
            dd0=str(dd,3)
            bch0=bch
            vod0=vod
            lkd0=lkd
            kpd0=kpd
            dvd0=dvd
            dpd0=dpd
            pnm0=pnm
            rs0=rs
            pnv0=pnv
            voz0=voz
            vpz0=vpz
            dvz0=dvz   &&  tova e weche e EKATTE
            dpz0=dpz
            td_0=td
            godc0=godc
            oid0=oid
            nkid0=nkid
            nkp0=val(subs(nkp,1,1))
            nkp1=nkp
            mg0=mg
          if val(subs(data0,4,2))<3

          else
            begn0=0
          endif

          sele 7
          use &disc_1\fish\fhlp
          locate for subs(nam,45,4)='&nkid0'  //  .and.kod='208'
          if found()
             nkidnam0=trim(subs(nam,1,42))
          endif

          locate for subs(nam,44,8)='&nkp1' //   .and.kod='207'
          if found()
             nkpnam1=trim(subs(nam,1,42))
          endif
                                 return


      **** -°  §  ¨§·¨±«.  „‹€™€HˆŸ’ ‡€ ‘Œ…’K€ H€ „  “„š†Kˆ *********
                            proc dopl
             ramka()
   @ 2,24 say '„‹€™€HˆŸ ˆ “„š†Kˆ ‡€ '+data0
   @ 3,23 say '-------------------------------'
    b1=55
    store 0 to b0,b9,dop0,doo0,udr0,neobd0,suma0
    sele 1
    use spis inde nomi
    sele 3
    use &disc_1\fish\nome inde &disc_1\fish\nosi
         izrab()
                if lastkey()=27
                   set cons on
                   ekpr0=1
                   return
                endif
                   if l3='¬'
                      sele 2
                      use mese inde sdni
                   else
                       sele 4
                       use godn inde gsdni
                   endif
       store 0 to line0,line1,line2, line9, sec0
      set filter to data=data0.and.(nom_1<=val(nom).and.val(nom)<=nom_2).and.;
      (sch='  8'.or.sch='  9'.or.sch=' 10'.or.sch=' 14'.or.sch=' 16'.or.;
       sch=' 32'.or.sch=' 41'.or.sch=' 52'.or.sch=' 53'.or.sch=' 71'.or.;
       sch=' 95'.or.sch=' 99')
      go top
      coun to line2
         set filter to data=data0.and.(sch='1'.or.sch='2'.or.sch='3').and.(nom_1<=val(nom).and.val(nom)<=nom_2)
         go top
         coun to line1
         line1=line1+line2-8
         go top

                         sch0=sch
                         store '1' to s0,s1
        set rela to
        set marg to 5
        ?
        b00=b00+2
                      do while .not.eof()
          do case
             case sch0='1'
  ? '˜ˆ”š …K€ˆ’“‹€–ˆŸ  H€  „   ‹ € ™ € H ˆ Ÿ ’ €  ‡€  Œ…‘…– '+data0
  ? '                                                      ‘ “ Œ €'
             case sch0='2'
  *  s0='2'
  ? '˜ˆ”š …K€ˆ’“‹€–ˆŸ H€ ‹€™€HˆŸ’€ ‡€ ‘Œ…’K€ H€ „ ‡€ Œ…‘…– '+data0
  ? '                                       „  H  ˆ        ‘ “ Œ €'
             case sch0='3'
  *  s0='3'
  ? '˜ˆ”š …K€ˆ’“‹€–ˆŸ   H€   “  „    š  †  K  ˆ    ‡€  Œ…‘…– '+data0
  ? '                                                      ‘ “ Œ €'
          endcase
        b00=b00+2
                         do while sch=s0  && .or.(.not.eof())  &&  –¨ªº« §  £°³¯ 
                              dni0=0
                              suma0=0
                            do while sch=sch0  && .or.(.not.eof())  &&   –¨ªº« §  ¸¨´º°
                      nom0=nom
                      sele 1
                      find "&nom0"
                       god_0=god
                       td_0=td
                       if l3='¬'
                          sele 2
                       else
                           sele 4
                       endif
                   *  do case
                   *     case prsl_0='¯'
                   *          if 59 < god_0
                   *             skip
                   *             loop
                   *          endif
                   *     case prsl_0='±'
                   *          if god_0  < 60
                   *             skip
                   *             loop
                   *          endif
                   *  endcase
                               if nom=nom0
                                   if dni='¤'
                                       dni0=dni0+stoi
                                   endif
             if substr(sch,1,1)='1'.and.(dni='­'.or.dni='¡') &&  …‡ „„  „
                neobd0=neobd0+suma
             endif
                                   suma0=suma0+suma
                                   do case
                                      case s0='1'
                                           dop0=dop0+suma
                                      case s0='2'
                                           doo0=doo0+suma
                                      case s0='3'
                                           udr0=udr0+suma
                                      case sch0='4'
                                   endcase
                               endif
                              if .not. eof()
                                 skip
                              else
                                 exit
                               endif
                            enddo
                               sele 3
                               find "&sch0"
                           if 0 < suma0
                             if 0 < dni0
                                ? space(2)+sch+' '+nome->hara+'      '+str(dni0,9,2)+'   '+str(suma0,12,j1)
                             else
                                ? space(2)+sch+' '+nome->hara+'                  '+str(suma0,12,j1)
                             endif
                           endif
                              b00=b00+1
                                    if l3='¬'
                                       sele 2
                                    else
                                        sele 4
                                    endif
                               if eof()
                                  exit
                               endif
                               store sch to sch0
         line()
                         enddo
                                       ? space(2)+'-------------------------------------------------------------'
                               do case
                                  case s0='1'
                                       ? '           ‚‘ˆ—K             '+space(19)+str(dop0,12,j1)
                                       ?
                                  case s0='2'
                                       ? '           ‚‘ˆ—K             '+space(19)+str(doo0,12,j1)
                                       ?
                                  case s0='3'
                                       ? '           ‚‘ˆ—K             '+space(19)+str(udr0,12,j1)
                                       ?
                               endcase
                                s0=subs(sch,1,1)
                                b00=b00+3
                      enddo
                       if l3='¬'
                          sele 2
                       else
                           sele 4
                       endif
      set filter to data=data0.and.(nom_1<=val(nom).and.val(nom)<=nom_2).and.;
      (sch='  8'.or.sch='  9'.or.sch=' 10'.or.sch=' 14'.or.sch=' 16'.or.;
       sch=' 32'.or.sch=' 41'.or.sch=' 52'.or.sch=' 53'.or.sch=' 71'.or.;
       sch=' 95'.or.sch=' 99')
      go top
         set relation to sch0 into nome
            ? '˜ˆ”š …K€ˆ’“‹€–ˆŸ H€ ‚ š ‡ H € ƒ  € † „ … H ˆ Ÿ  ‡€ Œ…‘…– '+data0
            ? '                                                      ‘ “ Œ €'
            b00=b00+2

            do while .not.eof()
                  suma0=0
               do while sch=sch0   && .or.(.not.eof())  &&   –¨ªº« §  ¸¨´º°
                      nom0=nom
                      sele 1
                      find "&nom0"
                       god_0=god
                       if l3='¬'
                          sele 2
                       else
                           sele 4
                       endif
                  *   do case
                  *      case prsl_0='¯'
                  *           if 59 < god_0
                  *              skip
                  *              loop
                  *           endif
                  *      case prsl_0='±'
                  *           if god_0  < 60
                  *              skip
                  *              loop
                  *           endif
                  *   endcase
                   if nom=nom0
                       store nom0 to nom1
                       dani()
                       if l3='¬'
                          sele 2
                       else
                           sele 4
                       endif
                       if .not. td_0='’'
                           suma0=suma0+suma
                       endif
                   endif
                  skip
         line()
               enddo
               do case
                  case sch0='  8'
       ? space(2)+sch0+' '+nome->hara+'                  '+str(suma0,12,j1)
       ? space(6)+'„®¯« ¹ ­¨¿  ¯® K’'+space(25)+'+'+ str(dop0,12,j1)
       ? space(47)+'--------------'
       b00=b00+3
                  case sch0='  9'
       ? space(2)+sch0+' '+nome->hara+'   / ¡¥§ „/     '+str(suma0,12,j1)
       ? space(6)+'« ¹ ­¨¿ §  ±¬¥²ª  ­  „'+space(17)+'+'+str(doo0,12,j1)
       b00=b00+2
                  case sch0=' 10'
       ? space(47)+'--------------'
       ? space(2)+sch0+' '+nome->hara+'   / ±   „/     '+str(suma0,12,j1)
       ? space(6)+'« ¹ ­¨¿ §  ±¬¥²ª  ­  „'+space(17)+'-'+str(doo0,12,j1)
       ? space(6)+'H¥®¡« £ ¥¬¨ ±³¬¨         '+space(17)+'-'+str(neobd0,12,j1)
       ? space(47)+'--------------'
       ? space(2)+' 92 ‘³¬  §  ¨§·¨±«¿¢ ­¥ ­  „'+space(16)+' '+str(bp92+bs92,12,j1)
       b00=b00+6
                  case sch0=' 14'
       ? space(2)+sch0+' '+nome->hara+'                  '+str(suma0,12,j1)
       b00=b00+1
                  case sch0=' 16'
       ? space(2)+sch0+' '+nome->hara+'                  '+str(suma0,12,j1)
       b00=b00+1
                  case sch0=' 32'
       ? space(2)+sch0+' '+nome->hara+'                  '+str(suma0,12,j1)
       b00=b00+1
                  case sch0=' 41'
       ? space(2)+sch0+' '+nome->hara+'                  '+str(suma0,12,j1)
       b00=b00+1
                  case sch0=' 52'
       ? space(2)+sch0+' '+nome->hara+'                  '+str(suma0,12,j1)
       b00=b00+1
                  case sch0=' 53'
       ? space(2)+sch0+' '+nome->hara+'                  '+str(suma0,12,j1)
       b00=b00+1
                  case sch0=' 71'
       ? space(2)+sch0+' '+nome->hara+'                  '+str(suma0,12,j1)
       b00=b00+1
                  case sch0=' 94'
       ? space(2)+sch0+' '+nome->hara+'                  '+str(suma0,12,j1)
       b00=b00+1
                  case sch0=' 95'
       ? space(2)+sch0+' '+nome->hara+'                  '+str(suma0,12,j1)
       b00=b00+1
                  case sch0=' 99'
         go bott
       ? space(2)+sch0+' '+nome->hara+'                  '+str(suma0,12,j1)
       b00=b00+1
         exit
               endcase
               store sch to sch0
            enddo
             for i=0 to 48-b00     &&  66-b00
              ?
             next
         pech()
       *  copy file s0001.prn to p5.prn
          set rela to
                    return

      *************** °®¶¥¤³°  §  ¨§° ¡®²¢ ­¥ ­  ¤º°¦. ¢§¥¬ ­¨¿ *********
                          proc dvzem   //
             ramka()
             set dele on
             @  2,24 say 'ˆ‡€’‚€H… H€ „š†€‚Hˆ’… ‚‡…Œ€HˆŸ'
             store 0 to x610,x602,x603,x604,x700
             store data0 to x61data0
                if file("ddspl.mem")                            && 6 DDS
                   restore from ddspl.mem additive
                   if ! (x610data0=data0)
 @  7, 9,14,69 box ram1
 @  8,35 say '‚HˆŒ€Hˆ… !'  color 'R+/B'
 @ 10,11 say '‘²®©­®±²²  ­  „„‘ ¢ ° §¬¥° ­  '+str(x610,9,2)+' ¥ §  ¬¥±¥¶ '+x610data0+'.'
 @ 11,11 say 'Œ®«¿ ­ ¯° ¢¥²¥ ¯°®¶¥¤³° ²  §  „„‘ §  ²¥ª³¹¨¿ ¬¥±¥¶.'
 @ 12,11 say '” ©«º² ¥ ddspl.mem ¬®¦¥ ¤  ¥ ¤®±² ²º·­® ± ¬® ¨§° ¡ 4/6/4.'
 @ 13,11 say '‚ ¯°®²¨¢¥­ ±«³· © ­¿¬  ¤  ±¥ ­ ¯° ¢¨ ¯« ²¥¦­® §  ¤ ­º¶¨²¥!'
                pauza()
                @  5, 8 clea to 14,69
                   endif
               endif
             sele 1
             use spis inde nomi
             set filter to &fimes0
             go top
             mego()
             set order to 2
             sdni0='  1'+vek0+data0
             find "&sdni0"
             if found()
                x1=stoi
             else
             endif
             sdni0=' 80'+vek0+data0
             find "&sdni0"
             if found()
                b80=stoi
             endif
             sdni0=' 81'+vek0+data0
             find "&sdni0"
             if found()
                b81=stoi
             endif
             sdni0=' 82'+vek0+data0
             find "&sdni0"
             if found()
                b82=stoi
             endif
             if b82=0
              *   b82=b81+1
             endif
             sdni0='603'+vek0+data0
             find "&sdni0"
             if found()
                x603=round(suma,j1)
             endif
             sdni0='700'+vek0+data0
             find "&sdni0"
             if found()
                x700=round(suma,j1)
             endif
         set filter to &fimes0 .and. &fimem0
         go top
         store 0 to b_10,b_11,b_11t,b_13,b_14,b_15,b_16,b_25,b_26,b_30,b_31,b_32,b_33,b_34,b_40,ut_4
         store 0 to b_41,b_50,b_51,b_52,b_94,b_95,b_99,b9,b_42,b_42t
         store 0 to doo0,neobo0,neobd0,dooh0,zovh0,pkbh0,doph0,dood0,zovd0,pkbd0,dopd0
         store 0 to doov0,zovv0,pkbv0,dopv0,b92,bp92,bs92
         store 0 to p_11,pt_11,p_13,p_14,p_15,p_16,p_25,p_26,p_30,p_31,p_32,p_33,p_34,p_40,p_42
         store 0 to p_41,p_50,p_51,p_52,p_53,pt_53,p_70,p_71
         store 0 to line0,line1,line2, line9, sec0
         coun to line1
         go top
      do while .not. eof()
         store 0 to xx1
         sele 1
         *   do case
         *      case prsl_0='¯'
         *           if 59 < god
         *              skip
         *              loop
         *           endif
         *      case prsl_0='±'
         *           if god  < 60
         *              skip
         *              loop
         *           endif
         *   endcase

             nom1=nom
             td_0=td
             god_0=god
             kpd0=kpd
             mego()
             set order to 2
          set filter to &fimem0 .and. nom=nom1
          go top
          sb10=0
                      if dni='­'.or.dni='¡' &&  …‡ „„  „
                        neobd0=neobd0+suma
                      endif

          do while .not. eof()

               do case
                  case sch='1'
                      if dni='­'.or.dni='¡' &&  …‡ „„  „
                          neobd0=neobd0+suma
                      endif
                      if dni='¥'.or.dni='¡' &&  …‡ „„  „
                          neobo0=neobo0+suma
                      endif
                   *   if substr(sch,1,1)='1'.and. dni='­'    && .and.(.not.td_0='³')
                   *      neobo0=neobo0+suma
                   *    endif
                        if sch='107'.or.sch='110'.or.sch='151'
                           xx1=xx1+stoi
                        endif
                        if sch='151'
                           b9=b9-round(suma,j1)
                        endif
                  case sch='2'
                       doo0=doo0+suma
                        if sch='201'
                           xx1=xx1+stoi

                           if 59 < god_0
                              bs92=bs92+round(suma,j1)
                           else
                              bp92=bp92+round(suma,j1)
                           endif
                              b92=b92+round(suma,j1)
                        endif
                  case  sch='  7'
                           xx1=xx1+stoi
                  case  sch='  9'
                        b9=b9+round(suma,j1)
                        dooh0=dooh0+1
                        if td_0=''
                           dood0=dood0+round(suma,j1)
                        endif
                        store dood0 to zovd0,pkbd0
                        store dooh0 to pkbh0,doph0
                        dani()   &&  fis4
                        zovh0=zovh0+begn0
                         if l3='¬'
                             sele 2
                          else
                             sele 4
                          endif
                  case  sch=' 10'
                       sb10=round(suma,j1)
                        if td_0=''
                           b_10=round(b_10+suma,j1)
                        endif
                  case  sch=' 11'
                       b_11=b_11+round(suma,j1)
                     if td_0='’'
                        b_11t=b_11t+round(suma,j1)
                        pt_11=stoi
                     endif
                  case  sch=' 13'
                        b_13=b_13+round(suma,j1)
                        p_13=stoi
                  case  sch=' 14'
                     if td_0=''.or.td_0='ƒ'
                        b_14=b_14+round(suma,j1)
                        p_14=stoi
                     endif
                  case  sch=' 15'
                        b_15=b_15+round(suma,j1)
                        p_15=stoi
                  case  sch=' 16'
                     if td_0=''.or.td_0='ƒ'
                        b_16=b_16+round(suma,j1)
                        p_16=stoi
                     endif
                  case  sch=' 25'
                        b_25=b_25+round(suma,j1)
                        p_25=stoi
                  case  sch=' 26'
                        b_26=b_26+round(suma,j1)
                        p_26=stoi
                  case  sch=' 30'
                     if td_0='’'
                        b_30=b_30+round(suma,j1)
                        p_30=stoi
                     endif
                  case  sch=' 31'
                     if td_0=''.or.td_0='ƒ'
                        b_31=b_31+round(suma,j1)
                        dopd0=dopd0+round(suma/stoi*100,j1)
                        p_31=stoi
                     endi
                  case  sch=' 32'
                     if td_0=''.or.td_0='ƒ'
                        b_32=b_32+round(suma,j1)
                        p_32=stoi
                     endi
                  case  sch=' 33'
                     if td_0=''.or.td_0='ƒ'
                        b_33=b_33+round(suma,j1)
                        dopd0=dopd0+round(suma/stoi*100,j1)
                        p_33=stoi
                     endi
                  case  sch=' 34'
                     if td_0=''.or.td_0='ƒ'
                        b_34=b_34+round(suma,j1)
                        dopd0=dopd0+round(suma/stoi*100,j1)
                        p_34=stoi
                     endi
                  case  sch=' 40'
                     if td_0=''.or.td_0='ƒ'
                        b_40=b_40+round(suma,j1)
                        p_40=stoi
                     endi
                  case  sch=' 41'
                     if td_0=''.or.td_0='ƒ'
                        b_41=b_41+round(suma,j1)
                        p_41=stoi
                     endi
                  case  sch=' 42'
                     if td_0=''.or.td_0='ƒ'
                        b_42=b_42+round(suma,j1)
                        p_42=stoi
                     else
                        b_42t=b_42t+round(suma,j1)
                     endi
                  case  sch=' 50'
                     if td_0='’'
                        b_50=b_50+round(suma,j1)
                        p_50=stoi
                     endif
                  case  sch=' 51'
                     if td_0=''.or.td_0='ƒ'
                        b_51=b_51+round(suma,j1)
                        p_51=stoi
                     endif
                  case  sch=' 52'
                     if td_0=''.or.td_0='ƒ'
                        b_52=b_52+round(suma,j1)
                        p_52=stoi
                     endif
                  case  sch=' 92'
                        if td_0=''
                           if 59 < god_0
                              bs92=bs92+round(suma,j1)
                           else
                              bp92=bp92+round(suma,j1)
                           endif
                        endif
                              b92=b92+round(suma,j1)
                  case  sch=' 94'
                        b_94=b_94+round(suma,j1)
                  case  sch=' 99'
                        if td_0=''
                           b_99=b_99+round(suma,j1)
                        endif
                        if td_0='’'
                           b_99t=b_99t+round(suma,j1)
                        endif
               endcase
                            if .not. eof()
                               skip
                            endif
                 line()
          enddo
            if  x1 < xx1 .and. (.not. 0 = sb10)
                set cons on
                @  6,33 say '‚HˆŒ€Hˆ… !'  color 'R+/B'
                @  9,15 say '‡€ ’€“‹…H HŒ… '+nom1+'    '+name0
                @ 11,15 say '™ˆŸ’ ‰ „Hˆ ‡€—…’…Hˆ ‡€ ‘ˆƒ“ˆ’…‹…H ‘’€†  '+str(xx1,4)
                @ 13,15 say 'H€„•‚š‹Ÿ ‰ H€ €’Hˆ’… „Hˆ ‡€ Œ…‘…– '+data0+ '   '+str(x1,2)
                pauza()
                @  6,15 clea to 13,65
                if lastkey()=27
                   set cons on
                   ekpr0=1
                   return NIL
                endif
                set cons off
            endif

            if  x1 > xx1.and.(.not. 0 = sb10).and.kpd0=0
                set cons on
                @  6,33 say '‚HˆŒ€Hˆ… !'  color 'R+/B'
                @  9,15 say '‡€ ’€“‹…H HŒ… '+nom1+'    '+name0
                @ 11,15 say '™ˆŸ’ ‰ „Hˆ ‡€—…’…Hˆ ‡€ ‘ˆƒ“ˆ’…‹…H ‘’€†  '+str(xx1,4)
                @ 13,15 say '…  -Œ€‹šK ’  €’Hˆ’… „Hˆ ‡€ Œ…‘…–  '+data0+ '    '+str(x1,2)
                pauza()
                @  6,15 clea to 13,65
                if lastkey()=27
                   set cons on
                   ekpr0=1
                   return NIL
                endif
                set cons off
            endif
          sele 1
          skip
     enddo
                         zovh0=zovh0+dooh0
                         store  b_13+b_14+b_15+b_16+b_25+b_26+b_11+b_42+b_42t to doov0
                         store  b_31+b_32+b_33+b_34 to dopv0
                         store  b_50+b_51+b_52 to zovv0
                        @ 23,15 say space(51)
                          set dele off

                          return    // dvzem

      ************** °®¶¥¤³°  §  µ ° ª²¥°¨±²¨ª¨ ¢º¢ ¢¥¤®¬®±²²  ***********
                   proc harve
          @ 7, 2  clea to 19,75
          set key -2 to
          @  4,21 say '• ° ª²¥°¨±²¨ª¨ ¢ª«¾·¥­¨ ¢º¢ ¢¥¤®¬®±²²  '
          @  8,15 say '      „‹€™€HˆŸ          ‘ˆƒ“‚Kˆ       “„š†Kˆ'
          @  9,15 say 'Ó                     Ó  Ó           Ó  Ó           Ó'
          @ 20,15 say 'u_0  u_1  u_2  u_3  u_4  u_5  u_6  u_7  u_8  u_9  u10'
          restore from harved  additive
          clea gets
             br0=0
             br1=10
             br2='  '
             br3=15
            do while br0 < 110      && ako broja na kolonite ne se uwelichawat
              br2=ltrim(str(br0,3)) && ne se pipa
              @ br1,br3 get x_&br2
              br0=br0+1
              br1=br1+1
                 if br1=20
                  br1=10
                  br3=br3+5
                 endif
             enddo
               read
        save all like x_* to harved
           restore from namhar  additive
           @ 8, 2  clea to 19,75
          @  7,18 say '„‹€™€HˆŸ                           ‘ˆƒ“‚Šˆ'
          @ 14,34 say '“„š†Šˆˆ'
             br0=0
             br1=9
             br2='  '
             br3=2
            do  while br0 < 10      && ­ ¨¬¥­®¢ ­¨¿ ­  µ ° ª². ¤®¯« ¹ ­¨¿
              br2=ltrim(str(br0,3))
              @ br1,br3 get y_&br2
              br0=br0+1
              br1=br1+1
                 if br1=11
                  br1=9
                  br3=br3+8
                 endif
             enddo

             br1=9
             br3=50
            do  while br0 <  16     && ­ ¨¬¥­®¢ ­¨¿ ­  µ ° ª². ®±¨£³°®¢ª¨
              br2=ltrim(str(br0,3))
              @ br1,br3 get y_&br2
              br0=br0+1
              br1=br1+1
                 if br1=11
                  br1=9
                  br3=br3+8
                 endif
             enddo

             br1=16
             br3=30
            do  while br0 < 22      && ­ ¨¬¥­®¢ ­¨¿ ­  µ ° ª².³¤°º¦ª¨
              br2=ltrim(str(br0,3))
              @ br1,br3 get y_&br2
              br0=br0+1
              br1=br1+1
                 if br1=18
                  br1=16
                  br3=br3+8
                 endif
             enddo
          @ 20,15 say space(56)
          @ 11, 4 say 'u_0     u_1     u_2     u_3     u_4             u_5     u_6     u_7'
          @ 18,10 say '                      u_8     u_9     u_10'
               read
        @ 3, 2  clea to 19,75
        save all like y_* to namhar
          set key -2 to harve
          return

               ********** °®¶¥¤³°  §  ¯¥· ²  ******ffffffffffffffffffff
                            proc izrab
                 ll13='­' // F3-¥¤ ª¶¨¿
                 ll14='¤' // F4-°¥ªº±­ ² ¯¥· ²

                  * ll15='¤'  // F5-°®¤º«¦¥­¨¥
                 b3=1
                 b1=325
                 ekpr0=1
                 @ 18, 2 clea to 21,78
                 @ 23+ml0,15 say space(51)
                 @ 22+ml0,14,24+ml0,66 box ram1
                 @ 18+ml0,66,21+ml0,78 box ram1
                 set key -2 to ddok2
                 set key -3 to ddok2
                 set key -4 to ddok2
                 @ 23+ml0,15 say space(51)
                 @ 23+ml0,15 say 'F3-¥¤ ª¶¨¿ F4-°¥ªº±­ ² ¯¥· ² F5-°®¤º«¦¥­¨¥ ¯¥· ²'
                 @ 19+ml0,68 prompt '… K  € H'
                 @ 20+ml0,68 prompt ' … — € ’'
                 menu to ekpr0
                      @ 18,66 clea to 21,78
                      @ 23+ml0,15 say space(51)
                    if lastkey()=27
                      set cons on
                      set key -2 to
                      set key -3 to
                      set key -4 to
                      return
                    endif
                 set cons off
                 set marg to 0
                 set prin off
              if ll15='¤'   //  F5-°®¤º«¦¥­¨¥
                 b3=1
                 do while .t.
                    save_1='&us_0'+'s'+nulb3()+'.prn'
                    if .not.file ("&save_1")
                        exit
                    endif
                     b3=b3+1
                 enddo
              else
                    if .not.file ("&save_1")
                       han0=fcreate("s0001.prn")
                       fclose(han0)
                    endif
                   !del s*.prn   &&  ¤  ­¥ ±¥ ¯°®¬¥­¿
                   save_1='s0001.prn'
              endif
                if file("&disc_0\s*.prn")
                    !del &disc_0\s*.prn   &&  ¤  ­¥ ±¥ ¯°®¬¥­¿
                    !del &disc_0\zan*.pdf
                endif
                 set prin on
                 set prin to &save_1 &&  ¤  ­¥ ±¥ ¯°®¬¥­¿
                 set cons off
                      set key -2 to
                      set key -3 to
                      @ 23+ml0,15 say space(51)

                            return   //  izrab    fffffffffffffffffffffff


               proc rock
               xx=dtoc(date())+'    '+time()
               save all like xx to pkpi.ntx
               return

                 ********** °®¶¥¤³°  §  ¯¥· ²    ****************
                            proc pech
              clos data
             if lastkey()=27.and.(.not.t0='-')
                set cons on
                ekpr0=1
                set prin off
                set prin to
                set cons on
                return
             endif
          if ll10=' '
             b3=1
          endif
             set marg to 0
             set prin off
             set prin to
          *  set cons on
     if ekpr0=1
               l0=' '
                 @ 23+ml0,15  say 'Alt+PgD - ±²° ­¨¶  ­ ¤®«³ Alt+PgU - ±²° ­¨¶  ­ £®°¥'
             do while .t.
                       save_0='s'+nulb3()+'.prn'
                       @ 0,25 say 'Max row 500   Total row '+str(mlcount(memoread('s0099.prn'),250),4)
                       save1=memoread("&save_0")
                       save1=memoedit(save1,5,1,21+ml0,78,.t.,"fdobav",254,40,1,20)
                       memowrit('&save_0',save1)
                if l0='¤'
                   ekpr0=1
                   exit
                endif
             enddo
     else
       *    do while .t.
       *     if isprinter()=.f.
       *        zvan()
       *        @ 23+ml0,15 say '   ‚ª«¾·¥²¥ ¯°¨­²¥°  ¨ ­ ²¨±­¥²¥ ª®© ¤  ¥ ª« ¢¨¸   '
       *        i0=inkey(0)
       *        if lastkey()=27
       *           set prin off
       *           set prin to
       *           set cons on
       *           return
       *         endif
       *        loop
       *     else
       *        @ 23+ml0,17 say '                                               '
       *        exit
       *     endif
       *    enddo
                              set cons off
                    *     if pb_0='c'
                    *         set prin on
                    *     endif
                    *           do case
                    *              case ll0='1'.and.ll3='1'
                    *               ?? '&l1O'  && µ®°¨§®­² «¥­
                    *              case ll0='2'.and.ll3='1'
                    *               ?? '&l0O' && ¢¥°²¨ª «¥­
                    *           endcase
              raboti()
              do while  .t.
                       save_0='s'+nulb3()+'.prn'
                       save1=memoread("&save_0")
                   if ll13='¤'  //  F3-¥¤ ª¶¨¿
                     * save1=memoread("&save_0")
                       save1=memoedit(save1,5,1,21+ml0,78,.t.,"fdobav",250,40,1,20)
                       memowrit('&save_0',save1)
                   endif
                   if file("&save_0")
                       save_0='s'+nulb3()+'.prn'

                     if ll14='¤'  // F4-Prekasnat pecat "¤/d" ne e
                          copy file &save_0 to &disc_0\&save_0
                    endif

                        b3=b3+1
                        save_0='s'+nulb3()+'.prn'
                save screen
                restore screen
           if file("&save_0").and.ll10=' '
          if s0000='¤'
             memowrit('&disc_0\s0000',memoread('&disc_0\s0000')+save1+chr(13)+chr(10))
             copy file &disc_0\s0000 to s0099.prn
          endif
              ?
               if .not. ll14='­'  // F4-°¥ªº±­ ² ¯¥· ²
                @ 23+ml0,15 say '    ¡º°­¥²¥ «¨±²²  ¨ ­ ²¨±­¥²¥ "ESC"  §  ±²°.'+str(b3,3)
                               do while .t.
                                   pauza()
                                   if lastkey()=27
                                        exit
                                   endif
                               enddo
               endif
                @ 23+ml0,15 say '         °®£° ¬ ²  ¯¥· ² , ¬®«¿ ¨§· ª ©²¥ !       '
           else
              exit
           endif
                   else
                      if lastkey()=27
                          exit
                      endif
                   endif
              enddo
                ?
              if .not. ll14='­' //  F4-°¥ªº±­ ² ¯¥· ²
                @ 23+ml0,15 say  '       ‘«¥¤ ±¯¨° ­¥ ­  ¯¥· ²  ­ ²¨±­¥²¥ "Esc"     '
                pauza()
              endif
                @ 23+ml0,15 say  space(50)
      *     do while .t.
      *      if isprinter()=.F.
      *         @ 23+ml0,15 say '       ‚ª«¾·¥²¥ ¯°¨­²¥°  ¨ ­ ²¨±­¥²¥   "Esc"       '
      *         i0=inkey(0)
      *         loop
      *      else
      *         @ 23+ml0,15 say space(51)
      *         set cons on
      *         ekpr0=1
      *         exit
      *      endif
      *     enddo
              @ 23+ml0,24 say ''
                ?? norm0
* 55555555555555555
               set prin to
               set prin off
     endif
                asci0=save1 ; asci() ; memowrit('s0099.txt','&asci1')

     if s0000='¤'
        memowrit('&disc_0\s0000',memoread('&disc_0\s0000')+save1+chr(13)+chr(10))
        copy file &disc_0\s0000 to s0099.prn
     endif
                           return   // pech


                          func fdobav
                             do case
                                case  lastkey()=27
                                  if l0=' '
                                      l0='¤'
                                  else
                                      l0=' '
                                  endif
                                case  lastkey()=417
                                      l0='­'
                                      b3=b3+1
                                      keyboard chr(27)
                                case  lastkey()=409
                                      l0='­'
                                      b3=b3-1
                                      keyboard chr(27)
                                other
                                      l0=' '
                             endcase
                          return


      ****************  ˆ§«¨±²¢  ­³«¥¢¨ ¯ °²¨¤¨  *******************
                           proc  ddok2
                     save screen
                     @ 23,15 say space(51)
             do case
                case lastkey()=-2
                     ll13='¤'
                     @ 23,27 say '¥¤ ª¶¨¿²  § °¥¤¥­ '
                case lastkey()=-3
                     ll14='­'
                     @ 23,27 say '  °¥ªº±­ ² ¯¥· ²  '
                case lastkey()=-4
                     ll15='¤'
                     ll14='­'
                     @ 23,27 say ' °®¤º«¦¥­¨¥ ¯¥· ² '
                case lastkey()=-33 .or.lastkey()=52
                     s0000='¤'
                     @ 23,27 say '   S0000 ¢ª«¾·¥­   '
                     inkey(1)
                     inkey(2)
                     restore screen
             endcase
                           return



  ****************** „®¡ ¢¿­¥ ­  ­³«¨ ¢ b3 prn*****************
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

 ****************** „®¡ ¢¿­¥ ­  ­³«¨ ¢ b4 prn*****************
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




***************************************************************
function   ISFLOPPYRE (_loc1)
***************************************************************

    local _loc2 := .F.,_loc3 := -1, _loc4, _loc5
    set prin off
    set prin to
    set cons on
    _loc11 := {}
    if _loc1 == 0
        _loc5 := "A:"
    else
        if _loc1 == 1
            _loc5 := "A:"
        endif
    endif

    do while (_loc3 != 0)
        if (nhandle := fcreate (_loc5 + "a!")) == -1
           fclose(nhandle)
            _loc3 := ferror ()
            do case
                case  (_loc3 == 5)
                    _loc4 := "„ˆ‘Š…’€’€ … ‡€™ˆ’…H€ ˆ‹ˆ H… … ‘’€‚…H€"
                 *   LOC3=5
                case  (_loc3 == 3)
                    _loc4 := _loc5 + " “‘’‰‘’‚ H… … ƒ’‚ "
                case  (_loc3 == 13)
                    _loc4 := "„Hˆ’…, ‡€—…’…Hˆ ‡€ ’“„‚ ‘’€†, ‘€ ‘ .‚. € ’. ‚š‡H. … 0 ‡€ " + _loc5
                otherwise
                    _loc4 := " H…€’‘‘H “‘’‰‘’‚ " + _loc5
            endcase
            if _loc3 != 0
               @ 21,14,24,66 box ram1
               @ 22,15 clea to 23,65
               @ 22,15 say '‚HˆŒ€Hˆ… !' color 'R+/B'
               @ 22,26 say _loc4
               @ 23,25 say " return - „š‹†…Hˆ…  ESC - ’Š€‡ "
                inkey (0)
                If lastkey () == 27
                    _loc3 := 0
                     return
                endif

                if lastkey () == 13
               *  if v1=8
               *     loop
               *  else
                     exit
               *  endif
                endif
            endif
        else
        exit
        endif
    enddo
return

  ****************** ˆ¬¥ ­  ¬¥ª¥¶  *****************

                    proc nammese
              do case
                 case data0='01/'+subs(data0,4,2)
                      namme0=' ŸH“€ˆ '
                 case data0='02/'+subs(data0,4,2)
                      namme0=' ”‚“€ˆ '
                 case data0='03/'+subs(data0,4,2)
                      namme0=' Œ€’ '
                 case data0='04/'+subs(data0,4,2)
                      namme0= ' €ˆ‹ '
                 case data0='05/'+subs(data0,4,2)
                      namme0=' Œ€‰ '
                 case data0='06/'+subs(data0,4,2)
                      namme0=' Hˆ '
                 case data0='07/'+subs(data0,4,2)
                      namme0=' ‹ˆ '
                 case data0='08/'+subs(data0,4,2)
                      namme0=' €‚ƒ“‘’ '
                 case data0='09/'+subs(data0,4,2)
                      namme0=' ‘…’…Œ‚ˆ '
                 case data0='10/'+subs(data0,4,2)
                      namme0=' Š’Œ‚ˆ '
                 case data0='11/'+subs(data0,4,2)
                      namme0=' H…Œ‚ˆ '
                 case data0='12/'+subs(data0,4,2)
                      namme0=' „…Š€Œ‚ˆ '
              endcase

                    return

    ******************** ¥· ² ¯« ²¥¦­¨ ****************************
                          proc platpi
        sele 3
        use &disc_1\fish\nome inde &disc_1\fish\nosi
        if l6='n'
           sch1=subs(izb[q0],1,3)
        endif
        find "&sch1"
        if  found()
          hara0=hara
          if l6='n'
              parag0=subs(izb[q0],50,6)
              repl parag with parag0
              store round(val(subs(izb[q0],35,14)),2) to kast0, sum00
          else
              parag0=parag
          endif
          ba0=ba
          ibdo0=bs
          bido0=subs(bs,5,4)+subs(bs,1,2)+'SF'
         if Len(trim(bs))<>22
             set cons on
                @ 16,35 say '‚HˆŒ€Hˆ… !' color 'R+/B'
                @ 18,27 say 'HŸŒ€’… Š…Š’Hˆ €HŠ‚ˆ ‘Œ…’Šˆ! '
                @ 19,16 say 'M‹Ÿ ‚……’… ‘Œ…’Šˆ’… H€ H€…„ˆ’…‹Ÿ ˆ ‹“—€’…‹Ÿ!'
                pauza()
                set cons off
                return
         endif
          bud0= bud
          obia10=subs(obia1,1,50)
          obia20=space(50)
          prom0=trim(prom)
        endif
        if sch1='603'.or.sch1='604'.or.sch1='610'.or.sch1='700'
           obia10=subs(obia10,1,50)
        endif
        if sch1=' 11'.or.sch1=' 30'.or.sch1=' 50'
     *   obia20=trim(ltrim(name0))+'   …ƒH '+egn0+space(34-len(trim(ltrim(name0))))+'Ó'
        endif
     *  store round(val(subs(izb[q0],35,14)),2) to kast0, sum00
         if l6='y'
              set cent on
              @  9,15 say '‡  ¯¥°¨®¤  ®² ' get data2
              @  9,45 say '‡  ¯¥°¨®¤  ¤® ' get data3
              @ 11,15 say '®¿±­¥­¨¿ ' get obia10
              @ 13,15 say '®¿±­¥­¨¿ ' get obia20
              @ 15,15 say '‘³¬  §  ¯« ¹ ­¥ ' get sum00 pict '9999999.99'
              @ 15,51 say '‚¨¤ ¯« ¹ ­¥ ' get parag0
              read
         endif
                store sum00 to kast0
        slovom()
              store '' to  ss00
              for i=1  to 12
                  if i < 12-len(ltrim(str(sum00,12,j1)))+1
                  ss00=ss00+'>'
                  else
                  ss00=ss00+ltrim(str(sum00,12,j1))
                  exit
                  endif
              next
     sele 1
     use &disc_1\job\bala.dbf
     set filter to t='60'
     go top
     store recno()   to br0
       go  br0+1
     repl pola with substr(pola,1,5) + ba00 + substr(pola,26,44)
       go  br0+2
     repl pola with substr(pola,1,7) + gb00 + substr(pola,23,47)
       go  br0+3
     repl pola with substr(pola,1,8) + space(15) + substr(pola,24,46)
       go  br0+5
     repl pola with substr(pola,1,14) + bud0 + substr(pola,47,23)
       go  br0+7
     repl pola with substr(pola,1,8) + ibdo0 + substr(pola,31,29) + bido0 + substr(pola,68,2)
       go  br0+9
     repl pola with substr(pola,1,14) + ba0 + substr(pola,40,21) + parag0 + substr(pola,67,3)
       go  br0+12
     repl pola with substr(pola,1,56) + ss00 + substr(pola,69,1)
       go  br0+14
      repl pola with substr(pola,1,14) + ss0+' ‹E‚€ ¨ '+substr(x,N0,2)+' ‘’'+space(54-len(ss0+' ‹E‚€ ¨ '+substr(x,N0,2)+' ‘’')) + substr(pola,69,1)
       go  br0+16
      repl pola with substr(pola,1,24) + ' '+subs(obia10,1,43)+'Ó'
       go  br0+18
      repl pola with substr(pola,1,17) + obia20+' Ó'
       go  br0+23
     *  spryano za sega
    * repl pola with substr(pola,1,32) + dtoc(data2)+ substr(pola,43,15) + dtoc(data3) + substr(pola,68,2)
      repl pola with substr(pola,1,32) + space(10)+ substr(pola,43,15) + space(10) + substr(pola,68,2)
       go  br0+25

    if sch1=' 11'.or.sch1=' 30'.or.sch1=' 50'
      repl pola with substr(pola,1,17)+'  '+trim(ltrim(name_T))+space(36-len(trim(ltrim(name0))))+'Ó—³¦¤¥±².«¨¶¥Ó'
    else
      repl pola with substr(pola,1,17)+'  '+trim(ltrim(vvid))+space(36-len(trim(ltrim(vvid))))+'Ó—³¦¤¥±².«¨¶¥Ó'
    endif
       go  br0+28
    if sch1=' 11'.or.sch1=' 30'.or.sch1=' 50'
      repl pola with substr(pola,1,7) +space(9) +'      Ó       '+egn_T+'        Ó                   Ó'
    else
      repl pola with substr(pola,1,7) + buls00+'      Ó'+space(25)+'Ó'+space(19)+'Ó'
    endif
       go  br0+30
      repl pola with substr(pola,1,12) + vvid + substr(pola,48,22)
       go  br0+32
    if sch1=' 11'.or.sch1=' 30'.or.sch1=' 50'
      repl pola with substr(pola,1,22) + bs_T + substr(pola,45,15) + subs(bs_T,5,4)+subs(bs_T,1,2)+'BF' + substr(pola,68,2)
    else
      repl pola with substr(pola,1,22) + ibbf0 + substr(pola,45,15) + bibf0 + substr(pola,68,2)
    endif
     sele 1
     go top
     set prin on
     set prin to s0001
     set marg to 8
       ?? 'P12A47'
        ?
      if l6='n'
         ?  subs(izb[q0],1,3)+prsl_0
      else
         ? sch0
      endif
                     do while t='60'
          ? trim(pola)
                     if .not.eof()
                        skip
                     else
                        exit
                     endif
                     enddo
      for i0 = 1 to 3
        ?
      next
          store br4 to b3
          save_1='&us_0'+'s'+nulb3()+'.prn'
          eras &save_1
          memowrit("&save_1",ltrim(memoread("&save_1"))+memoread('s0001.prn')+memoread('s0001.prn'))
          memowrit('p7.prn',memoread('p7.prn')+memoread('&save_1')+chr(13)+chr(10))
          if l6='n'
             do grplat
          else
            memowrit("s0002.prn",ltrim(memoread("s0001"))+memoread('s0001.prn')+memoread('s0001.prn'))
          endif
          br4=br4+1
          set marg to 10
                          return  // platpi
    ******************** K° © ¯¥· ² ¯« ²¥¦­¨ ****************************

