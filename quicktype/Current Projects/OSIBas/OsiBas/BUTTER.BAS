          
 1 REM ** butterfingers **          
 2 POKE530,1:GOSUB100          
 3 KE=57088:DI=30          
 4 PRINTCHR$(26):POKE53325,32          
 5 L=53790:P=2          
 6 OF=0:GOSUB35          
 7 DIMP(2),D(2),F(2),A(20,2),C(2)          
 8 K1=7:K2=13:K3=19:GOSUB91          
 9 FORT=0TO2:D(T)=1:NEXT          
 10 P(0)=INT(RND(1)*4)          
 11 P(1)=INT(RND(1)*7)          
 12 P(2)=INT(RND(1)*10)          
 13 FORT=0TO2:F(T)=0:GOSUB19          
 14 IFP(T)+D(T)<0THEN78          
 15 IFA(P(T)+D(T),T)=999THEN78          
 16 POKEA(P(T),T),32:P(T)=P(T)+D(T):POKEA(P(T),T),C(T)          
 17 FORQ=1TODI:NEXT          
 18 NEXT:GOTO13          
 19 POKEKE,127:K=PEEK(KE)          
 20 IFK=255THEN30          
 21 IFK=127THEN24          
 22 IFK=191THEN27          
 23 RETURN          
 24 IFP=1THEN30          
 25 ONPGOSUB44,46,47:P=P-1:L=L-2          
 26 ONPGOSUB49,51,52:GOTO30          
 27 IFP=3THEN30          
 28 ONPGOSUB44,46,47:P=P+1:L=L+2          
 29 ONPGOSUB49,51,52:GOTO30          
 30 P1=PEEK(L-64):P2=PEEK(L-53):IFP1=32ANDP2=32THENRETURN          
 31 FORQ=0TO2          
 32 IFP1=C(Q)THEND(Q)=1:GOSUB74          
 33 IFP2=C(Q)THEND(Q)=-1:GOSUB74          
 34 NEXTQ:RETURN          
 35 RESTORE:FORT=1TO31:READX,Y,Z:GOSUB43:NEXT          
 36 Z=161:Y=3:FORX=0TO11:GOSUB43:NEXT          
 37 Y=4:FORX=3TO7:GOSUB43:NEXT          
 38 Y=5:FORX=3TO7:GOSUB43:NEXT          
 39 X=3:FORY=6TO9:GOSUB43:NEXT          
 40 X=7:FORY=6TO9:GOSUB43:NEXT          
 41 X=5:Y=4:Z=67:GOSUB43          
 42 RETURN          
 43 POKE53662+OF+X+Y*64,Z:RETURN           
 44 POKEL,32:POKEL+1,32:POKEL+65,32          
 45 POKEL+11,32:POKEL+12,32:RETURN          
 46 POKEL,32:POKEL+64,32:POKEL+11,32:POKEL+75,32:RETURN          
 47 POKEL,32:POKEL-1,32:POKEL+11,32:POKEL+10,32:POKEL+74,32          
 48 RETURN          
 49 POKEL,177:POKEL+1,178:POKEL+65,177          
 50 POKEL+11,177:POKEL+12,178:POKEL+66,161:RETURN          
 51 POKEL,161:POKEL+64,161:POKEL+11,161:POKEL+75,161:RETURN          
 52 POKEL,175:POKEL-1,176:POKEL+11,175:POKEL+10,176:POKEL+74,175          
 53 POKEL+73,161:RETURN          
 54 DATA3,0,184,4,0,187,5,0,187,6,0,187,7,0,184,3,1,123,4,1,172          
 55 DATA5,1,9,6,1,166,7,1,124,0,2,161,11,2,161          
 56 DATA4,6,175,6,6,177,1,9,154,2,9,158,9,9,154,8,9,158          
 57 DATA4,2,235,2,8,176,4,8,178,5,2,232,8,8,178          
 58 DATA6,8,176,6,2,234,0,9,150,10,9,150,11,9,144,-1,9,144          
 59 DATA-2,9,4,12,9,4          
 60 DATA4,7,4,6,6,5,7,5,8,5,9,5,10,6,11,7          
 61 DATA2,7,2,6,3,5,4,4,5,3,6,2,7,2,8,2,9,2,10,3,11,4,12,5,13,6          
 62 DATA13,7          
 63 DATA0,7,0,6,0,5,1,4,2,3,3,2,4,1,5,0,6,0,7,0,8,0,9,0,10,0,11,1          
 64 DATA12,2,13,3,14,4,15,5,15,6,15,7          
 65 DATA111,181,182          
 66 DATA4,7,4,6,6,5,9,5,10,6,11,7          
 67 DATA2,7,3,5,4,4,6,3,8,2,10,3,11,4,12,5,13,7          
 68 DATA0,7,0,5,1,4,2,3,5,1,6,0,8,0,10,0,11,1,13,3,14,4,15,5,15,7          
 69 DATA232,252,226          
 70 DATA4,7,6,5,9,5,11,7          
 71 DATA2,7,4,4,6,3,8,3,11,4,13,7          
 72 DATA0,7,0,5,2,3,4,1,7,0,10,1,12,3,14,5,15,7          
 73 DATA21,19,236          
 74 SC=SC+1:DI=DI-.5          
 75 IFSC=100THENGOSUB95          
 76 IFSC=250THENGOSUB98          
 77 RETURN          
 78 Q=A(P(T),T)          
 79 POKEQ,32          
 80 FORW=1TO8:Q=Q+64:Z=PEEK(Q):POKEQ,C(T):FORE=1TO50:NEXT          
 81 POKEQ,Z:NEXT          
 82 POKEQ,C(T)          
 83 PRINTSPC(10)"YOU DROPPED IT, BUTTERFINGERS!"          
 84 FORT=1TO1000:NEXT          
 85 PRINT:PRINTSPC(15)"Your score is:"SC          
 86 FORT=1TO1000:NEXT          
 87 PRINT:PRINTSPC(10)"Press SPACE to play again";          
 88 X=21:Y=-1:Z=32:GOSUB43          
 89 X=USR(X):IFPEEK(533)=32THENRUN3          
 90 END          
 91 FORZ=0TOK1:READX,Y:A(Z,0)=53276+X+64*Y:NEXT:A(K1+1,0)=999          
 92 FORZ=0TOK2:READX,Y:A(Z,1)=53276+X+64*Y:NEXT:A(K2+1,1)=999          
 93 FORZ=0TOK3:READX,Y:A(Z,2)=53276+X+64*Y:NEXT:A(K3+1,2)=999          
 94 FORZ=0TO2:READC(Z):NEXT:RETURN          
 95 FORZ=0TO2:POKEA(P(Z),Z),32:P(Z)=INT(RND(1)*3):D(Z)=1          
 96 F(Z)=0:NEXT          
 97 K1=5:K2=8:K3=12:GOSUB91:DI=30:RETURN          
 98 FORZ=0TO2:POKEA(P(Z),Z),32:P(Z)=INT(RND(1)*2):D(Z)=1:F(Z)=0:NEXT          
 99 K1=3:K2=5:K3=8:GOSUB91:DI=100:RETURN          
 100 PRINTCHR$(26):PRINT:PRINT:PRINT          
 101 PRINTSPC(13)"*******************"          
 102 PRINTSPC(13)"** BUTTERFINGERS **"          
 103 PRINTSPC(13)"*******************"          
 104 X=-17:Y=1:Z=32:GOSUB43          
 105 OF=0:GOSUB43          
 106 FORT=1TO800:NEXT          
 107 POKE519,0:POKE520,0:POKE11,233:POKE12,255          
 108 X=-17:Z=32:Y=-3:GOSUB43          
 109 POKE519,3:POKE520,12:PRINT"Instructions ?";          
 110 X=USR(X):IFPEEK(531)=78THENRETURN          
 111 PRINTCHR$(26):PRINT"      **  BUTTERFINGERS  **"          
 112 PRINT:PRINT"     Help Charlie the clown to juggle !"          
 113 PRINT:PRINT"  Use '1' to move his arms left"          
 114 PRINT"  Use '2' to move his arms right"          
 115 PRINT:PRINT:PRINTSPC(8)"Press SPACE to play"          
 116 X=-17:Y=4:Z=32:OF=0:GOSUB43          
 117 OF=15:GOSUB35          
 118 GOTO89          
OK          
���