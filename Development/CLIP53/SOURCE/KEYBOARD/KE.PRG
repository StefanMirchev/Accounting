 ***

* @ 2,2 CLEA TO 24,78



*  Keyboard.prg
*
*  Sample keyboard routines
*
*  Copyright (c) 1993-1995, Computer Associates International Inc.
*  All rights reserved.
*
*  Note: Compile with /N /W options
*
*/


/***
*
*  InKeyWait( <nSecs> ) --> nInkeyCode
*
*  Similar to INKEY(), except services SET KEYs
*
*/
FUNCTION InKeyWait( nSecs )

   LOCAL nKey        // INKEY() value to return
   LOCAL bKeyBlock   // Code block retrieved and performed for nKey, if any

   nKey := INKEY( nSecs )

   ? NKEY
    ? '1111111111111111111111111111111'

   IF ( bKeyBlock := SETKEY( nKey ) ) != NIL
      EVAL( bKeyBlock, PROCNAME( 2 ), PROCLINE( 2 ) )
   ENDIF

   RETURN( nKey )
