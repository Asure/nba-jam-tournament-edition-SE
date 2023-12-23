	.OPTION	B,D,L,T
	.include	"BGNDTBL.GLO"
	.DATA

oreHDRS:
	.word	8,4	;x size, y size
	.long	0547E117H	;address
	.word	06000H	;dma ctrl
	.word	8,4
	.long	0547E1D7H
	.word	06000H
	.word	8,122
	.long	0547E297H
	.word	06000H
	.word	96,4
	.long	0547F977H
	.word	06000H
	.word	4,122
	.long	05480277H
	.word	03000H
	.word	4,4
	.long	0548082FH
	.word	03000H
	.word	4,4
	.long	0548082FH
	.word	03000H
	.word	44,8
	.long	0548085FH
	.word	06000H
	.word	120,4
	.long	0548109FH
	.word	05000H
	.word	96,4
	.long	054819FFH
	.word	03000H
	.word	180,120
	.long	05481E7FH
	.word	05000H
	.word	40,115
	.long	0549C45FH
	.word	06000H
	.word	40,121
	.long	054A302FH
	.word	06000H
	.word	36,4
	.long	054AA19FH
	.word	05000H
	.word	28,48
	.long	054AA46FH
	.word	06000H
	.word	152,8
	.long	054AC3EFH
	.word	06000H
	.word	4,71
	.long	054AE06FH
	.word	05000H
	.word	152,8
	.long	054AE5FBH
	.word	06000H
	.word	16,9
	.long	054B027BH
	.word	05000H
	.word	48,8
	.long	054B054BH
	.word	06000H
	.word	52,9
	.long	054B0E4BH
	.word	03000H
	.word	8,4
	.long	054B13C7H
	.word	06000H
	.word	8,4
	.long	054B1487H
	.word	06000H
hiscoreBLKS:
	.word	0140H	;flags
	.word	0,0 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	0240H,0,250,01H
	.word	0240H,0,4,02H
	.word	0240H,0,128,02H
	.word	0240H,0,107,02H
	.word	0260H,0,254,01H
	.word	0240H,6,250,03H
	.word	0140H,6,0,03H
	.word	0241H,6,128,04H
	.word	0241H,6,4,05H
	.word	0241H,6,4,06H
	.word	0260H,6,254,03H
	.word	024AH,6,14,07H
	.word	0144H,6,22,08H
	.word	0241H,6,8,04H
	.word	0241H,10,4,09H
	.word	045H,10,7,0AH
	.word	045H,10,127,0AH
	.word	045H,10,247,0AH
	.word	044AH,16,4,0BH
	.word	044AH,16,119,0CH
	.word	0144H,19,240,0DH
	.word	04042H,23,184,0EH
	.word	024AH,33,14,0FH
	.word	0144H,55,4,010H
	.word	0144H,55,173,010H
	.word	0144H,55,105,010H
	.word	0144H,55,65,010H
	.word	0140H,100,0,03H
	.word	0240H,100,250,03H
	.word	0260H,100,254,03H
	.word	0144H,103,22,08H
	.word	0241H,104,4,09H
	.word	024AH,183,14,011H
	.word	045H,190,7,0AH
	.word	045H,190,127,0AH
	.word	045H,190,247,0AH
	.word	0260H,193,254,03H
	.word	0140H,194,0,03H
	.word	0240H,194,250,03H
	.word	0241H,199,4,09H
	.word	0144H,210,22,08H
	.word	0140H,286,0,03H
	.word	0260H,287,254,03H
	.word	0240H,288,250,03H
	.word	0241H,293,4,09H
	.word	0240H,296,250,03H
	.word	0240H,296,0,03H
	.word	0260H,302,254,03H
	.word	0144H,327,17,012H
	.word	024AH,331,14,013H
	.word	0141H,334,17,014H
	.word	045H,370,7,0AH
	.word	045H,370,127,0AH
	.word	045H,370,247,0AH
	.word	0140H,390,0,015H
	.word	0140H,390,121,02H
	.word	0240H,390,128,02H
	.word	0240H,390,250,016H
	.word	0240H,390,4,02H
	.word	0250H,394,4,02H
	.word	0250H,394,126,02H
	.word	0250H,394,128,02H
	.word	0250H,394,250,016H
	.word	0150H,394,0,015H
	.word	0260H,396,254,016H
	.word	0FFFFH	;End Marker
hiscoreBMOD:
	.word	550,367,66	;x size, y size, #blocks
	.long	hiscoreBLKS, oreHDRS, orePALS

yjamHDRS:
	.word	8,4	;x size, y size
	.long	0547E117H	;address
	.word	06000H	;dma ctrl
	.word	8,4
	.long	0547E1D7H
	.word	06000H
	.word	8,122
	.long	0547E297H
	.word	06000H
	.word	96,4
	.long	0547F977H
	.word	06000H
	.word	4,122
	.long	05480277H
	.word	03000H
	.word	4,4
	.long	0548082FH
	.word	03000H
	.word	4,4
	.long	0548082FH
	.word	03000H
	.word	180,120
	.long	05481E7FH
	.word	05000H
	.word	96,4
	.long	054819FFH
	.word	03000H
	.word	8,4
	.long	054B13C7H
	.word	06000H
	.word	8,4
	.long	054B1487H
	.word	06000H
empjambBLKS:
	.word	0140H	;flags
	.word	0,0 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	0240H,0,250,01H
	.word	0240H,0,4,02H
	.word	0240H,0,128,02H
	.word	0240H,0,107,02H
	.word	0260H,0,254,01H
	.word	0240H,6,250,03H
	.word	0140H,6,0,03H
	.word	0244H,6,128,04H
	.word	0244H,6,4,05H
	.word	0241H,6,4,06H
	.word	0260H,6,254,03H
	.word	0244H,6,8,04H
	.word	042H,10,7,07H
	.word	042H,10,127,07H
	.word	042H,10,247,07H
	.word	0244H,10,4,08H
	.word	0140H,100,0,03H
	.word	0240H,100,250,03H
	.word	0260H,100,254,03H
	.word	0244H,104,4,08H
	.word	042H,190,7,07H
	.word	042H,190,127,07H
	.word	042H,190,247,07H
	.word	0260H,193,254,03H
	.word	0140H,194,0,03H
	.word	0240H,194,250,03H
	.word	0244H,198,4,08H
	.word	0140H,286,0,03H
	.word	0260H,287,254,03H
	.word	0240H,288,250,03H
	.word	0244H,292,4,08H
	.word	0240H,296,250,03H
	.word	0240H,296,0,03H
	.word	0244H,296,4,08H
	.word	0260H,302,254,03H
	.word	042H,370,7,07H
	.word	042H,370,127,07H
	.word	042H,370,247,07H
	.word	0140H,390,0,09H
	.word	0140H,390,121,02H
	.word	0240H,390,128,02H
	.word	0240H,390,250,0AH
	.word	0240H,390,4,02H
	.word	0250H,394,4,02H
	.word	0250H,394,126,02H
	.word	0250H,394,128,02H
	.word	0250H,394,250,0AH
	.word	0150H,394,0,09H
	.word	0260H,396,254,0AH
	.word	0FFFFH	;End Marker

;file emptyjam blocks not in any module
;	.word	0240H	;flags
;	.word	1082,358 ;x,y
;	.word	02H	;pal5,pal4,hdr13-0
;	.word	0240H,1082,379,02H
;	.word	0240H,1082,255,02H
;	.word	0240H,1082,501,01H
;	.word	0140H,1082,251,00H
;	.word	0244H,1088,255,06H
;	.word	0241H,1088,255,05H
;	.word	0244H,1088,379,04H
;	.word	0140H,1088,251,03H
;	.word	0240H,1088,501,03H
;	.word	0244H,1088,258,04H
;	.word	042H,1092,498,07H
;	.word	042H,1092,378,07H
;	.word	042H,1092,258,07H
;	.word	0244H,1092,255,08H
;	.word	0240H,1182,501,03H
;	.word	0140H,1182,251,03H
;	.word	0244H,1186,255,08H
;	.word	042H,1272,498,07H
;	.word	042H,1272,378,07H
;	.word	042H,1272,258,07H
;	.word	0240H,1276,501,03H
;	.word	0140H,1276,251,03H
;	.word	0244H,1280,255,08H
;	.word	0140H,1368,251,03H
;	.word	0240H,1370,501,03H
;	.word	0244H,1374,255,08H
;	.word	0240H,1378,251,03H
;	.word	0240H,1378,501,03H
;	.word	0244H,1378,255,08H
;	.word	042H,1452,498,07H
;	.word	042H,1452,378,07H
;	.word	042H,1452,258,07H
;	.word	0240H,1472,255,02H
;	.word	0240H,1472,501,0AH
;	.word	0240H,1472,379,02H
;	.word	0140H,1472,372,02H
;	.word	0140H,1472,251,09H
;	.word	0FFFFH	;End Marker
empjambBMOD:
	.word	550,367,50	;x size, y size, #blocks
	.long	empjambBLKS, yjamHDRS, yjamPALS

oHDRS:
	.word	8,4	;x size, y size
	.long	0547E117H	;address
	.word	06000H	;dma ctrl
	.word	8,4
	.long	0547E1D7H
	.word	06000H
	.word	8,122
	.long	0547E297H
	.word	06000H
	.word	96,4
	.long	0547F977H
	.word	06000H
	.word	4,122
	.long	05480277H
	.word	03000H
	.word	4,4
	.long	0548082FH
	.word	03000H
	.word	4,4
	.long	0548082FH
	.word	03000H
	.word	96,4
	.long	054819FFH
	.word	03000H
	.word	180,120
	.long	05481E7FH
	.word	05000H
	.word	48,8
	.long	054B1547H
	.word	06000H
	.word	52,11
	.long	054B1E47H
	.word	03000H
	.word	48,8
	.long	054B054BH
	.word	06000H
	.word	52,11
	.long	054B24FBH
	.word	03000H
	.word	8,4
	.long	054B13C7H
	.word	06000H
	.word	8,4
	.long	054B1487H
	.word	06000H
yesnoBLKS:
	.word	0140H	;flags
	.word	0,0 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	0240H,0,250,01H
	.word	0240H,0,4,02H
	.word	0240H,0,128,02H
	.word	0240H,0,107,02H
	.word	0260H,0,254,01H
	.word	0240H,6,250,03H
	.word	0140H,6,0,03H
	.word	0241H,6,128,04H
	.word	0241H,6,4,05H
	.word	0241H,6,4,06H
	.word	0260H,6,254,03H
	.word	0241H,6,8,04H
	.word	0241H,10,4,07H
	.word	042H,10,7,08H
	.word	042H,10,127,08H
	.word	042H,10,247,08H
	.word	0444H,36,27,09H
	.word	0341H,38,28,0AH
	.word	0140H,100,0,03H
	.word	0240H,100,250,03H
	.word	0260H,100,254,03H
	.word	0241H,104,4,07H
	.word	042H,190,7,08H
	.word	042H,190,127,08H
	.word	042H,190,247,08H
	.word	0260H,193,254,03H
	.word	0140H,194,0,03H
	.word	0240H,194,250,03H
	.word	0241H,199,4,07H
	.word	0140H,286,0,03H
	.word	0260H,287,254,03H
	.word	0240H,288,250,03H
	.word	0241H,293,4,07H
	.word	0240H,296,250,03H
	.word	0240H,296,0,03H
	.word	0260H,302,254,03H
	.word	0444H,315,27,0BH
	.word	0341H,316,28,0CH
	.word	042H,370,7,08H
	.word	042H,370,127,08H
	.word	042H,370,247,08H
	.word	0140H,390,0,0DH
	.word	0140H,390,121,02H
	.word	0240H,390,128,02H
	.word	0240H,390,250,0EH
	.word	0240H,390,4,02H
	.word	0250H,394,4,02H
	.word	0250H,394,126,02H
	.word	0250H,394,128,02H
	.word	0250H,394,250,0EH
	.word	0150H,394,0,0DH
	.word	0260H,396,254,0EH
	.word	0FFFFH	;End Marker
yesnoBMOD:
	.word	550,367,53	;x size, y size, #blocks
	.long	yesnoBLKS, oHDRS, oPALS

ackHDRS:
	.word	8,4	;x size, y size
	.long	0547E117H	;address
	.word	06000H	;dma ctrl
	.word	12,122
	.long	054B2BAFH
	.word	06000H
	.word	12,122
	.long	054B4DFFH
	.word	06000H
	.word	8,4
	.long	0547E1D7H
	.word	06000H
	.word	96,122
	.long	054B704FH
	.word	06000H
	.word	96,8
	.long	054C82CFH
	.word	06000H
	.word	96,4
	.long	0547F977H
	.word	06000H
	.word	40,171
	.long	054C94CFH
	.word	06000H
	.word	4,4
	.long	054D351FH
	.word	06000H
	.word	8,122
	.long	054D357FH
	.word	06000H
	.word	8,122
	.long	054D4C5FH
	.word	06000H
	.word	4,4
	.long	054D633FH
	.word	06000H
	.word	56,172
	.long	054D639FH
	.word	06000H
	.word	56,172
	.long	054E455FH
	.word	06000H
	.word	64,171
	.long	054F271FH
	.word	06000H
	.word	8,4
	.long	054B13C7H
	.word	06000H
	.word	8,122
	.long	0547E297H
	.word	06000H
	.word	8,122
	.long	0547E297H
	.word	06000H
	.word	8,4
	.long	054B1487H
	.word	06000H
	.word	8,50
	.long	0550279FH
	.word	06000H
	.word	188,11
	.long	055030FFH
	.word	06000H
	.word	172,6
	.long	05506177H
	.word	06000H
	.word	172,8
	.long	055079A7H
	.word	06000H
	.word	84,36
	.long	055099E7H
	.word	03000H
	.word	8,36
	.long	0550BD57H
	.word	06000H
	.word	84,36
	.long	055099E7H
	.word	03000H
	.word	56,14
	.long	0550C417H
	.word	06000H
	.word	52,11
	.long	0550D677H
	.word	06000H
	.word	8,50
	.long	0550E3DFH
	.word	06000H
	.word	8,28
	.long	0550ED3FH
	.word	05000H
	.word	84,36
	.long	055099E7H
	.word	03000H
	.word	84,36
	.long	055099E7H
	.word	03000H
	.word	8,28
	.long	0550F19FH
	.word	06000H
namebox4BLKS:
	.word	03C43H	;flags
	.word	0,42 ;x,y
	.word	014H	;pal5,pal4,hdr13-0
	.word	03D44H,0,0,013H
	.word	03D44H,6,42,016H
	.word	03D44H,6,0,015H
	.word	03C42H,6,6,017H
	.word	03C42H,62,6,017H
	.word	03C42H,95,6,019H
	.word	03C43H,164,42,01AH
	.word	03D47H,165,43,01BH
	.word	03D44H,178,0,01CH
	.word	03C43H,180,15,01DH
	.word	03C43H,180,4,01DH
	.word	03D45H,194,0,013H
	.word	03C43H,195,42,014H
	.word	03D45H,200,0,015H
	.word	03D45H,200,42,016H
	.word	03C41H,200,6,01EH
	.word	03C41H,241,6,01EH
	.word	03C41H,289,6,01FH
	.word	03D45H,372,0,01CH
	.word	03C43H,373,4,020H
	.word	03C43H,373,15,020H
	.word	0FFFFH	;End Marker
namebox2BLKS:
	.word	06444H	;flags
	.word	0,0 ;x,y
	.word	013H	;pal5,pal4,hdr13-0
	.word	05F43H,0,42,014H
	.word	06444H,6,0,015H
	.word	06444H,6,42,016H
	.word	05F42H,6,6,017H
	.word	06444H,89,6,018H
	.word	05F42H,95,6,019H
	.word	06043H,164,42,01AH
	.word	06447H,165,43,01BH
	.word	06444H,178,0,01CH
	.word	05F43H,180,4,01DH
	.word	05F43H,180,15,01DH
	.word	06445H,194,0,013H
	.word	05F43H,195,42,014H
	.word	06445H,200,0,015H
	.word	06445H,200,42,016H
	.word	05F41H,200,6,01EH
	.word	06445H,283,6,018H
	.word	05F41H,289,6,01FH
	.word	06445H,372,0,01CH
	.word	05F43H,373,15,020H
	.word	05F43H,373,4,020H
	.word	0FFFFH	;End Marker
selbackBLKS:
	.word	0240H	;flags
	.word	0,0 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	0240H,0,4,01H
	.word	0240H,0,116,02H
	.word	0240H,0,128,02H
	.word	0240H,0,250,03H
	.word	046H,5,6,04H
	.word	046H,5,128,04H
	.word	0240H,5,0,05H
	.word	0240H,5,250,06H
	.word	0146H,26,20,07H
	.word	0240H,99,0,08H
	.word	0240H,99,4,09H
	.word	0240H,99,120,0AH
	.word	0240H,99,128,0AH
	.word	0240H,99,250,0BH
	.word	046H,102,6,04H
	.word	046H,102,128,04H
	.word	0240H,102,0,05H
	.word	0240H,103,250,06H
	.word	0146H,120,20,0CH
	.word	0240H,196,0,08H
	.word	0240H,196,4,09H
	.word	0240H,196,128,0AH
	.word	0240H,196,119,0AH
	.word	0240H,196,250,0BH
	.word	046H,200,6,04H
	.word	046H,200,128,04H
	.word	0240H,200,0,05H
	.word	0240H,200,250,06H
	.word	0146H,219,20,0DH
	.word	0240H,293,0,08H
	.word	0240H,293,4,09H
	.word	0240H,293,128,0AH
	.word	0240H,293,120,0AH
	.word	0240H,293,250,0BH
	.word	046H,297,6,04H
	.word	046H,297,128,04H
	.word	0240H,297,0,05H
	.word	0240H,297,250,06H
	.word	0146H,312,20,0EH
	.word	0240H,390,0,0FH
	.word	0240H,390,4,010H
	.word	0240H,390,124,011H
	.word	0240H,390,128,011H
	.word	0240H,390,250,012H
	.word	0FFFFH	;End Marker
namebox3BLKS:
	.word	03D44H	;flags
	.word	0,0 ;x,y
	.word	013H	;pal5,pal4,hdr13-0
	.word	03C43H,0,42,014H
	.word	03C42H,6,6,017H
	.word	03D44H,6,0,015H
	.word	03D44H,6,42,016H
	.word	03D44H,89,6,018H
	.word	03C42H,95,6,019H
	.word	03C43H,164,42,01AH
	.word	03D47H,165,43,01BH
	.word	03D44H,178,0,01CH
	.word	03C43H,180,4,01DH
	.word	03C43H,180,15,01DH
	.word	03D45H,194,0,013H
	.word	03C43H,195,42,014H
	.word	03C41H,200,6,01EH
	.word	03D45H,200,42,016H
	.word	03D45H,200,0,015H
	.word	03D45H,283,6,018H
	.word	03C41H,289,6,01FH
	.word	03D45H,372,0,01CH
	.word	03C43H,373,15,020H
	.word	03C43H,373,4,020H
	.word	0FFFFH	;End Marker
namebox4BMOD:
	.word	383,56,22	;x size, y size, #blocks
	.long	namebox4BLKS, ackHDRS, ackPALS
namebox2BMOD:
	.word	383,56,22	;x size, y size, #blocks
	.long	namebox2BLKS, ackHDRS, ackPALS
selbackBMOD:
	.word	398,254,45	;x size, y size, #blocks
	.long	selbackBLKS, ackHDRS, ackPALS
namebox3BMOD:
	.word	383,56,22	;x size, y size, #blocks
	.long	namebox3BLKS, ackHDRS, ackPALS

selHDRS:
	.word	208,7	;x size, y size
	.long	0550F6DFH	;address
	.word	06000H	;dma ctrl
	.word	200,4
	.long	055118FFH
	.word	06000H
	.word	12,124
	.long	05512BBFH
	.word	06000H
	.word	96,122
	.long	054B704FH
	.word	06000H
	.word	48,8
	.long	054B1547H
	.word	06000H
	.word	52,11
	.long	05514E9FH
	.word	06000H
	.word	32,89
	.long	05515C07H
	.word	05000H
	.word	184,6
	.long	055193A7H
	.word	06000H
	.word	8,71
	.long	0551AD87H
	.word	06000H
	.word	188,9
	.long	0551BAD7H
	.word	06000H
	.word	172,6
	.long	05506177H
	.word	06000H
	.word	88,65
	.long	0551E27FH
	.word	05000H
	.word	156,2
	.long	05525237H
	.word	06000H
	.word	4,85
	.long	05525987H
	.word	06000H
	.word	156,2
	.long	0552617FH
	.word	06000H
	.word	156,84
	.long	055268CFH
	.word	06000H
	.word	152,8
	.long	054AC3EFH
	.word	06000H
	.word	152,11
	.long	05539BEFH
	.word	06000H
	.word	4,4
	.long	0553C31FH
	.word	06000H
	.word	4,4
	.long	0553C37FH
	.word	06000H
	.word	4,11
	.long	0553C3DFH
	.word	06000H
	.word	8,71
	.long	0553C4E7H
	.word	06000H
	.word	8,71
	.long	0553D237H
	.word	06000H
	.word	164,2
	.long	0553DF87H
	.word	06000H
	.word	152,8
	.long	054AE5FBH
	.word	06000H
	.word	156,2
	.long	0553E737H
	.word	06000H
	.word	156,11
	.long	0553EE87H
	.word	06000H
	.word	88,65
	.long	055416BFH
	.word	05000H
	.word	48,8
	.long	054B054BH
	.word	06000H
	.word	52,11
	.long	05548677H
	.word	06000H
	.word	4,85
	.long	055493DFH
	.word	06000H
	.word	24,89
	.long	05549BD7H
	.word	05000H
	.word	8,4
	.long	054B1487H
	.word	06000H
	.word	8,124
	.long	0554C58FH
	.word	06000H
teamselBLKS:
	.word	04050H	;flags
	.word	0,0 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	04050H,3,250,01H
	.word	0240H,3,126,02H
	.word	0240H,3,5,02H
	.word	04AH,10,128,03H
	.word	04AH,10,6,03H
	.word	0243H,10,13,04H
	.word	0140H,13,15,05H
	.word	0A42H,13,30,06H
	.word	0A48H,13,122,07H
	.word	07848H,13,128,08H
	.word	0145H,15,193,09H
	.word	07848H,19,193,0AH
	.word	04346H,19,128,0BH
	.word	04640H,44,29,0CH
	.word	04640H,44,31,0DH
	.word	0464AH,46,114,0EH
	.word	04041H,46,31,0FH
	.word	0243H,51,13,010H
	.word	0140H,53,15,011H
	.word	04AH,101,128,03H
	.word	04AH,101,6,03H
	.word	0145H,102,235,014H
	.word	04346H,105,128,0BH
	.word	07848H,191,128,015H
	.word	04AH,192,6,03H
	.word	04AH,192,128,03H
	.word	0145H,193,125,016H
	.word	04040H,195,0,00H
	.word	04640H,196,29,017H
	.word	04040H,198,250,01H
	.word	0243H,201,13,018H
	.word	0464AH,202,114,019H
	.word	04041H,202,31,0FH
	.word	0140H,203,15,01AH
	.word	07849H,207,128,08H
	.word	0A49H,207,122,07H
	.word	0345H,209,193,09H
	.word	04447H,212,128,01BH
	.word	07849H,213,193,0AH
	.word	04AH,283,6,03H
	.word	04AH,283,128,03H
	.word	0145H,297,235,014H
	.word	04447H,298,128,01BH
	.word	04AH,304,6,03H
	.word	04AH,304,128,03H
	.word	0243H,346,13,01CH
	.word	0140H,348,15,01DH
	.word	0464AH,356,31,01EH
	.word	0A44H,367,30,01FH
	.word	07849H,385,128,015H
	.word	0145H,387,126,016H
	.word	0145H,388,131,016H
	.word	0240H,394,250,020H
	.word	04040H,394,5,021H
	.word	04040H,394,126,021H
	.word	0FFFFH	;End Marker

;file teamsel blocks not in any module
;	.word	03E40H	;flags
;	.word	522,629 ;x,y
;	.word	012H	;pal5,pal4,hdr13-0
;	.word	03E40H,533,629,013H
;	.word	0FFFFH	;End Marker
teamselBMOD:
	.word	403,254,56	;x size, y size, #blocks
	.long	teamselBLKS, selHDRS, selPALS

hbakHDRS:
	.word	8,4	;x size, y size
	.long	0547E117H	;address
	.word	06000H	;dma ctrl
	.word	8,4
	.long	0547E1D7H
	.word	06000H
	.word	8,122
	.long	0547E297H
	.word	06000H
	.word	96,4
	.long	0547F977H
	.word	06000H
	.word	4,122
	.long	05480277H
	.word	03000H
	.word	4,4
	.long	0548082FH
	.word	03000H
	.word	4,4
	.long	0548082FH
	.word	03000H
	.word	96,4
	.long	054819FFH
	.word	03000H
	.word	180,120
	.long	05481E7FH
	.word	05000H
	.word	132,9
	.long	0554DCCFH
	.word	05000H
	.word	120,4
	.long	0548109FH
	.word	05000H
	.word	136,71
	.long	0554F403H
	.word	05000H
	.word	132,4
	.long	0555B09BH
	.word	05000H
	.word	48,8
	.long	054B1547H
	.word	06000H
	.word	52,11
	.long	054B1E47H
	.word	03000H
	.word	16,22
	.long	0555BAEBH
	.word	05000H
	.word	16,22
	.long	0555C1CBH
	.word	05000H
	.word	16,22
	.long	0555C8ABH
	.word	05000H
	.word	8,22
	.long	0555CF8BH
	.word	05000H
	.word	16,22
	.long	0555D2FBH
	.word	05000H
	.word	16,9
	.long	054B027BH
	.word	05000H
	.word	16,22
	.long	0555D9DBH
	.word	05000H
	.word	4,71
	.long	054AE06FH
	.word	05000H
	.word	8,11
	.long	0555E0BBH
	.word	05000H
	.word	16,22
	.long	0555E273H
	.word	05000H
	.word	40,61
	.long	0555E953H
	.word	06000H
	.word	32,61
	.long	05562283H
	.word	06000H
	.word	24,22
	.long	05565043H
	.word	05000H
	.word	16,22
	.long	05565A93H
	.word	05000H
	.word	132,9
	.long	05566173H
	.word	05000H
	.word	136,71
	.long	055678A7H
	.word	05000H
	.word	12,22
	.long	0557353fH
	.word	05000H
	.word	16,9
	.long	05573a67H
	.word	05000H
	.word	16,22
	.long	05573d37H
	.word	05000H
	.word	16,22
	.long	05574417H
	.word	05000H
	.word	48,8
	.long	054B054bH
	.word	06000H
	.word	52,11
	.long	054B24FBH
	.word	03000H
	.word	8,4
	.long	054B13C7H
	.word	06000H
	.word	8,4
	.long	054B1487H
	.word	06000H
	.word	80,33
	.long	05574af7H
	.word	03000H
	.word	8,24
	.long	055769e7H
	.word	06000H
	.word	8,24
	.long	05576e67H
	.word	06000H
	.word	12,22
	.long	055772e7H
	.word	05000H
	.word	44,33
	.long	0557780fH
	.word	03000H
	.word	8,22
	.long	0555CF8BH
	.word	05000H
	.word	24,10
	.long	05578913H
	.word	04000H
	.word	16,22
	.long	0555C8ABH
	.word	05000H
	.word	16,22
	.long	05565A93H
	.word	05000H
	.word	4,9
	.long	05398759H
	.word	04000H
	.word	12,22
	.long	05578cd3H
	.word	05000H
	.word	16,22
	.long	0555E273H
	.word	05000H
	.word	8,9
	.long	055791fbH
	.word	04000H
	.word	12,22
	.long	0557353fH
	.word	05000H
	.word	16,22
	.long	0555C1CBH
	.word	05000H
	.word	16,22
	.long	0557931bH
	.word	05000H
	.word	8,9
	.long	055799fbH
	.word	04000H
	.word	12,22
	.long	05579b1bH
	.word	05000H
	.word	8,9
	.long	0557a043H
	.word	04000H
	.word	32,9
	.long	0557a163H
	.word	04000H
finalBLKS:
	.word	0260H	;flags
	.word	0,254 ;x,y
	.word	01H	;pal5,pal4,hdr13-0
	.word	0240H,0,107,02H
	.word	0240H,0,128,02H
	.word	0240H,0,4,02H
	.word	0240H,0,250,01H
	.word	0140H,0,0,00H
	.word	0260H,6,254,03H
	.word	0241H,6,4,06H
	.word	0241H,6,4,05H
	.word	0241H,6,128,04H
	.word	0140H,6,0,03H
	.word	0240H,6,250,03H
	.word	0241H,6,8,04H
	.word	048H,10,247,08H
	.word	048H,10,127,08H
	.word	048H,10,7,08H
	.word	0241H,10,4,07H
	.word	064AH,17,76,09H
	.word	0544H,21,85,0AH
	.word	064AH,21,119,0BH
	.word	0544H,25,190,0CH
	.word	064AH,36,85,09H
	.word	0544H,40,94,0AH
	.word	064DH,53,210,027H
	.word	044BH,69,25,0DH
	.word	0341H,70,26,0EH
	.word	0260H,100,254,03H
	.word	0240H,100,250,03H
	.word	0140H,100,0,03H
	.word	0241H,104,4,07H
	.word	04042H,129,18,02AH
	.word	074DH,133,210,02BH
	.word	0544H,138,80,014H
	.word	04042H,140,18,02CH
	.word	04043H,142,200,02DH
	.word	04042H,147,18,02EH
	.word	0544H,157,89,014H
	.word	0544H,157,123,016H
	.word	04042H,161,18,02FH
	.word	04043H,167,200,030H
	.word	084DH,174,210,02BH
	.word	04042H,175,18,031H
	.word	04043H,181,200,02DH
	.word	048H,190,247,08H
	.word	048H,190,127,08H
	.word	048H,190,7,08H
	.word	0260H,193,254,03H
	.word	0240H,194,250,03H
	.word	0140H,194,0,03H
	.word	04042H,197,18,032H
	.word	0241H,199,4,07H
	.word	04043H,205,200,033H
	.word	04042H,210,18,034H
	.word	094DH,215,210,02BH
	.word	04042H,222,18,035H
	.word	04043H,222,200,02DH
	.word	0649H,234,76,01DH
	.word	04042H,236,18,036H
	.word	0544H,239,85,0AH
	.word	0649H,239,119,01EH
	.word	0544H,243,190,0CH
	.word	04043H,246,200,037H
	.word	04042H,250,18,038H
	.word	0649H,252,85,01DH
	.word	0544H,256,94,0AH
	.word	0A4DH,256,210,02BH
	.word	04043H,263,200,02DH
	.word	0341H,275,26,024H
	.word	044BH,276,25,023H
	.word	0140H,286,0,03H
	.word	0260H,287,254,03H
	.word	04043H,287,200,039H
	.word	0240H,288,250,03H
	.word	0241H,293,4,07H
	.word	0240H,296,0,03H
	.word	0240H,296,250,03H
	.word	0B4DH,297,210,02BH
	.word	0260H,302,254,03H
	.word	0404CH,306,200,03AH
	.word	0544H,355,80,014H
	.word	048H,370,127,08H
	.word	048H,370,7,08H
	.word	048H,370,247,08H
	.word	0544H,373,89,014H
	.word	0544H,375,123,016H
	.word	0240H,390,4,02H
	.word	0240H,390,250,026H
	.word	0240H,390,128,02H
	.word	0140H,390,121,02H
	.word	0140H,390,0,025H
	.word	0150H,394,0,025H
	.word	0250H,394,250,026H
	.word	0250H,394,128,02H
	.word	0250H,394,126,02H
	.word	0250H,394,4,02H
	.word	0260H,396,254,026H
	.word	0FFFFH	;End Marker
matchupBLKS:
	.word	0140H	;flags
	.word	0,0 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	0240H,0,250,01H
	.word	0240H,0,4,02H
	.word	0240H,0,128,02H
	.word	0240H,0,107,02H
	.word	0260H,0,254,01H
	.word	0240H,6,250,03H
	.word	0140H,6,0,03H
	.word	0241H,6,128,04H
	.word	0241H,6,4,05H
	.word	0241H,6,4,06H
	.word	0260H,6,254,03H
	.word	0241H,6,8,04H
	.word	0241H,10,4,07H
	.word	048H,10,127,08H
	.word	048H,10,247,08H
	.word	048H,10,7,08H
	.word	064AH,18,76,09H
	.word	0544H,21,85,0AH
	.word	064AH,21,119,0BH
	.word	0544H,25,190,0CH
	.word	044BH,25,25,0DH
	.word	0341H,28,26,0EH
	.word	064AH,36,85,09H
	.word	0544H,40,94,0AH
	.word	04042H,80,19,0FH
	.word	04042H,93,19,010H
	.word	0140H,100,0,03H
	.word	0240H,100,250,03H
	.word	0260H,100,254,03H
	.word	0241H,104,4,07H
	.word	04042H,107,19,011H
	.word	04042H,121,19,012H
	.word	04042H,128,19,013H
	.word	0544H,138,80,014H
	.word	04042H,142,19,015H
	.word	04042H,156,19,0FH
	.word	0544H,157,123,016H
	.word	0544H,157,89,014H
	.word	04042H,169,19,017H
	.word	04042H,176,19,018H
	.word	0645H,179,78,019H
	.word	0645H,182,140,01AH
	.word	048H,190,7,08H
	.word	048H,190,127,08H
	.word	048H,190,247,08H
	.word	0260H,193,254,03H
	.word	0140H,194,0,03H
	.word	0240H,194,250,03H
	.word	0241H,199,4,07H
	.word	04042H,202,19,01BH
	.word	04042H,223,19,01CH
	.word	0649H,234,76,01DH
	.word	04042H,237,19,0FH
	.word	0544H,239,85,0AH
	.word	0649H,239,119,01EH
	.word	0544H,243,190,0CH
	.word	04042H,250,19,01FH
	.word	0649H,252,85,01DH
	.word	0544H,256,94,0AH
	.word	04042H,262,19,015H
	.word	04042H,276,25,020H
	.word	0140H,286,0,03H
	.word	0260H,287,254,03H
	.word	0240H,288,250,03H
	.word	04042H,290,19,021H
	.word	0241H,293,4,07H
	.word	0240H,296,250,03H
	.word	0240H,296,0,03H
	.word	0260H,302,254,03H
	.word	04042H,304,19,022H
	.word	044BH,325,25,023H
	.word	0341H,326,26,024H
	.word	0544H,355,80,014H
	.word	048H,370,7,08H
	.word	048H,370,127,08H
	.word	048H,370,247,08H
	.word	0544H,373,89,014H
	.word	0544H,375,123,016H
	.word	0140H,390,0,025H
	.word	0140H,390,121,02H
	.word	0240H,390,128,02H
	.word	0240H,390,250,026H
	.word	0240H,390,4,02H
	.word	0250H,394,4,02H
	.word	0250H,394,126,02H
	.word	0250H,394,128,02H
	.word	0250H,394,250,026H
	.word	0150H,394,0,025H
	.word	0260H,396,254,026H
	.word	0FFFFH	;End Marker

;file matchbak blocks not in any module
;	.word	0646H	;flags
;	.word	1164,746 ;x,y
;	.word	028H	;pal5,pal4,hdr13-0
;	.word	0546H,1168,764,029H
;	.word	0646H,1228,778,028H
;	.word	0546H,1242,760,029H
;	.word	0546H,1287,745,029H
;	.word	0647H,1337,814,028H
;	.word	0546H,1346,799,029H
;	.word	0647H,1377,804,028H
;	.word	0FFFFH	;End Marker
finalBMOD:
	.word	550,367,96	;x size, y size, #blocks
	.long	finalBLKS, hbakHDRS, hbakPALS
matchupBMOD:
	.word	550,367,90	;x size, y size, #blocks
	.long	matchupBLKS, hbakHDRS, hbakPALS

scrnHDRS:
	.word	180,120	;x size, y size
	.long	05481E7FH	;address
	.word	05000H	;dma ctrl
	.word	96,17
	.long	0557a5e3H
	.word	06000H
	.word	76,38
	.long	0557cc23H
	.word	06000H
	.word	4,65
	.long	05580fd3H
	.word	06000H
	.word	192,4
	.long	055815ebH
	.word	06000H
	.word	68,66
	.long	055827ebH
	.word	06000H
	.word	16,22
	.long	0558911bh
	.word	05000H
	.word	12,22
	.long	055897fbH
	.word	05000H
	.word	4,65
	.long	05589d23H
	.word	05000H
	.word	120,4
	.long	0558a237H
	.word	06000H
	.word	4,107
	.long	0558ad77H
	.word	06000H
	.word	16,22
	.long	0558b77fH
	.word	05000H
	.word	16,22
	.long	0558be5fH
	.word	05000H
	.word	96,17
	.long	0558c53FH
	.word	06000H
statscrkBLKS:
	.word	04043H	;flags
	.word	0,7 ;x,y
	.word	01H	;pal5,pal4,hdr13-0
	.word	041H,0,240,00H
	.word	041H,0,120,00H
	.word	041H,0,0,00H
	.word	0443H,6,206,02H
	.word	0443H,6,141,03H
	.word	0443H,6,137,04H
	.word	0443H,6,30,04H
	.word	0443H,6,34,03H
	.word	0443H,6,99,02H
	.word	0444H,9,33,05H
	.word	0444H,9,140,05H
	.word	0542H,62,36,07H
	.word	0443H,76,141,08H
	.word	0443H,76,34,08H
	.word	0443H,79,240,09H
	.word	0443H,79,133,09H
	.word	041H,180,240,00H
	.word	041H,180,120,00H
	.word	041H,180,0,00H
	.word	0543H,195,137,0AH
	.word	0543H,195,30,0AH
	.word	0440H,202,206,02H
	.word	0440H,202,141,03H
	.word	0440H,202,137,04H
	.word	0440H,202,99,02H
	.word	0440H,202,34,03H
	.word	0440H,202,30,04H
	.word	0444H,205,140,05H
	.word	0444H,205,33,05H
	.word	0545H,255,36,06H
	.word	0440H,272,141,08H
	.word	0440H,272,34,08H
	.word	0440H,275,240,09H
	.word	0440H,275,133,09H
	.word	04040H,307,7,0DH
	.word	041H,360,240,00H
	.word	041H,360,120,00H
	.word	041H,360,0,00H
	.word	0540H,391,137,0AH
	.word	0540H,391,30,0AH
	.word	0FFFFH	;End Marker
statscrnBLKS:
	.word	041H	;flags
	.word	0,0 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	041H,0,120,00H
	.word	041H,0,240,00H
	.word	04043H,0,7,01H
	.word	0443H,6,99,02H
	.word	0443H,6,34,03H
	.word	0443H,6,30,04H
	.word	0443H,6,137,04H
	.word	0443H,6,141,03H
	.word	0443H,6,206,02H
	.word	0444H,9,33,05H
	.word	0444H,9,140,05H
	.word	0542H,59,143,06H
	.word	0542H,62,36,07H
	.word	0443H,76,34,08H
	.word	0443H,76,141,08H
	.word	0443H,79,133,09H
	.word	0443H,79,240,09H
	.word	041H,180,0,00H
	.word	041H,180,120,00H
	.word	041H,180,240,00H
	.word	0543H,195,30,0AH
	.word	0543H,195,137,0AH
	.word	0440H,202,30,04H
	.word	0440H,202,34,03H
	.word	0440H,202,99,02H
	.word	0440H,202,137,04H
	.word	0440H,202,141,03H
	.word	0440H,202,206,02H
	.word	0444H,205,33,05H
	.word	0444H,205,140,05H
	.word	0545H,254,143,0BH
	.word	0545H,255,36,0CH
	.word	0440H,272,34,08H
	.word	0440H,272,141,08H
	.word	0440H,275,133,09H
	.word	0440H,275,240,09H
	.word	04040H,307,7,0DH
	.word	041H,360,0,00H
	.word	041H,360,120,00H
	.word	041H,360,240,00H
	.word	0540H,391,30,0AH
	.word	0540H,391,137,0AH
	.word	0FFFFH	;End Marker
statscrkBMOD:
	.word	540,360,41	;x size, y size, #blocks
	.long	statscrkBLKS, scrnHDRS, scrnPALS
statscrnBMOD:
	.word	540,360,43	;x size, y size, #blocks
	.long	statscrnBLKS, scrnHDRS, scrnPALS

itleHDRS:
	.word	124,83	;x size, y size
	.long	0558eb7fH	;address
	.word	04000H	;dma ctrl
	.word	72,109
	.long	05598c4fH
	.word	00H
	.word	120,37
	.long	055A818fH
	.word	00H
	.word	92,82
	.long	055b0c4fH
	.word	00H
	.word	104,35
	.long	055Bf80fH
	.word	00H
	.word	68,75
	.long	055C69cfH
	.word	00H
	.word	68,26
	.long	055d092fH
	.word	00H
	.word	64,38
	.long	055D406fH
	.word	07000H
	.word	60,58
	.long	055D82efH
	.word	00H
	.word	60,26
	.long	055DefafH
	.word	00H
	.word	60,17
	.long	055E206fH
	.word	00H
	.word	32,82
	.long	055E404fH
	.word	00H
	.word	96,34
	.long	055E924fH
	.word	00H
	.word	172,47
	.long	055Ef84fH
	.word	00H
	.word	88,34
	.long	055Ff4efH
	.word	00H
	.word	56,35
	.long	0560526fH
	.word	00H
	.word	56,65
	.long	05608fafH
	.word	00H
	.word	56,39
	.long	0561016fH
	.word	00H
	.word	88,61
	.long	056145afH
	.word	05000H
	.word	84,67
	.long	0561ae87H
	.word	06000H
	.word	48,24
	.long	0562326fH
	.word	06000H
	.word	36,91
	.long	05624d6fH
	.word	00H
	.word	80,48
	.long	0562b3cfH
	.word	00H
	.word	104,34
	.long	05632bcfH
	.word	00H
	.word	40,91
	.long	05639a4fH
	.word	00H
	.word	72,57
	.long	05640c0fH
	.word	06000H
	.word	76,87
	.long	05646c3fH
	.word	06000H
	.word	76,82
	.long	05650737H
	.word	00H
	.word	76,87
	.long	05646c3fH
	.word	06000H
	.word	20,61
	.long	0565c9f7H
	.word	05000H
trnedBLKS:
	.word	0145H	;flags
	.word	0,120 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	0145H,1,37,00H
	.word	0145H,1,286,00H
	.word	0145H,1,203,00H
	.word	0145H,27,0,00H
	.word	04040H,49,81,01H
	.word	04049H,64,190,02H
	.word	04041H,97,227,01003H
	.word	04046H,114,54,01004H
	.word	04041H,118,115,05H
	.word	0404CH,118,89,06H
	.word	0145H,125,248,00H
	.word	0145H,151,0,00H
	.word	0404AH,181,190,07H
	.word	04043H,184,132,08H
	.word	04042H,184,106,09H
	.word	0404FH,184,89,0AH
	.word	04042H,188,227,0100BH
	.word	0404EH,216,55,0CH
	.word	04044H,217,262,0100DH
	.word	04043H,217,228,0100EH
	.word	0404BH,243,193,0FH
	.word	04047H,243,128,01010H
	.word	04048H,243,89,01011H
	.word	0145H,249,249,00H
	.word	03F4DH,270,25,012H
	.word	03F4DH,274,3,012H
	.word	03E4DH,275,3,013H
	.word	0324DH,284,64,014H
	.word	0324DH,292,62,014H
	.word	0145H,293,60,00H
	.word	04047H,297,137,015H
	.word	04046H,297,89,016H
	.word	04045H,302,228,01017H
	.word	03F4DH,321,30,012H
	.word	0324DH,326,89,014H
	.word	03E4DH,326,16,013H
	.word	0324DH,330,71,014H
	.word	0324DH,331,53,014H
	.word	04048H,333,137,018H
	.word	0324DH,333,55,014H
	.word	03F4DH,333,77,012H
	.word	03F4DH,338,84,012H
	.word	03D4DH,342,39,019H
	.word	0324DH,342,84,014H
	.word	0324DH,343,72,014H
	.word	03F4DH,345,91,012H
	.word	0324DH,346,63,014H
	.word	0324DH,346,41,014H
	.word	03E4DH,350,60,013H
	.word	0324DH,351,69,014H
	.word	0324DH,353,84,014H
	.word	0324DH,359,120,014H
	.word	0324DH,361,53,014H
	.word	03E4DH,362,58,013H
	.word	0324DH,366,85,014H
	.word	03C4DH,368,36,01AH
	.word	0324DH,368,57,014H
	.word	04040H,369,146,0101BH
	.word	0324DH,370,48,014H
	.word	0324DH,371,97,014H
	.word	0324DH,372,85,014H
	.word	0145H,373,256,00H
	.word	0324DH,374,56,014H
	.word	0324DH,374,109,014H
	.word	0324DH,377,78,014H
	.word	0324DH,381,80,014H
	.word	0324DH,381,104,014H
	.word	0324DH,382,97,014H
	.word	03F4DH,383,195,012H
	.word	0324DH,383,136,014H
	.word	0324DH,383,215,014H
	.word	0324DH,388,68,014H
	.word	03E4DH,390,97,013H
	.word	03D4DH,390,77,019H
	.word	0324DH,391,121,014H
	.word	0324DH,391,95,014H
	.word	0324DH,392,109,014H
	.word	0324DH,392,107,014H
	.word	0324DH,393,63,014H
	.word	0404DH,394,54,014H
	.word	0324DH,395,85,014H
	.word	0324DH,395,61,014H
	.word	0324DH,395,119,014H
	.word	0324DH,396,73,014H
	.word	0324DH,397,130,014H
	.word	0324DH,397,118,014H
	.word	0324DH,398,157,014H
	.word	0324DH,401,112,014H
	.word	0324DH,404,139,014H
	.word	0324DH,406,108,014H
	.word	0324DH,413,120,014H
	.word	03F4DH,427,157,01DH
	.word	03F4DH,427,189,01DH
	.word	0324DH,495,78,014H
	.word	0FFFFH	;End Marker

;file newtitle blocks not in any module
;	.word	03D44H	;flags
;	.word	1035,709 ;x,y
;	.word	01CH	;pal5,pal4,hdr13-0
;	.word	0FFFFH	;End Marker
trnedBMOD:
	.word	543,369,95	;x size, y size, #blocks
	.long	trnedBLKS, itleHDRS, itlePALS

ratsHDRS:
	.word	8,4	;x size, y size
	.long	0547E117H	;address
	.word	06000H	;dma ctrl
	.word	8,4
	.long	0547E1D7H
	.word	06000H
	.word	8,122
	.long	0547E297H
	.word	06000H
	.word	96,4
	.long	0547F977H
	.word	06000H
	.word	4,122
	.long	05480277H
	.word	03000H
	.word	4,4
	.long	0548082FH
	.word	03000H
	.word	4,4
	.long	0548082FH
	.word	03000H
	.word	96,4
	.long	054819FFH
	.word	03000H
	.word	180,120
	.long	05481E7FH
	.word	05000H
	.word	8,122
	.long	054D4C5FH
	.word	06000H
	.word	8,122
	.long	054D357FH
	.word	06000H
	.word	4,4
	.long	054D633FH
	.word	06000H
	.word	4,4
	.long	054D351FH
	.word	06000H
	.word	8,4
	.long	054B13C7H
	.word	06000H
	.word	8,4
	.long	054B1487H
	.word	06000H
congratbBLKS:
	.word	0140H	;flags
	.word	0,0 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	0240H,0,250,01H
	.word	0240H,0,4,02H
	.word	0240H,0,128,02H
	.word	0240H,0,107,02H
	.word	0260H,0,254,01H
	.word	0240H,6,250,03H
	.word	0140H,6,0,03H
	.word	0241H,6,128,04H
	.word	0241H,6,4,05H
	.word	0241H,6,4,06H
	.word	0260H,6,254,03H
	.word	0241H,6,8,04H
	.word	0241H,6,4,04H
	.word	0241H,10,4,07H
	.word	045H,10,7,08H
	.word	045H,10,127,08H
	.word	045H,10,247,08H
	.word	0140H,100,0,03H
	.word	0240H,100,250,03H
	.word	0260H,100,254,03H
	.word	0241H,104,4,07H
	.word	045H,190,7,08H
	.word	045H,190,127,08H
	.word	045H,190,247,08H
	.word	0260H,193,254,03H
	.word	0140H,194,0,03H
	.word	0240H,194,250,03H
	.word	0340H,196,4,09H
	.word	0340H,196,128,09H
	.word	0340H,196,91,0AH
	.word	04040H,196,250,0BH
	.word	04040H,196,0,0CH
	.word	0241H,199,4,07H
	.word	0441H,200,4,04H
	.word	0441H,200,128,04H
	.word	0441H,200,74,04H
	.word	0140H,286,0,03H
	.word	0260H,287,254,03H
	.word	0240H,288,250,03H
	.word	0241H,293,4,07H
	.word	0240H,296,250,03H
	.word	0240H,296,0,03H
	.word	0260H,302,254,03H
	.word	045H,370,7,08H
	.word	045H,370,127,08H
	.word	045H,370,247,08H
	.word	0140H,390,0,0DH
	.word	0140H,390,121,02H
	.word	0240H,390,128,02H
	.word	0240H,390,250,0EH
	.word	0240H,390,4,02H
	.word	0250H,394,4,02H
	.word	0250H,394,126,02H
	.word	0250H,394,128,02H
	.word	0250H,394,250,0EH
	.word	0150H,394,0,0DH
	.word	0260H,396,254,0EH
	.word	0FFFFH	;End Marker

;file congrats blocks not in any module
;	.word	0260H	;flags
;	.word	1082,505 ;x,y
;	.word	01H	;pal5,pal4,hdr13-0
;	.word	0240H,1082,358,02H
;	.word	0240H,1082,379,02H
;	.word	0240H,1082,255,02H
;	.word	0240H,1082,501,01H
;	.word	0140H,1082,251,00H
;	.word	0260H,1088,505,03H
;	.word	0242H,1088,255,06H
;	.word	0241H,1088,255,05H
;	.word	0242H,1088,379,04H
;	.word	0140H,1088,251,03H
;	.word	0240H,1088,501,03H
;	.word	0242H,1088,258,04H
;	.word	044H,1092,498,08H
;	.word	044H,1092,378,08H
;	.word	044H,1092,258,08H
;	.word	0242H,1092,255,07H
;	.word	0260H,1182,505,03H
;	.word	0240H,1182,501,03H
;	.word	0140H,1182,251,03H
;	.word	0242H,1186,255,07H
;	.word	044H,1272,498,08H
;	.word	044H,1272,378,08H
;	.word	044H,1272,258,08H
;	.word	0260H,1275,505,03H
;	.word	0240H,1276,501,03H
;	.word	0140H,1276,251,03H
;	.word	0340H,1278,255,09H
;	.word	0340H,1278,379,09H
;	.word	0340H,1278,325,09H
;	.word	04040H,1278,251,0CH
;	.word	04040H,1278,501,0BH
;	.word	0242H,1281,255,07H
;	.word	0442H,1282,379,04H
;	.word	0442H,1282,255,04H
;	.word	0442H,1282,355,04H
;	.word	0140H,1368,251,03H
;	.word	0260H,1369,505,03H
;	.word	0240H,1370,501,03H
;	.word	0242H,1375,255,07H
;	.word	0240H,1378,251,03H
;	.word	0240H,1378,501,03H
;	.word	0260H,1384,505,03H
;	.word	044H,1452,498,08H
;	.word	044H,1452,378,08H
;	.word	044H,1452,258,08H
;	.word	0240H,1472,255,02H
;	.word	0240H,1472,501,0EH
;	.word	0240H,1472,379,02H
;	.word	0140H,1472,372,02H
;	.word	0140H,1472,251,0DH
;	.word	0150H,1476,251,0DH
;	.word	0250H,1476,501,0EH
;	.word	0250H,1476,379,02H
;	.word	0250H,1476,377,02H
;	.word	0250H,1476,255,02H
;	.word	0260H,1478,505,0EH
;	.word	0FFFFH	;End Marker
congratbBMOD:
	.word	550,367,58	;x size, y size, #blocks
	.long	congratbBLKS, ratsHDRS, ratsPALS

er2HDRS:
	.word	180,120	;x size, y size
	.long	05481E7FH	;address
	.word	05000H	;dma ctrl
	.word	208,70
	.long	0565e1cbH
	.word	05000H
	.word	132,4
	.long	0555B09BH
	.word	05000H
	.word	132,9
	.long	0554DCCFH
	.word	05000H
	.word	120,4
	.long	0548109FH
	.word	05000H
	.word	16,9
	.long	054B027BH
	.word	05000H
	.word	4,71
	.long	054AE06FH
	.word	05000H
	.word	100,80
	.long	0566fe2bH
	.word	05000H
	.word	72,62
	.long	05679a6bH
	.word	00H
	.word	56,61
	.long	056825ebH
	.word	00H
	.word	56,60
	.long	056890abH
	.word	00H
	.word	16,69
	.long	0568f9abH
	.word	04000H
	.word	12,67
	.long	05690aebH
	.word	04000H
	.word	12,37
	.long	0569177bH
	.word	04000H
	.word	12,35
	.long	05691e6bH
	.word	04000H
	.word	60,58
	.long	056924fbH
	.word	00H
ladderBLKS:
	.word	040H	;flags
	.word	0,0 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	040H,0,120,00H
	.word	040H,0,240,00H
	.word	04045H,91,201,01H
	.word	04045H,92,22,01H
	.word	04041H,95,271,02H
	.word	04041H,96,92,02H
	.word	04045H,122,125,03H
	.word	04045H,122,304,03H
	.word	02341H,125,313,04H
	.word	02341H,126,134,04H
	.word	04045H,142,134,03H
	.word	04045H,142,313,03H
	.word	02341H,147,143,04H
	.word	02341H,148,322,04H
	.word	04041H,165,92,02H
	.word	04041H,166,271,02H
	.word	040H,180,0,00H
	.word	040H,180,120,00H
	.word	040H,180,240,00H
	.word	02341H,242,308,05H
	.word	02341H,243,129,05H
	.word	02341H,263,317,05H
	.word	02341H,263,138,05H
	.word	04041H,296,204,06H
	.word	04041H,297,25,06H
	.word	040H,360,0,00H
	.word	040H,360,120,00H
	.word	040H,360,240,00H
	.word	0FFFFH	;End Marker
dabullBLKS:
	.word	040H	;flags
	.word	180,0 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	040H,180,120,00H
	.word	040H,180,240,00H
	.word	03C48H,220,27,07H
	.word	03C48H,220,103,07H
	.word	03C48H,220,179,07H
	.word	03D53H,223,191,08H
	.word	03D49H,225,116,09H
	.word	03D44H,226,41,0AH
	.word	03E46H,288,32,0BH
	.word	03E46H,288,184,0BH
	.word	03E46H,288,108,0BH
	.word	04047H,290,109,0CH
	.word	04047H,290,47,0DH
	.word	04047H,290,203,0EH
	.word	04042H,340,37,0FH
	.word	04042H,340,113,0FH
	.word	04042H,340,189,0FH
	.word	040H,360,0,00H
	.word	040H,360,120,00H
	.word	040H,360,240,00H
	.word	04042H,412,37,0FH
	.word	04042H,412,113,0FH
	.word	04042H,412,189,0FH
	.word	04042H,484,37,0FH
	.word	04042H,484,113,0FH
	.word	04042H,484,189,0FH
	.word	040H,540,240,00H
	.word	040H,540,120,00H
	.word	040H,540,0,00H
	.word	0FFFFH	;End Marker
ladderBMOD:
	.word	540,360,29	;x size, y size, #blocks
	.long	ladderBLKS, er2HDRS, er2PALS
dabullBMOD:
	.word	720,360,30	;x size, y size, #blocks
	.long	dabullBLKS, er2HDRS, er2PALS
icHDRS:
	.word	108,58	;x size, y size
	.long	056991bbH	;address
	.word	00H	;dma ctrl
	.word	116,182
	.long	056A557bH
	.word	00H
	.word	64,61
	.long	056Ce93bH
	.word	00H
	.word	156,38
	.long	056D633bH
	.word	00H
	.word	44,80
	.long	056E1c7bH
	.word	06000H
	.word	32,28
	.long	056E6efbH
	.word	00H
	.word	20,30
	.long	056E8afbH
	.word	00H
	.word	72,37
	.long	056E9dbbH
	.word	00H
	.word	72,47
	.long	056Ef0fbH
	.word	00H
	.word	24,44
	.long	056F5abbH
	.word	00H
	.word	40,30
	.long	056F7bbbH
	.word	00H
	.word	72,33
	.long	056Fa13bH
	.word	00H
	.word	132,45
	.long	056Feb7bH
	.word	00H
	.word	200,41
	.long	0570a51bH
	.word	00H
	.word	124,18
	.long	0571a55bH
	.word	00H
	.word	88,63
	.long	0571eb1bH
	.word	00H
	.word	20,12
	.long	0572985bH
	.word	00H
	.word	20,46
	.long	05729fdbH
	.word	00H
	.word	44,39
	.long	0572bc9bH
	.word	00H
	.word	60,47
	.long	0572f23bH
	.word	00H
	.word	52,36
	.long	05734a5bH
	.word	00H
	.word	36,38
	.long	057384dbH
	.word	00H
	.word	32,27
	.long	0573af9bH
	.word	00H
	.word	88,74
	.long	0573ca9bH
	.word	00H
	.word	60,70
	.long	0574961bH
	.word	00H
	.word	80,34
	.long	0575195bH
	.word	00H
	.word	88,49
	.long	05756e5bH
	.word	00H
	.word	144,50
	.long	0575f51bH
	.word	00H
	.word	20,39
	.long	0576d61bH
	.word	00H
	.word	64,30
	.long	0576ee7bH
	.word	00H
	.word	12,12
	.long	05772a7bH
	.word	07000H
	.word	40,54
	.long	05772e6bH
	.word	00H
	.word	40,31
	.long	057771ebH
	.word	00H
	.word	40,23
	.long	057798abH
	.word	00H
	.word	12,32
	.long	0577b56bH
	.word	00H
	.word	44,63
	.long	0577c16bH
	.word	00H
	.word	88,53
	.long	0578180bH
	.word	00H
	.word	84,137
	.long	0578a9cbH
	.word	00H
	.word	16,37
	.long	057A116bH
	.word	07000H
	.word	92,87
	.long	057A219bH
	.word	00H
	.word	44,63
	.long	057B1bbbH
	.word	00H
	.word	40,63
	.long	057B725bH
	.word	00H
	.word	164,79
	.long	057Bc11bH
	.word	00H
	.word	100,55
	.long	057d55fbH
	.word	00H
	.word	176,33
	.long	057e01dbH
	.word	00H
	.word	128,48
	.long	057Eb75bH
	.word	00H
	.word	16,40
	.long	057F775bH
	.word	00H
	.word	48,80
	.long	057F8b5bH
	.word	00H
	.word	60,39
	.long	0580035bH
	.word	00H
	.word	8,20
	.long	05804c7bH
	.word	00H
	.word	48,56
	.long	0580517bH
	.word	00H
	.word	112,66
	.long	0580a57bH
	.word	00H
	.word	72,61
	.long	05818c7bH
	.word	00H
	.word	28,21
	.long	058215bbH
	.word	00H
	.word	56,32
	.long	0582281bH
	.word	00H
	.word	116,46
	.long	0582601bH
	.word	00H
	.word	64,36
	.long	058306dbH
	.word	00H
	.word	28,24
	.long	05834edbH
	.word	00H
	.word	36,27
	.long	058363dbH
	.word	06000H
	.word	56,50
	.long	05837aa3H
	.word	00H
	.word	28,31
	.long	0583d223H
	.word	00H
	.word	52,61
	.long	0583ed43H
	.word	00H
	.word	60,114
	.long	05845063H
	.word	06000H
	.word	40,76
	.long	0584f0b3H
	.word	00H
	.word	52,46
	.long	05854fb3H
	.word	00H
	.word	40,38
	.long	05859a73H
	.word	00H
	.word	36,27
	.long	0585c9f3H
	.word	00H
chrvic1BLKS:
	.word	04048H	;flags
	.word	0,0 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	04047H,0,58,01H
	.word	04040H,81,134,01002H
	.word	0404BH,104,12,03H
	.word	0404BH,104,50,04H
	.word	04048H,106,0,05H
	.word	04040H,107,104,01006H
	.word	04040H,109,67,07H
	.word	04049H,113,163,08H
	.word	0404AH,114,196,09H
	.word	04042H,125,104,0AH
	.word	04043H,126,193,0BH
	.word	0404AH,132,41,0CH
	.word	04049H,134,199,0DH
	.word	04048H,136,0,0EH
	.word	04046H,139,137,0FH
	.word	0404FH,143,134,010H
	.word	0404FH,163,104,011H
	.word	0404AH,173,86,012H
	.word	0404EH,181,124,013H
	.word	0404AH,189,125,014H
	.word	0404EH,196,171,015H
	.word	0404CH,198,191,016H
	.word	0404CH,209,70,017H
	.word	0404CH,228,144,018H
	.word	04048H,235,49,019H
	.word	04049H,255,117,01AH
	.word	04048H,258,0,01BH
	.word	04049H,280,165,01CH
	.word	0404DH,284,54,01DH
	.word	0404DH,284,84,01EH
	.word	0404CH,288,158,01FH
	.word	04044H,293,82,020H
	.word	04045H,295,113,021H
	.word	04049H,308,166,022H
	.word	04041H,314,127,023H
	.word	04048H,315,50,024H
	.word	04047H,320,103,025H
	.word	0404DH,332,83,026H
	.word	0FFFFH	;End Marker

;file chrvic blocks not in any module
;	.word	04048H	;flags
;	.word	901,386 ;x,y
;	.word	00H	;pal5,pal4,hdr13-0
;	.word	047H,901,444,01H
;	.word	04041H,951,466,01027H
;	.word	04043H,979,553,01028H
;	.word	04044H,1003,528,01029H
;	.word	04BH,1005,398,03H
;	.word	04049H,1005,434,0102AH
;	.word	04BH,1005,436,04H
;	.word	04048H,1007,386,05H
;	.word	04AH,1015,582,09H
;	.word	04043H,1022,559,0102BH
;	.word	04044H,1035,593,0102CH
;	.word	04048H,1037,386,0EH
;	.word	04047H,1041,386,0102DH
;	.word	04043H,1042,506,0102EH
;	.word	04044H,1043,508,0102FH
;	.word	04043H,1055,495,01030H
;	.word	04043H,1081,534,01031H
;	.word	04049H,1087,515,01032H
;	.word	04048H,1097,538,01033H
;	.word	04048H,1105,465,01034H
;	.word	04045H,1124,524,01035H
;	.word	04048H,1136,435,019H
;	.word	04044H,1136,511,01036H
;	.word	04047H,1137,436,01037H
;	.word	04045H,1144,577,01038H
;	.word	04048H,1159,386,01BH
;	.word	04045H,1159,505,01039H
;	.word	04047H,1173,482,0103AH
;	.word	04046H,1183,473,0103BH
;	.word	04045H,1183,514,0103CH
;	.word	04044H,1187,531,0103DH
;	.word	04047H,1203,512,0103EH
;	.word	04045H,1205,537,0103FH
;	.word	04042H,1206,489,01040H
;	.word	048H,1216,436,024H
;	.word	047H,1221,489,025H
;	.word	04046H,1233,501,01041H
;	.word	04046H,1237,474,01042H
;	.word	0FFFFH	;End Marker
chrvic1BMOD:
	.word	404,240,39	;x size, y size, #blocks
	.long	chrvic1BLKS, icHDRS, icPALS

ackkHDRS:
	.word	8,4	;x size, y size
	.long	0547E1D7H	;address
	.word	06000H	;dma ctrl
	.word	12,122
	.long	054B4DFFH
	.word	06000H
	.word	12,122
	.long	054B2BAFH
	.word	06000H
	.word	8,4
	.long	0547E117H
	.word	06000H
	.word	96,4
	.long	0547F977H
	.word	06000H
	.word	96,8
	.long	054C82CFH
	.word	06000H
	.word	96,122
	.long	054B704FH
	.word	06000H
	.word	40,171
	.long	054C94CFH
	.word	06000H
	.word	4,4
	.long	054D633FH
	.word	06000H
	.word	4,4
	.long	054D351FH
	.word	06000H
	.word	8,122
	.long	054D357FH
	.word	06000H
	.word	8,122
	.long	054D4C5FH
	.word	06000H
	.word	56,172
	.long	054D639FH
	.word	06000H
	.word	8,4
	.long	054B1487H
	.word	06000H
	.word	8,122
	.long	0547E297H
	.word	06000H
	.word	8,122
	.long	0547E297H
	.word	06000H
	.word	8,4
	.long	054B13C7H
	.word	06000H
	.word	188,11
	.long	055030FFH
	.word	06000H
	.word	8,50
	.long	0550279FH
	.word	06000H
	.word	172,8
	.long	055079A7H
	.word	06000H
	.word	172,6
	.long	05506177H
	.word	06000H
	.word	84,36
	.long	055099E7H
	.word	03000H
	.word	56,14
	.long	0550C417H
	.word	06000H
	.word	52,11
	.long	0550D677H
	.word	06000H
	.word	8,50
	.long	0550E3DFH
	.word	06000H
	.word	8,28
	.long	0550ED3FH
	.word	05000H
	.word	84,36
	.long	055099E7H
	.word	03000H
	.word	84,36
	.long	0585e853H
	.word	05000H
	.word	8,28
	.long	0550F19FH
	.word	06000H
nameboxkBLKS:
	.word	05F44H	;flags
	.word	0,42 ;x,y
	.word	011H	;pal5,pal4,hdr13-0
	.word	06446H,0,0,012H
	.word	06446H,6,42,013H
	.word	06446H,6,0,014H
	.word	05F43H,6,6,015H
	.word	05F43H,59,6,015H
	.word	05F43H,95,6,015H
	.word	06044H,164,42,016H
	.word	06448H,165,43,017H
	.word	06446H,178,0,018H
	.word	05F44H,180,15,019H
	.word	05F44H,180,4,019H
	.word	06447H,194,0,012H
	.word	05F44H,195,42,011H
	.word	06447H,200,42,013H
	.word	06447H,200,0,014H
	.word	05F41H,200,6,01AH
	.word	05F41H,241,6,01AH
	.word	05F41H,289,6,01AH
	.word	06447H,372,0,018H
	.word	05F44H,373,4,01CH
	.word	05F44H,373,15,01CH
	.word	0FFFFH	;End Marker
selbackkBLKS:
	.word	0240H	;flags
	.word	0,250 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	0240H,0,128,01H
	.word	0240H,0,116,01H
	.word	0240H,0,4,02H
	.word	0240H,0,0,03H
	.word	0240H,5,250,04H
	.word	0240H,5,0,05H
	.word	045H,5,128,06H
	.word	045H,5,6,06H
	.word	0240H,61,0,05H
	.word	0240H,67,250,04H
	.word	0145H,78,20,07H
	.word	045H,82,6,06H
	.word	045H,82,128,06H
	.word	0240H,102,0,05H
	.word	0240H,103,250,04H
	.word	045H,103,128,06H
	.word	045H,103,6,06H
	.word	0240H,196,250,08H
	.word	0240H,196,0,09H
	.word	0240H,196,4,0AH
	.word	0240H,196,117,0BH
	.word	0240H,196,128,0BH
	.word	0240H,200,250,04H
	.word	0240H,200,0,05H
	.word	045H,200,128,06H
	.word	045H,200,6,06H
	.word	0240H,241,250,04H
	.word	0240H,249,0,05H
	.word	045H,256,7,06H
	.word	045H,256,128,06H
	.word	0145H,268,20,0CH
	.word	0240H,297,250,04H
	.word	0240H,297,0,05H
	.word	045H,298,8,06H
	.word	045H,298,129,06H
	.word	0240H,390,250,0DH
	.word	0240H,390,128,0EH
	.word	0240H,390,124,0EH
	.word	0240H,390,4,0FH
	.word	0240H,390,0,010H
	.word	0FFFFH	;End Marker

;file selbackk blocks not in any module
;	.word	05F42H	;flags
;	.word	1140,868 ;x,y
;	.word	01BH	;pal5,pal4,hdr13-0
;	.word	0FFFFH	;End Marker
nameboxkBMOD:
	.word	383,56,22	;x size, y size, #blocks
	.long	nameboxkBLKS, ackkHDRS, ackkPALS
selbackkBMOD:
	.word	398,254,41	;x size, y size, #blocks
	.long	selbackkBLKS, ackkHDRS, ackkPALS

tHDRS:
	.word	208,7	;x size, y size
	.long	0550F6DFH	;address
	.word	06000H	;dma ctrl
	.word	200,4
	.long	055118FFH
	.word	06000H
	.word	12,124
	.long	05512BBFH
	.word	06000H
	.word	180,120
	.long	05481E7FH
	.word	05000H
	.word	4,122
	.long	05480277H
	.word	03000H
	.word	48,8
	.long	054B1547H
	.word	06000H
	.word	184,6
	.long	055193A7H
	.word	06000H
	.word	8,71
	.long	0551AD87H
	.word	06000H
	.word	52,9
	.long	05862363H
	.word	01000H
	.word	188,9
	.long	0551BAD7H
	.word	06000H
	.word	96,4
	.long	054819FFH
	.word	03000H
	.word	172,6
	.long	05506177H
	.word	06000H
	.word	88,65
	.long	0551E27FH
	.word	05000H
	.word	152,8
	.long	054AC3EFH
	.word	06000H
	.word	132,4
	.long	0555B09BH
	.word	05000H
	.word	244,18
	.long	05862537H
	.word	04000H
	.word	228,18
	.long	058669d7H
	.word	04000H
	.word	4,11
	.long	0553C3DFH
	.word	06000H
	.word	168,24
	.long	0586a9f7H
	.word	05000H
	.word	8,71
	.long	0553C4E7H
	.word	06000H
	.word	8,71
	.long	0553D237H
	.word	06000H
	.word	152,8
	.long	054AE5FBH
	.word	06000H
	.word	88,65
	.long	055416BFH
	.word	05000H
	.word	16,9
	.long	054B027BH
	.word	05000H
	.word	48,8
	.long	054B054BH
	.word	06000H
	.word	52,9
	.long	054B0E4BH
	.word	03000H
	.word	8,4
	.long	054B1487H
	.word	06000H
	.word	8,124
	.long	0554C58FH
	.word	06000H
subsBLKS:
	.word	0250H	;flags
	.word	0,0 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	04050H,3,250,01H
	.word	0140H,3,126,02H
	.word	0140H,3,5,02H
	.word	04BH,10,243,03H
	.word	04BH,10,124,03H
	.word	024AH,10,7,04H
	.word	024AH,10,128,04H
	.word	04BH,10,4,03H
	.word	034CH,10,17,05H
	.word	0A48H,13,122,06H
	.word	07848H,13,128,07H
	.word	014AH,14,20,08H
	.word	0145H,15,193,09H
	.word	0144AH,15,4,0AH
	.word	07848H,19,193,0BH
	.word	04346H,19,128,0CH
	.word	034CH,51,17,0DH
	.word	0143H,57,25,0EH
	.word	04042H,78,71,0FH
	.word	04041H,87,46,010H
	.word	0145H,102,235,011H
	.word	04346H,105,128,0CH
	.word	0144AH,109,4,0AH
	.word	04044H,116,9,012H
	.word	0143H,163,25,0EH
	.word	04BH,190,244,03H
	.word	04BH,190,124,03H
	.word	04BH,190,4,03H
	.word	07848H,191,128,013H
	.word	0145H,193,125,014H
	.word	0240H,195,0,00H
	.word	04040H,198,250,01H
	.word	034CH,201,17,015H
	.word	0144AH,203,4,0AH
	.word	07849H,207,128,07H
	.word	0A49H,207,122,06H
	.word	0345H,209,193,09H
	.word	04447H,212,128,016H
	.word	07849H,213,193,0BH
	.word	0143H,213,25,0EH
	.word	0144AH,271,4,0AH
	.word	0145H,297,235,011H
	.word	04447H,298,128,016H
	.word	0144AH,299,4,0AH
	.word	0143H,345,20,017H
	.word	034CH,346,17,018H
	.word	014AH,347,20,019H
	.word	04BH,370,244,03H
	.word	04BH,370,124,03H
	.word	04BH,370,4,03H
	.word	07849H,385,128,013H
	.word	0145H,387,126,014H
	.word	0145H,388,131,014H
	.word	0240H,394,250,01AH
	.word	04040H,394,5,01BH
	.word	04040H,394,126,01BH
	.word	0FFFFH	;End Marker
subsBMOD:
	.word	550,364,57	;x size, y size, #blocks
	.long	subsBLKS, tHDRS, tPALS

hpHDRS:
	.word	204,89	;x size, y size
	.long	0586f8b7H	;address
	.word	07000H	;dma ctrl
	.word	88,52
	.long	0588e92bH
	.word	06000H
	.word	40,105
	.long	0589546bH
	.word	07000H
	.word	24,20
	.long	0589c743H
	.word	06000H
	.word	8,7
	.long	0589d283H
	.word	01000H
	.word	8,7
	.long	0589d2bbH
	.word	01000H
viewfrtBLKS:
	.word	04B40H	;flags
	.word	0,164 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	05A40H,158,20,01H
	.word	05A40H,182,72,02H
	.word	05A40H,191,0,03H
	.word	05A41H,195,4,04H
	.word	04B50H,198,164,00H
	.word	05A41H,204,4,05H
	.word	0FFFFH	;End Marker
viewfrtBMOD:
	.word	402,253,7	;x size, y size, #blocks
	.long	viewfrtBLKS, hpHDRS, hpPALS

kjamHDRS:
	.word	180,120	;x size, y size
	.long	05481E7FH	;address
	.word	05000H	;dma ctrl
blankjamBLKS:
	.word	040H	;flags
	.word	0,0 ;x,y
	.word	00H	;pal5,pal4,hdr13-0
	.word	040H,0,120,00H
	.word	040H,0,240,00H
	.word	040H,180,0,00H
	.word	040H,180,120,00H
	.word	040H,180,240,00H
	.word	040H,360,0,00H
	.word	040H,360,120,00H
	.word	040H,360,240,00H
	.word	0FFFFH	;End Marker
blankjamBMOD:
	.word	540,360,9	;x size, y size, #blocks
	.long	blankjamBLKS, kjamHDRS, kjamPALS
