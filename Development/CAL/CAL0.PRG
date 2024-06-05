       ************** ช ซชณซ ฒฎฐ  ********************
    save screen  to ek1
   ram1=chr(201)+chr(205)+chr(215)+chr(199)+chr(216)+chr(205)+chr(200)+chr(199)
   store space(33) to x0,x1,x2,x3,x4,x5,x6,x,y
  x7='+0'
 *y0=4
 *z0=22
  y0=0
  z0=0
  l0=' '

	  if file ("zvetia.mem")
	     restore from zvetia additive
	  else
	     zv0=2
	  endif
             setcolors (zv0)
             clea

public  rez0,rez2,rez3
store 0 to rez0,rez2,rez3,rez4
rez1=' '
store 0 to rez0,rez ,rez2
set key  26 to lrud
set key   2 to lrud
set key  31 to lrud
set key  30 to lrud
set key 109 to natr
                   do kal

                   proc kal
             restore screen from  ek1
   @ y0,z0,y0+14,z0+34 box ram1
   @ y0+1,z0+1 clea to y0+13,z0+33
          @ y0+1 ,z0+1 say '       K €  K “  € ’  '
          @ y0+2 ,z0+1 say 'อออออออออออออออออออออออออออออออออ'
          @ y0+3 ,z0+1 say '+ฏซพฑ -ฌจญณฑ *ณฌญ./คฅซ. Alt+z=Cls'
          @ y0+4 ,z0+1 say 'อออออออออออออออออออออออออออออออออ'
          @ y0+12,z0+1 say 'อออออออออออออออออออออออออออออออออ'
          @ y0+13,z0+1 say 'ฅงณซฒ ฒ '
set key 13 to sum
set key 300 to stir

do while .t.
rez0=0
        if .not. file("\disc\hlp\cal\cal.mem")
            store space(33) to x0,x1,x2,x3,x4,x5,x6
            save all like x* to \disc\hlp\cal\cal
         * wait '1111111111111111111111111'
        endif
restore from \disc\hlp\cal\cal.mem additive
@ y0+ 5,z0+1 get x0
@ y0+ 6,z0+1 get x1
@ y0+ 7,z0+1 get x2
@ y0+ 8,z0+1 get x3
@ y0+ 9,z0+1 get x4
@ y0+10,z0+1 get x5
@ y0+11,z0+1 get x6
read
                     if lastkey()=3
                        @ y0+11,z0+1 get x6
                        read
                        loop
                     endif
                     if lastkey()=18
                        loop
                     endif
       if lastkey()=27.or. x0=space(33)
             restore screen  from ek1
            setcolors (zv0:=5)
            @ 1,62 say substr(rez1,5,17)
            setcolors (zv0)
            store rez1 to dast0,kast0
            set key 13 to
            return
       endif
             sum()
enddo

    ******************  ฐฎถฅคณฐ  ง  ฑณฌ  **************
                 proc sum
        save all like x* to \disc\hlp\cal\cal
        set key 13 to
       if x0=space(33)
            return
       endif
       rez0=&x0&x1&x2&x3&x4&x5&x6&x7
      if  -999999999999.99999 < rez0 .or. rez0 < 9999999999999.99999
          rez0=str(&x0&x1&x2&x3&x4&x5&x6&x7,19,5)
          rez1=substr(rez0,1,1)+' '+substr(rez0,2,3)+' '+substr(rez0,5,3)+' '+;
          substr(rez0,8,3)+' '+substr(rez0,11,7)+' '+substr(rez0,18,2)
          @ y0+12,z0+1 say 'อออออออออออออออออออออออออออออออออ'
       *  @  0,46 say '                '
       *  setcolors (zv0:=5)
          @ y0+13,z0+10 say rez1
          setcolors (zv0)
     *    @  0,46 say '                '
      else
          @ y0+13,z0+1 say '                               '
              ?? chr(7)
          @ y0+13,z0+1 say '     ฐฅฏบซข ญฅ ญ  ฐฅฃจฑฒบฐ '
            i0=inkey(0)
          @ y0+13,z0+1 say 'ฅงณซฒ ฒ                        '
      endif
             set key 13 to sum
                return



    **********************  ขจฆฅญจฅ ญ  ช ซชณซ ฒฎฐ  *********
                          proc  lrud
                       clea gets
                do case
                   case lastkey()=26
                     z0=0
                   case lastkey()=2
                     z0=45
                   case lastkey()=30
                     y0=10
                   case lastkey()=31
                     y0=0
                endcase
              do kal
                          return

                      proc natr
                   set key 109 to
                   @ y0+1 ,z0+33 say 'M'
                *   store rez0 to rez2
                *   rez3=rez3+&rez2
                    rez2=rez2+val(rez0)
                   set key 109 to natr
                   set key 306 to napo
                      return


                      proc napo
               set key 306 to
               save screen  to ek2
                    store rez3 to rez3
    if  -999999999999.99999 < rez2 .or. rez2 < 9999999999999.99999
          rez3=str(rez2,19,5)
          rez3=substr(rez3,1,1)+' '+substr(rez3,2,3)+' '+substr(rez3,5,3)+' '+;
          substr(rez3,8,3)+' '+substr(rez3,11,7)+' '+substr(rez3,18,2)
               @ y0+12,z0+1 say ' ฌฅฒ    '+rez3
               i0=inkey(0)
      else
          @ y0+12,z0+1 say '                               '
              ?? chr(7)
          @ y0+12,z0+1 say '     ฐฅฏบซข ญฅ ญ  ฐฅฃจฑฒบฐ '
            i0=inkey(0)
          @ y0+12,z0+1 say 'ฅงณซฒ ฒ                        '
      endif
                   set key 306 to napo
               restore screen  from ek2
                      return

                   proc stir
 store space(33) to x0,x1,x2,x3,x4,x5,x6
                   return
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
