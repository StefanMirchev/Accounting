
        dt0=substr(dtoc(date()),7,2)
        store space(8) to us_1


         ? dt0
        wait '11111'




	*			if v2=7
        *                           ssss= memoread("\hlp\job\arhiv.lst")
        *                           l0=mlcount(memoread("\hlp\job\arhiv.lst"),25)
        *                           dele file \hlp\job\arhiv.lst
        *                          for i=1 to l0
        *                             if i=1
        *                              memowrit("\hlp\job\arhiv.lst",memoread('\hlp\job\arhiv.lst');
        *                              +'\arhi\'+'??'+subs(data0,4,2)+'.zip'+chr(13)+chr(10))
        *                             endif
        *                             if i=2
        *                              memowrit("\hlp\job\arhiv.lst",memoread('\hlp\job\arhiv.lst');
        *                              +'\arhi\f'+'??'+subs(data0,4,2)+'.zip'+chr(13)+chr(10))
        *                             endif
        *                             if 2 < i
        *                              memowrit("\hlp\job\arhiv.lst",memoread('\hlp\job\arhiv.lst');
        *                              +subs(memoline(ssss,40,i),1,25)+chr(13)+chr(10))
        *                             endif
        *                          next
        *                          store us0+':\arhi\'+pake+'_'+substr(data0,4,2) to us_1
        *                          clea
        *                           ? memoread("\hlp\job\arhiv.lst")
        *
        *                         inkey(3)
        *                       endif
        *               case v2=7
                      *   ! TASKKILL /F /IM Excel.exe /IM Excel.exe
                      *  open_info(loc0:=9)
                         use \hlp\job\info.dbf
                         set filter to  0 < val(no)
                         go top
                         sort on no to infs
                         use infs
                         do while .not. eof()
                            dr0=go+dt0+'.zip'
                            if file("\hlp\save\save.lst")
                                ssss= memoread("\hlp\save\save.lst")
                            else
                                ssss= memoread("\hlp\save\save.lst")
                            endif
                            l0=mlcount(ssss,25)

                            dele file \hlp\save\save.lst
                            for i=1 to l0
                            *    memowrit("\hlp\save\save.lst",memoread('\hlp\save\save.lst')
                            *    +us1+':\'+subs(dr0,1,4)+'\'+subs(memoline(ssss,40,i),9,15)+chr(13)+chr(10))
                                 memowrit("\hlp\save\save.lst",memoread('\hlp\save\save.lst')+;
                                 '\'+subs(dr0,1,4)+'\'+subs(memoline(ssss,40,i),9,15)+chr(13)+chr(10))
                            next

                           ! \hlp\pk\pkzip \arhi\&dr0 -3 @\hlp\save\save.lst

                            if file("\hlp\fish\fish.lst")
                                ssss= memoread("\hlp\fish\fish.lst")
                            else
                                ssss= memoread("\hlp\fish\fish.lst")
                            endif
                            l1=mlcount(ssss,25)
                            dele file \hlp\fish\fish.lst
                            for i=1 to l1
                              * memowrit("\hlp\fish\fish.lst",memoread('\hlp\fish\fish.lst')
                              * +us1+':\'+subs(dr0,1,4)+'\'+subs(memoline(ssss,40,i),9,15)+chr(13)+chr(10))
                                memowrit("\hlp\fish\fish.lst",memoread('\hlp\fish\fish.lst')+;
                                '\'+subs(dr0,1,4)+'\'+subs(memoline(ssss,40,i),9,15)+chr(13)+chr(10))
                            next


                     if file("&us1:\"+subs(dr0,1,4)+"\spis.dbf")
                            ! \hlp\pk\pkzip \arhi\f&dr0 -3 @\hlp\fish\fish.lst
                     else
                     endif
                           skip
                         enddo


                        dr0=subs(us_1,9,7)+'.zip'
                        ! \hlp\pk\pkzip \arhi\&dr0 -3 @\hlp\job\arhiv.lst
                       for i = 67 to 90
                           us0=chr(i)
                          _LOC5 := "&us0:\arhi"
                        IF .NOT.(NHANDLE := FCREATE (_LOC5 + "A!")) == -1
                          if us0=''.or.us0='C'.or.us0='F'.or.us0='G'.or.us0='H'
                                eras  &us0:\arhi\&dr0
                               ! \hlp\pk\pkzip &us0:\arhi\&dr0 -3 @\hlp\job\arhiv.lst
                           *   provdisk()
                          endif
                        endif
                      next
                         eras infs.dbf

                *  if dirchange("d:\dropbox\arhi")=0
                *    dr0=subs(us_1,3,13)+'.zip'
                *    dr1='d:\dropbox\arhi\'+subs(us_1,9,7)+'.zip'
                *     copy file &dr0 to &dr1
                *  endif
       **************************************************
