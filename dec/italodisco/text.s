; ================================================================
; TEXT PAGES  ($4884C - $499D3)
;
; Format: 40 char lines, terminated by a single $00.
; PRINTPAGE routine prints 40 cols x 16 rows (max) and stops when $00
; $00 is met, thanks to this pages can be shorter.
;
; Charset (see table TEXT1 at $499D4): a A-Z 0-9
; .,:-!/&?() space, font uses some lowercase chars as
; glyphs:
;
;   q = angle hi-left      w = angle hi-right
;   a = angle low-left     s = angle low-right
;   e = vertical bar     i = apostrofo
;   z = right arrow    x = left arrow
; ================================================================

; ---------------- STAGE0: page 1, 16 rows ----------------
STAGE0:
;            1234567890123456789012345678901234567890
	dc.b	"   TRINITY IS HAPPY TO CELEBRATE MORE   "
 	dc.b	"  OLD ITALIAN RELICS SALVAGED FROM ROT  "
	dc.b	"                                        "
 	dc.b	"q--------------------------------------w"
	dc.b	"e F1 - THREESYSTEM -HORROR(FIXED)  i89 e"
 	dc.b	"e F2 - THE OUTSIDER                i89 e"
	dc.b	"e F3 - 4WARD -BORN TO RISE HELL    i93 e"
 	dc.b	"e F4 - AGGRESSORS/ORACLE-ALLEANCE  i90 e"
 	dc.b	"e F5 - DIVINA -HITENSION NEVERBORN i90 e"
	dc.b	"e F6 - DREAMS OF POWER -DEMO &     i90 e"
	dc.b	"e F7 - INSIDER -INTRO              i89 e"
	dc.b	"e F8 - TRAUMA -FIRST DEMO          i91 e"
	dc.b	"e F9 - VEGA -OFFICIAL PLASMA       i91 e"
	dc.b	"a--------------------------------------s"
	dc.b	"       & REQUIRES SOME FAST RAM         "
	dc.b	" PRESS SPACE (THE LONG ONE) FOR CREDITS "	
 	dc.b	0						;
 			 

; ---------------- STAGE1: page 2, 16 rows ----------------
STAGE1:
;            1234567890123456789012345678901234567890
	dc.b	"                                        "	; $48ACD
	dc.b	" KRIS/REBELS - ORIGINAL 1992 CODE       "	; $48AF5
	dc.b	"                                        "	; $48B1D
	dc.b	" OZZYBOSHI/RESISTANCE - DISASSEMBLY,    "	; $48B45
	dc.b	"   ANALYSIS, ADDITIONAL CODE, FIXING    "	; $48B6D
	dc.b	"                                        "	; $48B95
	dc.b	" FRATER SINISTER (RIP) - MUSIC TUNE     "	; $48BBD
	dc.b	"                        LEET IS SHIT    "	; $48BE5
	dc.b	"                                        "	; $48C0D
	dc.b	" Z3K/TRINITY - GFX, INTRO SELECTION &   "	; $48C35
	dc.b	"                   PRESERVATION, TEXTS  "  ; $48C5D
	dc.b	"                                        "	; $48C85
	dc.b	"  ALL ITALIANS FELT IN LOVE WITH AMIGA  " 	; $48CAD
	dc.b	"                                        "	; $48CD5
	dc.b	"                                        "	; $48CFD
	dc.b	"  PRESS THE LONG ONE FOR THE CONTACTS   "	; $48D25
	dc.b	0						; $48D4D  page end

; ---------------- STAGE2: page 3, 16 rows ----------------
STAGE2:
;            1234567890123456789012345678901234567890
	dc.b	" WANNA SEE HOW ALL THIS WAS DONE ?      "	; $48D4E
	dc.b	"                                        "	; $48D76
	dc.b	" z GITHUB.COM/OZZYBOSHI/STAHE-SWAPTRO x "	; $48D9E
	dc.b	"                                        "	; $48DC6
	dc.b	" WANNA SEE PREVIOUS ITALODISCO VOLUMES? "	; $48DEE
	dc.b	"                                        "	; $48E16
	dc.b	" z WWW.TRINITYHQ.EU x OR z POUET.NET   x"	; $48E3E
	dc.b	"                         z DEMOZOO.ORG x"	; $48E66
	dc.b	"                                        "	; $48E8E
	dc.b	" WANNA CONTRIBUTE TO ITALODISCO WITH    "	; $48EB6
	dc.b	" SOME OLD DISKS YOU FORGOT IN GARAGE,   "	; $48EDE
	dc.b	" INTRO OR MOD YOU NEVER RELEASED?       "	; $48F06
	dc.b	"                                        "	; $48F2E
	dc.b	" MAILTO: z ITALO(A)TRINITYHQ.EU x       "	; $48F56
	dc.b	"                                        "	; $48F7E
	dc.b	" PRESS LONG SPACEBAR FOR THE GREETINGS  "	; $48FA6
	dc.b	0						; $48FCE  page end

; ---------------- STAGE3: page 4, 16 rows ----------------
STAGE3:
;            1234567890123456789012345678901234567890
	dc.b	"   GREETINGS IN VERY RANDOM ORDER TO:   "	; $48FCF
	dc.b	" RAZDEE, FRIOL, ENTROPICROBI AND ALL THE"	; $48FF7
	dc.b	"ROMA.EXE ORGAS FOR THE AWESOME DEMOPARTY"  ; $4901F
	dc.b	"TAD, GECCO, DIXAN, SURFING, DMAN, MOD3M "	; $49047
	dc.b	"CAPITAN GIACO, SODA7, LYNX, EVERYONE WHO"	; $4906F
	dc.b	"   CONTRIBUTED TO SUCH A GREAT PARTY    "	; $49097
	dc.b	"  PELLICUS, PRINCE/PHAZE 101, HOUNDDOG, "	; $490BF
	dc.b	" PAN, MACNO, KFD, THE DARK CODER, FAROX "	; $490E7
	dc.b	"                 A N D                  "	; $4910F
	dc.b	"           EVERYONE I FORGOT            "	; $49137
	dc.b	" SINCE IiM PAST 32HEX AND MY AGNUS IS   "	; $4915F
	dc.b	" OLD AND CANiT ADDRESS ANY MORE CHIP RAM"  ; $49187
	dc.b	" EXTRA SPECIAL THANKS TO OZZY WHO SAVED "	; $491AF
	dc.b	"THE DAY, ITALODISCO AND SOME HARDWARE OF"	; $491D7
	dc.b	" MINE TOO, I OWE YOU BIG TIME.          "	; $491FF
	dc.b	"          PRESS SPACE FOR NEXT PART zzz "	; $49227
	dc.b	0						; $4924F  page end

; ---------------- STAGE5: page 5, 15 rows ----------------
STAGE5:
;            1234567890123456789012345678901234567890
	dc.b	"                                        "	; $49250
	dc.b	"                                        "	; $49278
	dc.b	"                                        "	; $492A0
	dc.b	"                                        "	; $492C8
	dc.b	"                                        "	; $492F0
	dc.b	"                                        "	; $49318
	dc.b	"                                        "	; $49340
	dc.b	"                                        "	; $49368
	dc.b	"                                        "	; $49390
	dc.b	"                                        "	; $493B8
	dc.b	"                                        "	; $493E0
	dc.b	"                                        "	; $49408
	dc.b	"                                        "	; $49430
	dc.b	"                                        "	; $49458
	dc.b	"                                        "	; $49480
	dc.b	0						; $494A8  page end

; ---------------- STAGE6: page 6, 12 rows ----------------
STAGE6:
;            1234567890123456789012345678901234567890
	dc.b	"                                        "	; $494A9
	dc.b	"                                        "	; $494D1
	dc.b	"                                        "	; $494F9
	dc.b	"                                        "	; $49521
	dc.b	"                                        "	; $49549
	dc.b	"                                        "	; $49571
	dc.b	"                                        "	; $49599
	dc.b	"                                        "	; $495C1
	dc.b	"                                        "	; $495E9
	dc.b	"                                        "	; $49611
	dc.b	"                                        "	; $49639
	dc.b	"                                        "	; $49661
	dc.b	0						; $49689  page end

; ---------------- STAGE7: page 7, 10 rows ----------------
STAGE7:
	dc.b	"                                        "	; $4968A
	dc.b	"                                        "	; $496B2
	dc.b	"                                        "	; $496DA
	dc.b	"                                        "	; $49702
	dc.b	"                                        "	; $4972A
	dc.b	"                                        "	; $49752
	dc.b	"                                        "	; $4977A
	dc.b	"                                        "	; $497A2
	dc.b	"                                        "	; $497CA
	dc.b	"                                        "	; $497F2
	dc.b	0						; $4981A  page end

; ---------------- STAGE8: page 8, 11 rows ----------------
STAGE8:
	dc.b	"                                        "	; $4981B
	dc.b	"                                        "	; $49843
	dc.b	"                                        "	; $4986B
	dc.b	"                                        "	; $49893
	dc.b	"                                        "	; $498BB
	dc.b	"                                        "	; $498E3
	dc.b	"                                        "	; $4990B
	dc.b	"                                        "	; $49933
	dc.b	"                                        "	; $4995B
	dc.b	"                                        "	; $49983
	dc.b	"                                        "	; $499AB
	dc.b	0						; $499D3  page end
