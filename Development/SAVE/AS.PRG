     ******************  ASCII Kодова ▓абли╢а  *********************
                           proc ascii
      store 0 to   st1,st2
      save screen
      set curs on
  do while .t.
      set curs on
      set device to scre
      j1=' '
      do ramka
      @ 2,28 say 'ASCII - кодова ▓абли╢а'
      @ 3,18 say replicate('-',48)
      @  5,10 say '1. Извеждане на ек░ан на ▒имвол по зададен о▓ Ва▒ ▒▓ойно▒▓'
      @  7,10 say '2. Извеждане на ек░ан на ▒▓ойно▒▓ по зададен о▓ Ва▒ ▒имвол'
      @  9,10 say '3. Или▒▓ване на ╢┐ла▓а  ASCII - ▓абли╢а'
      @ 11,10 say '4. Hotkey                              '
      @ 16,29 say '╔═══════════════════╦'
      @ 17,29 say '╠                   ╠'
      @ 18,29 say '╚═══════════════════╩'
      @ 17,30 say ' Ва╕и┐ избо░:  ' get j1
      read
      if j1=' '
    * if lastkey()=27
         set curs off
         restore screen
         exit
      endif
    do ramka
                                   do case
                                      case j1='1'
    do while .t.
    do ramka ; set curs on
      @ 2,14 say 'Извеждане на ек░ан на ▒имвол по зададен о▓ Ва▒ ▒▓ойно▒▓'
      @ 3,14 say replicate('-',55)
      @  8,19 say '             ╔═════╦                   ╔═════╦'
      @  9,19 say 'ASCII код -> ╠     ╠    Символ║▓ е  -> ╠     ╠'
      @ 10,19 say '             ╚═════╩                   ╚═════╩'
      @  9,33 get st1 pict "99999"
      read
      @  9,60 say ' '+chr(st1)
      inkey(0)
      if lastkey()=27
         exit
      endif
    enddo
                                   case  j1='2'
    do while .t.
      do ramka  ; set curs on
      sr1=0
      @  2,14 say 'Извеждане на ек░ан на ▒▓ойно▒▓ по зададен о▓ Ва▒ ▒имвол'
      @  3,14 say replicate('-',55)
      @  8,19 say '           ╔═════╦                     ╔═════╦'
      @  9,19 say 'Симво║▓ -> ╠     ╠    има ASCII код -> ╠     ╠'
      @ 10,19 say '           ╚═════╩                     ╚═════╩'
      @  9,33 say ''
      i=inkey(i)
      @  9,33 say chr(i)
      read
      @  9,60 say ltrim(str(i))
      inkey(0)
      if lastkey()=27
         exit
      endif
    enddo
                                      case j1='3'
      @  2,20 say 'Изли▒▓ване на ASCII кодова ▓абли╢а'
      @  3,20 say replicate('-',34)
      set marg to 7
      xz0=''
      store 0 to br0,br1
      br1=0
    *  br1=250
      p0=5
      q0=2
      set devi to scre
      do while br1 < 255
    *  do while br1 < 505
         br1=ltrim(str(br1,3))
         @ p0,q0 say str(val(br1),3)+chr(&br1)
         br1=val(br1)+1
         q0=q0+5
         br0=br0+1
         if br0=15
            br0=0
            p0=p0+1
            q0=3
         endif
      enddo
      inkey(0)
                                   case  j1='4'
    do while .t.
      do ramka  ; set curs on
      sr1=0
      @  2,14 say '                   Hotkey                          '
      @  3,14 say replicate('-',55)
      @  5,15 say '      F1  F2  F3  F4  F5  F6  F7  F8  F9 F10 F11 F12           '
      @  6,15 say '      28  -1  -2  -3  -4  -5  -6  -7  -8 -20 -40 -41       5    '
      @  7,15 say 'Alt  -30 -31 -32 -33 -34 -35 -36 -37 -38 -39 -46 -47   19   4 '
      @  8,15 say 'Ctrl -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -44 -44      24    '
      @  9,15 say '       a   b   c   d   f   g   h   i   j   k   l   m           '
      @ 10,15 say 'Alt  286 304   X                                                '
      @ 11,15 say 'Ctrl   1   2   3                                                '
      @ 12,15 say '       n   o   p   q   r   s   t   u   v   w   x   y            '
      @ 13,15 say 'Alt  305 280 281                                               '
      @ 14,15 say 'Ctrl  14  15  16                                                '
      i=inkey(i)
      @  9,33 say chr(i)
      read
      @  9,60 say ltrim(str(i))
      inkey(0)
      if lastkey()=27
         exit
      endif
    enddo
                                   endcase
  enddo
                 return
