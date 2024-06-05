    clea
      CD C:\HLP\WSAVE\PRG
      
      
    
      USE obve.dbf 
*      do while .t.
*      ? name
*      ? recno()
*       wait 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
*           if .not. eof()
*             skip
*           else
*             exit
*           endif 
*     enddo



* ??????
 asci0=name 
 asci1=''
 
      for i0 = 1 to len(asci0) 
      
           ? subs(asci0,i0,1)
           ? asc(subs(asci0,i0,1))
           ? RECNO() 
           WAIT 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
     
    
            if 127 < asc(subs(asci0,i0,1)) .and. asc(subs(asci0,i0,1)) < 192
            
               asci1=asci1+chr(asc(subs(asci0,i0,1))+64)
               ?  asci1
               WAIT 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb'
             ELSE
              WAIT 'ccccccccccccccccccccccccccccccccccccccccccccccccccccc'
               asci1=asci1+subs(asci0,i0,1)
            endif
         NEXT
 ? name        
 ? asci1        
wait '00000000000000000000000000000000000000000'