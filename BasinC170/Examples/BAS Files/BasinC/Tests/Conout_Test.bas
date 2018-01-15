Check A79BB787
Auto 8224

# Run-time Variables

Var x: NumFOR = 30, 255, 1, 110, 2
Var o$: Str = "This is a message from ZX Spectrum\#255"
Var i$: Str = "This is a message from ZX Spec"

# End Run-time Variables

  10 LET o$="This is a message from ZX Spectrum"+CHR$ 255
  30 REM SEND THE MESSAGE
  40 OUT 1259,0
  50 FOR x=1 TO LEN o$
  60 OUT 1515,CODE o$(x)
  70 NEXT x
 100 REM NOW READ IT BACK
 102 LET i$=""
 110 FOR x=0 TO 255
 115 OUT 1259,x: IF IN 1515=255 THEN GO TO 140
 120 LET i$=i$+CHR$ IN 1515
 130 NEXT x
 140 CLS : PRINT AT 0,0;"-";i$;"-"
 150 GO TO 100
