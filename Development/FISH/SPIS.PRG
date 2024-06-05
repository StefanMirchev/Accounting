     	 sele 2
         use spis
         sele 1
         use spi
         locate for  nom='   109'
*      do while .not. eof()

                            nom0=nom
                            name0  =name
                            ime0=ime
                            prime0 =prime
                            family0=family
                            egn0   =egn
                            inic0  =inic
                            pk0    =pk
                            obl0   =obl
                            nasm0  =nasm
                            adr0   =adr
                            egn10  =egn1
                            egn20  =egn2
                            egn30  =egn3
                            egn40  =egn4
                            egn50  =egn5
                            egn60  =egn6
                            dd0    =dd
                            mm0    =mm
                            gg0    =gg
                            mg0    =mg
                            bold0  =bold
                            mayd0  =mayd
                            detd0  =detd
                            bch0   =bch
                            vod0   =vod
                            kpd0   =kpd
                            dvd0   =dvd
                            dpd0   =dpd
                            pnm0   =pnm
                            rs0    =rs
                            pnv0   =pnv
                            oid0   =oid
                            voz0   =voz
                            vpz0   =vpz
                            dvz0   =dvz
                            dpz0   =dpz
                            dr0    =dr
                            dr0    =mr
                            god0   =god
                            godc0  =godc
                            rabo0  =rabo
                            td0    =td
                            datn0  =datn
                            chln0  =chln
                            srok0  =srok
                           datu0   =datu
                           lkn0    =lkn
                            lkd0=lkd
                            izd0=izd
                            chlu0=chlu
                            obra0=obra
                            vazn0=vazn
                            osig0=osig
                            osnn0=osnn
                            osnp0=osnp
                            nkp0=nkp
                            nkid0=nkid
                               kd0=kd
                               pd0=pd
         sele 2
         appe blank
         repl nom with nom0, name with name0,ime with ime0, prime with prime0, family with family0, inic with inic0,egn with  egn0
         repl obl with obl0,nasm with nasm0, adr with adr0,pk with pk0,egn1 with  egn10, god with val(subs(egn,1,2))
         repl egn2 with egn20,egn3 with egn30,egn4 with egn40,egn5 with egn50,egn6 with egn60
         repl dd with dd0,mm with mm0,gg with gg0,mg with mg0,bold with bold0,mayd with mayd0,detd with detd0,bch with bch0,vod with vod0,kpd with kpd0
         repl dvd with dvd0,dpd with dpd0,pnm with pnm0,rs with rs0,pnv with pnv0,voz with voz0
         repl oid with oid0,vpz with vpz0
         repl dvz with dvz0,dpz with dpz0,rabo with rabo0,td with td0
         repl datn with datn0, chln with chln0,datu with datu0,srok with srok0,lkn with lkn0
         repl lkd with lkd0, izd with izd0, chlu with chlu0, obra with obra0,godc with godc0
         repl vazn with vazn0, osig with osig0, osnn with osnn0
         repl osnp with osnp0, nkp with nkp0, nkid with nkid0, kd with kd0, pd with pd0
   *     sele 1
   *     if .not. eof()
   *        skip
   *     else
   *        exit
   *     endif
   *   enddo
