@ECHO Off

 ren PATH \HLP\JOB\;\HLP\EXE\;\HLP\DBASE;\HLP\SAVE;\HLP\FISH;\HLP\OTCH;\HLP\PODR;\HLP\Pk;\HLP\cal;\HLP\CAL1;\CLIP53;\CLIP53\BIN;%path%

     PATH   c:\HLP\EXE\;c:\HLP\DBASE;\HLP\SAVE;\HLP\FISH;\HLP\OTCH;\HLP\PODR;\CLIP53;\CLIP53\BIN;%SystemRoot%\system32

  SET INCLUDE=\HLP\CLIP53\INCLUDE;\CLIP53\INCLUDE
  SET LIB=\HLP\CLIP53\LIB;\CLIP53\LIB
  SET OBJ=\HLP\CLIP53\OBJ;\CLIP53\OBJ
  SET PLL=\HLP\CLIP53\PLL



rem  net  share f=f:
rem  subst a: f:\
rem  @ net use a: \\stefan\f /yes

rem  SET TEMP=C:\TEMP
rem  SET CLIPPER=F90
rem  \DOS\winrun.bat

  

rem  code con codepage prepare=((855) C:\WINDOWS\COMMAND\ega3.cpi)
rem  mode con codepage select=855

rem LH /L:0;1,45488 /S C:\windows\SMARTDRV.EXE /X   &&  да не ▒е полз│ва
rem  subst a: f:\
rem  @ net use a: \\stefan\f /yes
rem  lh %SystemRoot%\system32\redir
rem  lh %SystemRoot%\system32\dosx
rem  SET BLASTER=A220 I5 D1 P330 T3
rem  SET PIPEHANDLE=0
rem  Install network redirector (load before dosx.exe)
rem  lh %SystemRoot%\system32\redir
rem  Install DPMI support
rem  lh %SystemRoot%\system32\dosx
rem  SET BLASTER=A220 I5 D1 P330 T3

rem  To disable the sound blaster 2.0 support on NTVDM, specify an invalid
rem  SB base I/O port address.  For example:
rem  SET BLASTER=A0

rem  MODE CON CP PREPARE=((861 850)C:\DOS\EGA2.CPI)
rem  MODE CON CP SELECT=861
rem  KEYB IS,,C:\DOS\KEYBRD2.SYS
