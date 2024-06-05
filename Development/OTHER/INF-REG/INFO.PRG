           clos all
           if file ("h:\hlp\info.dbf")
           copy file h:\hlp\info.dbf to c:\hlp\inf.dbf
         * rename c:\hlp\hh\info.dbf to c:\hlp\hh\inf.dbf
           endif
           sele 1
           use  c:\hlp\info
           sele 2
           use c:\hlp\inf
        *  set filter to dn='2221175894'
        *  go top
       do while .not.eof()
 	     fir0  = fir
	     dn0   = dn
	     buls0 = buls
	     adr0  = adr
	     grad0 = grad
	     tel0  = tel
	     name0 = name
	     dlaz0 = dlaz
	     p0    = p
	     go0   = go
	     lkar0 = lkar
	     datk0 = datk
	     egn0  = egn
	     reg0  = reg
	     tdd0  = tdd
	     podr0 = podr
	     obst0 = obst
	     repu0 = repu
	     vvid0 = vvid
	     gr0   = gr
	     bf0   = bf
	     ba0   = ba
 	     gb0   = gb
 	     bk0   = bk
	     bs0   = bs
	     dat10 = dat1
	     dat20 = dat2
	     lize0 = lize
	     sas0  = sas
	    ddsbf0 = ddsbf
            ddsba0 = ddsba
            ddsgb0 = ddsgb
        sele 1
         locate for dn=dn0
     if .not. found()
        appe blank
      repl fir   with  fir0
      repl dn    with  dn0
      repl buls  with  buls0
      repl adr   with  adr0
      repl grad  with  grad0
      repl tel   with  tel0
      repl name  with  name0
      repl dlaz  with  dlaz0
      repl p     with  p0
      repl go    with  go0
      repl lkar  with  lkar0
      repl datk  with  datk0
      repl egn   with  egn0
      repl reg   with  reg0
      repl tdd   with  tdd0
      repl podr  with  podr0
      repl obst  with  obst0
      repl repu  with  repu0
      repl vvid  with  vvid0
      repl gr    with  gr0
      repl bf    with  bf0
      repl ba    with  ba0
      repl gb    with  gb0
      repl bk    with  bk0
      repl bs    with  bs0
      repl dat1  with  dat10
      repl dat2  with  dat20
      repl lize  with  lize0
      repl sas   with  sas0
      repl ddsbf with ddsbf0
      repl ddsba with ddsba0
      repl ddsgb with ddsgb0
     endif
      sele 2
        if .not. eof()
            skip
        else
           exit
        endif
    enddo
    sele 1
    brow
    pack
    clos all
