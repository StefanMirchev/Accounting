


*  DIRMAKE("C:\DDD")


  DIRMAKE("c:\test\one")    // Create top-most one
  nResult := DIRMAKE("c:\test\one\two")
  IF nResult != 0
     ? "Cannot make directory, DOS error ", nResult
     BREAK
  ENDIF

* You may also use something like this:

  DIRMAKE( ".\test" )



* Request DBFCDX
*  Public stap0:=0
*
*  Use PD_ALL New Via "DBFCDX"
*  nMaxIndRec:= RecCount()
*
*  PrepWait("ˆ„…Š‘ˆ€… Ž Õ Ž’ŽŠŽ‹")
*  Index On ( PD_ALL->NOMER) Tag NOMER TO PD_ALL EVAL {||NowWait(nMaxIndRec)} EVERY 100
*   CANCE
*
*  cls
*
*  Use ARHI  New Via "DBFCDX"
*  Use ARHI via "DBFCDX"
*  zapis0:= reccount()
*
*  Index On ( ARHI->DATA) Tag DATA TO arhi EVAL {||NowWait(nMaxIndRec)} EVERY 100
*  Index On DATA Tag DATA TO NARI EVAL {||NowWait(nMaxIndRec)} EVERY 100
*  Index On DATA TO NARI EVAL {||graf(zapis0)} EVERY 100
*  Index On DATA TO NARI {||graf(zapis0)} EVERY 100
*   CANCE
1
*
*
*
*   /***
*   * ‡  ¨§· ª¢ ­¥ ­  ¤ ¤¥­  ®¡° ¡®²ª  —…’€… ‘Š€‹€ ± % Ž‘Ž‚€
*   */
*   Function NowWait(nMaximum)
*      Local nVal, cLenta, nI
*      Static nPsdRot:=0
*      nCntInd+= 100
*      nPsdRot++
*      If nPsdRot % 2 = 0
*         SetPos(17,41)
*         ?? "\"
*      Else
*         SetPos(17,41)
*         ?? "/"
*      EndIf
*      If ((nCntInd > nMaximum), nCntInd:= nMaximum, )
*      cLenta:= ""
*      nVal:= 100 * Round((nCntInd/nMaximum),2)
*      If nVal = 100 .And. ( (nCntInd/nMaximum) <> 1 )
*         nVal = 99
*      EndIf
*      For nI:= 1 TO 50
*             If nI*2 <= nVal
*                cLenta+= "Û"
*          Else
*                cLenta+= ""
*          EndIf
*      Next
*      If nVal % 2 <> 0
*         cLenta:= Left(cLenta,Len(cLenta)) + "Ý"
*      EndIf
*      @ 17,37 Say STR(nVal,3)
*      @ 18,14 Say clenta
*   Return NIl // NowWait()
*
*
*   * ‡  ¨§· ª¢ ­¥ ­  ¤ ¤¥­  ®¡° ¡®²ª  —…’€… ‘Š€‹€ ± % Ž‘Ž‚€
*   */
*   func graf(zapis0)
*      local x0, clenta, nI
*      static y0:=0
*      stap0+= 100  //  ‘²º¯ª  += ¤®¡ ¢¿ 100 ªº¬ ²¥ª. ±²-±²
*      y0++  // H ° ±²¢  ®² 0 ±º± ±²º¯ª  1
*      if y0 % 2 = 0    // ¯®ª §¢  ¤ «¨ ¶¨±«®²® ¥ ª° ²­® ­  2
*         setpos(17,41)
*         ?? "\"
*      else
*         setpos(17,41)
*         ?? "/"
*      endif
*      if ((stap0 > zapis0), stap0:= zapis0, )
*      clenta:= ""
*      x0:= 100 * round((stap0/zapis0),2)
*      if x0 = 100 .and. ( (stap0/zapis0) <> 1 )
*         x0 = 99
*      endif
*      for nI:= 1 TO 50
*             if nI*2 <= x0
*                clenta+= "Û"
*          else
*                clenta+= ""
*          endif
*      next
*      if x0 % 2 <> 0
*         clenta:= left(clenta,len(clenta)) + "Ý"
*      endif
*      @ 17,37 say str(x0,3) // x0  ¯®ª §¢  ¯°®¶¥­²  ­  ®¡° ¡®²ª ² 
*   *  @ 18,14 say clenta
*   return NIl // graf()

