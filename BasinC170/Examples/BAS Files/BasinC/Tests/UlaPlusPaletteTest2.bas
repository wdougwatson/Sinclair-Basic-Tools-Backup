Check 86C91B8E
Auto 8224

# Run-time Variables

Var c: Num = 0
Var a: Num = 252
Var f: NumFOR = 64, 63, 1, 100, 3
Var b: NumFOR = 2, 1, 1, 30, 2
Var i: NumFOR = 8, 7, 1, 40, 2
Var p: NumFOR = 8, 7, 1, 50, 2

# End Run-time Variables

   1 BORDER 0: PAPER 0: INK 0: CLS
   5 OUT 48955,64: OUT 65339,0
  10 LET c=0
  20 FOR f=0 TO 1
  30 FOR b=0 TO 1
  40 FOR i=0 TO 7
  50 FOR p=0 TO 7
  60 PRINT FLASH f; BRIGHT b; INK i; PAPER p;"\ :";
  70 LET c=c+1
  80 IF c>15 THEN LET c=0: PRINT
  90 NEXT p: NEXT i: NEXT b: NEXT f
  95 OUT 48955,64: OUT 65339,1
 100 RESTORE 100: FOR F=0 TO 63: READ A: OUT 48955,F: OUT 65339,A: NEXT F: DATA 4,4,8,12,16,20,24,28,0,36,40,44,48,52,56,60,64,68,72,76,80,84,88,92,96,100,104,108,112,116,120,124,128,132,136,140,144,148,152,156,160,164,168,172,176,180,184,188,192,196,200,204,208,212,216,220,224,228,232,236,240,244,248,252