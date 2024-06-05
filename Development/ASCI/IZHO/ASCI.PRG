  clear
  store ''   to fread1
  save1=memoread("C:\HLP\ASCI\OPEN1.PRG")
  as0=2
   asci0=save1 ; ascifun() ; memowrit('C:\HLP\ASCI\OPEN2.PRG','&fread1')


        ***************  Transform ot asci->ansi     ****************
                            func ascifun
      * asci-> 128 - 191  ansi-> 192 - 255

         store ''   to fread1
         for i0= 1 to len(asci0)         &&   ansi->asci
            if 191 < asc(subs(asci0,i0,1)) .and. asc(subs(asci0,i0,1)) < 256
                    if asc(subs(asci0,i0,1))=205 .or. asc(subs(asci0,i0,1))=211 .or. asc(subs(asci0,i0,1))=219 .or. asc(subs(asci0,i0,1))=221
                       fread1=fread1+subs(asci0,i0,1)
                    else
                       fread1=fread1+chr(asc(subs(asci0,i0,1))-64)
                    endif   
            else
               fread1=fread1+subs(asci0,i0,1)
            endif
                  
          next
                            return    // asci


