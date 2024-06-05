   *PRO3.PRG aktdis fmrega direk1 disk dostav dospr file_lock inde_lock otvo prodaz vies
   *  @  0,15  say 'abcd ' ; inkey(0) //kkk
      **************   Ñ≠•¢≠®™ ß† §Æ±≤†¢™®≤•  **************
                        proc dostav
              set dele on
              store data0  to data3
           *  store 0 to line0,line1,line2, line9, sec0
           *  do razdds1  &&  sav7
              l1=2 ; i=' ' ; ll1='§'
              store 0 to s110,s120,s130,s140,s150,s160,s170,kl40
      if ll5='§'
              tars1=tars0+space(10-len(tars0))
              ramka()
              @  2,29 say 'ÑHÖÇHàK HÄ èéKìèKàíÖ '
              @  3,28 say '-----------------------'
              @  8,32 say 'é≤ ¨•±•∂ :' get data1  pict '99/99'
              @ 10,32 say 'ÑÆ ¨•±•∂ :' get data2  pict '99/99'
              @ 12,32 say 'ÑÆ±≤†¢∑®™:' get tars1
              chet()
              izrab()
                 if lastkey()=27  ; return ; endif
                 tars0=trim(tars1)
      endif
      if ll5='§'
         ?? 'OL'+sbit0
         prn0='OL'+sbit0
                       if ekpr0=2
                         if file("&disc_0\s0000")
                            !del &disc_0\s0000
                         endif
                           ll0='1'
                        *  b1=val(iif(vprn0=1,'44','38'))
                           b1=44
                           @ 14,27 say 'Å∞Æ© ∞•§Æ¢• ≠† ±≤∞†≠®∂†' get b1 pict "99"
                           chet()
                           raboti()
                           set marg to 9
                       endif
if l1=2
 ? space(60)+'Ñ H Ö Ç H à K   á Ä   è é K ì è K à í Ö'
 ?
 ? space(60)+fir
 ?
 ?  'èÖêàéÑ Æ≤  01/'+data1+' §Æ '+'.... /'+data2+space(110)+'à§•≠≤. ≠Æ¨•∞ N '+dn1
*?  '----------------------------------------------------------------------------------------------------------------------------'
*?  '| N |Ä™≤®¢ ØÆ ±¨®-    | ë≤Æ®≠Æ±≤ |ÑÑë Ø∞® Ø∞®-|ÑÑë Ø∞® Ø∞®-|  Ñ†≠≠® ß† §Æ™≥¨•≠≤†, ±   | Ñ†≠≠® ß† kontragenta               |'
*?  '|   |±∫´† ≠† áë/≥±´≥£†|          |§Æ°®¢†≠•≤Æ ±|§Æ°®¢†≠•≤Æ ±|  ™Æ©≤Æ • Ø∞®§Æ°®≤ †™≤®¢† |                                    |'
*?  '|ØÆ |---------------- |          |Ø∞†¢Æ ≠†    |Ø∞†¢Æ ≠†    |--------------------------|------------------------------------|'
*?  '|∞•§|ë∑•≤.|ÆØ®±†≠®•   |          |Ø∫´•≠ §≠∫∑•≠|∑†±≤®∑•≠    |     |          | §†≤a ≠† |®§•≠≤®¥®™.   |                      |'
*?  '|   |±-™a |≠† †™≤®¢†  |          |™∞•§®≤      |§†≠. ™∞•§®≤ | ¢®§ |  ≠Æ¨•∞   | ®ß§†¢a≠e|≠Æ¨•∞ ØÆ ÑÑë |≠†®¨•≠Æ¢†≠®•          |'
*?  '---------------------------------------------------------------------------------------------------------------------------'
 ?  '------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
 ?  ' NØÆ        Ç®§ ® ≠Æ¨•∞                               à§•≠≤. No    è∞•§¨•≤    é°π† ±≤-±≤   ë≤-±≤   ≠†  Ñé ≠† §Æ±≤†¢   H†∑. §†≠∫™  Ñé ≠† §Æ±≤†¢   H†∑. §†≠∫™   ÉÆ§.™Æ∞•™.'
 ?  ' ∞•§        ≠† §Æ™≥¨•≠≤†            àáèöãHàíÖã        ≠† ®ßØ∫´≠.      ≠†       ≠† ±§•´™.   §Æ±≤†¢.°•ß  ® ¢≠Æ± ± Ø-Æ   ± Ø∞†¢Æ ≠†  ® ¢≠Æ± ± Ø-Æ   ± Ø∞†¢Æ ≠†   ØÆ ∑´.73†´'
 ?  '                                                                   ±§•´™†≤      Ñé + ÑÑë   Ø-¢Æ ≠† ÑK  ≠† Ø∫´•≠  ÑK   Ø∫´•≠   ÑK  ≠† ∑†±≤.  ÑK   ∑†±≤.   ÑK   8 Æ≤ áÑÑë '
 ?  '------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
 ?  '  4   5       6          7               8                9          10                       11            12            13           14           15           16     '
 ?  '------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
  endif
      endif
          store 0 to p0,b0,q0
          b0=12
          open_arhi(loc0:=23)  && nari
          if .not. empty(tars0)
                 set filter to 0 < at(tars0,vid)
                 go top
          endif
       *  count to line1
          go top
          do while .not. eof()
       *     line()
 if (.not.dr='§').or.val(substr(data,1,2))<val(substr(data1,1,2)).or.val(substr(data,1,2))>val(substr(data2,1,2))
                           if .not. eof() ; skip ; loop ; else ; exit ; endif
 endif
              nom0=nom
              data3=data
              vid0=vid
            if dn=space(10).or.(57 < asc(subs(dn,1,1)))
              dn00='999999999 '
            else
              dn00=dn
            endif
              vd0=vd
                 if vd0='11'.or.vd0='12'.or.vd0='13'
                      dok1=substr(dok,1,9)+'*'
                  else
                      dok1=substr(dok,1,10)
                  endif
              sd2=sd
              vi2=vi
              dn0=subs(data,4,2)+data+nom
                open_kobo(loc0:=12)  && nski
                find "&dn0"
                sch2=sch      // nnnnnnnnnnnn
              if ll5='§'
                if ekpr0=1
                *  dok1=substr(dok1,1,6)+' '+sch2
                endif
              endif
                open_dobo(loc0:=22)  && nsdi
                find "&dn0"
                   store 0 to sts0,std0
                   l0=' '
                   do while nom=nom0.and.data=data3
                      if .not. sch='453'
                          sts0=sts0+dsto
                          sme0=sch    &&  Ø∞®´´_3
                      else
                          std0=dsto
                         l0='1'
                      endif
                           if .not. eof() ; skip ; else ; exit ; endif
                   enddo
                         stsd0=str(sts0+std0,j0-2,j1)
                         sts0=str(sts0,j0-2,j1)
                         std0=str(std0,j0-2,j1)
                         store space(j0-2) to s11,s12,s13,s14,s15,s16

                        do case
                           case sd2='≠'
                              s11=stsd0
                              s110=s110+val(s11)
                           case sd2='±'.or.sd2='¢'
                               s12=sts0
                               s13=std0
                               s120=s120+val(s12)
                               s130=s130+val(s13)  && kl.41
                               kl40=kl40+val(s13)
                           case sd2='∑'
                               s14=sts0
                               s15=std0
                               s140=s140+val(s14)
                               s150=s150+val(s15)  && kl.42
                               kl40=kl40+val(s15)
                        endcase
              p0=p0+1
              q0=q0+1
      if ll5='§'
          if ekpr0=1
             if 0.01 < abs(val(str(round(val(s12)*.2,2)-val(s13),11,2)))
                fn0=str(q0,4)+str(abs(round(val(s12)*.2,2)-val(s13)),11,2)
             else
                fn0=space(15)
             endif
                   dok1=substr(dok1,1,6)+' '+sch2
   ? str(q0,4)+i+vid0+i+dn00+i+dok1+i+stsd0+i+i+s11+i+s12+i+s13+i+i+s14+i+s15+i+s16+i+nom0+'-'+substr(data3,1,2)+i+fn0
   * ? str(q0,4)+i+i+sme0+i+i+dok1+i+str(val(stsd0),11,2)+i+i+str(val(s13),11,2)+space(15)+subs(vid0,1,24)+i+i+i+dn00+i+i+i+subs(vid0,26,23)
          else
   ? str(q0,4)+i+vid0+i+dn00+i+dok1+i+stsd0+i+s11+i+s12+i+s13+i+i+s14+i+s15+i+s16+i+nom0+'-'+substr(data3,1,2)
          endif
      endif
               if ll5='§'
                  spri()
                     if ekpr0=2 .and. b0=0
                        ?? 'OL'+sbit0
                     *  ?
                     endif
               endif
                  sele 1
                           if .not. eof() ; skip ; else ; exit ; endif
          enddo
      qd0=str(q0,15)
      if ll5='§'
    ?'            éÅôÄ ëìåÄ áÄ èÖêàéÑÄ'+space(44)+str(s120+s130,12,j1)+i+str(s110,12,j1)+i+i+str(s120,12,j1);
    +i+str(s130,12,j1)+i+i+str(s140,12,j1)+i+str(s150,12,j1)+i+str(s160,12,j1)
  *  ? repl("-",124)
  *  ?'   éÅôÄ ëíéâHéëí HÄ ÑÄHöóHàü KêÖÑàí'+str(s130,11,j1)
  *  ? repl("-",124)

                       if ekpr0=2.and.(.not.pake='CHEF')
                         ?
                         ?
                         ?
                         ? space(129)+'èÆ§Ø®±:...................'
                       endif
     ? norm0
    do  pech
             if file("p*.prn")=.T.
               ! del p????.prn
             endif
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
      endif
  set dele off
                        return

      **************   Ñ≠•¢≠®™ ß† Ø∞Æ§†¶°®≤•  **************
                        proc prodaz
              set dele on
              store data0  to data3
        *     store 0 to line0,line1,line2, line9, sec0
        *     do razdds1   && sav7
              store 0 to x0,p110,p120,p130,p140,p150,p160,p170,p180,p190,p200,p210,p220,p230,p240,p250,p260
              i=' '
              l1=2
              bk0=' '
              ll1='§'
    if ll5='§'  && ≠†∑†´Æ §† ≠• ±• Ø•∑†≤† 2
              tars1=tars0+space(10-len(tars0))
              ramka()
              @  2,29 say 'ÑHÖÇHàK HÄ èêéÑÄÜÅàíÖ'
              @  3,28 say '-----------------------'
              @  8,32 say 'é≤ ¨•±•∂ :' get data1 pict '99/99'
              @ 10,32 say 'ÑÆ ¨•±•∂ :' get data2 pict '99/99'
              @ 12,32 say 'ä≥Ø≥¢†∑  :' get tars1
              @ 23+ml0,19 say 'ë†¨Æ °†≠™Æ¢® "°"  ™†±Æ¢® "™" ¢±®∑™® " " ' get bk0 valid bk0=' '.or.bk0='°'.or.bk0='™'
              chet()
              izrab()
                 if lastkey()=27 ;  return ; endif
             tars0=trim(tars1)
    endif
    if ll5='§'
             ?? 'OL'+sbit0
             prn0='OL'+sbit0
          *  ?
                       b1=285
                       if ekpr0=2
                          ll0='1'
                          if file("&disc_0\s0000")
                             !del &disc_0\s0000
                          endif
                      *   b1=val(iif(vprn0=1,'44','38'))
                          b1=44
                          @ 14,27 say 'Å∞Æ© ∞•§Æ¢• ≠† ±≤∞†≠®∂†' get b1 pict "99"
                          chet()
                          raboti()
                          set marg to 9
                       endif
    endif

         store 0 to p0,b0,q0
         open_arhi(loc0:=13)  && nari
         do case
            case .not. empty(tars0)
                 set filter to 0 < at(tars0,vid)
            case bk0=' '
                 set filter to
            case bk0='°'
                 set filter to subs(dok,40,1)='Å'
            case bk0='™'
                 set filter to .not.subs(dok,40,1)='Å'
         endcase
                    go top
       *  count to line1
                    go top
          do while .not. eof()
       *     line()
 if (.not.dr='Ø').or.val(substr(data,1,2))<val(substr(data1,1,2)).or.val(substr(data,1,2))>val(substr(data2,1,2))

                           if .not. eof() ; skip ; loop ; else ; exit ; endif
 endif
              nom0=nom
              data3=data
              dn0=subs(data,4,2)+data+nom
              sd2=sd
                open_kobo(loc0:=12)  && nski
                find "&dn0"
                   store 0 to sts0,std0
                   do while nom=nom0 .and. data3=data
                      if .not. sch='453'
                          sts0=sts0+ksto
                      else
                          std0=ksto
                      endif
                           if .not. eof() ; skip ; else ; exit ; endif
                   enddo
                         stsd0=sts0+std0
                         sts0=sts0
                         std0=std0
                         store 0 to p11,p12,p13,p14,p15,p16,p17,p18,p19
                         store 0 to p20,p21,p22,p23,p24,p25,p26
                        do case
                           case sd2='Æ'  &&  Æ°´†£†•¨® 20 %
                              p130=p130+sts0
                              p140=p140+std0
                           case sd2='¢'  &&  Çéè
                              p150=p150+sts0
                              p160=p160+std0
                           case sd2='§'  &&   §∞≥£® ±´≥∑†® Ø∞•§¢®§•≠® Æ≤ ß†™Æ≠†
                              p170=p170+std0
                           case sd2='±'   &&  7%
                               p180=p180+sts0
                               p190=p190+std0
                           case sd2='´'   &&  0%
                               p200=p200+sts0
                           case sd2='®'   &&  ®ß≠Æ±
                               p210=p210+sts0
                           case sd2='•'   &&  0%
                               p220=p220+sts0
                           case sd2='ß'   &&
                               p230=p230+sts0
                           case sd2='∑'   &&
                               p240=p240+sts0
                           case sd2='≠'   &&  Æ±Æ°Æ§•≠®
                               p250=p250+sts0
                           case sd2='ø'   &&  Æ±Æ°Æ§•≠®
                               p260=p260+sts0
                        endcase
                      if sd2='Æ'.or.sd2='¢'.or.sd2='±'.or.sd2='´'.or.sd2='®'
                           p110=p110+sts0
                      endif
                      if sd2='Æ'.or.sd2='¢'.or.sd2='§'.or.sd2='±'
                           p12=std0
                           p120=p120+std0
                      endif
                  sele 1
                           if .not. eof() ; skip ; else ; exit ; endif
          enddo
    if ll5='§'
    red1='------------------------------------------------------------------------------------------------------------------'
    red2=' NØo  Ç®§   ÕÆ¨•∞      Ñ†≤†                            à§•≠≤. No   è∞•§¨•≤    é°π† ±≤-±≤  é°π† ∞-∞ ≠†       Ç±®∑™Æ'
    red3=' ∞•§                                 èéãìóÄíÖã             ≠†          ≠†       ≠† ±§•´™.   Ñé ß† Æ°´.     ≠†∑®±´•≠'
    red4='         ≠† §Æ™≥¨•≠≤†                                 ØÆ´≥∑†≤•´ø   ±§•´™†≤†     Ñé + ÑÑë     §Æ±≤†¢™®          ÑÑë'
    red5='------------------------------------------------------------------------------------------------------------------'
    red6='  1   3       4          5               6                7           8                       9              10   '
    red7='------------------------------------------------------------------------------------------------------------------'
      if 0 < p130
           red1 = red1+'-------------'+'-------------'
           red2 = red2+'   Ñé ≠† §Æ±≤'+'   H†∑.ÑÑë ß†'
           red3 = red3+'   ±∫± ±≤†¢™†'+'     §Æ±≤†¢™®'
           red4 = red4+'      20 %   '+'     ØÆ ™. 13'
           red5 = red5+'-------------'+'-------------'
           red6 = red6+'       11    '+'       12    '
           red7 = red7+'-------------'+'-------------'
      endif
      if 0 < p150
           red1 = red1+'-------------'+'-------------'
           red2 = red2+' Ñé ≠† Çéè ® '+'  H†∑®±´•≠   '
           red3 = red3+'  §Æ±≤†¢.ØÆ  '+' ÑÑë ß† Çéè  '
           red4 = red4+' ∑´.82†´.2-4' +' ® §∞. ™.14  '
           red5 = red5+'-------------'+'-------------'
           red6 = red6+'       14    '+'       15    '
           red7 = red7+'-------------'+'-------------'
      endif
      if 0 < p170
           red1 = red1+'-------------'
           red2 = red2+'  H†∑.ÑÑë  ¢ '
           red3 = red3+'  §∞. ±´≥∑†® '
           red4 = red4+'  Ø∞•§.¢ ß†™.'
           red5 = red5+'-------------'
           red6 = red6+'       16    '
           red7 = red7+'-------------'
      endif
      if 0 < p180
           red1 = red1+'-------------'+'-------------'
           red2 = red2+'  Ñé ≠† §Æ±≤ '+'  H†∑.ÑÑë ß† '
           red3 = red3+'  ±∫± ±≤†¢™† '+'   §Æ±≤†¢™®  '
           red4 = red4+'    7/9 %    '+'   ØÆ ™. 17  '
           red5 = red5+'-------------'+'-------------'
           red6 = red6+'       17    '+'       18    '
           red7 = red7+'-------------'+'-------------'
      endif
      if 0 < p200
           red1 = red1+'-------------'
           red2 = red2+' Ñé ≠† §Æ±≤. '
           red3 = red3+' ±∫± ±≤†¢.0% '
           red4 = red4+'  ØÆ £´. III '
           red5 = red5+'-------------'
           red6 = red6+'       19    '
           red7 = red7+'-------------'
      endif
      if 0 < p210
           red1 = red1+'-------------'
           red2 = red2+'             '
           red3 = red3+'  Ñé ≠† ÇéÑ  '
           red4 = red4+'             '
           red5 = red5+'-------------'
           red6 = red6+'       20    '
           red7 = red7+'-------------'
      endif
      if 0 < p220
           red1 = red1+'-------------'
           red2 = red2+' Ñé ≠† §Æ±≤. '
           red3 = red3+' ∑´.140,146% '
           red4 = red4+' ∑´.173 áÑÑë '
           red5 = red5+'-------------'
           red6 = red6+'       21    '
           red7 = red7+'-------------'
      endif
      if 0 < p230
           red1 = red1+'-------------'
           red2 = red2+' Ñé ≠† §Æ±≤. '
           red3 = red3+'≠† ≥±´.ØÆ ∑´.'
           red4 = red4+'21 †´.2 áÑÑë '
           red5 = red5+'-------------'
           red6 = red6+'       22    '
           red7 = red7+'-------------'
      endif
      if 0 < p240
           red1 = red1+'-------------'
           red2 = red2+'   Ñé ØÆ     '
           red3 = red3+' ∑´. 69 †´.2 '
           red4 = red4+'  Æ≤ áÑÑë    '
           red5 = red5+'-------------'
           red6 = red6+'       23    '
           red7 = red7+'-------------'
      endif
      if 0 < p250
           red1 = red1+'-------------'
           red2 = red2+' Ñé ≠† Æ±¢Æ°.'
           red3 = red3+'  §Æ±≤†¢. ®  '
           red4 = red4+'  Æ±¢.  Çéè  '
           red5 = red5+'-------------'
           red6 = red6+'       24    '
           red7 = red7+'-------------'
      endif
      if 0 < p260
           red1 = red1+'-------------'
           red2 = red2+'Ñé ≠† §Æ±≤†¢.'
           red3 = red3+'™†≤Æ ØÆ±∞•§.¢'
           red4 = red4+'≤∞®±≤. Æ-®ø  '
           red5 = red5+'-------------'
           red6 = red6+'       25    '
           red7 = red7+'-------------'
      endif
    *    store 0 to p110,p120,p130,p140,p150,p160,p170,p180,p190,p200,p210,p220,p230,p240,p250,p260
         store 0 to p0,b0,q0
  if l1=2
 ? space(round((len(red1)-41)/2,0))+'Ñ H Ö Ç H à K   á Ä   è ê é Ñ Ä Ü Å à í Ö'
 ?
 ? space(round((len(red1)-45)/2,0))+fir
 ?
 ?  'èÖêàéÑ Æ≤  01/'+data1+' §Æ '+'.... /'+data2+space(len(red1)-58)+'à§•≠≤. ≠Æ¨•∞ N '+dn1
 ?  red1
 ?  red2
 ?  red3
 ?  red4
 ?  red5
 ?  red6
 ?  red7
  endif
    endif     && ™∞†©  §† ≠• ±• Ø•∑†≤† 2
          store 0 to p0,b0,q0
          b0=12
         open_arhi(loc0:=24)  && nari
         go top
         do case
            case .not. empty(tars0)
                 set filter to 0 < at(tars0,vid)
            case bk0=' '
                 set filter to
            case bk0='°'
                 set filter to subs(dok,40,1)='Å'
            case bk0='™'
                 set filter to .not.subs(dok,40,1)='Å'
         endcase
          do while .not. eof()
       *     line()
 if (.not.dr='Ø').or.val(substr(data,1,2))<val(substr(data1,1,2)).or.val(substr(data,1,2))>val(substr(data2,1,2))
                           if .not. eof() ; skip ; loop ; else ; exit ; endif
 endif
              nom0=nom
              data3=data
              vid0=vid
            if dn=space(10).or.(57 < asc(subs(dn,1,1)))
              dn00='999999999 '
            else
              dn00=dn
            endif
                dok1=substr(dok,1,10)
              vd0=vd
              sd2=sd
              vi2=vi
              dn0=subs(data,4,2)+data+nom
                open_dobo(loc0:=12)  && nski
                find "&dn0"
                sch2=sch
                open_kobo(loc0:=19)
                find "&dn0"
                   store 0 to sts0,std0
                   do while nom=nom0.and.data3=data
                      if .not. sch='453'
                          sts0=sts0+ksto
                      else
                          std0=ksto
                      endif
                           if .not. eof() ; skip ; else ; exit ; endif
                   enddo
                         stsd0=str(sts0+std0,j0-2,j1)
                         sts0=str(sts0,j0-2,j1)
                         std0=str(std0,j0-2,j1)
                         store space(j0-2) to p11,p12,p13,p14,p15,p16,p17
                         store space(j0-2) to p18,p19,p20,p21,p22,p23,p24
                         store space(j0-2) to p25,p26,p22,p23,p25,p26
                        do case
                           case sd2='Æ'  &&  20%
                              p13=sts0
                              p14=std0
                           case sd2='¢'  &&  Çéè ¢≠Æ±
                              p15=sts0
                              p16=std0
                           case sd2='§' && §∞≥£® ±´≥∑†® ≠† ≠†∑ ≠† §†≠∫™
                              p17=std0
                              p170=p170
                           case sd2='±'   &&  7%
                               p18=sts0
                               p19=std0
                           case sd2='´'   &&  0%
                               p20=sts0
                           case sd2='®'   &&  ®ß≠Æ±
                               p21=sts0
                           case sd2='•'   &&
                               p22=sts0
                           case sd2='ß'   &&
                               p23=sts0
                           case sd2='∑'   &&
                               p24=sts0
                           case sd2='≠'   &&  Æ±Æ°Æ§•≠®
                               p25=sts0
                           case sd2='ø'   &&
                               p26=sts0
                        endcase
                      if sd2='Æ'.or.sd2='¢'.or.sd2='±'.or.sd2='®'.or.sd2='´'
                           p11=sts0
                      endif
                      if sd2='Æ'.or.sd2='¢'.or.sd2='§'.or.sd2='±'
                           p12=std0
                      endif
              p0=p0+1
              q0=q0+1
      if ll5='§'
             red0=str(q0,4)+i+vid0+i+dn00+i+dok1+i+stsd0+i+p11+i+p12
           if ekpr0=1
                  if vd0='11'.or.vd0='12'.or.vd0='13'
                      red0=subs(red0,1,70)+' '+sch2+'*'+subs(red0,76,39)
                  else
                      red0=subs(red0,1,71)+' '+sch2+subs(red0,76,39)
                  endif
           endif
      if 0 < p130
           red0 = red0+i+p13+i+p14
      endif
      if 0 < p150
           red0 = red0+i+p15+i+p16
      endif
      if 0 < p170
           red0 = red0+i+p17
      endif
      if 0 < p180
           red0 = red0+i+p18+i+p19
      endif
      if 0 < p200
           red0 = red0+i+p20
      endif
      if 0 < p210
           red0 = red0+i+p21
      endif
      if 0 < p220
           red0 = red0+i+p22
      endif
      if 0 < p230
           red0 = red0+i+p23
      endif
      if 0 < p240
           red0 = red0+i+p24
      endif
      if 0 < p250
           red0 = red0+i+p25
      endif
      if 0 < p260
           red0 = red0+i+p26
      endif
          if ekpr0=1
             if 0.01 < abs(val(str(round(val(p13)*.2,2)-val(p14),11,2)))
                fn0=str(q0,4)+str(abs(round(val(p13)*.2,2)-val(p14)),11,2)
                if val(str(round(val(p13)*.09,2)-val(p14),11,2))=0.or.abs(val(str(round(val(p13)*.09,2)-val(p14),11,2))) < 0.03
                   fn0=str(q0,4)+'      9%'
                endif
             else
                fn0=space(15)
             endif

   * if  0 <> val(p13).or.0 <> val(p15).or.0 <> val(p17).or.0 <> val(p18).or.0 <> val(p20).or.;
   *     0 <> val(p21).or.0 <> val(p22).or.0 <> val(p23).or.0 <> val(p24).or.0 <> val(p25).or.0 <> val(p26) .or. subs(red0,67,5)='†≠≥´®'
         ? red0+i+nom0+'-'+substr(data3,1,2)+i+fn0
   * endif
          else
   * if  0 <> val(p13).or.0 <> val(p15).or.0 <> val(p17).or.0 <> val(p18).or.0 <> val(p20).or.;
   *     0 <> val(p21).or.0 <> val(p22).or.0 <> val(p23).or.0 <> val(p24).or.0 <> val(p25).or.0 <> val(p26) .or. subs(red0,67,5)='†≠≥´®'
         ? red0+i+nom0+'-'+substr(data3,1,2)
   * endif
          endif
   if  substr(vid0,11,1)='2'
     x0=x0+val(stsd0)
   endif
      endif
           if ll5='§'
             spri()
                  if ekpr0=2 .and.b0=0
                           ?? 'OL'+sbit0
                  endif
           endif
                  sele 1
                           if .not. eof() ; skip ; else ; exit ; endif
          enddo
      qp0=str(q0,15)
      if ll5='§'
      red8='               éÅôÄ ëìåÄ áÄ èÖêàéÑÄ'+space(41)+str(p110+p120+p230,12,2)+i+str(p110,12,j1)+i+str(p120,12,j1)

      if 0 < p130
           red8 = red8+i+str(p130,12,j1)+i+str(p140,12,j1)
      endif
      if 0 < p150
           red8 = red8+i+str(p150,12,j1)+i+str(p160,12,j1)
      endif
      if 0 < p170
           red8 = red8+i+str(p170,12,j1)
      endif
      if 0 < p180
           red8 = red8+i+str(p180,12,j1)+i+str(p190,12,j1)
      endif
      if 0 < p200
           red8 = red8+i+str(p200,12,j1)
      endif
      if 0 < p210
           red8 = red8+i+str(p210,12,j1)
      endif
      if 0 < p220
           red8 = red8+i+str(p220,12,j1)
      endif
      if 0 < p230
           red8 = red8+i+str(p230,12,j1)
      endif
      if 0 < p240
           red8 = red8+i+str(p240,12,j1)
      endif
      if 0 < p250
           red8 = red8+i+str(p250,12,j1)
      endif
      if 0 < p260
           red8 = red8+i+str(p260,12,j1)
      endif

      ? red8
                       if ekpr0=2.and.(.not.pake='CHEF')
                         ?
                         ?
                         ?
                         ? space(129)+'èÆ§Ø®±:...................'
                       endif

     ? norm0
    pech()
              b4=0
              do while .t.
                save_1='p'+nulb4()+'.prn'
                if file("&save_1")
                  loop
                else
                   exit
                endif
              enddo
             b3=0
             b4=b4-1
             do while .t.
               b3=b3+1
               save_0='s'+nulb3()+'.prn'
               save_1='p'+nulb4()+'.prn'
               if file ("&save_0")
                 copy file &save_0 to &save_1
               else
                  exit
               endif
             enddo

      endif
   set dele off
                         return
      ************** è∞Æ∂•§≥∞† ß† §®±™•≤†           *******************
                        proc disk
   if ll5='§'
           ramka()
       *   if dirchange("a:\")=0
       *       l3=1
       *   else
       *       l3=2
       *   endif
           @  2,27 say 'áÄèàë ÑHÖÇHàñà HÄ ÑàëKÖíÄ'
           @  3,26 say '---------------------------'
               @ 11,15 say 'è∞Æ£∞†¨†≤† Ø∞†¢® ¥†©´Æ¢•≤• pokupki.txt ® prodagbi.txt...'
             inkey(2)

          *    @ 10,17 say 'ÇHàåÄHàÖ !'  color 'R+/B'
          *    @ 10,29 say 'ëãÖÑÇÄ ÑÄ èéëíÄÇàíÖ ÑàëäÖíÄ à ÑÄ'
          *    @ 12,29 say 'èéëéóàíÖ ìëíêéâëíÇéíé'
          *    @ 12,53 prompt 'A:'
          *    @ 12,57 prompt 'B:'
          *    menu to l3
               if lastkey()=27
                  return
               endif
    *                 if l3=1
                         us0='a'
    *                 else
    *                    us0='b'
    *                 endif
    *    if .not. dirchange("&us0:\")=0
    *                @ 10,17 say 'ÇHàåÄHàÖ !'  color 'R+/B'
    *                @ 10,29 say 'ìëíêéâëíÇéíé HÖ ÉéíéÇé áÄ êÄÅéíÄ'
    *                @ 12,17 say 'îÄâãéÇÖíÖ áÄ ÑÑë ôÖ ëÄ áÄèàëÄÕà Ç ÑàêÖäíéêàü'
    *                @ 15,30 say diskname()+':\DISC\GOD&dt0\'+'DDS'
    *                @ 23,17 say 'á† §† Ø∞Æ§∫´¶®≤• ≠†≤®±≠•≤• ™Æ© §† • ™´†¢®∏...'
    *                inkey(0)
    *    endif
      if dirchange("&us0:\")=0
         eras '&us0:\vies.txt'
      endif
     @ 16,17 clea to 18,60
   endif
     set dele on
  *  razdds1()  &&  sav7
     store 0 to s110,s120,s130,s140,s150,s160,s170,b3,x0,p240,p250,p260,kl40
     store 0 to p110,p120,p130,p140,p150,p160,p170,p180,p190,p200,p210,p230
     obr0='  '
     b3=1
     klon0='   0'
     i='   '
     store data0  to data1,data2,data3
   * store 0 to line0,line1,line2, line9, sec0
     set cons off
     set marg to 0
         b1=998
         store 0 to p0,b0,q0
         open_arhi(loc0:=12)  &&  nari
  if ll5='§'
     set prin on
     set prin to &disc0\pokupki.txt
  endif
   * count to line1
   * line1=line1*2
     go top
          do while .not. eof()
   *         line()
*if (.not.dr='§')
 if (.not.dr='§').or.val(substr(data,1,2))<val(substr(data1,1,2)).or.val(substr(data,1,2))>val(substr(data2,1,2))
                           if .not. eof() ; skip ; loop ; else ; exit ; endif
 endif
              nom0=nom
              data3=data
              vid0=vid
              if bg='  '
                rec_lock()
                repl bg with 'BG'
                rec_unlock()
              endif
              bg_0=bg
            if dn=space(10).or.(57 < asc(subs(dn,1,1)))
              dn00='999999999999999'
            else
              dn00=bg_0+dn+dn3
            endif
                dok1=substr(dok,1,10)
              vd0=vd
              sd2=sd
              vi2=vi
                 if subs(papk,3,1)='0'
                    obr0='  '
                 endif
                 if subs(papk,3,1)='1'
                    obr0='01'
                 endif
                 if subs(papk,3,1)='2'
                    obr0='02'
                 endif
              dn0=subs(data,4,2)+data+nom
                open_dobo(loc0:=13)   &&  nsdi
                find "&dn0"
                   store 0 to sts0,std0
                   l0=' '
                   do while nom=nom0
                    store space(j0-3)+'0' to s11,s12,s13,s14,s15,s16,s17
                      if .not. sch='453'
                          sts0=sts0+dsto
                      else
                          std0=dsto
                         l0='1'
                      endif
                           if .not. eof() ; skip ; else ; exit ; endif
                   enddo
                    sts0=str(sts0,j0-2,j1)
                    std0=str(std0,j0-2,j1)
                        do case
                           case sd2='≠'
                              s11=sts0
                           *  s110=s110+val(s11)
                           case sd2='±'.or.sd2='¢'
                               s12=sts0
                               s13=std0
                           *   s120=s120+val(s12)
                           *   s130=s130+val(s13)
                           *   kl40=kl40+val(s13)
                           case sd2='∑'
                               s14=sts0
                               s15=std0
                           *   s140=s140+val(s14)
                           *   s150=s150+val(s15)
                           *   kl40=kl40+val(s15)
                        endcase
                   if .not.(vd0='11'.or.vd0='12'.or.vd0='13')    && DA
                        do case
                           case sd2='≠'
                            * s11=sts0
                              s110=s110+val(s11)
                           case sd2='±'.or.sd2='¢'
                            *  s12=sts0
                            *  s13=std0
                               s120=s120+val(s12)
                               s130=s130+val(s13)
                               kl40=kl40+val(s13)
                           case sd2='∑'
                            *  s14=sts0
                            *  s15=std0
                               s140=s140+val(s14)
                               s150=s150+val(s15)
                               kl40=kl40+val(s15)
                        endcase
                   endif
              p0=p0+1
              q0=q0+1

   if ll5='§'
     asci0='BG'+dn1+i+str(year(date0),4)+subs(data3,1,2)+klon0+str(q0,15)+vd0+;
     substr(vid0,6,10)+space(10)+substr(vid0,17,6)+subs(vek0,1,2)+substr(vid0,23,2)+dn00+;
     substr(vid0,26,23)+space(27)+dok1+space(20)+i+s11+i+s12+i+s13+i+s14+i+;
     s15+i+s16+i+s17+obr0
       as0=1 ; asci()
           if q0=1
              ?? asci1
            else
              ? asci1
            endif
    endif
                  sele 1
                           if .not. eof() ; skip ; else ; exit ; endif
          enddo

    qd0=str(q0,15)
   use
   if ll5='§'
      if 0 < p0
         ?
      endif
                   set prin off
                   set prin to

     if dirchange("&us0:\")=0
         copy file &disc0\pokupki.txt  to &us0:\pokupki.txt
     endif
     set prin on
     set prin to &disc0\prodagbi.txt
   endif
         store 0 to p0,b0,q0
         open_arhi(loc0:=13)  && nari
          do while .not. eof()
    *        line()
 if (.not.dr='Ø').or.val(substr(data,1,2))<val(substr(data1,1,2)).or.val(substr(data,1,2))>val(substr(data2,1,2))
                           if .not. eof() ; skip ; loop ; else ; exit ; endif
 endif
              nom0=nom
              data3=data
              vid0=vid
              if bg='  '
                rec_lock()
                repl bg with 'BG'
                rec_unlock()
              endif
              bg_0=bg

            if dn=space(10).or.(57 < asc(subs(dn,3,1)))
              dn00='999999999999999'
            else
              dn00=bg_0+dn+dn3
            endif
                dok1=substr(dok,1,10)
              vd0=vd
              sd2=sd
              vi2=vi
                 if subs(papk,3,1)='0'
                    obr0='  '
                 endif
                 if subs(papk,3,1)='1'
                    obr0='01'
                 endif
                 if subs(papk,3,1)='2'
                    obr0='02'
                 endif
              dn0=subs(data,4,2)+data+nom
                open_kobo(loc0:=12)  && nski
                find "&dn0"
                   store 0 to sts0,std0
                   do while nom=nom0
                      if .not. sch='453'
                          sts0=sts0+ksto
                      else
                          std0=ksto
                      endif
                           if .not. eof() ; skip ; else ; exit ; endif
                   enddo
                         stsd0=str(sts0+std0,j0-2,j1)
                         sts0=str(sts0,j0-2,j1)
                         std0=str(std0,j0-2,j1)
                         store space(j0-3)+'0' to p11,p12,p13,p14,p15,p16,p17,p18,p19
                         store space(j0-3)+'0' to p20,p21,p22,p23,p24,p25,p26
                         store str(0,j0-2,j1) to p22,p23,p25,p26
                        do case
                           case sd2='Æ'  &&  Æ°´†£†•¨® 20 %
                              p13=sts0
                            * p130=p130+val(p13)
                              p14=std0
                            * p140=p140+val(p14)
                           case sd2='¢'  &&  Çéè
                              p15=sts0
                            * p150=p150+val(p15)
                              p16=std0
                            * p160=p160+val(p16)
                           case sd2='§'  &&   §∞≥£® ±´≥∑†® Ø∞•§¢®§•≠® Æ≤ ß†™Æ≠†
                              p17=std0
                            * p170=p170+val(p17)
                           case sd2='±'   &&  7%
                               p18=sts0
                            *  p180=p180+val(p18)
                               p19=std0
                            *  p190=p190+val(p19)
                           case sd2='´'   &&  0%
                               p20=sts0
                            *  p200=p200+val(p20)
                           case sd2='®'   &&  ®ß≠Æ±
                               p21=sts0
                            *  p210=p210+val(p21)
                           case sd2='•'   &&  Æ±Æ°Æ§•≠®
                               p22=sts0
                            *  p220=p220+val(p22)
                           case sd2='ß'   &&  0%
                               p23=sts0
                            *  p230=p230+val(p23)
                           case sd2='∑'   &&  ®ß≠Æ±
                               p24=sts0
                            *  p240=p240+val(p24)
                           case sd2='≠'   &&  Æ±Æ°Æ§•≠®
                               p25=sts0
                            *  p250=p250+val(p25)
                           case sd2='ø'   &&  Æ±Æ°Æ§•≠®
                               p26=sts0
                            *  p260=p260+val(p26)
                        endcase
                      if sd2='Æ'.or.sd2='¢'.or.sd2='±'.or.sd2='´'.or.sd2='®'
                           p11=sts0
                        *  p110=p110+val(p11)
                      endif
                      if sd2='Æ'.or.sd2='¢'.or.sd2='§'.or.sd2='±'
                           p12=std0
                         * p120=p120+val(p12)
                      endif
                   if .not.(vd0='11'.or.vd0='12'.or.vd0='13')    && DA
                        do case
                           case sd2='Æ'  &&  Æ°´†£†•¨® 20 %
                            * p13=sts0
                              p130=p130+val(p13)
                            * p14=std0
                              p140=p140+val(p14)
                           case sd2='¢'  &&  Çéè
                            * p15=sts0
                              p150=p150+val(p15)
                            * p16=std0
                              p160=p160+val(p16)
                           case sd2='§'  &&   §∞≥£® ±´≥∑†® Ø∞•§¢®§•≠® Æ≤ ß†™Æ≠†
                            * p17=std0
                              p170=p170+val(p17)
                           case sd2='±'   &&  7%
                            *  p18=sts0
                               p180=p180+val(p18)
                            *  p19=std0
                               p190=p190+val(p19)
                           case sd2='´'   &&  0%
                            *  p20=sts0
                               p200=p200+val(p20)
                           case sd2='®'   &&  ®ß≠Æ±
                            *  p21=sts0
                               p210=p210+val(p21)
                           case sd2='•'   &&  Æ±Æ°Æ§•≠®
                            *  p22=sts0
                               p220=p220+val(p22)
                           case sd2='ß'   &&  0%
                            *  p23=sts0
                               p230=p230+val(p23)
                           case sd2='∑'   &&  ®ß≠Æ±
                            *  p24=sts0
                               p240=p240+val(p24)
                           case sd2='≠'   &&  Æ±Æ°Æ§•≠®
                            *  p25=sts0
                               p250=p250+val(p25)
                           case sd2='ø'   &&  Æ±Æ°Æ§•≠®
                            *  p26=sts0
                               p260=p260+val(p26)
                        endcase
                      if sd2='Æ'.or.sd2='¢'.or.sd2='±'.or.sd2='´'.or.sd2='®'
                         * p11=sts0
                           p110=p110+val(p11)
                      endif
                      if sd2='Æ'.or.sd2='¢'.or.sd2='§'.or.sd2='±'
                         * p12=std0
                           p120=p120+val(p12)
                      endif
                   endif
              p0=p0+1
              q0=q0+1

   if ll5='§'
     asci0='BG'+dn1+i+str(year(date0),4)+subs(data3,1,2)+klon0+str(q0,15)+vd0+;
     substr(vid0,6,10)+space(10)+substr(vid0,17,6)+subs(vek0,1,2)+substr(vid0,23,2)+dn00+;
     substr(vid0,26,23)+space(27)+dok1+space(20)+i+p11+i+p12+i+p13+i+p14+i+p15;
     +str(0,15)+i+p16+i+p17+i+p18+i+p19+i+p20+i+p21+i+p22+i+p23+i+p24+i+p25+i+p26+obr0
       as0=1 ; asci()
           if q0=1
              ?? asci1
            else
              ? asci1
            endif
   endif
                  sele 1
                           if .not. eof() ; skip ; else ; exit ; endif
          enddo
   qp0=str(q0,15)
   use
   if ll5='§'
     if 0 < p0
        ?
     endif
                   set prin off
                   set prin to
                if dirchange("&us0:\")=0
                   copy file &disc0\prodagbi.txt to &us0:\prodagbi.txt
                endif
          for i0 = 68 to 90
               us0=chr(i0)
              _LOC5 := "&us0:\"+subs(disc0,4,10)
            IF .NOT.(NHANDLE := FCREATE (_LOC5 + "\A!")) == -1
                if file("&disc0\pokupki.txt").and.(.not.subs(_loc5,1,1)=subs(disc0,1,1))
                   copy file &disc0\prodagbi.txt to &_LOC5\prodagbi.txt
                   copy file &disc0\pokupki.txt  to &_LOC5\pokupki.txt
                endif
            endif
          next
   endif
                   set cent off
                   set dele off
                   us0='c'
                        return

        ***********************   VIES ÑÖk´†∞†∂®ø ****************
                                   proc vies
        ** NOTE:  "ëÑÖãäÄ" èêüÅÇÄ ÑÄ Ö "®" ÅìäÇàíÖ èêÖÑ àÑ ÑÄ ëÄ ÉéêÖåà "ATU"
           ramka()
           @  2,32 say 'V I E S ÑÖKãÄêÄñàü'
           @  3,31 say '--------------------'
               @  6,17 say 'ÇHàåÄHàÖ !'  color 'R+/B'
               @  6,29 say 'ëãÖÑÇÄ ÑÄ èéëíÄÇàíÖ ÑàëäÖíÄ à ÑÄ'
               @  8,29 say 'èéëéóàíÖ ìëíêéâëíÇéíé'
               @  8,53 prompt 'A:'
               @  8,57 prompt 'B:'
               @ 12,27 say 'àáàëäÇÄÕàü áÄ VIES ÑÖäãÄêÄñàü'
               @ 13, 2 say '1. Ñ† ±† ØÆØ∫´≠•≠® ¢±®∑™® ∞•™¢®ß®≤® µ†∞†™≤•∞®ß®∞†π® ¥®∞¨†≤† F9 ¢ £´†¢≠Æ ¨•≠æ.'
               @ 14, 2 say '2. Ç•∞≠® °≥™¢® ≠† §∫∞¶†¢†≤† ∑´•≠™† ≠† Öé ® §† ±† £´†¢≠®.'
               @ 15, 2 say '3. Ç §≠•¢≠®™† ≠† ØÆ™≥Ø™®≤• "¢", † ¢ §≠•¢≠®™† ≠† Ø∞Æ§†¶°®≤• "®"'
               menu to l3
               if lastkey()=27
                  return
               endif
        HAND0=0
        if lastkey()=27
           return
        endif
                      if l3=1
                         us0='a'
                      else
                         us0='b'
                      endif
     @ 16,17 clea to 18,60
     set dele on
         set cons off
         store data0  to data1,data2,data3
         store 0 to q1,p210,p230,p260
         open_arhi(loc0:=13)  && nari
          do while .not. eof()
 if (.not.dr='Ø').or.val(substr(data,1,2))<val(substr(data1,1,2)).or.val(substr(data,1,2))>val(substr(data2,1,2))
                           if .not. eof() ; skip ; loop ; else ; exit ; endif
 endif
                 if sd='®'.or.sd='ø'.or.sd='ß'
                 else
                         if .not. eof() ; skip ; loop ; else ; exit ; endif
                 endif
              nom0=nom
              data3=data
              sd2=sd
              dn00=bg+dn+dn3
              dn0=subs(data,4,2)+data+nom
                open_kobo(loc0:=12)  && nski
                find "&dn0"
                   store 0 to sts0,std0
                   do while nom=nom0
                      if .not. sch='453'
                          sts0=sts0+ksto
                      else
                          std0=ksto
                      endif
                           if .not. eof() ; skip ; else ; exit ; endif
                   enddo
                         stsd0=str(sts0+std0,j0-2,j1)
                         sts0=str(sts0,j0-2,j1)
                         std0=str(std0,j0-2,j1)
                         store space(j0-3)+'0' to p21,p23,p26
                        do case
                           case sd2='®'   &&  ®ß≠Æ±
                               p21=sts0
                               p210=p210+val(p21)
                           case sd2='ß'   &&  0%
                               p23=sts0
                               p230=p230+val(p23)
                           case sd2='ø'   &&  Æ±Æ°Æ§•≠®
                               p26=sts0
                               p260=p260+val(p26)
                        endcase

                  sele 1
                           if .not. eof() ; skip ; else ; exit ; endif
              q1=q1+1
          enddo
             open_bala()
             set filter to  t='42'
             go top
             br0=recno+41
             go br0
             for br0 = 1 to 9
             rec_lock()
 *   repl pola with substr(pola,1,18)+space(8)+subs(pola,27,1)+space(15)+;
 *        substr(pola,43,1)+space(14)+subs(pola,58,2)
 *   repl polp with space(16)+substr(polp,17,1)+space(23)+substr(polp,41,1)+;
 *        space(9)+substr(polp,51,1)
    ? pola
    ? substr(pola,1,18)+space(8)+subs(pola,27,1)+space(15)+substr(pola,43,1)+space(14)+subs(pola,58,2)
    ? space(16)+substr(polp,17,1)+space(23)  &&   +substr(polp,41,1)+space(9)+substr(plp,51,1)
              next
          cance
          br0=728
          go br0

          store 0 to p0,b0,q0
          open_arhi(loc0:=13)  && nari
          set prin on
         set prin to &disc0\vies.txt
          do while .not. eof()
 if (.not.dr='Ø').or.val(substr(data,1,2))<val(substr(data1,1,2)).or.val(substr(data,1,2))>val(substr(data2,1,2))
                           if .not. eof() ; skip ; loop ; else ; exit ; endif
 endif
                 if sd='®'.or.sd='ø'.or.sd='ß'
                 else
                         if .not. eof() ; skip ; loop ; else ; exit ; endif
                 endif
              nom0=nom
              data3=data
              bg_1=bg
              dn_1=dn
              sd2=sd
              dn00=bg+dn+dn3
              dn0=subs(data,4,2)+data+nom
                open_kobo(loc0:=12)  && nski
                find "&dn0"
                   store 0 to sts0,std0
                   do while nom=nom0
                      if .not. sch='453'
                          sts0=sts0+ksto
                      else
                          std0=ksto
                      endif
                           if .not. eof() ; skip ; else ; exit ; endif
                   enddo
                         sts0=str(sts0,j0-2,j1)
                         store space(j0-3)+'0' to p21,p23,p26

                        do case
                           case sd2='®'   &&  ®ß≠Æ±
                               p21=sts0
                           case sd2='ß'   &&  0%
                               p23=sts0
                           case sd2='ø'   &&  Æ±Æ°Æ§•≠®
                               p26=sts0
                        endcase

              p0=p0+1
              q0=q0+1
           if q0=1
      ?? 'VHR'+subs(data3,1,2)+'/'+str(year(date0),4)+str(q1,5)
       ? 'VDR'+egn+space(5)+nam+space(120)+grad+space(38)+repu+adr+space(110)+'A'
       ? 'VTR'+'BG'+dn1+space(3)+fir+space(105)+adr+space(160)
       ? 'TTR'+str(p210+p230+p260,12,2)+str(p210,12,2)
       ? 'VIR'+str(q0,5)+dn00+p21+p26+p23
            else
       ? 'VIR'+str(q0,5)+dn00+p21+p26+p23
            endif
       if 0 < val(p21).or.0 < val(p23).or.0 < val(p26)
             sele 11
             rec_lock()
          do case
             case 0 < val(p21)
           repl pola with substr(pola,1,18)+str(q0,8)+subs(pola,27,1)+;
                '   '+p21+substr(pola,43,1)+space(14)+subs(pola,58,2)
           repl polp with space(16)+substr(polp,17,1)+space(23)+;
                     substr(polp,41,1)+'  '+str(year(date0),4)+'/'+subs(data3,1,2)+substr(polp,51,1)
             case 0 < val(p26)
           repl pola with substr(pola,1,18)+str(q0,8)+subs(pola,27,1)+;
                space(15)+substr(pola,43,1)+'  '+p26+subs(pola,58,2)
           repl polp with space(16)+substr(polp,17,1)+space(23)+;
                     substr(polp,41,1)+'  '+str(year(date0),4)+'/'+subs(data3,1,2)+substr(polp,51,1)
             case 0 < val(p23)
           repl pola with substr(pola,1,18)+str(q0,8)+subs(pola,27,1)+;
                space(15)+substr(pola,43,1)+space(14)+subs(pola,58,2)
           repl polp with space(16)+substr(polp,17,1)+space(11)+p23+;
                     substr(polp,41,1)+'  '+str(year(date0),4)+'/'+subs(data3,1,2)+substr(polp,51,1)
         endcase
          br0=br0+1
          go br0
       endif
                  sele 1
                           if .not. eof() ; skip ; else ; exit ; endif
                     set cons off
          enddo
                   use ; set prin to

             if dirchange("&us0:\")=0
                copy file &disc0\vies.txt to &us0:\vies.txt
             endif
          for i0 = 68 to 90
               us0=chr(i0)
              _LOC5 := "&us0:\"+subs(disc0,4,10)
            IF .NOT.(NHANDLE := FCREATE (_LOC5 + "\A!")) == -1
                if file("&disc0\vies.txt")
                   copy file &disc0\vies.txt to &_LOC5\vies.txt
                endif
            endif
          next
                   set cent off
                   set dele off
                   us0='c'
    *************  Ñ Ö K ã Ä ê Ä ñ à ü  ************
             open_bala()
             set filter to  t='42'
             go top
             store recno() to br0
             go br0
             go br0+5
           rec_lock()
           repl polp with substr(polp,1,6)+data3+substr(polp,12,5)
             go br0+6
           rec_lock()
           repl pola with substr(pola,1,14)+klon0+subs(pola,19,67)
             go br0+10
           rec_lock()
           repl pola with substr(pola,1,31)+bg+dn1
             go br0+11
           rec_lock()
           repl pola with substr(pola,1,18)+fir
             go br0+12
           rec_lock()
           repl pola with substr(pola,1,25)+adr
             go br0+16
           rec_lock()
           repl pola with substr(pola,1,6)+nam
             go br0+17
           rec_lock()
           repl pola with substr(pola,1,9)+egn
             go br0+18
           rec_lock()
           repl pola with substr(pola,1,26)+adr
             go br0+19
           rec_lock()
           repl pola with substr(pola,1,14)+repu
             go br0+27
           rec_lock()
           repl polp with substr(polp,1,34)+str(p210+p230+p260,12,2)+substr(polp,47,5)
             go br0+29
           rec_lock()
           repl polp with substr(polp,1,34)+str(p210,12,2)+substr(polp,47,5)
             go br0+31
           rec_lock()
           repl polp with substr(polp,1,34)+str(q1,12)+substr(polp,47,5)

             izrab()
             open_bala()
             set filter to  t='42'
             store recno() to br0
             go top
             b1=77
                   do while t=t0
                  *     ? str(recno()-br0,3)+substr(pola,1,59)+trim(substr(polp,1,75))+str(recno()-br0,3)
                        ? substr(pola,1,59)+trim(substr(polp,1,75))
                  *       spri()
                      if .not.eof()
                         skip
                      else
                         exit
                      endif
                   enddo
              pech()
       set prin on
       set prin off
                                   return
    ************* vklkuch DOSPRN ************
                  proc dospr   

    ! cmd /c  %SystemRoot%\system32\tasklist /nh /fi "imagename eq dosprn.exe" /fo csv > dosprn.txt
     set curs on ; ssss= memoread("dosprn.txt") ; inkey(1)
           if .not. subs(memoline(ssss,50,1),2,10)='DOSprn.exe'
              @ 10,25,12,53 box ram1 ; @ 11,26 clea to 11,52
              @ 11+ml0,27 say 'è∞Æ£∞†¨†≤† ¢™´æ∑¢† Dosprn'
               memowrit('aaa.bat','\PROGRA~1\DOSPRN\DOSprn.exe';
               +chr(13)+chr(10)+ '"D:\Program Files\DOSPRN\DOSprn.exe"')
               !&disc_1\exe\hstart.exe /noconsole aaa.bat
               if file ("dosprn.txt") ; eras dosprn.txt ; endif
               inkey(3)
     ! cmd /c  %SystemRoot%\system32\tasklist /nh /fi "imagename eq dosprn.exe" /fo csv > dosprn.txt
     set curs on ; ssss= memoread("dosprn.txt") ; inkey(2)
               if .not. subs(memoline(ssss,50,1),2,10)='DOSprn.exe'
                   l0=1
                   @  9,16,13,64 box ram1 ; @ 10,17 clea to 12,63
                   @ 10+ml0,36 say 'ÇHàåÄHàÖ!'  color 'R+/B'
                   @ 11+ml0,25 say 'Dosprn Ø∞Æ∂•§≥∞†≤† ≠• • ¢™´æ∑•≠†! '
                   @ 12+ml0,18 say 'è∞Æ£≤∞†¨†≤† ≠ø¨† §† ¨Æ¶• §† Ø•∑†≤† ±Ø∞†¢™®≤•!'
                   inkey(10)
               endif
                if file("dosprn.txt") ; eras dosprn.txt ; endif
                if file("aaa.bat") ; eras aaa.bat ; endif
           endif
                if file("dosprn.txt") ; eras dosprn.txt ; endif
                if file("aaa.bat") ; eras aaa.bat ; endif
               restore screen
                        return

      ********************* Zakluchvane na dbf failove  *********************
                              function file_lock
                          set exclu off
                       do case
                          case loc0=1
                             use &filee  exclu
                          other
                             use &filee
                          endcase
                 do while .t.
                      if used()=.F.
                         @  0, 2 say space(78)
                         @  0,32 say filee+str(loc0,4)
                         @  1,12 say 'îÄâãöí Ö ÄÕÉÄÜàêÄÕ éí åêÖÜÄíÄ àãà éí èêéÉêÄåíÄ áÄ áÄèãÄíàíÖ!'
                         @  2,12 say '   åéãü àáóÄäÄâíÖ àãà àáäãûóÖíÖ èêéÉêÄåíÄ áÄ áÄèãÄíàíÖ!'
                        i0=inkey(3)
                          @  0, 2 say space(78)
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
                          @  0,32 say '                  '
                          loc0=0
                          unlock  &&  ß†™Æ¢†≠Æ • !
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
      *****************   Zakluchva index file **********************
                        function  inde_lock
                             set inde to &indee
                 do while .t.
                      if  flock()=.T.
                          @  0,36 say '                '
                          loc0=0
                          unlock  &&  ß†™Æ¢†≠Æ • !
                          return
                      else
                          @  0,36 say filee+str(loc0,4)
                          i0=inkey(2)
                          unlock
                          loop
                      endif
               enddo
               return (.f.)

               func  aktdis
                     ll11='§'
                     aktual()
               return
    **********************  Zadava copy ot direktoriya **********************
                        func direk1  //  save-2  sav1-1  sav6-4  sav8-1
      save screen
      set curs on
        q0=1
      @ 14,25,21,57 box ram1
      mrega0='&disc_1\job\'+'mrega.mrg'
      mreg0=memoread("&mrega0")
      l0=row()*(-1)+1
      mreg0=memoedit(mreg0,15,26,20,56,.t.,"fmrega",31,4,1,1)
      memowrit('&mrega0',mreg0)
      restore screen
      @ 14,29 say space(30)
                        return

              func  fmrega
              l1=l0+row()
               us_1=trim(subs(memoline(mreg0,31,l1),1,31))
               us_0=trim(subs(memoline(mreg0,31,l1),1,31))
               go0=trim(subs(memoline(mreg0,31,l1),1,31))
              return

        *****************  è∞Æ¢•∞™† ß† Æ≤¢Æ∞•≠ ¥†©´ ® Æ°´†±≤ ************
                                 proc  otvo
              save screen
              @ 23+ml0,19 say alias()+' éÅãÄëí '+str(sele(),2)+' ÑàêÖKíéêàü '+diskname()+':\'+curdir()+'\'+ ' '+go0
                           i0=inkey(0)
               restore screen
                                 return

                            func open_bala  && BALA
                                 sele 11
                                 filee="&in_0\bala"
                                 file_lock ()
                           return
                            func open_hlp  &&  HLP
                                 sele 13
                                 filee="&disc_1\save\hlp"
                                 file_lock ()
                           return
                           func open_kobp  && KOBP
                              sele 8
                              filee='&us_0'+'kobp'
                              file_lock ()
                                if file("&us_0\sdsi.ntx")
                                    set inde to '&us_0'+'sdsi'
                                endif
                          return
                           func open_kpap  && KPAP
                           sele 9
                               filee='&us_0'+'kpap'
                               file_lock ()
                                 if file("&us_0\pdpi.ntx")
                                    set inde to '&us_0'+'pdpi','&us_0'+'si','&us_0'+'kpti'
                                 endif
                           return
                           func open_bank && bank
                              sele 13
                              filee='&us_0'+'bank'
                              file_lock ()
                           return
                          func open_kpapt && KPAPT
                             sele 9
                             filee='&us_0'+'kpapt'
                             file_lock ()
                          return
                            func open_tehno && TEHNO
                               sele 10
                               filee='&us_0'+'tehno'
                               file_lock ()
                            if file("&us_0\tepi.ntx")
                               set inde to '&us_0'+'tepi'
                            endif
                           return
                            func open_tehn && TEHN
                               sele 10
                               filee='&us_0'+'tehn'
                               file_lock ()
                           return
                            func open_prot && PROT
                               sele 14
                               filee='&us_0'+'prot'
                               file_lock ()
                             if file("&us_0\parpi.ntx")
                                  set inde to '&us_0'+'parpi'
                              endif
                            return
                            func open_zeni && ZENI
                               sele 14
                               filee='&us_0'+'zeni'
                               file_lock ()
                               if file("&us_0\zdpii.ntx")
                                  set inde to '&us_0'+'zdpi'
                               endif
                            return
                         func open_unpr && UNPR
                            sele 14
                            filee='&us_0'+'unpr'
                            file_lock ()
                            if file("&us_0\pnpi.ntx")
                                set inde to '&us_0'+'pnpi', '&us_0'+'udni'
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
                         func open_expo && EXPO
                            sele 14
                            filee='&us_0'+'expo'
                            file_lock ()
                         return

