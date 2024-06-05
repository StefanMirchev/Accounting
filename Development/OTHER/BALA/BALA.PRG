 *  00 opr    05
 *  10 bala   04
 *  20 kapi   06
 *  30 pari   07
 *  40 dds    40
 *  41 vies   42
 *  09        30
 *  50 sprav prisp. dds 41
 *  55 akciz  45
 *  60 plat danacno
 *  61 plat dostavchik
 *  62 up2
 *  63 up3
 *  64 sl. beleg za dohodite
 *  65 protokol pylnomoshtno NOI
 *  parwata cifra zapch va ot 151


       t0='40'
       use bala
     * set filter to t=t0
     * go top
     * brow
     * copy to bala.txt sdf  for t=t0
     * !edi bala.txt
     * dele all for t=t0
       pack
       appe from bala.txt sdf
       go top
       brow


 *     use balan
 *     dele all
 *     pack
 *     !edi bala.txt
 *     appe from bala.txt sdf
 *     brow
 *
 *     sele 2
 *     use bala
 *     appe blan
 *     brow
 *     sele 1
 *     use balan
 *     set filter to t='90'
 *     go top
 *     do while .not. eof()
 *        pola0=pola
 *        polp0=polp
 *        t0=t
 *        sele 2
 *        appe blank
 *        repl pola with pola0, polp with polp0, t with t0
 *        sele 1
 *        skip
 *     enddo
 * sele 2
 * go bott
 * brow
