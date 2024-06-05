       ************** ช ซชณซ ฒฎฐ  ********************

    save screen  to ek1
 * ram1=chr(201)+chr(205)+chr(215)+chr(199)+chr(216)+chr(205)+chr(200)+chr(199)
   ram1=chr(201)+chr(205)+chr(209)+chr(124)+chr(207)+chr(205)+chr(200)+chr(124)

  x7='+0'
  y0=0
  z0=0
  l0=' '
  vv0='ญ'
	  if file ("zvetia.mem")
	     restore from zvetia additive
	  else
	     zv0=2
	  endif
             setcolors (zv0)
          *  clea

               public  rez0,rez2,rez3
               store 0 to rez0,rez2,rez3,rez4
               rez1=' '
               store 0 to rez0,rez ,rez2
               set key  26 to lrud
               set key   2 to lrud
               set key  31 to lrud
               set key  30 to lrud
               *   set key 109 to natr
                   do kal

                   proc kal
             restore screen from  ek1
 * @ 23,15 say space(51)
   @ y0,z0,y0+18,z0+15 box ram1
   @ y0+1,z0+1 clea to y0+17,z0+14
          @ y0+1 ,z0+1 say 'Correction'
          @ y0+2 ,z0+1 say 'ออออออออออออออ'
          @ y0+13,z0+1 say 'ออออออออออออออ'
          @ y0+15,z0+1 say 'ออออออออออออออ'
          @ y0+16,z0+1 say 'F9-induction'
          @ y0+17,z0+1 say 'Alt+z-clear'
     rez0=0
     if .not. file("cal1.dbf")
         crea cal0
         appe blank
         replace field_name with 'stoi', field_type with 'N',field_len with 12, field_dec with 2
         create cal1 from cal0
         erase cal0.dbf
     endif
         use cal1
     declare fiel[1]
     fiel[1]='stoi'
     declare imem[1]
     imem[1]='อออออออออออออ'
     dbedit( y0+2,z0+1,y0+12,z0+13,fiel,"pfunk1",'',imem,'','')


       if lastkey()=27
   *          wait '22222222222222222222222222222221'
           setcolors (zv0:=5)
           @ 1,62 say substr(rez1,5,17)
           setcolors (zv0)
           store rez1 to dast0,kast0
          rez0=str(rez0,19,5)
          rez1=substr(rez0,1,1)+' '+substr(rez0,2,3)+' '+substr(rez0,5,3)+' '+;
          substr(rez0,8,3)+' '+substr(rez0,11,7)+' '+substr(rez0,18,2)
          @ 1,62 say substr(rez1,5,17)
          rez0=val(rez0)
          restore screen from  ek1
          quit
       endif





    **********************  ขจฆฅญจฅ ญ  ช ซชณซ ฒฎฐ  *********
                          proc  lrud
                       clea gets
                do case
                   case lastkey()=26
                     z0=0
                   case lastkey()=2
                     z0=64
                   case lastkey()=30
                     y0=9
                   case lastkey()=31
                     y0=0
                endcase
              do kal
                          return



      function  setcolors ()
               do case
                  case zv0=1
                      setcolor("W/ , /W, /W, /W, /W")
                  case zv0=2
                      setcolor("GR+/B, R/W, N/N, N/N, N/W")
                  case zv0=3
                      setcolor("W*/N")
                  case zv0=4
                      setcolor("R+*/B")
                  case zv0=5
                      setcolor(" /W, /W, /W, /W, /W")
                  case zv0=6
                      setcolor(N/W, R/W, N/N, N/N, N/W)
                endcase
                return





      ************ ฎฒฐฅกจฒฅซฑช  ดณญชถจฟ **********
                function pfunk1
                parameters mode0,fld0
                private fld0
                cur0=fiel[fld0]
                 do case
                   case mode0 < 4
                            store recno() to re0
                            sum  stoi to rez0
                            locat for stoi=0
                            if .not. found()
                                appe blank
                            endif
                            go re0
                            @ y0+1,z0+12 say str(recno(),3)
                            @ y0+14,z0+2 say str(rez0,12,2)     &&     +vv0
                        return 1
                   case lastkey()=27
                         return 0
                   case lastkey()=13 .or.(47<lastkey().and.lastkey()<58)
                         set cursor on
                         @ row(),col() get &cur0
                         read
                            set cursor off
                             *     store recno() to re0
                             *     dele all for stoi=0
                             *     pack
                             *     go re0
                         if vv0='ค'
                             locat for stoi=0
                             if .not. found()
                                appe blank
                                skip
                                   keyboard chr(13)
                             endif
                               if (lastkey()=13 .or.(47<lastkey().and.lastkey()<58))
       *  WAIT '1111111111111111111111111111111'
                                   @ y0+1 ,z0+1 say 'Correction'
                                   store recno() to re0
                                   sum  stoi to rez0
                                   go re0
                                   @ y0+1,z0+12 say str(recno(),3)
                                   @ y0+14,z0+2 say str(rez0,12,2)   &&  +vv0
                                   return 1
                                   vv0='ญ'
                                   return 1
                               endif
                         else
                                   store recno() to re0
                                   sum  stoi to rez0
                                   go re0
                                   @ y0+1,z0+12 say str(recno(),3)
                                   @ y0+14,z0+2 say str(rez0,12,2)   &&   vv0
                                   return 1
                         endif
                         return 1
                   case lastkey()=7     &&  Del
                         store recno() to re0
                         dele all for stoi=0
                         pack
                         go bott
                         appe blank
                         return 1
                   case lastkey()=-8
                        @ y0+1 ,z0+1 say 'Induction '
                        vv0='ค'
                        dele all for stoi=0
                        pack
                        appe blank
                        go bott
                        skip -1
                        keyboard chr(24)
                   case lastkey()=300   && Alt+z
                          dele all
                          pack
                          appe blank
                          go top
                   otherwise
                         return 1
                 endcase
                return 1

