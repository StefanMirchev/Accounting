  *FIS8.PRG  asci disk dekl6 pismod mpls grplat plateg protobr1 direk1 mins92 versia
  *     @  0,15  say 'bbbb' ; inkey(0) //kkk
            *************** àß∑®±´ø¢† ±≤†¶ ********************
                            proc stag
                 store 0 to ya0,mn0,da0,ya1,ya2,mn1,mn2,da2,yan0,mon0,dan0
                 store 0 to yau0,mou0,dau0,data_4mrn0,drn0,mru0,dru0,s92_1,s92_4,s92_8,s92_1s,s92_4s,s92_8s
                    ya1=year(datu0)-year(datn0)+1
                 if year(datn0) < year(datu0)
                    ya0=year(datu0)-year(datn0)-1     && ≠• • ¢ ±∫π† £Æ§®≠†
                    mon0=12-mont(datn0)
                    mon1=mont(datn0)
                    store datn0 to datn00

                    do while mont(datn00)=(mon1)
                       if mont(datn00)=(mon1)
                          data_4=val(subs(dtoc(datn00),1,2))
                          dan0=dan0+1
                       endif
                       datn00=datn00+1
                    enddo
                    if data_4=dan0 &&   pri nawyrshen cyal mesec
                       mon0=mon0+1
                       dan0=0
                    endif
                    mou0=mont(datu0)-1
                 else
                    ya0=0                             && •§≠† ® ±∫π† £Æ§®≠†
                    mon0=mont(datu0)-mont(datn0)-1
                    mon1=mont(datn0)
                    store datn0 to datn00
                    do while mont(datn00)=(mon1)
                       if mont(datn00)=(mon1)
                          data_4=val(subs(dtoc(datn00),1,2))
                          dan0=dan0+1
                       endif
                       datn00=datn00+1
                    enddo
                    if data_4=dan0 &&   pri nawyrshen cyal mesec
                       mon0=mon0+1
                       dan0=0
                    endif
                    mou0=0
                 endif
                 dau0=day(datu0)-1
                  @ 17, 6 say 'ä†´•≠§. '+str(data_4,12)
                  @ 18, 6 say '≠†ß≠†∑. '+str(mon0,8)+str(dan0,4)
                  @ 19, 6 say 'ì¢Æ´.   '+str(ya0,4)+str(mou0,4)+str(dau0,4)
                 mn0=mon0+mou0
                 da0=dan0+dau0
                    if da0 < data_4
                    else
                       mn0=mn0+1
                       da0=da0-data_4
                    endif

                    if mn0 < 12
                    else
                     * if .not. ya0=0
                          ya0=ya0+1
                     * endif
                       mn0=mn0-12
                    endif

       *  ya0=37
          store ya0 to kast0
          do slovom
          if ss0=' '
             store 'HìãÄ ÉéÑ.'  to ya2
          else
             store ss0+' ÉéÑ.'  to ya2
          endif
       *  mn0=12
          store mn0 to kast0
          do slovom
          if ss0=' '
             store 'HìãÄ åÖë.'  to mn2
          else
             store ss0+' åÖë.'  to mn2
          endif
       *  da0=24
          store da0 to kast0
          do slovom
          if ss0=' '
             store 'HìãÄ ÑHà '  to da2
          else
             store ss0+' ÑHà '  to da2
          endif

               sele 2
               use mese
               sum suma to s92_8 for nom=str(nom0,6) .and. sch=' 92' .and. stoi=8
               sele 4
               use godn
               sum suma to s92_8s for nom=str(nom0,6) .and. sch=' 92' .and. stoi=8
               s92_8s=+s92_8s+s92_8

               sele 2
               use mese
               sum suma to s92_4 for nom=str(nom0,6) .and. sch=' 92' .and. stoi=4
               sele 4
               use godn
               sum suma to s92_4s for nom=str(nom0,6) .and. sch=' 92' .and. stoi=4
               s92_4s=+s92_4s+s92_4

               sele 2
               use mese
               sum suma to s92_1 for nom=str(nom0,6) .and. sch=' 92' .and. stoi=1
               sele 4
               use godn
               sum suma to s92_1s for nom=str(nom0,6) .and. sch=' 92' .and. stoi=1
               s92_1s=+s92_1s+s92_1

            do case
               case i0=0
                     stg0='é°πÆ    '+str(ya0,2)+'      '+str(mn0,2)+'     '+str(da0,2)
                     trk0=str(ya0,2)+' ÉéÑ,'+str(mn0,2)+' åÖë.'+str(da0,2)+' ÑHà'
                     slo01=ya2+mn2
                     slo02=da2 +space(37-len(da2))+str(s92_8s+s92_4s,10,2)
               case i0=1
                    stg8='  8∑.   '+str(ya0,2)+'      '+str(mn0,2)+'     '+str(da0,2)
                    trk8=str(ya0,2)+' ÉéÑ,'+str(mn0,2)+' åÖë.'+str(da0,2)+' ÑHà'
                    slo81=ya2+mn2
                    slo82=da2+space(37-len(da2))+str(s92_8s,10,2)
               case i0=2
                    stg4='  4∑.   '+str(ya0,2)+'      '+str(mn0,2)+'     '+str(da0,2)
                    trk4=str(ya0,2)+' ÉéÑ,'+str(mn0,2)+' åÖë.'+str(da0,2)+' ÑHà'
                    slo41=ya2+mn2
                    slo42=da2+space(37-len(da2))+str(s92_4s,10,2)
               case i0=3
                    stg4='  1∑.   '+str(ya0,2)+'      '+str(mn0,2)+'     '+str(da0,2)
                    trk4=str(ya0,2)+' ÉéÑ,'+str(mn0,2)+' åÖë.'+str(da0,2)+' ÑHà'
                    slo41=ya2+mn2
                    slo42=da2+space(37-len(da2))+str(s92_1s,10,2)
            endcase
                            return
        **************    ä∞†© ®ß∑®±´ø¢† ±≤†¶ *********************


                                func  protobr1
                 sele 1
                 use &disc_1\job\bala
                 set filter to t='65'
                 go top
                 store recno()  to br0
                 set cent on
   go  br0+7
   repl pola with subs(pola,1,43)+'ì'+subs(buls,1,1)+'ì'+subs(buls,2,1)+'ì'+subs(buls,3,1)+'ì'+subs(buls,4,1);
   +'ì'+subs(buls,5,1)+'ì'+subs(buls,6,1)+'ì'+subs(buls,7,1)+'ì'+subs(buls,8,1)+'ì'+subs(buls,9,1)+'ì ì ì ì ì ì'
   go  br0+11
   repl pola with 'èÆ§Ø®±†≠®≤•: '+ltrim(trim(nam))+',£∞†¶§†≠®≠ ≠† ê•Ø≥°´®™† Å∫´£†∞®ø'
   go  br0+12
   repl pola with '± ØÆ±≤Æø≠•≠ †§∞•±: £∞./±.'+adr00
   go  br0+13
   repl pola with 'Æ°π®≠† '+ltrim(trim(grad))+' Æ°´†±≤ Å≥∞£†±'
   go  br0+14
   set cent on
   repl pola with 'Ø∞®≤•¶†¢†π ãK º '+lkar+', ®ß§†§•≠ ≠† '+dtoc(datk)+' Æ≤ åÇê Å≥∞£†±'
   set cent off
   go  br0+15
   repl pola with 'ÖÉH '+egn0
   go  br0+40
   repl pola with 'è∞•§Æ±≤†¢ø≠†≤† ®≠¥Æ∞¨†∂®ø≤† ß† ???? £.'
   go  br0+56
   repl pola with 'Æ≤ ¨•±•∂  ??  §Æ ¨•±•∂  ??'
            izrab()
   go  br0+57
   repl pola with 'Å∞Æ© §•™´†∞†∂®® Æ°∞.º 1: ?'
   go  br0+66
   repl pola with 'Ñ†≤† '+dtoc(date())+space(27)+'èÆ§Ø®±: .....................'
            if lastkey()=27
               set dele off
               return
            endif
            ll0='2'
            save screen
            set marg to 6
               b1=77
               set filter to  t='65'
               go top
               store recno() to bro
                     do while t='65'
                      *   ? str(recno()-br0,3)+substr(pola,1,75)
                          ? substr(pola,1,75)
                        if .not.eof()
                           skip
                        else
                           exit
                        endif
                     enddo
                     pech()


                                return

                                  func direk1
                 save screen
                   q0=1
                 @ 14,25,21,57 box ram1
                 mrega0='&disc_1\job\'+'mrega.mrg'
                 mreg0=memoread("&mrega0")
                 mreg0=memoedit(mreg0,15,26,20,56,.t.,"fmrega",31,4,1,1)
                 memowrit('&mrega0',mreg0)
                 if .not. empty(trim(subs(memoline(mreg0,31,q0),1,13)))
                     us_1=trim(subs(memoline(mreg0,31,q0),1,15))
                 endif
                 @ 14,24 clea to 21,57
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
                                case  lastkey()=5  &&  ±≤∞•´™† ≠†£Æ∞•
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
                                case  lastkey()=24 && ±≤∞•´™†  ≠†§Æ´≥
                                      if q0 < mlcount(mreg0,31)+1
                                         q0=q0+1
                                      endif
                             endcase
                          return

     *************** è∞Æ∂•§≥∞† ß† Ø†™•≤≠Æ Ø´†≤•¶≠Æ ™∫¨ °æ§¶•≤† ***********
                              proc grplat
         nest0=trim(subs(izb[q0],1,3)+prsl_0+repl('0',12))
                        ss00=str(sum00,12,2)
                        obb0=''
                        set cent off
                        set marg to 0
                        set prin on
                        set prin to p30
    do case
       case subs(bf00,5,4)='RZBB-'
       set date ansi
      *            BAE ≠† ®ßØ∞†π†∑†                     BAE ≠† ØÆ´≥∑†≤•´ø
  ?? '-}{1:F01'+SUBS(bf00,5,8)+'XXXX0000000000}'+'{2:I103'+SUBS(bf00,5,8)+'XXXXN0000}'+'{4:'
  ? ':20:'+nest0
  ? ':23B:CRED'
  ? ':32A:'+strtran(dtoc(date()),'.','')+'BGN'+strtran(ltrim(ss00),'.',',')
  ? ':50K:/'+bf00                           // IBAN ≠†     HÄêÖÑàíÖã
  store '' to asci1
  store fir to asci0
  asci()
  ? ltrim(trim(strtran(asci1,'"','')))      // ®¨• ≠† ¥®∞¨†≤†
  ? ':52D:'+SUBS(bf00,5,8)                  // ÅÄÖ ≠†
  store '' to asci1
  store ba00 to asci0
  asci()
  ? ltrim(trim(asci1))                      // ®¨• ≠† °†≠™†≤†
  ? ':57D:'+subs(ibdo0,5,8)                 // ÅÄÖ ≠†      èéãìóÄíÖã
  store '' to asci1
  store ba00 to asci0
  asci()
  ? ltrim(trim(asci1))                      // ®¨• ≠† °†≠™†≤†
  ? ':59:/'+ibdo0+'PAY'+parag0              // IBAN ≠†
  store '' to asci1
  store bud0 to asci0
  asci()
  ? ltrim(trim(asci1))                      // ime na polichatel
  store '' to asci1
  store subs(obia10,1,35) to asci0
  asci()
  ? ':70:'+ltrim(trim(asci1))
  ? ' /'
  ? '/PROL/NSSI'
  ? '/OPNAT/J'
  ? ':71A:SHA'                 // ≤†™±†≤† ≠† Ø∞•¢Æ§† • ß† ±¨•≤™† ≠† ≠†∞•§®≤•´ø
  ? ':72:/DTYPE/BUDJ/OPER/BISER'  // ¢®§† ≠† Ø´†π†≠• • è∞•¢Æ§≠Æ ≠†∞•¶§†≠• ß† ™∞•§®≤•≠ Ø∞•¢Æ§
  ? '/BAEREF/000000000000000000'
  ? '/DOC/NUM9DOC.NUMDAT'+strtran(dtoc(date()),'.','')
  ? '/PERIOD/BEG'+strtran(dtoc(data2),'.','')+'END'+strtran(dtoc(data3),'.','')
  if sch1=' 11'.or.sch1=' 30'.or.sch1=' 50'
     ? '/EGN/'+trim(egn0)
     store '' to asci1
     store name0 to asci0
     asci()
     ? '/IZL/'+ltrim(trim(asci1))
  else
     ? '/BUL/'+trim(buls0)
     ? '/IZL/Obliged Person'
  endif
  ?
    case subs(bf00,5,4)='UBBS'.or. subs(bf00,5,4)='RZBB'.or.subs(bf00,5,4)='BUIN'
       set cent on
       store '' to asci1
       store subs(bud0,1,30) to asci0
       asci()
       obb0=obb0+'IBAN313|'+ltrim(trim(asci1))+'|'+ibdo0+'|'+subs(ibdo0,5,4)+'BGSF|BGN|'
       store '' to asci1
       store subs(obia10,1,35) to asci0
       asci()
       obb0=obb0+ltrim(ss00)+'|'+ltrim(trim(asci1))+'||'+parag0+'||9|'+strtran(dtoc(date()),'/','')+'|'
       obb0=obb0+strtran(dtoc(data2)+'|'+dtoc(data3),'/','')+'||'+trim(buls0)+'|||'
      if p1=0
         ?? obb0
         p1=p1+1
      else
         ? obb0
      endif
    endcase
      memowrit("p31.prn",memoread("p31.prn")+memoread('p30.prn'))
      set date brit
      set cent on
      set marg to 5
                               return // ™∞†© ≠† Ø´†≤•¶≠Æ

                       func asci

             store '' to asci1
 * for i = 1 to len(asci0)
 *    if 127 < asc(subs(asci0,i,1)) .and. asc(subs(asci0,i,1)) < 192
 *       asci1=asci1+chr(asc(subs(asci0,i,1))+64)
 *    else
 *       asci1=asci1+subs(asci0,i,1)
 *    endif
 * next

         store ''   to asci1
        for i0 = 1 to len(asci0)                  &&   asci -> ansi
            if 127 < asc(subs(asci0,i0,1)) .and. asc(subs(asci0,i0,1)) < 192
               asci1=asci1+chr(asc(subs(asci0,i0,1))+64)
            else
               asci1=asci1+subs(asci0,i0,1)
            endif
        next

                                return


       ******************  è  ã  Ä  í  Ö  Ü  H  à         ****************
                              proc plateg
      ramka() ; @  2,24 say '     àáêÄÅéíÇÄHÖ HÄ èãÄíÖÜHà      '
      b_11=b_11_s  ; b_30=b_30_s ;  b_50=b_50_s
      b_13=b_13+b_14 ; b_15=b_15+b_16 ; b_31=b_31+b_32
      b_40=b_40+b_41 ; b_52=b_52
               if file("ddspl.mem")                            && 6 DDS
                   restore from ddspl.mem additive
               endif
      br4=10
      sum00=0
      erase s0099.prn
      p1=0
      l6='n'
      messec()
      data2=ctod('01'+subs(dtoc(date0),3,8))
      data3=ctod(den0+subs(dtoc(date0),3,8))
     save screen
     @ 15,09,21,71 box ram1
     p0=0
     if 0 < b_11
        p0=p0+1
     endif
     if 0 < b_13
        p0=p0+1
     endif
     if 0 < b_15
        p0=p0+1
     endif
     if 0 < b_25
        p0=p0+1
     endif
     if 0 < b_26
        p0=p0+1
     endif
     if 0 < b_30
        p0=p0+1
     endif
     if 0 < b_31
        p0=p0+1
     endif
     if 0 < b_33
        p0=p0+1
     endif
   * if 0 < b_34
   *    p0=p0+1
   * endif
     if 0 < b_40
        p0=p0+1
     endif
   * if 0 < b_41
   *    p0=p0+1
   * endif
     if 0 < b_42+b_42t
        p0=p0+1
     endif
     if 0 < b_50
        p0=p0+1
     endif
     if 0 < b_51
        p0=p0+1
     endif
     if 0 < b_94
        p0=p0+1
     endif
     if 0 < u_0
        p0=p0+1
     endif
     if 0 < u_1
        p0=p0+1
     endif
     if 0 < u_2
        p0=p0+1
     endif
     if 0 < u_3
        p0=p0+1
     endif
     if 0 < u_4
        p0=p0+1
     endif
     if 0 < u_5
        p0=p0+1
     endif
     if 0 < u_6
        p0=p0+1
     endif
     if 0 < u_7
        p0=p0+1
     endif
     if 0 < x602
        p0=p0+1
     endif
     if 0 < x603
        p0=p0+1
     endif
     if 0 < x604
        p0=p0+1
     endif
     if 0 < x609
        p0=p0+1
     endif
     if 0 < x610
        p0=p0+1
     endif
     if 0 < x611
        p0=p0+1
     endif
     if 0 < x613
        p0=p0+1
     endif
     if 0 < x625
        p0=p0+1
     endif
     if 0 < x631
        p0=p0+1
     endif
     if 0 < x651
        p0=p0+1
     endif
     if 0 < x694
        p0=p0+1
     endif
     if 0 < x700
        p0=p0+1
     endif
     declare izb[p0]
     q0=0
   do case

      case prsl_0=' '
    eras p7.prn
    eras p31.prn
    brm0=1
    @  5,29 say 'Period† ne se popalva v plategnto.'
    @  7,13 say 'á† Ø•∞®Æ§† Æ≤ ' get data2
    @  7,43 say 'á† Ø•∞®Æ§† §Æ ' get data3
    @  9,31 say 'Å∞Æ© ¨•±•∂® ' get brm0 pict "99"
    read


                 @ 13,25 say '      é Å é Å ô Ö H à '
                 set prin on
                 set prin to p3  && §† ≠• ±• Ø∞Æ¨•≠ø
                 set cons off
                 ?
                 ?
                 ?
        ? space(15)+'áÄ èÖêàéÑÄ ' +dtoc(data2)+space(15)+dtoc(data3)
        ?
        ?
         br4=10
     if 0 < b_11
        q0=q0+1
        izb[q0]=' 11 Ñéé ëéã                       '+str(round((b_11)*brm0,2),12,j1)             +'   551111'
     *  memowrit('p3.prn',memoread('p3.prn')+space(10)+izb[q0]+chr(13)+chr(10))
        platpi()
     endif

     if 0 < b_13
        q0=q0+1
        izb[q0]=' 13 Ñéé                           '+str(b_13+b_15+b_26,12,j1)                       +'   551111'
        memowrit('p3.prn',memoread('p3.prn')+space(10)+izb[q0]+chr(13)+chr(10))
        platpi()
     endif


   * if 0 < b_15
   *    q0=q0+1                                                                                   +'   551111'
   *    izb[q0]=' 15  Ñéé  HÄ I à II ™-ø           '+str(b_15,12,j1)                              +'   550101'
   * endif
   *
   * if 0 < b_25
   *    q0=q0+1
   *    izb[q0]=' 25  ÉÄêÄHíàêÄHà ÇáÖåÄHàü  ÉÇêë   '+str(b_25,12,j1)                              +'   555710'
   * endif
   * if 0 < b_26
   *    q0=q0+1
   *    izb[q0]=' 26 íêìÑéÇÄ áãéèéãìKÄ             '+str(b_26,12,j1)                              +'   111111'
   *    memowrit('p3.prn',memoread('p3.prn')+space(10)+izb[q0]+chr(13)+chr(10))
   *  * platpi()
   * endif
     if 0 < b_30
        q0=q0+1
        izb[q0]=' 30 Ñáèé ëéã                      '+str(round(b_30*brm0,2),12,j1)                +'   581111'
     *  memowrit('p3.prn',memoread('p3.prn')+space(10)+izb[q0]+chr(13)+chr(10))
        platpi()
     endif
     if 0 < b_31
        q0=q0+1
        izb[q0]=' 31 Ñáèé                          '+str(b_31+b_33+b_34,12,j1)                    +'   581111'
        memowrit('p3.prn',memoread('p3.prn')+space(10)+izb[q0]+chr(13)+chr(10))
        platpi()
     endif
   *    izb[q0]=' 33  Ñáèé  I à II                 '+str(b_33,12,j1)                              +'   581111'
   *    izb[q0]=' 34  Ñáèé                         '+str(b_34,12,j1)                              +'   581111'
   *    izb[q0]=' 40  ëéñàÄãHà  êÄáïéÑà            '+str(b_40,12,j1)                              +'   080129'
   * if 0 < b_42+b_42t
   *    q0=q0+1
   *    izb[q0]=' 42  HÄó.        Ç/ì àáèã.ÅéãHàóH.'+str(b_42+b_42t,12,j1)                        +'   080134'
   *    set prin to s0001.prn
   *    ? izb[q0]
   *    memowrit('p3.prn',memoread('p3.prn')
   *    platpi()
   * endif
     if 0 < b_50
        q0=q0+1
        izb[q0]=' 50 Háéä ëéã                      '+str(b_50,12,j1)                              +'   561111'
     *  memowrit('p3.prn',memoread('p3.prn')+space(10)+izb[q0]+chr(13)+chr(10))
        platpi()
     endif

     if 0 < b_51
        q0=q0+1
        izb[q0]=' 51 Háéä                          '+str(b_51+b_52,12,j1)                         +'   561111'
        memowrit('p3.prn',memoread('p3.prn')+space(10)+izb[q0]+chr(13)+chr(10))
        platpi()
     endif
                    if ! (x610data0=data0)
                      store 0 to b_94,x603,x610
                    endif
     if 0 < b_94+x603+x610
        q0=q0+1
        izb[q0]=' 94 ÑÄHöñà + x603 + x610          '+str(b_94+x603+x610,12,j1)                         +'   110000'
        memowrit('p3.prn',memoread('p3.prn')+space(10)+izb[q0]+chr(13)+chr(10))
        platpi()
     endif
     if 0 < x700
        q0=q0+1
        izb[q0]='700 í∫∞£Æ¢±™® ∞•£®±≤∫∞            '+str(x700,12,j1)                         +'         '
        memowrit('p3.prn',memoread('p3.prn')+space(10)+izb[q0]+chr(13)+chr(10))
        platpi()
     endif
        set prin to s0001.prn
    *  osumdv0=round((b_11+b_50)*brm0,2)+b_13+b_15+b_16+b_25+b_26+round(b_30*brm0,2);
    *  +b_31+b_33+b_34+b_40+b_41+b_42+b_42t+b_51+b_52+x603+x610+x700
       osumdv0=b_13+b_15+b_16+b_25+b_26;
       +b_31+b_33+b_34+b_40+b_41+b_42+b_42t+b_51+b_52+x603+x610+x700
     *  memowrit('p3.prn',memoread('p3.prn')+space(10)+izb[q0]+chr(13)+chr(10))
    set marg to
    set cons off
    osumdv0=osumdv0+b_94
       set cent off
       set date ansi
    do case
       case subs(bf00,5,4)='RZBB-'
       memowrit(memowrit('p31.prn', memoread('p31.prn')+'-}'))
       memowrit('p30.prn','{1:F01RZBB9155XXXX0000000000}{2:I198RZBB9155XXXXN0000}{4:')
       memowrit('p30.prn', memoread('p30.prn')+CHR(13)+CHR(10)+':20:0610020000000004')
       memowrit('p30.prn', memoread('p30.prn')+CHR(13)+CHR(10)+':12:151')
       memowrit('p30.prn', memoread('p30.prn')+CHR(13)+CHR(10)+':77E::B01:'+strtran(dtoc(date()),'.',''))
       memowrit('p30.prn', memoread('p30.prn')+CHR(13)+CHR(10)+':B1T:'+strtran(str(br4-10,10),' ','0')+'BGN'+strtran(strtran(str(osumdv0,15,2),' ','0'),".",','))
       memowrit('p31.prn', memoread('p30.prn')+CHR(13)+CHR(10)+memoread('p31.prn'))
       set prin on
       set prin to p33.prn
        ?? memoread('p31.prn')
       set prin to
       set prin off
       copy file p33.prn to p31.prn
       case subs(bf00,5,4)='UBBS'.or.subs(bf00,5,4)='RZBB'.or.subs(bf00,5,4)='BUIN'
    endcase
             store subs(us_0,1,len(us_0)-1) to ac_0
             disc0='&disc_0\GOD&dt0\DOO\&go0\PL' &&    +'PL'
             disc1='&disc_0\GOD&dt0\DOO\&go0\'+'PL\'+'pl_'+subs(data0,1,2)+'.txt'
                  if file('p31.prn')
                     copy file p31.prn to '&disc0\'+'pl.txt'
                     copy file p31.prn to '&disc1'
                     copy file p31.prn to 'd:\sync\doc\&go0\'+'PL.txt'
                  endif
       eras p31.prn
       buffer = space(8192)
       set date brit
       set cent on
   endcase

        memowrit('p6.prn',memoread('p4.prn')+memoread('p5.prn')+memoread('p3.prn'))




              b4=0
              do while .t.
                save_1='p'+nulb4()+'.prn'
                if file("&save_1")
                  loop
                else
                   exit
                endif
              enddo

     iz0=achoice(16,10,20,70,izb,,"")
     set prin off
     set cons off
     if lastkey()=13 .and.(.not.iz0=0)
        store val(subs(izb[iz0],1,3)) to sch0
        store subs(izb[iz0],50,12) to parag0
        store val(subs(izb[iz0],35,12)) to sum00
     else
        sch0=0
     endif

     restore screen
                                   return
       *********************** Zaplati rabotnici obb  ********************
                            func mpls
             @ 23,15 say '   àß∞†°Æ≤¢† Ø†™•≤•≠ ¥†©´ ß† Ø´†π†≠• ≠† ß†Ø´†≤®    '

             sele 1
             use spis inde nomi
             mego()
             set cons off
             set relation to nom into spis
             set order to 2
             dns0=' 99'+vek0+data0
             find '&dns0'
             if file("p30.prn")
                eras p30.prn
             endif
             mpls0=''
             b_990=0
          if found()
                 set prin on
                 set prin to p30
                 p1=0
           do while data=data0.and.sch=' 99'
            if .not. empty(spis->bs)
                p1=p1+1
                b_990=b_990+suma
            endif
        * iif (eof()=.T.,exit,skip)
                if .not.eof()
                   skip
                else
                   exit
                endif
           enddo
                set cent on
                set date ansi
                ??  strtran(dtoc(date()),'.','')+bf00+ltrim(str(b_990,10,2))+space(21-len(ltrim(str(b_99,10,2))))+ltrim(str(p1,6))+space(5-len(ltrim(str(p1,6))))
                set date brit
                set cent off
             find '&dns0'
           do while data=data0.and.sch=' 99'
            if .not. empty(spis->bs)
                store '' to asci1
                store spis->name to asci0
                asci()
                mpls0=subs(spis->bs,5,4)+'BGSF'+spis->bs+spis->egn+asci1+space(5)
                store '' to asci1
                store 'áÄèãÄíÄ áÄ åÖëÖñ'+namme0+' '+vek0 to asci0
                asci()
                mpls0=mpls0+ltrim(str(suma,10,2))+space(15-len(ltrim(str(suma,10,2))))+asci1+space(70-len(asci1))
                ? mpls0
            endif
                if .not.eof()
                   skip
                else
                   exit
                endif
           enddo
             store subs(us_0,1,len(us_0)-1) to ac_0
             disc0='&disc_0\GOD&dt0\DOO\&go0\ZP'
             disc1='&disc_0\GOD&dt0\DOO\&go0\'+'ZP\'+'ZP_'+subs(data0,1,2)+'.txt'

               if dirchange("&disc0")=0
                  dirchange("&ac_0")
                  copy file p30.prn to '&disc0\'+'ZP.txt'
                  copy file p30.prn to '&disc1'
               endif
                if dirchange("d:\sync\doc\&go0")=0
                     copy file p30.prn to 'd:\sync\doc\&go0\'+'ZP.txt'
               endif
          endif
             eras p30.prn
             set cons on
             set prin to
             set prin off
             @ 23,15 say space(50)
                            return    //  mpls

       *********************** Osig dohod za godinata ********************

                               proc mins92

      store 0 to pnv0,s92_8 ,s92_8s, s92_4,s92_4s,s92_1,s92_1s
      sele 2
      use mese inde sdni
      sch0=' 92'+vek0
             *  sch0='  9'+vek0  &&  ±≤†∞® ≤∞≥§Æ¢® §-∞® §† ±• Ø≥±≠• ≠®™Æ£† 6

      find '&sch0'
        if found()
         do while sch+vek=sch0.and.(.not.eof())
            if str(nom0,6)=nom
               do case
                  case stoi=8
                       s92_8=s92_8+suma
                       s92_8s=s92_8s+suma
                  case stoi=4
                       s92_4=s92_4+suma
                       s92_4s=s92_4s+suma
                  case stoi=1
                       s92_1=s92_1+suma
                       s92_1s=s92_1s+suma
                   other
                    *  s92_8=s92_8+suma       &&  ±≤†∞® ≤∞≥§Æ¢® §-∞® §† ±• Ø≥±≠•
                    *  s92_8s=s92_8s+suma     &&  ±≤†∞® ≤∞≥§Æ¢® §-∞® §† ±• Ø≥±≠•
               endcase
               pnv0=stoi
                    *  pnv0=4    &&  ±≤†∞® ≤∞≥§Æ¢® §-∞® §† ±• Ø≥±≠•  8/4
               if pnv0=0
                  @ 23,15 say  'Ñ≠•¢≠†≤† ∑.±≤¢™† ≠• • ÆØ∞•§•´•≠†->stoi ≠† ∏®¥∫∞ 92!'
                  inkey(3)
                  @ 23,15 say  '             ëØ∞†¢™®≤• ±† ≠•¢†´®§≠®!!!             '
                  inkey(0)
                  @ 23,15 say space(51)
                  return
               endif
            endif
            if .not.eof()
              skip
            else
              exit
            endif
         enddo
        else
           ? ' Nqma shifar 92 ili taka godina'
        endif
      sele 4
      use godn inde gsdni
      find '&sch0'
        if found()
         do while sch+vek=sch0
            if str(nom0,6)=nom
               do case
                  case stoi=8
                       s92_8=s92_8+suma
                       s92_8s=s92_8s+suma
                  case stoi=4
                       s92_4=s92_4+suma
                       s92_4s=s92_4s+suma
                  case stoi=1
                       s92_1=s92_1+suma
                       s92_1s=s92_1s+suma
                   other
                    *   s92_8=s92_8+suma       &&  ±≤†∞® ≤∞≥§Æ¢® §-∞® §† ±• Ø≥±≠•
                        s92_8s=s92_8s+suma     &&  ±≤†∞® ≤∞≥§Æ¢® §-∞® §† ±• Ø≥±≠•
               endcase
               pnv0=stoi
                   *    pnv0=4    &&  ±≤†∞® ≤∞≥§Æ¢® §-∞® §† ±• Ø≥±≠•  8/4
               if pnv0=0
                  @ 23,15 say  'Ñ≠•¢≠†≤† ∑.±≤¢™† ≠• • ÆØ∞•§•´•≠†->stoi ≠† ∏®¥∫∞ 92!'
                  inkey(3)
                  @ 23,15 say  '               ëØ∞†¢™®≤• ±† ≠•¢†´®§≠®!!!           '
                  inkey(0)
                  @ 23,15 say space(51)
                  return
               endif
               if pnv0=4
                  @ 23,20 say 'ÇHàåÄHàÖ' color 'R+/B'
                  @ 23,30 say  'à¨† 4 ∑†±Æ¢† §≠•¢≠†≤† ±≤¢™†!'
                  inkey(1)
                  @ 23,15 say space(51)
               endif
            endif
            if .not.eof()
              skip
            else
              exit
            endif
         enddo
        else
           ? ' Nqma shifar 92 ili taka godina'
        endif
                               return

      ************** è∞Æ∂•§≥∞† ß† §®±™•≤†           *******************
                        proc disk
           set prin to ; set prin off ; set cons on
              *    ppppppppppppppppppppppppppppppppppppppp
         do case
            case l2='1'
               l1=1
            case l2='2'
        do case
           case v3=1.or.v3=3
                obr0='OBR_'+vek0
           case v3=2
                obr0='TR'
        endcase
               disc0='&disc_0\god&dt0\doo\&go0\'+'&obr0'
               store subs(us_0,1,len(us_0)-1) to ac_0
               if dirchange("&disc0")=0
                   dirchange("&ac_0")
                   do case
                   case v3=1.and.val(subs(data1,4,2)) < 90
                            dele file '&disc0\&go0'+'01.txt'
                            dele file '&disc0\&go0'+'06.txt'
                            copy file s0001.prn to '&disc0\&go0'+'01.txt'
                   case v3=2
                            copy file s0001.prn to '&disc0\&go0'+'62.txt'
                   case v3=3
                            copy file s0001.prn to '&disc0\&go0'+'06.txt'
                   endcase
               endif

            set prin to s0001.prn
         endcase

                        return

   ************* èê®§∞≥¶®≤•´≠Æ ØÆ±¨Æ ß† §®±™•≤® ***************
                     proc pismod
       dvzem() ; store 0 to b_11,b_30,b_50
       messec()
     if me1='01'
        data1=subs(me1,1,1)+subs(me1,2,1)+'/'+str(year(date0)+1,4)
     else
        data1=subs(me1,1,1)+subs(me1,2,1)+'/'+str(year(date0),4)
     endif
  do while .t.
      ramka()
     store 0 to dooh0,zovh0,pkbh0,doph0,dood0,zovd0,pkbd0,dopd0,doov0,zovv0,pkbv0,dopv0
     @ 2,32 say 'èêéíéäéã éÅê.1'
     @ 3,31 say '----------------'
     if (-1 < val(subs(data0,4,2)).and.val(subs(data0,4,2)) < 3).or.(96 < val(subs(data0,4,2)).and.val(subs(data0,4,2)) < 100)
         @ 10,30 say 'Ç∫¢•§•≤• ¨•±•∂†' get data0
         read
     endif
         if lastkey()=27
            exit
         endif
          protobr1()  &&  fis8
  *********************************************************************
  enddo
                     return

          ************  Spravka po chl.72 al.1  begin ********
                               proc chl736
        sele 3
        use &disc_1\fish\nome inde &disc_1\fish\nosi
        find ' 94'
          bss0=substr(bss0,1,12)+obst00
      store data0 to data7
      store data5 to data0
      messec()
      store ms0 to ms3
      store data6 to data0
      messec()
      store ms0 to ms4
      store data7 to data0
    dele file s0001.prn ; dele file s0002.prn ; dele file CL736.XML
     set cent on
     store 0 to x8,x9,x160,x14,x16,x32,x52,x94,x95,x99
     ramka()
     vek1=val(vek0)-1
     @  2,29 say 'ëèêÄÇäÄ èé óã. 73 Äã.1'
     @  3,28 say '------------------------'
     @  7,33 say 'á† £Æ§®≠†' get vek1 pict "9999"
    read
                       if lastkey()=27.or.vek1=0
                           set cent off
                           return
                      endif
    vek1=str(vek1,4)
  ********************Nachalo na broene na rabotelite po tr. dogowor********
             sele 1
             use spis inde nomi
             mego(meg0:=-35)
             set order to 2
             copy stru to ar.dbf field nom
             sele 5
             use ar
             inde on nom to nomar
             use ar inde nomar
             mego(meg0:=-35)
             set order to 2
             set relation to nom into spis
             set filter to sch='  6' .and. vek=vek1 .and. spis->td='ê'
             go top
   do while .not. eof()  && yyy
         nom1=nom ; sele 5 ; find "&nom1"
               if .not. found()
                  appe blank
                  repl nom with nom1
               endif
               sele 4
        if .not.eof() ; skip ; else ; exit ; endif
   enddo
             set relation to
  ******************** Krai broene na rabotelite po tr. dogowor********

  ******************** Nachal na <part1> ******************************

                   if .not.file ("&save_1")
                      han0=fcreate("s0001.prn")
                      fclose(han0)
                  endif
                  save_1='s0001.prn'
                    set prin on
                    set prin to &save_1 &&  §† ≠• ±• Ø∞Æ¨•≠ø
                    set cons off
                 *   @ 23+ml0,15 say space(51)

??'<?xml version="1.0" encoding="windows-1251"?>'
?'<dec736 xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">'
?'<isterm>0</isterm>'
?'<year>&vek1</year>'
?'<part1>'
?'<eik>&buls00</eik>'
 store '' to asci1 ; store fir00 to asci0 ; asci() ; firas=ltrim(trim(strtran(asci1,'"','')))
?'<name>&firas</name>'
?'<phone>&tel00</phone>'
?'<mail>&mail00</mail>'
 store '' to asci1 ; store name00 to asci0 ; asci() ; nameas=ltrim(trim(strtran(asci1,'"','')))
?'<reprname>&nameas</reprname>'
?'<reprident>&egn00</reprident>'
?'</part1>'
?'<part2>'
  ******************** Krai na <part1> ********************************


           ********************* file date time  ********************
                                     proc versia

    @ 17,21 say space (38)
     *    @  0,15  say 'eeeee ' ; inkey(0) //kkk
    * ! cmd /c  &disc_1\EXE\forfiles /P &ver0 /M &ver1 /C "cmd /c echo @fdate @ftime" > aaa.txt
      *   memowrit('aaa.bat','! cmd /c  &disc_1\EXE\forfiles /P &ver0 /M &ver1 /C  cmd /c echo @fdate @ftime> aaa.txt')
     * ! cmd /c  &disc_1\EXE\forfiles /P &ver0 /M &ver1 /C  "cmd /c echo @fdate @ftime"> aaa.txt
* ! cmd /c \disc\hlp\EXE\forfiles /P C:\DISC\ARHI\ARHI\ /M KOSI_23.ZIP /C "cmd /c echo @fdate @ftime" > aaa.txt
 ! cmd /c &disc_1\EXE\forfiles /P &disc_0\ARHI\ARHI\ /M KOSI_23.ZIP /C "cmd /c echo @fdate @ftime" > aaa.txt
      *    @  0,15  say 'ffff ' ; inkey(0) //kkk
      set cursor on ; ssss= memoread("aaa.txt")
    do case
       case subs(ver1,1,4)='Save'
    @ 0,24 say ver1+' v.01 - '+subs(memoline(ssss,21,2),1,9)+'/ ';
               +subs(memoline(ssss,21,2),14,5) color 'G+/N'
       case subs(ver0,8,5)='\ARHI'
    @ 17,23 say 'Ñ†≤† ≠† †∞µ®¢†:  '+subs(memoline(ssss,21,2),1,10)+'/ ';
               +subs(memoline(ssss,21,2),14,5)
    endcase
       inke(7)
       @ 17,21 say space (38)
                                    return
  ******************** Nachal na <part2> ******************************
  ********** individualni dani na rboteshte po tr. dogovor ************
         sele 5
         use ar inde nomar
     do while .not. eof()  // spis na rabot po trud. dog
          nom0=nom
          store 0 to x8,x9,x160,x14,x16,x32,x52,x94,x95,x99

             mego(meg0:=-35)
             set order to 2
             set filter to nom=nom0 .and.vek=vek1
             go top

        do while .not. eof()
          do case
             case sch='  9'
                 x9=x9+suma
             case sch=' 14'
                 x14=x14+suma
             case sch=' 16'
                 x16=x16+suma
             case sch=' 32'
                 x32=x32+suma
             case sch=' 52'
                  x52=x52+suma
             case sch=' 94'
                 x94=x94+suma
                 proz0=stoi
              case sch=' 95'
                  x95=x95+suma
          endcase
           if .not.eof() ; skip ; else ; exit ; endif
        enddo
             mego(meg0:=-5)
             set order to 2
             set filter to nom=nom0 .and.vek=vek1
             go top
     sele 1
     use spis inde nomi
     nom1=nom0
     find "&nom1"
     if .not.found()
         @ 23,15 say space(51)
         @ 23,16 say '          Hø¨† ´®∂• ± ≤Æß® ≤†°≥´† ≠Æ¨•∞           '
         i0=inkey(0)
         return
     endif
         name0=name
           ime0=ime
         prime0=prime
        family0=family
          egn0=egn
           kd0=kd
          if osnn='11'    // vtori / dopylnitelen rt. dogowor- 0
            osnn0='0'
          else
            osnn0='1'
          endif
***************************************************************
**************************************************************
*  s0001 = memoread('c:\ho23\s0001.prn')
*   s0002 = memoread('c:\ho23\s0002.prn')
***************************

   *         1   2     3                3    21
   x95=ltrim(str(round(x94/(proz0/100),2),9,2))
   x9=ltrim(str(round(x94/(proz0/100),2)+x14+x16+x32+x52,9,2))
   x14=ltrim(str(x14+x16+x32+x52,9,2))
   x94=ltrim(str(x94,9,2))
   *   x950=ltrim(str(x95,9,2))


?'<rowsenum>'
?'<correctioncode>&kd0</correctioncode>'
 store '' to asci1 ; store ime0 to asci0 ; asci() ; imeas=ltrim(trim(strtran(asci1,'"','')))
?'<firstname>&imeas</firstname>'
 store '' to asci1 ; store prime0 to asci0 ; asci() ; primeas=ltrim(trim(strtran(asci1,'"','')))
?'<secondname>&primeas</secondname>'
 store '' to asci1 ; store family0 to asci0 ; asci() ;familyas=ltrim(trim(strtran(asci1,'"','')))
?'<thirdname>&familyas</thirdname>'
?'<identtype>0</identtype>'
?'<ident>&egn0</ident>'
?'<ismainemployer>&osnn0</ismainemployer>'
?'<incomedata>'
?'<incomerows>'
?'<rowsenum>'
?'<incomecode>101</incomecode>'
?'<employereik>&buls00</employereik>'
?'<employername>&firas</employername>'
?'<income>&x9</income>'
?'<healthinsbg>&x14</healthinsbg>'
?'<advancetax>&x94</advancetax>'
?'<refundamount>0.00</refundamount>'
?'<deductedtax>&x94</deductedtax>'
?'</rowsenum>'
?'</incomerows>'
   if osnn0='1'
?'<taxbase251>&x95</taxbase251>'
?'<taxbase253>0.00</taxbase253>'
?'<taxbase49>'
?'<taxbase>&x95</taxbase>'
?'<taxbase491>&x95</taxbase491>'
?'<tax>&x94</tax>'
?'<diff18>0.00</diff18>'
?'<sum19deducted>0.00</sum19deducted>'
?'<sum19refund>0.00</sum19refund>'
    endif
?'</taxbase49>'
?'<sumtaxdeducted>&x94</sumtaxdeducted>'
?'</incomedata>'
?'</rowsenum>'

      sele 5
      if .not.eof() ; skip ; else ; exit ; endif

     enddo  // spis na rabot po trud. dog

   ******************** krai na <part2> ******************************

?'</part2>'
?'</dec736>'

          set prin off
          set prin to
          set cons on

          mego(meg0:=-5)
          set marg to
          set cent off
     copy file s0001.prn to spr736.xml
  sele 5
  use
  dele file ar.dbf

                               return
          ************  Spravka po chl.72 al.1  end **************

