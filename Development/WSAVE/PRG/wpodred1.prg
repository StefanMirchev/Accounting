
          
           ramka0 = CREATEOBJECT('ramka0')
           ramka0.Caption = SPACE(25)+"РЕИНДЕКСАЦИЯ"  
           ramka0.Top     = ekran0.Height *0.01
           ramka0.Left    = ekran0.Width  *0.56
           ramka0.Height  = 30
           ramka0.Width   = 335&& 370
           
           ramka0.show
           ramka0.Visible =.T.
           ramka0.etik01.Visible = .F.
           ramka0.text01.Visible = .F.
                 
       
        clenta=''
     
         loc0=0
        do case
           case podr_0=1         &&   РЕИHДИKСИРА  SAVE
                 eras '&US_0'+'nari.ntx'
                 eras '&US_0'+'faki.ntx'
                 eras '&US_0'+'nsdi.ntx'
                 eras '&US_0'+'dsdi.ntx'
                 eras '&US_0'+'ds.ntx'
                 eras '&US_0'+'nski.ntx'
                 eras '&US_0'+'dski.ntx'
                 eras '&US_0'+'ks.ntx'
                 eras '&US_0'+'nadi.ntx'
                 eras '&US_0'+'dpdi.ntx'
                 eras '&US_0'+'dpdi.ntx'
                 eras '&US_0'+'di.ntx'
                 eras '&US_0'+'naki.ntx'
                 eras '&US_0'+'dpki.ntx'
                 eras '&US_0'+'dpki.ntx'
                 eras '&US_0'+'ki.ntx'
                 eras '&US_0'+'aobi.ntx'
                 eras '&US_0'+'nami.ntx'
                 eras '&US_0'+'pai.ntx'
                 eras '&US_0'+'sobi.ntx'
                 eras '&US_0'+'sdsi.ntx'
                 eras '&US_0'+'pdpi.ntx'
                 eras '&US_0'+'kpti.ntx'
                 eras '&US_0'+'si.ntx'
                 eras '&US_0'+'sci.ntx'
                 eras '&US_0'+'dati.ntx'
                 eras '&US_0'+'dni.ntx'
                 eras '&US_0'+'vidi.ntx'
                 eras '&US_0'+'vvidi.ntx'
                 eras '&US_0'+'tepi.ntx'

                SET CURSOR OFF
                @ 0.5,0.5 say 'Програмата индексира файл:' FONT 'Courier New', 12 STYLE 'BOLD'  COLOR RGB(0,0,0,255,255,0)
                @ 0.5,34 say 'ARHI'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0)
              
                open_arhi(loc0=0)
                index on subs(data,4,2)+data+nom to '&us_0'+'nari'
                index on fakt to '&us_0'+'faki'
                inde on dn+subs(vid,6,10) to '&us_0'+'vidi'
                           
                clos data
                @ 0.5,34 say 'DOBO'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0)
                open_dobo(loc0=0)
                index on  subs(data,4,2)+data+nom to '&us_0'+'nsdi'
                index on sch+subs(data,4,2)+data+nom to '&us_0'+'dsdi'
                index on dsto to '&us_0'+'ds'

                clos data
                @ 0.5,34 say 'KOBO'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0)
                open_kobo(loc0=0)
                index on  subs(data,4,2)+data+nom to '&us_0'+'nski'
                index on sch+subs(data,4,2)+data+nom to '&us_0'+'dski'
                index on ksto to '&us_0'+'ks'
                clos data

                @ 0.5,34 say 'DPAR'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0)                
                open_dpar(loc0=0)
                index on  subs(data,4,2)+data+nom+part to '&us_0'+'nadi'
                index on part+subs(data,4,2)+data+nom to '&us_0'+'dpdi'
                index on dast to '&us_0'+'di'



                clos data
                @ 0.5,34 say 'KPAR'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                open_kpar(loc0=0)
                index on  subs(data,4,2)+data+nom+part to '&us_0'+'naki'
                index on part+ subs(data,4,2)+data+nom to '&us_0'+'dpki'
                index on kast to '&us_0'+'ki'

                clos data
                @ 0.5,34 say 'OBVE'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                open_obve(loc0=0)
                index on sch to '&us_0'+'sobi'
                clos data
                @ 0.5,34 say 'OBAP'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                open_obap(loc0=0)
                index on part to '&us_0'+'aobi'
                index on name to '&us_0'+'nami'
                index on subs(part,1,3)+name to '&us_0'+'pai'
                clos data
                @ 0.5,34 say 'KOBP'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                open_kobp(loc0=0)
                index on sch to sdsi
                open_kpap(loc0=0)


                if .not. field(5)='PAR         '
                    use
                    copy file \hlp\save\kpap.dbf to kpap.dbf
                endif
                open_kpap(loc0=0)
                index on part to pdpi
                inde on substr(part,4,4) to kpti
                index on par to si
                index on sch to sci
                clos data
                
                @ 0.5,34 say 'DDS'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                open_dds(loc0=0)
    
                inde on vek+data to '&us_0'+'dati'
                clos data
                @ 0.5,34 say 'REGAL'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                open_regl(loc0=0)



                inde on dn to '&in_0'+'\dni'
                inde on vvid to '&in_0'+'\vvidi'
                clos data
          
                 clos data
                if file("tehno.dbf")
                    clos data
                    @ 0.5,34 say 'TEHNOL'  FONT 'Courier New', 12 STYLE 'BOLD' COLOR RGB(0,0,0,0,255,0) 
                    open_tehno(loc0=0)
                    inde on part to '&us_0'+'tepi'
                endif
                SET CURSOR On
           case podr_0=10      &&   РЕИHДИKСИРА   ЖУРHАЛ  ПО ПАРТИДИ
                open_dparjo(loc0=0)
                inde on subs(part,4,4) to '&us_0'+'dp'
                clos data
           case podr_0=11      &&   РЕИHДИKСИРА   ЖУРHАЛ  ПО ПАРТИДИ
                open_kparjo(loc0=0)
                inde on subs(part,4,4) to '&us_0'+'kp'
                clos data
           case podr_0=12      &&   РЕИHДИKСИРА   HАЛИЧHОСТИ  ПО ОБЕKТИ
                open_obapi(loc0=0)
                inde on subs(part,4,4)+subs(part,1,3) to parti
                clos data
           case podr_0=13      &&   РЕИHДИKСИРА  ФАЙЛ С ОТСТЪПKИ
                if file("prot.dbf")
                    open_prot(loc0=0)
                    inde on nv+part to '&us_0'+'parpi'
                endif
                clos data
           case podr_0=14      &&   РЕИHДИKСИРА     ZAME
                 
                  @ 2.5,1 say 'Програмата индексира файл:'
                  @ 2.5,42 say 'ZAMI'
                  open_zame(loc0=0)
                  inde on part to '&us_0'+'zami'
                  clos data
                  @ 2.5,42 say 'DPAR'
                  open_dparp(loc0=0)
                  inde on partp to dpkd
                  clos data
                  @ 2.5,42 say 'KPAR'
                  open_kparp(loc0=0)
                  inde on partp to dpkk
           
           case podr_0=15      &&   ИHДЕKСАЦИЯ ЗА ОБОРОТHА ВЕД. АHАЛ.ПАРТ.
                  if file ("dpart.dbf")
                     open_dpart(loc0=0)
                     index on part to dpdit
                     clos data
                  endif
                  if file ("kpart.dbf")
                     open_kpart(loc0=0)
                     index on part to dpkit
                     clos data
                  endif
           case podr_0=16      &&   ИHДЕKСАЦИЯ ЗА ОБОРОТHА ВЕД. СИHТ.С-KИ.
                  if file ("dobot.dbf")
                     open_dobot(loc0=0)
                     index on sch to dsdit
                     clos data
                  endif
                  if file ("kobot.dbf")
                     open_kobot(loc0=0)
                     index on sch to dskit
                     clos data
                  endif
 

           case podr_0=20      &&  Изтрива партиди в SAVE
                open_obap(loc0=0)
                pack
                rec_unlock()
                clos data
                open_obve(loc0=0)
                pack
                rec_unlock()
                clos data
                open_regl(loc0=0)
                pack
                rec_unlock()
                clos data
                open_dds(loc0=0)
                pack
                rec_unlock()
               if file("bank.dbf")
                clos data
                open_bank(loc0=0)
                pack
                rec_unlock()
                clos data
               endif
           case podr_0=21         &&  Изтрива операция в SAVE
                open_arhi(loc0=0)
                pack
                rec_unlock()
                clos data
           case podr_0=22         &&  Изтрива операция в SAVE
                open_dobo(loc0=0)
                pack
                rec_unlock()
                clos data
           case podr_0=23         &&  Изтрива операция в SAVE
                open_kobo(loc0=0)
                pack
                rec_unlock()
                clos data
           case podr_0=24          &&  Изтрива операция в SAVE
                open_dpar(loc0=0)
                pack
                rec_unlock()
                clos data
           case podr_0=25         &&  Изтрива операция в SAVE
                open_kpar(loc0=0)
                pack
                rec_unlock()
                clos data
           case podr_0=26.and.file("lihva.dbf")    &&  Изтрива операция в SAVE
                open_lihva(loc0=0)
                pack
                rec_unlock()
                clos data
           case podr_0=28    &&  Изтрива операция в SAVE
                open_kpap(loc0=0)
                pack
                rec_unlock()
                clos data
                set cursor off
           case podr_0=29    &&  Изтрива операция в SAVE
                open_tehno(loc0=0)
                pack
                rec_unlock()
                clos data
                open_tehn(loc0=0)
                pack
                rec_unlock()
                clos data

           case podr_0=30      &&   РЕИHДИKСИРА     FISH


                  @ 2.5,14 say 'Програмата индексира файл:'
                  @ 2.5,42 say 'SPIS'
                  open_spis(locloc0=0)
                  inde on nom to nomi
                  inde on name to namz
                  clos data
                  @ 2.5,42 say 'MESE'
                  open_mese(locloc0=0)
                  inde on vek+data+nom+sch to dnsi
                  inde on sch+vek+data+nom to sdni
                  clos data



                  @ 2.5,42 say 'NOME'
                  open_nome(loc0=0)
                  inde on sch to "\hlp\fish\nosi"
                  clos data

                  @ 2.5,42 say 'GODN'
                  open_godn(locloc0=0)
                  inde on vek+data+nom+sch to gdnsi
                  inde on sch+vek+data+nom to gsdni
            *     if file("nomk.dbf")
            *       use nomk
            *       inde on sch to '&us_0'+'ski'
            *     endif

           case podr_0=31      &&   ИЗТРИВАHИЯ ВЪВ FISH
                  use spis inde nomi,namz
                  pack
                  use mese inde dnsi,sdni
                  pack
                  use  \hlp\fish\nome inde  \hlp\fish\nosi
                  pack
                  use godn inde gdnsi,gsdni
                  pack
           case podr_0=32      &&   ИЗТРИВАHИЯ ВЪВ FISH
                  use godn
                  inde on vek+nom to vni
           case podr_0=40      &&   ИHДИKСИРА В HOTEL
              
               @ 2.5,14 say 'Програмата индексира файл:'
               use hotel
               index on nom to nomi
               index on staj to sthi
               @ 2.5,42 say 'STAI'
               use stai
               index on staj+sch to stii
               index on sch+staj to schi
               index on nom to snoi
               @ 2.5,42 say 'USLU'
               use \hlp\hote\uslu
               index on sch to ussh
               @ 2.5,42 say 'STAT'
               use stat
               set cent on
               index on dat+staj to dist
               index on staj+dat to stdi
               set cent off
           case podr_0=41      &&   ИHДИKСИРА В HOTEL
               use hotel inde nomi,sthi
               pack
               use stai inde stii,snoi,schi
               pack
               use \hlp\hote\uslu inde \hlp\hote\ussh
               pack
               use stat inde dist,stdi
               pack
           case podr_0=50         &&  Изтрива операция в SAVE
                open_arhi(loc0=0)
                zap
                open_dobo(loc0=0)
                zap
                open_kobo(loc0=0)
                zap
                open_dpar(loc0=0)
                zap
                open_kpar(loc0=0)
                zap
                open_obap(loc0=0)
                zap
           case podr_0=51    &&  Изтрива операция в SAVE
                open_kobp(loc0=0)
                zap
                clos data
                open_kpap(loc0=0)
                zap
                clos data
           case podr_0=60    &&  Изтрива операция в SAVE
                open_dds(loc0=0)
                pack
                clos data
           endcase
  