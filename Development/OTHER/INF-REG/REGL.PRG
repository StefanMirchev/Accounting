 * ***************  П░о╢ед│░а▓а ак▓│ализи░а REGL.DBF *********************
  *  set talk off
  *  clos all
  *  copy file h:\hlp\regl.dbf to c:\hlp\reg.dbf
 * ***************  П░ове░ка за д│бли░ани наименовани┐ *******************
  *  ?  'П░ове░ка за д│бли░ани наименовани┐ REGL.DBF'
  *  wait ''
  *  sele 1
  *  use regl
  *  inde on vvid to vvidi
  *  use regl inde vvidi
  *  do while .not.eof()
  *     vvid0=vvid
  *     if .not.eof()
  *        skip
  *     else
  *        exit
  *     endif
  *     if subs(vvid,1,10)=subs(vvid0,1,10)
  *        brow field dn,vvid,br
  *     endif
  *  enddo
 *
 * ***************  П░ове░ка за д│бли░ани дан║╖ен номе░ ******************
 *   ?  'П░ове░ка за д│бли░ани дан║╖ни номе░а REGL.DBF'
 *   wait ''
 *   sele 1
 *   use regl
 *   inde on dn to dni
 *   use regl inde dni
 *   do while .not.eof()
 *      dn0=dn
 *      if .not.eof()
 *         skip
 *      else
 *         exit
 *      endif
 *      if dn=dn0
 *         brow field dn,vvid,br
 *      endif
 *   enddo
 *
 *
 * ***************  П░ове░ка за д│бли░ани наименовани┐ об░а▓но *******************
 *   ? ' П░ове░ка за д│бли░ани наименовани┐ REG.DBF'
 *   wait ''
 *   sele 2
 *   use reg
 *   inde on vvid to fvvidi
 *   use reg inde fvvidi
 *   do while .not.eof()
 *      vvid0=vvid
 *      if .not.eof()
 *         skip
 *      else
 *         exit
 *      endif
 *      if subs(vvid,1,10)=subs(vvid0,1,10)
 *         brow field dn,vvid,br
 *      endif
 *   enddo
 *
 * ***************  П░ове░ка за д│бли░ани дан║╖ен номе░ об░а▓но ******************
 *   ? ' П░ове░ка за д│бли░ани дан║╖ни номе░а  REG.DBF'
 *   wait ''
 *   sele 2
 *   use reg
 *   inde on dn to fdni
 *   use reg inde fdni
 *   do while .not.eof()
 *      dn0=dn
 *      if .not.eof()
 *         skip
 *      else
 *         exit
 *      endif
 *      if dn=dn0
 *         brow
 *      endif
 *   enddo
 *
 *
 *
   ***************  Добав┐не о▓ нов дан║╖ен номе░ об░а▓но ******************
     ? 'Добав┐не на нови запи▒и'
        wait''
     sele 1
     use regl
     inde on dn to dni
     use regl inde dni
     sele 2
     use reg
   * inde on dn to fdni
   * use reg inde fdni
   * go 509
   * set talk off
   * brow
      do while .not.eof()
         dn0=dn
         vid0=vid
         vvid0=vvid
         gr0=gr
         buls0=buls
         mol0=mol
         pol0=pol
         br0=br
         sele 1
         find "&dn0"
          ? dn0
          wait '111111111111'
           if .not.found()
             appe blank
           endif
             repl dn with dn0, vid with vid0,vvid with vvid0,gr with gr0,;
             buls with buls0,mol with mol0,pol with pol0,br with br0
         endif
         sele 2
         skip
      enddo
     set talk on
     clos all
     use regl
     dele all
     for dn=space(10)
     pack
     brow
