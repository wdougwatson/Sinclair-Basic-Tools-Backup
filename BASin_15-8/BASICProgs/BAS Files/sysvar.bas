   1 REM **********************
   2 REM ** SYSTEM VARIABLES.**
   3 REM **   Any Spectrum.  **
   4 REM ** Do not renumber. **
   5 REM **********************
   7 DATA "KSTATE-"+STR$ I
   8 DATA "LASTK"
   9 DATA "REPDEL"
  10 DATA "REPPER"
  12 DATA " DEFADD"
  13 DATA "KDATA"
  15 DATA "TVDATA"
  53 DATA " STRMS-"+FN h$(INT (i/2)-11+(256 AND i<22))
  55 DATA " CHARS"
  56 DATA "RASP"
  57 DATA "PIP"
  58 DATA "ERR NR"
  59 DATA "FLAGS"
  60 DATA "TV FLAG"
  62 DATA " ERR SP"
  64 DATA " LIST SP"
  65 DATA "MODE"
  67 DATA " NEWPPC"
  68 DATA "NSPPC"
  70 DATA " PPC"
  71 DATA "SUBPPC"
  72 DATA "BORDCR"
  74 DATA " E PPC"
  76 DATA " VARS"
  78 DATA " DEST"
  80 DATA " CHANS"
  82 DATA " CURCHL"
  84 DATA " PROG"
  86 DATA " NXTLIN"
  88 DATA " DATADD"
  90 DATA " E LINE"
  92 DATA " K CUR"
  94 DATA " CH ADD"
  96 DATA " X PTR"
  98 DATA " WORKSP"
 100 DATA " STKBOT"
 102 DATA " STKEND"
 103 DATA "BREG"
 105 DATA " MEM"
 106 DATA "FLAGS2"
 107 DATA "DF SZ"
 109 DATA " S TOP"
 111 DATA " OLDPPC"
 112 DATA "OSPPC"
 113 DATA "FLAGX"
 115 DATA " STRLEN"
 117 DATA " T ADDR"
 119 DATA " SEED"
 122 DATA "FRAMES"+STR$ (I-119)
 124 DATA " UDG"
 126 DATA "COORDS-"+CHR$ (I-5)
 127 DATA "P POSN"
 129 DATA " PR CC"
 131 DATA " ECHO E"
 133 DATA " DF CC"
 135 DATA " DFCCL"
 137 DATA " S POSN"
 139 DATA " SPOSNL"
 140 DATA "SCR CT"
 141 DATA "ATTR P"
 142 DATA "MASK P"
 143 DATA "ATTR T"
 144 DATA "MASK T"
 145 DATA "P FLAG"
 175 DATA "MEM-"+STR$ INT ((I-146)/5)
 177 DATA "Various"
 179 DATA " RAMTOP"
 181 DATA " P-RAMT"
 182 DATA "FLAGS 3"
 184 DATA " VECTOR"
 194 DATA "SBRT"
 196 DATA " BAUD"
 197 DATA "NTSTAT"
 198 DATA "IOBORD"
 200 DATA "SER_FL"
 202 DATA "SECTOR"
 204 DATA " CHADD_"
 205 DATA "NTRESP"
 206 DATA "NTDEST"
 207 DATA "NTSRCE"
 209 DATA "NTNUMB"
 210 DATA "NTTYPE"
 211 DATA "NTLEN"
 212 DATA "NTDCS"
 213 DATA "NTHCS"
 221 DATA "D_STR1"
 229 DATA "D_STR2"
 230 DATA "HD-00"
 232 DATA " HD-0B"
 234 DATA " HD-0D"
 236 DATA " HD-0F"
 238 DATA " HD-11"
 239 DATA "COPIES"
1000 CLS : PRINT "SYSVAR"
1001 INPUT " Stream eg. 2-Screen,3-Printer. ";s
1010 DEF FN H$(X)=P$(1+INT (X/16))+P$(1+(X-INT (X/16)*16))
1020 LET P$="0123456789ABCDEF"
1030 LET O$=" "
1040 FOR I=0 TO 239
1050 LET A=23552+I
1060 LET D=I-58
1070 LET D$=CHR$ (43+(D<0)+(D<0))
1080 LET Y$="(IY"+D$+FN H$(ABS D)+")"
1090 IF D>127 THEN LET Y$=""
1100 RESTORE I: READ V$
1110 IF V$=O$ THEN LET V$=V$+" hi"
1120 IF CODE V$=32 THEN LET O$=V$: GO TO 1140
1130 LET v$=" "+v$
1140 PRINT #s;"5C";FN H$(I);TAB 5;Y$;TAB 14;A;TAB 20;V$
1150 NEXT I
