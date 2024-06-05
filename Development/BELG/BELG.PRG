    clea all



          for i0 = 69 to 90
               us_0=lower(chr(i0))
              _loc5 := "&us_0:\"+'__FLASH\a'
            if .not.(nhandle := fcreate (_loc5)) == -1
                fclose(nhandle)
                if file("&us_0:\"+'__FLASH\a')
                   exit
                endif
            endif
          next
         *   if file ("&us_0\hlp\belg\belg.mem")
         *      restore from \hlp\belg\belg additive
         *         if us_1=date()
         *            do case
         *               case val(time()) < 11 .and. us_2=0
         *                    us_2=1
         *               case 15 < val(time()).and. us_3=0
         *                    us_3=1
         *           endcase
         *         else
         *            store 0 to us_2, us_3
         *            us_1=date()
         *         endif
         *   else
         *       store 'g'    to  us_0
         *       store date() to  us_1
         *       store 0  to  us_2, us_3
         *       eras \hlp\belg\belg.mem
         *       save all like us_? to \hlp\belg\belg
         *   endif

* IF cher(12, 13, "R+/N", "FUNSUN", 3)
*
* ENDIF
*
* FUNCTION cher( nRow, nCol, ;
*        cStandard, cPassword, nTries )
*    SET COLOR TO (cStandard+ ", X")      // Blank input
*     cUserEntry:= SPACE(6)
*     @ nRow, nCol SAY  "Enter password: " GET ;
*              cUserEntry
*     READ
*  RETURN .F.


      set cent on
      set date ansi
      set exclu off

    if file("\hlp\job\win")
    *  ram1=chr(219)+chr(223)+chr(219)+chr(219)+chr(223)+chr(223)+chr(223)+chr(219)
       ram1=chr(201)+chr(205)+chr(209)+chr(124)+chr(207)+chr(205)+chr(200)+chr(124)
    else
       ram1=chr(201)+chr(205)+chr(215)+chr(199)+chr(216)+chr(205)+chr(200)+chr(199)
    endif
      set date ansi
      set intensity on

                               setcolor("GR+/B,  /W, N/N, N/N, N/W")
      store 0 to re0
      x1=0
      x2=19
      filee='&us_0'+':\hlp\belg\belg.dbf'
      if .not. file("&filee")
          ? filee
          cance
      endif
      use &filee exclu
      inde on n to datai
      use &filee exclu inde datai
     do while .not.eof()
      if  data-date() < 0
            repl n with 0
      else
            if  data-date() < 90
               repl n with data-date()
            else
                repl n with 90
            endif
      endif
           skip
     enddo
                   save screen


           ***********  nowa ***************************


                    set filter to  (0 < n .and. n < 4) .or. data=date()
                    go top
                    count to p0
                    go top
            if p0=0
               @ 12,23 say '‡  ±«¥¤¢ ¹¨²¥ 3 ¤¥­  ­¿¬ ²¥ § ¤ ·¨.'
               inkey(0.5)
               if .not. lastkey()=9
   *              cance
               endif
            endif
            if 0 < p0
               do while .t.
                   i0=1
                   @  1, 0,11,79 box ram1
                   @  2,1 clea to  8,78
                   @  3, 1 say repl('Í',78)
                   @  9, 1 say repl('Í',78)
                   @ 10, 1 say space(78)
                   @ 10,17 say 'Tab-°¥¤ ª¶¨¿   PgUp-±²°.­ £®°¥   PgDu-±²°.­ ¤®«³'
                   @  2,76 say '„Hˆ'
                   keyboard chr(5)
                   save all like us_? to \hlp\belg\belg
                   use &filee exclu
                    set filter to  (0 < n .and. n < 4) .or. data=date()
                    go top
                   declare fiel[2]
                   fiel[1]='name'
                   fiel[2]='data'
                   declare imem[2]
                   imem[1]='        ‘šŽ™…HˆŸ KšŒ „H…˜H€ „€’A    '+dtoc(date())
                   imem[2]='K€…H ‘ŽK'
               *   dbedit( 2, 1,21,74,fiel,"pfunk",'',imem,'Í','Ç')
                   dbedit( 2, 1, 8,74,fiel,"pfunk",'',imem,'Í','Ç')

                   if lastkey()=27.or.lastkey()=9
                      if lastkey()=9  &&  Tab
                         exit
                      endif
                      if lastkey()=27
                          return
                      endif
                   else
                      loop
                   endif

               enddo
            endif

             *         cance
           ***********  nowa ***************************


      go bott
      go top

               do while .t.
                     clos all
                   i0=1
                   @ 0,0 clea to 24,80
                   @  1, 0,24,79 box ram1
                   @  2,1 clea to 23,78
                   @  3, 1 say repl('Í',78)
                   @ 22, 1 say repl('Í',78)
                   @ 23, 1 say 'Del - ¨§²°¨¢  ¡e«e¦ª /¡¥§   F10 - ¤®¡ ¢¿ ­®¢        Home - ¯°¥¯®¤°¥¦¤  ¯® ¤ ²¨'
                   @ 23, 1 say 'Del-¨§²°¨¢  ¡ « ¦ª /¡¥§ ±º¤º°¦./  F10-¤®¡ ¢¿ ­®¢      Home-¯°¥¯®¤°¥¦¤  ¯® ¤ ²¨'
                 * @ 0,60 say 'ÍÍÍÍ!'
                 * @ 0,75 say '   1'
                   @ 2,76 say '„Hˆ'
                 * @ 2,27 say '  ³±²°®©±²¢®' get us_0
                   @ 2,67 say '  ³±²°®©±²¢® '+us_0
                 * inkey(0)
                 * keyboard chr(24)
                   keyboard chr(5)
                 * read
                   save all like us_? to \hlp\belg\belg
                   use &filee exclu


                   set filter to x1 < recno() .and. recno() < x2

                   go top
                   declare fiel[2]
                   fiel[1]='name'
                   fiel[2]='data'
                   declare imem[2]
                   imem[1]='        ‘šŽ™…HˆŸ KšŒ „H…˜H€ „€’A    '+dtoc(date())
                   imem[2]='K€…H ‘ŽK'
                   dbedit( 2, 1,21,74,fiel,"pfunk",'',imem,'Í','Ç')

                   if lastkey()=27
                      clos all
                      copy file &us_0:\hlp\belg\belg.dbf to c:\hlp\belg\belg.dbf
                      return
                   else
                      loop
                   endif

               enddo
                   restore screen


 *FUNCTION colset(pol0, col0)
 *   SET COLOR TO (col0)
 * RETURN    .T.

                               func zviat
                             do case
                                case n=0
                                 @ row(),75 say '| '
                                 if data=date()
                                    @ row(),77 say str(n,2) color "R+/B"   && ±¨¢®
                                 else
                                    @ row(),77 say str(n,2) color "N+/B"   && ±¨¢®
                                 endif
                             *   @ row(),75 say str(recno(),2)
                             *   if data=date()
                             *      @ row(),77 say str(row(),2) color "R+/B"   && ±¨¢®
                             *   else
                             *      @ row(),77 say str(row(),2) color "N+/B"   && ±¨¢®
                             *   endif
                                case data-date() < 0
                                 repl n with 0
                                 @ row(),75 say '| '
                                 @ row(),77 say str(n,2) color "N+/B"   && ±¨¢®
                                case  0 < data-date().and.data-date()<2
                                 @ row(),75 say + '| '
                                 @ row(),77 say str(n,2)  color "R+/B"   && ·¥°¢¥­®
                                case data-date()=2
                                 @ row(),65 say data  color "G+/B" && §¥«¥­
                       *           wait '1111111111111111111111111111'
                                 @ row(),75 say '| '
                                 @ row(),77 say str(n,2)  color "G+/B" && §¥«¥­
                                case data-date()=3
                                 @ row(),75 say '| '
                                 @ row(),77 say str(n,2)  color "RG+/B"  && µº«²
                                case 3 < data-date()
                                 @ row(),75 say '| '
                                 @ row(),77 say str(n,2)  color "W+/B"  && ¡¿«
                             endcase

                     if i0 < 18  && 19
                       	 keyboard chr(24)
                         i0=i0+1
                     endif
                               return


      ************ ®²°¥¡¨²¥«±ª  ´³­ª¶¨¿ **********
  function pfunk
  parameters mode0,fld0
  private fld0
  cur0=fiel[fld0]
  do case
     case mode0 < 4
          if lastkey()=18
             x1=x1-18
             x2=x2-18
             if x1 < 0
               x1=0
               x2=19
             endif
           return 0
          endif
          if lastkey()=3
             x1=x1+18
             x2=x2+18
           return 0
          endif
         if lastkey()=1
      *     i0=0
      *     sort on data to bel
      *     use
      *     eras belg.dbf
      *     rename bel.dbf to belg.dbf
      *     use belg
         endif
         flock()
         zviat()
         unlock
     case lastkey()=7   && Del
          if empty(name)
             rlock()
             dele
             unlock
          endif
          use &filee  exclu
          pack
          use &filee
          @  4,1 clea to 21,78
             go bott
             go top
             i0=0
     case lastkey()=-9
          appe blank
          repl data with date()
          re0=recno()
          @  4,1 clea to 21,78
          go top
          use &filee exclu
          pack
          use &filee
          go bott
          go re0
          keyboard chr(24)
          return 1
     case lastkey()=27 .or. lastkey()=9
           return 0
          set cursor off
     case lastkey()=13
  	 set cursor on
         @ row(),col() get &cur0 &&    valid year(data)-year(date())=0
         rlock()
         zviat()
  	 read   && chet()
           if  date() < data
            if  data-date() < 90
               repl n with data-date()
            else
                repl n with 90
            endif
           endif
         re0=recno()
         go top
         go bott
         go re0
         unlock
  	  keyboard chr(4)
          set cursor off
  	 return 1
     otherwise
  	 return 1
   endcase
  return 1








