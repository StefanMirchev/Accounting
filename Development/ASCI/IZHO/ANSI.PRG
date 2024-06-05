
 
****  CREATE ANSI.EXE FILE 
  store ''   to fread0
  save1=memoread("C:\HLP\ASCI\OPEN.PRG")
  as0=1

  asci0=save1 ; ansifun() ; memowrit('C:\HLP\ASCI\OPEN1.PRG','&fread0')

        ***************  Transform ot asci->ansi     ****************
                            func ansifun
      * asci-> 128 - 191  ansi-> 192 - 255
 
         store ''   to fread0
        for i0 = 1 to len(asci0)                  &&   asci -> ansi
           if 127 < asc(subs(asci0,i0,1)) .and. asc(subs(asci0,i0,1)) < 192
                    if asc(subs(asci0,i0,1))=147
                       fread0=fread0+subs(asci0,i0,1)
                    else
                       fread0=fread0+chr(asc(subs(asci0,i0,1))+64)
                    endif 
        *      fread0=fread0+chr(asc(subs(asci0,i0,1))+64)
           else
              fread0=fread0+subs(asci0,i0,1)
           endif
        next

                       return    // asci
