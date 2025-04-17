**************************************************************
*
* Software:		Warren Davis
* Initiated:		9/3/91
*
* Modified:		Shawn Liptak, 8/13/92	-Basketball
*
* COPYRIGHT (C) 1992 WILLIAMS ELECTRONICS GAMES, INC.
*
*.Last mod - 3/24/93 11:23
**************************************************************
	.file	"unzip.asm"
	.title	"pkzip unzipper"
	.width	132
	.option	b,d,l,t
	.mnolist

	.include	dispequ.asm		;Display proc equates
	.include	sysequ.asm
	.include	mainequ.asm
	.include	macros.hdr
	.include	mkzip.tbl
	.include	mkrevx.tbl
	.include	stringh.asm

	.ref	syscopy

BPP		.set 	3
RAMBUFSIZ	.set	(4*1024)*8		; << BPP
;SCRN_ST		.set	(170*scrn_ptch)+(150*8)
;PXLS_PR_TIK	.set	10000

;PAGE1ADR	.equ	PAGE1YO*512*8

page_1_address	.set	0100000H		; = PAGE1YO*512*8

CARYTEST		.equ	0		;1 for Cary's board testing
ERRORTEST	.equ	0		;1 for random pixel test
DEBUGPORT	.equ	01d01010H
TUNITDB		.equ	0


PTEMP1		.equ	p_store1
PIXPERFRM	.set	p_store2


RamBuffer	.usect	"unzip",RAMBUFSIZ

	.bss	lengthtree	,256*32
	.bss	disttree	,256*32
	.bss	minptrtbl	,256*32

	.def	lengthtree
	.text
*---------- MKZIP.TBL
*VS_HH   .set    058859e0h
*FF8F48F0
zipped_pics
	.long	VS_HH		; 0
	.long	VS_LK		; 1
	.long	VS_JCN		; 2
	.long	VS_SA		; 3
	.long	VS_FNA		; 4
	.long	VS_FNB		; 5
	.long	VS_ST		; 6
	.long	VS_RD		; 7
	.long	VS_SZ		; 8
	.long	VS_RP		; 9
	.long	VS_SC		; a
	.long	VS_JX		; b

	.long	ABACKA		; c
	.long	ABACKB		; d
	.long	ABACKC		; e
	.long	ABACKD		; f

	.long	END_KLV		; 10
	.long	END_KLH		; 11
	.long	END_LKV		; 12
	.long	END_LKH		; 13
	.long	END_JCV		; 14
	.long	END_JCH		; 15
	.long	END_BKV		; 16
	.long	END_BKH		; 17
	.long	END_KTV		; 18
	.long	END_KTH		; 19
	.long	END_MLV		; 1a
	.long	END_MLH		; 1b
	.long	END_STV		; 1c
	.long	END_STH		; 1d
	.long	END_RDV		; 1e
	.long	END_RDH		; 1f
	.long	END_SZV		; 20
	.long	END_SZH		; 21
	.long	END_RPV		; 22
	.long	END_RPH		; 23
	.long	END_SCV		; 24
	.long	END_SCH		; 25
	.long	END_JXV		; 26
	.long	END_JXH		; 27

	.long	VS_JC		; 28 - 1st cage picture


;***************************************************************
*FF8F4E10
show_rev_x
	calla	page_0_zip_setup
	movi	REVX,a8				; FFD00000h,A8
	clr	a9
	clr	a10
	jsrp	movie_run
	calla	display_on
	calla	view_page_0
	sleep	040H*5
	calla	murder_myoinit_score
	calla	clr_scrn
	sleep	2
	retp

page_0_zip_setup
	clr	a6
	move	a6,@f_auto_erase,w
	push	a8
	calla	display_off
	clr	a0
	not	a0
	move	a0,@noflip,w	   	; take control of page flipping !!
	calla	view_page_1
	movi	page0adr+xpadding,a1	; plot to page 0
	move	a1,@pageaddr,l		; plot to page 0
	movi	[253,0],a0
	move	a0,@dmatplft,l 		; set dma window to page 0
	pull	a8
	rets



*FF8F5090
show_dcs_logo
	movi	DCS,a8				; FFD3B730h,A8
	clr	a9
	movi	(01000H*056H)+(8*065H),a10	; a10 = coordinates of zipped pic
	jruc	movie_run

;***************************************************************

show_a0_ending
	pushp	a0

	move	a0,a1
	sll	1,a1
	addk	010H,a1				; get us to the "ending section"
	move	a1,a8				; input a8 = offset into zip table

	sll	5,a0
	move	a0,a1
	sll	1,a0
	add	a1,a0
	addi	end_text_1,a0

	move	*a0(32),a11,l
	move	*a0(64),a1,l
	move	*a0,a9,l

	movk	013H,a0
	movi	(01000H*029H)+(8*01eH),a10	; a10 = coordinates of zipped pic
	movi	040H*12,a2			; a2 = view time
	jsrp	one_story_screen

	calla	clr_scrn

	pullp	a0

	move	a0,a1
	sll	1,a1
	addk	011H,a1				; get us to the "ending section"
	move	a1,a8 				; input a8 = offset into zip table

	sll	5,a0
	move	a0,a1
	sll	1,a0
	add	a1,a0
	addi	end_text_2,a0
	move	*a0(32),a11,l
	move	*a0(64),a1,l
	move	*a0,a9,l

	movk	012H,a0
	movi	(01000H*19)+(8*038H),a10	; a10 = coordinates of zipped pic
	movi	040H*12,a2			; a2 = view time
	jsrp	one_story_screen
	retp

end_text_1
	.long	pf_hh_end_1a,pf_hh_end_1b,0
	.long	pf_lk_end_1a,pf_lk_end_1b,pf_lk_end_1c
	.long	pf_jc_end_1a,pf_jc_end_1b,pf_jc_end_1c
	.long	pf_sa_end_1a,pf_sa_end_1b,0
	.long	pf_fn1_end_1a,pf_fn1_end_1b,pf_fn1_end_1c
	.long	pf_fn2_end_1a,pf_fn2_end_1b,pf_fn2_end_1c
	.long	pf_st_end_1a,pf_st_end_1b,pf_st_end_1c
	.long	pf_rd_end_1a,pf_rd_end_1b,pf_rd_end_1c
	.long	pf_sz_end_1a,pf_sz_end_1b,pf_sz_end_1c
	.long	pf_rp_end_1a,pf_rp_end_1b,pf_rp_end_1c
	.long	pf_sc_end_1a,pf_sc_end_1b,pf_sc_end_1c
	.long	pf_jx_end_1a,pf_jx_end_1b,pf_jx_end_1c

end_text_2
	.long	pf_hh_end_2a,pf_hh_end_2b,0
	.long	pf_lk_end_2a,pf_lk_end_2b,0
	.long	pf_jc_end_2a,pf_jc_end_2b,0
	.long	pf_sa_end_2a,pf_sa_end_2b,0
	.long	pf_fn1_end_2a,pf_fn1_end_2b,0
	.long	pf_fn2_end_2a,pf_fn2_end_2b,0
	.long	pf_st_end_2a,pf_st_end_2b,0
	.long	pf_rd_end_2a,pf_rd_end_2b,0
	.long	pf_sz_end_2a,pf_sz_end_2b,0
	.long	pf_rp_end_2a,pf_rp_end_2b,0
	.long	pf_sc_end_2a,pf_sc_end_2b,0
	.long	pf_jx_end_2a,pf_jx_end_2b,0


pf_hh_end_1a
	mess_mac rd11font,2,0bfH,012H,bpal_white*010000H,strlnrmos_scr,0
	.string	"A FORMER SHAOLIN MONK\n"
	.string	"ALONGSIDE LIU KANG,\n"
	.string	"KUNG LAO ALSO GRIEVES\n"
	.string	"THE LOSS OF THEIR\n"
	.string	"SHAOLIN BROTHERS.\n"
	.byte	0
	.even

pf_hh_end_1b
	mess_mac rd11font,2,0bfH,070H,bpal_white*010000H,strlnrmos_scr,0
	.string	"HE REALIZES THAT HIS\n"
	.string	"ULTIMATE FATE LIES\n"
	.string	"WITHIN THE DARK REALM\n"
	.string	"OF THE OUTWORLD.\n"
	.string	"HE DEFEATS HIS OUTWORLD\n"
	.string	"OPPONENTS UNTIL HE\n"
	.string	"EMERGES THE SUPREME\n"
	.string	"CHAMPION."
	.byte	0
	.even

pf_hh_end_2a
	mess_mac rd11font,2,01cH,0A7H,bpal_white*010000H,strlnrmos_scr,0
	.string	"WITH HIS STRENGTH AND SPIRIT IN COMPLETE\n"
	.string	"ALIGNMENT HE FINALLY AVENGES THE DEATH OF\n"
	.string	"HIS GREAT ANCESTOR."
	.byte	0
	.even

pf_hh_end_2b
	mess_mac rd11font,2,01cH,0dCH,bpal_white*010000H,strlnrmos_scr,0
	.string	"ALTHOUGH HIS GREATEST CHALLENGES LIE AHEAD."
	.byte	0
	.even

**************************************************************************
*											     *
*  Kang											     *
*											     *
**************************************************************************
pf_lk_end_1a
	mess_mac rd11font,2,0bfH,022H,bpal_white*010000H,strlnrmos_scr,0
	.string	"WITH HIS SHAOLIN TEMPLE\n"
	.string	"IN RUINS, LIU KANG\n"
	.string	"JOURNEYS INTO THE\n"
	.string	"OUTWORLD, ENTERS SHAO\n"
	.string	"KAHN'S TOURNAMENT AND"
	.byte	0
	.even

pf_lk_end_1b
	mess_mac rd11font,2,0bfH,072H,bpal_white*010000H,strlnrmos_scr,0
	.string	"UNLEASHES A FURY THAT\n"
	.string	"DOES NOT END UNTIL THE\n"
	.string	"DEFEAT OF SHAO KAHN.\n"
	.byte	0
	.even

pf_lk_end_1c
	mess_mac rd11font,2,0bfH,0b0H,bpal_white*010000H,strlnrmos_scr,0
	.string	"LIU KANG THEN RETURNS\n"
	.string	"TO THE SECLUSION OF HIS\n"
	.string	"SHAOLIN TEMPLE."
	.byte	0
	.even

pf_lk_end_2a
	mess_mac rd11font,2,01cH,0adH,bpal_white*010000H,strlnrmos_scr,0
	.string	"HE PAYS HIS RESPECTS TO HIS LOST BROTHERS\n"
	.string	"AND FINALLY REALIZES THAT THE EVENTS WHICH\n"
	.byte	0
	.even

pf_lk_end_2b
	mess_mac rd11font,2,01cH,0cdH,bpal_white*010000H,strlnrmos_scr,0
	.string	"HAVE TAKEN PLACE WERE ALL FULFILLMENT OF\n"
	.string	"HIS DESTINY."
	.byte	0
	.even

**************************************************************************
*											     *
*    Cage										     *
*											     *
**************************************************************************
pf_jc_end_1a
	mess_mac rd11font,2,0bfH,016H,bpal_white*010000H,strlnrmos_scr,0
	.string	"AFTER DISAPPEARING FROM\n"
	.string	"THE SET OF HIS LATEST\n"
	.string	"MOVIE, CAGE FINALLY\n"
	.string	"RESURFACES. HE USED ALL"
	.byte	0
	.even

pf_jc_end_1b
	mess_mac rd11font,2,0bfH,056H,bpal_white*010000H,strlnrmos_scr,0
	.string "HIS KNOWLEDGE AND\n"
	.string	"EXPERIENCES AS A\n"
	.string	"FIGHTER TO END THE\n"
	.string	"OUTWORLD MENACE."
	.byte	0
	.even

pf_jc_end_1c
	mess_mac rd11font,2,0bfH,0A0H,bpal_white*010000H,strlnrmos_scr,0
	.string	"NOW HERALDED AS A TRUE\n"
	.string	"HERO, CAGE RECEIVES THE\n"
	.string	"RESPECT HE RIGHTFULLY\n"
	.string	"DESERVES.\n"
	.byte	0
	.even

pf_jc_end_2a
	mess_mac rd11font,2,01CH,0a5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"HE ALSO GETS HIS INSPIRATION FOR THE SEQUEL\n"
	.string	"TO HIS BLOCKBUSTER MOVIE MORTAL KOMBAT."
	.byte	0
	.even

pf_jc_end_2b
	mess_mac rd11font,2,01CH,0c5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"MK II IS RELEASED AND QUICKLY BECOMES THE\n"
	.string	"GREATEST MOTION PICTURE EVENT OF ALL TIME.\n"
	.string	"CAGE REALIZES THAT MK III IS INEVITABLE."
	.byte	0
	.even

**************************************************************************
*											     *
*  Baraka										     *
*											     *
**************************************************************************
pf_sa_end_1a
	mess_mac rd11font,2,0bcH,016H,bpal_white*010000H,strlnrmos_scr,0
	.string "KNOWN FOR HIS\n"
	.string	"UNPREDICTABLE ACTIONS\n"
	.string	"AND WILD FITS OF ANGER\n"
	.string	"BARAKA GOES ON A\n"
	.string	"RAMPAGE."
	.byte	0
	.even

pf_sa_end_1b
	mess_mac rd11font,2,0bcH,07dH,bpal_white*010000H,strlnrmos_scr,0
	.string	"AFTER DEFEATING THE\n"
	.string	"EARTH WARRIORS HE\n"
	.string	"ATTACKS SHANG TSUNG,\n"
	.string	"KINTARO AND FINALLY SHAO\n"
	.string	"KAHN HIMSELF."
	.byte	0
	.even

pf_sa_end_2a
	mess_mac rd11font,2,01CH,0a5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"AFTER DEFEATING SHAO KAHN, BARAKA'S RACE\n"
	.string	"OF MUTANTS ARISE FROM THE WASTELANDS AND\n"
	.byte	0
	.even

pf_sa_end_2b
	mess_mac rd11font,2,01CH,0c5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"REBELL AGAINST WHAT IS LEFT OF KAHN'S ARMY.\n"
	.string	"THEY EVENTUALLY WIN AND THE OUTWORLD COMES\n"
	.string	"UNDER THE RULE OF KING BARAKA."
	.byte	0
	.even

**************************************************************************
*											     *
*  KITANA										     *
*											     *
**************************************************************************
pf_fn1_end_1a
	mess_mac rd11font,2,0bdH,012H,bpal_white*010000H,strlnrmos_scr,0
	.string	"THROUGH HER YEARS OF\n"
	.string	"WORKING AS AN ASSASSIN,\n"
	.string	"KITANA HAS LEARNED MANY\n"
	.string	"SECRETS, ESPECIALLY\n"
	.string	"ABOUT HER OWN PAST. SHE\n"
	.byte	0
	.even

pf_fn1_end_1b
	mess_mac rd11font,2,0bdH,062H,bpal_white*010000H,strlnrmos_scr,0
	.string	"FINDS THAT MILEENA IS\n"
	.string	"NOT HER TWIN BUT A\n"
	.string	"GROTESQUE CLONE CREATED\n"
	.string	"BY SHANG TSUNG. SHE\n"
	.byte	0
	.even

pf_fn1_end_1c
	mess_mac rd11font,2,0bdH,0a2H,bpal_white*010000H,strlnrmos_scr,0
	.string	"LEARNS THAT HER PARENTS\n"
	.string	"WERE FORMER RULERS OF\n"
	.string	"THE OUTWORLD\n"
	.string	"OVERTHROWN BY SHAO\n"
	.string	"KAHN."
	.byte	0
	.even

pf_fn1_end_2a
	mess_mac rd11font,2,01cH,0a7H,bpal_white*010000H,strlnrmos_scr,0
	.string	"DETERMINED TO TAKE BACK WHAT IS RIGHTFULLY\n"
	.string	"HERS SHE MUST DEFEAT KAHN HIMSELF. SHE DOES\n"
	.byte	0
	.even

pf_fn1_end_2b
	mess_mac rd11font,2,01cH,0c7H,bpal_white*010000H,strlnrmos_scr,0
	.string	"SO BY ENTERING THE TOURNAMENT. SHE RETAKES\n"
	.string	"HER PARENTS' CASTLE AND RESTORES THE\n"
	.string	"OUTWORLD BACK INTO A REALM OF NOBILITY."
	.byte	0
	.even

**************************************************************************
*											     *
*  Mileena										     *
*											     *
**************************************************************************
pf_fn2_end_1a
	mess_mac rd11font,2,0bdH,012H,bpal_white*010000H,strlnrmos_scr,0
	.string	"ONCE THOUGHT TO BE\n"
	.string	"KITANA'S TWIN SISTER\n"
	.string	"MILEENA IS ACTUALLY\n"
	.string	"A GROTESQUE CLONE\n"
	.byte	0
	.even

pf_fn2_end_1b
	mess_mac rd11font,2,0bdH,052H,bpal_white*010000H,strlnrmos_scr,0
	.string	"CREATED BY SHANG TSUNG.\n\n"
	.string	"WITH SHAO KAHN\n"
	.string	"SUSPICIOUS OF KITANA'S\n"
	.string	"MOTIVES, MILEENA\n"
	.byte	0
	.even

pf_fn2_end_1c
	mess_mac rd11font,2,0bdH,0a2H,bpal_white*010000H,strlnrmos_scr,0
	.string	"SEIZES THE OPPORTUNITY\n"
	.string	"TO ATTACK KAHN AND HIS\n"
	.string	"MINIONS."
	.byte	0
	.even

pf_fn2_end_2a
	mess_mac rd11font,2,01cH,0a5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"CAUGHT OFF GUARD THEY ARE NO MATCH FOR\n"
	.string	"MILEENA'S SPEED. SHE WINS THE TOURNAMENT\n"
	.byte	0
	.even

pf_fn2_end_2b
	mess_mac rd11font,2,01cH,0c5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"AND TOGETHER WITH HER SECRET COMPANION,\n"
	.string	"BARAKA THEY RULE THE WORLD AS KING AND\n"
	.string	"QUEEN."
	.byte	0
	.even

**************************************************************************
*											     *
*  Shang Tsung											*
*											     *
**************************************************************************
pf_st_end_1a
	mess_mac rd11font,2,0bdH,012H,bpal_white*010000H,strlnrmos_scr,0
	.string	"SHANG TSUNG NOT ONLY\n"
	.string	"TURNS AGAINST AND\n"
	.string	"DEFEATS BOTH KINTARO\n"
	.string	"AND SHAO KAHN, HE ALSO"
	.byte	0
	.even

pf_st_end_1b
	mess_mac rd11font,2,0bdH,052H,bpal_white*010000H,strlnrmos_scr,0
	.string	"TAKES OVER THEIR RULE\n"
	.string	"OF THE OUTWORLD. WITH\n"
	.string	"SHAO KAHN'S ARMIES\n"
	.string	"AT HIS COMMAND, HE"
	.byte	0
	.even

pf_st_end_1c
	mess_mac rd11font,2,0bdH,092H,bpal_white*010000H,strlnrmos_scr,0
	.string	"FINALLY UNBALANCES THE\n"
	.string	"FURIES, AND WEAKENS THE\n"
	.string	"DIMENSIONAL GATES\n"
	.string	"BETWEEN THE OUTWORLD\n"
	.string	"AND THE EARTH REALM."
	.byte	0
	.even

pf_st_end_2a
	mess_mac rd11font,2,01cH,0a5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"ALONG WITH HIS ELITE GROUP OF SORCERERS HE\n"
	.string	"USES THIS WEAKNESS TO MARCH A NEVER ENDING\n"
	.byte	0
	.even

pf_st_end_2b
	mess_mac rd11font,2,01cH,0c5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"HORDE OF DEMONS INTO THE EARTH AND DOOM\n"
	.string	"ITS INHABITANTS TO ETERNAL DARKNESS.\n"
	.string	"                      HAVE A NICE DAY."
	.byte	0
	.even

**************************************************************************
*											     *
*  Raiden											*
*											     *
**************************************************************************
pf_rd_end_1a
	mess_mac rd11font,2,0bdH,012H,bpal_white*010000H,strlnrmos_scr,0
	.string	"FAMILIAR WITH SHANG \n"
	.string	"TSUNG'S LIES AND SHAO\n"
	.string	"KAHN'S BRUTALITY--\n"
	.string	"RAIDEN ACCEPTS THEIR\n"
	.byte	0
	.even

pf_rd_end_1b
	mess_mac rd11font,2,0bdH,052H,bpal_white*010000H,strlnrmos_scr,0
	.string	"CHALLENGE TO COMPETE\n"
	.string	"IN AN OUTWORLD\n"
	.string	"TOURNAMENT.\n"
	.string	"HE IS WELL AWARE OF\n"
	.byte	0
	.even

pf_rd_end_1c
	mess_mac rd11font,2,0bdH,092H,bpal_white*010000H,strlnrmos_scr,0
	.string	"THEIR SCHEME TO\n"
	.string	"UNBALANCE THE FURIES AND\n"
	.string	"INVADE THE EARTH REALM.\n"
	.string	"RAIDEN VOWS TO USE ALL\n"
	.string	"HIS MIGHT TO END THEIR\n"
	.string	"TRECHERY."
	.byte	0
	.even

pf_rd_end_2a
	mess_mac rd11font,2,01cH,0a5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"WINNING THE TOURNAMENT RAIDEN DESTROYS\n"
	.string	"SHAO KAHN AND ALL HIS MINIONS. HE ALSO\n"
	.byte	0
	.even

pf_rd_end_2b
	mess_mac rd11font,2,01cH,0c5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"DESTROYS THE DIMENSIONAL GATES WHICH WOULD\n"
	.string	"HAVE BEEN THEIR PASSAGEWAY TO THE EARTH\n"
	.string	"REALM."
	.byte	0
	.even

**************************************************************************
*											     *
*  Sub-zero											*
*											     *
**************************************************************************
pf_sz_end_1a
	mess_mac rd11font,2,0bdH,012H,bpal_white*010000H,strlnrmos_scr,0
	.string	"WHEN SUB-ZERO FAILED TO\n"
	.string	"RETURN FROM THE SHAOLIN\n"
	.string	"TOURNAMENT AND RUMOR\n"
	.byte	0
	.even

pf_sz_end_1b
	mess_mac rd11font,2,0bdH,042H,bpal_white*010000H,strlnrmos_scr,0
	.string	"OF SHANG TSUNG'S\n"
	.string	"SURVIVAL REACHED THE\n"
	.string	"LIN KUEI CLAN, THEY\n"
	.string	"IMMEDIATELY SENT\n"
	.string	"ANOTHER ASSASSIN TO\n"
	.byte	0
	.even

pf_sz_end_1c
	mess_mac rd11font,2,0bdH,092H,bpal_white*010000H,strlnrmos_scr,0
	.string	"COMPLETE THE TASK. THIS\n"
	.string	"NEW WARRIOR IS\n"
	.string	"ACTUALLY THE YOUNGER\n"
	.string	"BROTHER OF THE ORIGINAL\n"
	.string	"SUB-ZERO."
	.byte	0
	.even

pf_sz_end_2a
	mess_mac rd11font,2,01cH,0a5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"HE ENTERS THE OUTWORLD CONTEST AND ACCOM-\n"
	.string	"PLISHES HIS TASK. HE LEARNS OF SCORPION'S\n"
	.byte	0
	.even

pf_sz_end_2b
	mess_mac rd11font,2,01cH,0c5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"FOUL VENDETTA AGAINST HIS BROTHER BUT WILL\n"
	.string	"NEVER KNOW WHY HIS LIFE WAS SPARED. PERHAPS\n"
	.string	"A THIRD TOURNAMENT IS IN HIS FUTURE?"
	.byte	0
	.even

**************************************************************************
*											     *
*  Reptile											*
*											     *
**************************************************************************
pf_rp_end_1a
	mess_mac rd11font,2,0bdH,012H,bpal_white*010000H,strlnrmos_scr,0
	.string	"REPTILE HAS ALWAYS\n"
	.string	"LOYALLY SERVED AS SHANG\n"
	.string	"TSUNG'S PROTECTOR-\n"
	.byte	0
	.even

pf_rp_end_1b
	mess_mac rd11font,2,0bdH,042H,bpal_white*010000H,strlnrmos_scr,0
	.string	"WHILE MAINTAINING A\n"
	.string	"VERY LOW PROFILE IN THE\n"
	.string	"FIRST TOURNAMENT HE\n"
	.string	"DISCOVERD TSUNG'S PLOT\n"
	.string	"TO FORCE THE REMAINING"
	.byte	0
	.even

pf_rp_end_1c
	mess_mac rd11font,2,0bdH,092H,bpal_white*010000H,strlnrmos_scr,0
	.string	"MEMBERS OF HIS NEAR\n"
	.string	"EXTINCT RACE INTO\n"
	.string	"SLAVERY UNDER SHAO\n"
	.string	"KAHN'S RULE. REPTILE\n"
	.string	"THEN DEVISES A PLAN\n"
	.string	"OF HIS OWN."
	.byte	0
	.even

pf_rp_end_2a
	mess_mac rd11font,2,01cH,0a5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"HE ENTERS THE OUTWORLD TOURNAMENT,\n"
	.string	"DEFEATS SHAO KAHN AND TURNS AGAINST SHANG\n"
	.byte	0
	.even

pf_rp_end_2b
	mess_mac rd11font,2,01cH,0c5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"TSUNG, ENDING HIS MASTER'S SCHEME. NOW HIS\n"
	.string	"RACE CAN LIVE ON IN THEIR OWN PEACEFUL\n"
	.string	"EXISTENCE."
	.byte	0
	.even

**************************************************************************
*											     *
*  Scorpion											*
*											     *
**************************************************************************
pf_sc_end_1a
	mess_mac rd11font,2,0bdH,012H,bpal_white*010000H,strlnrmos_scr,0
	.string	"UPON LEARNING OF SUB-\n"
	.string	"ZERO'S REAPPEARANCE,\n"
	.string	"SCORPION ENTER'S SHAO\n"
	.byte	0
	.even

pf_sc_end_1b
	mess_mac rd11font,2,0bdH,042H,bpal_white*010000H,strlnrmos_scr,0
	.string	"KAHN'S TOURNAMENT. HE\n"
	.string	"WITNESSES SUB-ZERO\n"
	.string	"SPARE THE LIFE OF AN\n"
	.string	"OPPONENT AND REALIZES\n"
	.string	"THAT THIS IS NOT THE"
	.byte	0
	.even

pf_sc_end_1c
	mess_mac rd11font,2,0bdH,092H,bpal_white*010000H,strlnrmos_scr,0
	.string	"SAME SUBZERO WHO\n"
	.string	"MURDERED HIM SO LONG\n"
	.string	"AGO. HE LETS THE NINJA\n"
	.string	"LIVE AND GOES ON TO\n"
	.string	"DEFEAT THE OUTWORLDERS\n"
	.string	"IN THEIR UNHOLY CONTEST."
	.byte	0
	.even

pf_sc_end_2a
	mess_mac rd11font,2,01cH,0a5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"WITH THE DEFEAT OF SHAO KAHN, SCORPION\n"
	.string	"DISCOVERS A NEW PURPOSE FOR HIS EXISTENCE\n"
	.byte	0
	.even

pf_sc_end_2b
	mess_mac rd11font,2,01cH,0c5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"HE BECOMES THE GUARDIAN OF THE NEW SUBZERO\n"
	.string	"TO ATONE FOR MURDERING HIS OLDER BROTHER\n"
	.string	"AND IN PREPARATION FOR A THIRD TOURNAMENT."
	.byte	0
	.even


**************************************************************************
*											     *
*  Jax        											*
*											     *
**************************************************************************
pf_jx_end_1a
	mess_mac rd11font,2,0bdH,012H,bpal_white*010000H,strlnrmos_scr,0
	.string	"JAX FINDS SONYA HELD\n"
	.string	"CAPTIVE ALONGSIDE THEIR\n"
	.string	"ARCH EMEMY KANO. HER\n"
	.string	"ONLY CHANCE OF ESCAPE\n"
	.byte	0
	.even

pf_jx_end_1b
	mess_mac rd11font,2,0bdH,052H,bpal_white*010000H,strlnrmos_scr,0
	.string	"IS BY JAX ENTERING\n"
	.string	"SHAO KAHN'S CONTEST.\n"
	.string	"WITH FIERCE DETER-\n"
	.string	"MINATION HE CATCHES THE\n"
	.byte	0
	.even

pf_jx_end_1c
	mess_mac rd11font,2,0bdH,092H,bpal_white*010000H,strlnrmos_scr,0
	.string	"OUTWORLD WARRIORS OFF\n"
	.string	"GUARD AND WINS THE\n"
	.string	"TOURNAMENT BRINGING\n"
	.string	"SHAO KAHN'S RULE TO A\n"
	.string "CRASHING HAULT."
	.byte	0
	.even

pf_jx_end_2a
	mess_mac rd11font,2,01cH,0a5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"DURING THE CHAOS THAT FOLLOWS, JAX AND\n"
	.string	"SONYA ESCAPE THROUGH THE DIMENSIONAL GATE\n"
	.byte	0
	.even

pf_jx_end_2b
	mess_mac rd11font,2,01cH,0c5H,bpal_white*010000H,strlnrmos_scr,0
	.string	"FROM WHICH THEY ENTERED. KANO ONCE AGAIN\n"
	.string	"ELUDES CAPTURE BUT JAX AND SONYA KNOW THEY\n"
	.string	"WILL CROSS PATHS WITH HIM IN THE FUTURE."
	.byte	0
	.even

********************************
* Show movies (test) (Process)

; SUBR	movie_test
;
;	calla	pal_clean
;
;	movi	5*60,a1			;Delay tv score panel
;	move	@tvpanelon,a0,L
;	move	a1,*a0(PTIME)
;	
;	movi	[9,0],a9
;	movi	[08cH,0],a10
;	movi	(24+83*512)*8,a11	;XY
;
;	move	@last_score,a0,L
;	cmpi	scores,a0
;	jrz	amode_oinittm1
;
;	movi	[9+216,0],a9
;	movi	[08cH,0],a10
;	movi	053780H,a11		;XY
;
;amode_oinittm1	callr	show_edging		;Turn on clip borders
;
;	SLEEPK	10
;
;	movi	GRANT_F,a8
;	clr	a9
;
;	move	a11,a10
;	jsrp	movie_run
;
;	movi	02001H,a0
;	calla	obj_del1c
;
;	movk	10,a1			;Delay tv score panel
;	move	@tvpanelon,a0,L
;	move	a1,*a0(PTIME)
;
;	DIE


;********************************
;
; SUBRP	show_edging
;
;	move	a9,a0
;	move	a10,a1
;
;	movi	livet,a2
;	movi	19989,a3		;z pos - Below buyin box
;	movi	DMAWNZ|M_NOCOLL|M_SCRNREL,a4
;	movi	02001H,a5
;	clr	a6
;	clr	a7
;	calla	BEGINOBJ2
;
;	move	a9,a0
;	move	a10,a1
;	movi	liveb,a2
;	calla	BEGINOBJ2
;
;	move	a9,a0
;	move	a10,a1
;	movi	livel,a2
;	calla	BEGINOBJ2
;
;	move	a9,a0
;	move	a10,a1
;	movi	liver,a2
;	calla	BEGINOBJ2
;
;	rets
;
;

* Stop for error (DEBUG)

	.if	TUNITDB

movie_error

	PUSH	a0,a1
	pushst
	dint

	move	@syscopy,a0
	ori	4,a0
	move	a0,@syscopy
	move	a0,@SYSCTRL

lp2	movi	20000,a1
lp1	move	a0,@ERASELOC
	addk	1,a0
	dsj	a1,lp1

	move	@SWITCH+16,a1
	not	a1
	andi	0624H,a1
	jrz	lp2

	move	@syscopy,a0
	xori	4,a0
	move	a0,@syscopy
	move	a0,@SYSCTRL

	popst
	PULL	a0,a1
	rets

	.endif


*******************************
* Show movies in attract mode

; SUBR	movie_demo
;
;	calla	pal_clean
;
;	movi	GRANT_F,a8
;	clr	a9
;	movi	(100+50*512)*8,a10	;XY
;	jsrp	movie_run
;
;	movi	PIPPEN_F,a8
;	clr	a9
;;	movi	(140+70*512)*8,a10	;XY
;	movi	(100+70*512)*8,a10	;XY
;	jsrp	movie_run
;
;;	movi	GRANT_F,a8
;;	movk	1,a9
;;	movi	(100+50*512)*8,a10	;XY
;;	jsrp	movie_run
;;
;;	movi	PIPPEN_F,a8
;;	movk	1,a9
;;	movi	(140+70*512)*8,a10	;XY
;;	jsrp	movie_run
;
;x	retp


*******************************
* Run movie footage (jsrp)
* A8=* compressed picture data
* A9=Mode (0=Normal, 1=x2)
* A10=Screen * for top left of picture
* Trashes scratch, A2-A11,B2-B10

movie_run
	addi	xpadding*8,a10		;+XPad offset

;*******************
	move	@pageaddr,a14,l		; what page did we just plot to ??
	cmpi	page0adr+xpadding,a14
	jreq	p2
;	move	@dpage,a14
;	jrnz	p2
;*******************

	addi	page_1_address,a10	;Start in page 1 if page 0 is being displayed
p2

	callr	movie_waitdma

	.if	CARYTEST
	movk	1,a14
	move	a14,@DEBUGPORT
	.endif

	callr	movie_parsehdr
	jrnz	error1

	move	b3,a14			;Height
	subk	1,a14
	movi	scrn_ptch,a1
	mpys	a14,a1
	add	a1,a10			;* to bottom left

	callr	movie_getpal
	jrz	error1
					;A4= frames
					;A6=X size
					;B3=Y size
					;B4=strtpal
	movi	blowline,b10
	move	a9,a9
	jrz	mode0
	movi	blowlinex2,b10
mode0

	jsrp	movie_unzip

x0	setf	16,1,0
	setf	32,0,1

	retp

error1
	clr	a14
	move	a14,@DEBUGPORT

	lockup
	jruc	x0


*******************************
* Wait for DMA activity to stop
* Trashes A14

movie_waitdma

wtlp
	move	b13,b13			;Wait for DMAQ empty
	jrgt	wtlp
	move	@dmactrl,a14
	jrn	wtlp


	.if	CARYTEST=0

	movk	1,a14
	move	a14,@DEBUGPORT

dly	movi	200,a14			;Wait 400 cycles
	dsj	a14,$

	move	@dmactrl,a14
	jrnn	x2
	lockup
	jruc	dly

	.endif

x2	rets


*******************************
* Get a movie palette
* A7= of colors
* A8=* to color data
* 0A0H=Color map allocated (0000-cfcf)
* Z set if no palette free
* Trashes scratch

movie_getpal

	move	a8,a0
	subk	16,a0		;Point to  colors

;*************
;	calla	pal_getf
	calla	getfpal
;*************

	jrz	x3

	move	a7,a1
	sll	4,a1		;*16
	add	a1,a8

	move	a0,b4
	addk	1,a1		;Clr Z

x3	rets



*******************************
* Get movie info
* A8=* to compressed data
*Rets:
* 0A0H=!0 if error (CC)
* 0A4H= frames
* 0A6H/B9=X
* 0A7H= colors in palette
* 0B3H=Y
* Trashes scratch

movie_parsehdr

	move	a8,a14
	movk	30,a0		; retries

rd	move	*a8+,a6		;X size of frames
	move	*a8+,a1		;Y size of frames
	move	*a8+,a4		; of frames
	move	*a8+,a7		; of colors
	move	a1,b3
	move	a6,b9

;  put mk specific error checks here
;
;	cmpi	100,a6		;X
;	jrne	error2
;	cmpi	68,b3		;Y
;	jrne	error2
;	cmpi	5,a4		;frms
;	jrlt	error2
;	cmpi	35,a4
;	jrgt	error2
;	cmpi	200,a7		;colors
;	jrlt	error2
;	cmpi	255,a7
;	jrhi	error2

	clr	a0
	rets

error2
	movk	101b,a8
	move	a8,@DEBUGPORT

	move	a14,a8
	dsj	a0,rd

	addk	1,a0
	rets


********************************
* GSP Decompression routine
*
*	ASSUMPTIONS:  1) There is no literal table
*	              2) the size of the sliding window is 4K
*
*	Needs the following Data Tables:
*		CompressedDataTable will contain the following once
*		it is uncompressed:
*			 frames            (1 byte)
*			 colors in palette (1 byte)
*			X size of frame     (1 byte)
*			Y Size of frame     (1 byte)
*			variable length palette data
*			data for each frame
*
*	Needs the following RAM variables:
*		LengthTree   256 long words
*		DistanceTree 256 long words
*		MinPtrTable  256 long words (used for sort)
*		RamBuffer    circular buffer
*	        Tree layout is as follows...
*			low 16 bits = Code
*			next 8 bits = Bit length
*
*	B reg usage...
*		B0 = Ptr to Length tree
*		B1 = Ptr to Distance tree
*		B3 = start of line
*		B4 = start palette duped to fill 16 bits
*		B5 = used for outputting pal bits to DMAPAL
*		B6 = temp storage in ReadTree and UncompressTree
*		B7 = constant mask for pxl palette split
*		B8 = DMAPAL
*		B9 = Master X storage



*******************************
* Uncompress a tree
* A7=* to tree table
* A8=* to compressed data
* 0A0H=!0 if error (CC)

UncompressTree:
	push	a4,a5
	move	a7,a5		;Save start of tree
	clr	a4
	push	a8
				;0DeHtermine how many codes of each bit length
	setf	8,0,0
	move	*a8+,a0		; compressed bytes to describe tree - 1
	addk	1,a0
	movk	0fH,a3		;Constant
	clr	a6		;Total number of codes in tree
utr0:
	move	*a8+,a1		;( codes - 1 << 4) | bit lngth - 1
	add	a1,a4		;Chksum
	move	a1,a2
	srl	4,a2
	addk	1,a2		;number of codes of this bit length
	add	a2,a6		;adjust total
	and	a3,a1
	addk	1,a1		;bit length
	move	a1,a11
	sll	16,a11
	movy	a11,a1		;duplicate bit length for sort
utr1:
	move	a1,*a7+,l
	dsj	a2,utr1		;fill table

	dsj	a0,utr0		;a6 now contains size of tree


	PULL	a8		;>Recalc chksum
	clr	a2
	move	*a8+,a0		; compressed bytes to describe tree - 1
	addk	1,a0
chklp	move	*a8+,a1
	add	a1,a2
	dsj	a0,chklp

	setf	16,1,0

	cmp	a2,a4
	jrne	error3		;Chksums don't match?


*	Sort Tree by increasing Bit Length.
*		The translation index is placed in the upper byte
*		of the long word.

	movi	minptrtbl,a0	; for placing translation ptrs
	move	a6,a9		; outer loop count ( entries in tree table)

*	Outer loop, after each pass, we have found the next minimum

utr2:
	move	a5,a7		; restore start of tree
	movi	06543h,a14	; current minimum
	move	a6,b6		; inner loop count
	movi	07654h,a1	; constant

*	Inner loop, go through all values in table and find min.
*	When we find it, we set it to a high value so we don't detect
*	it again.

utr3:
	move	*a7,a2		; look at next bit length
	cmp	a14,a2		; is it less than the last minimum
	jrge	nonewmin
	move	a2,a14		; if yes, save new minimum
	move	a7,a11		;         save pointer to minimum
nonewmin:
	addk	32,a7		; point to next entry
	dsj	b6,utr3

;	end of inner loop: min is in a14, ptr to min is in a7

	move	a1,*a11		; set this minimum high.
	move	a11,*a0+,l	; place translation ptr in MinPtrTbl.

	dsjs	a9,utr2

				;0CHompute the codes
	clr	a11		;Code
	clr	a1		;CodeInc
	clr	a2		;LastBitLength
	move	a6,a14		;loop counter
utr4:
	move	*-a0,a7,l	;translated pointer
	add	a1,a11
	movb	*a7(16),a3	;bit length
	cmp	a3,a2
	jreq	samebitlng
	move	a3,a2		;set new LastBitLength
	movk	16,a3
	sub	a2,a3		;16-LastBitLength
	movk	1,a1
	sll	a3,a1		;CodeInc = 1 << (16-LastBitLength)
samebitlng:
	move	a11,a5		;copy of Code in a5
	movk	16,a9		;reverse bit loop count
rvrsbts:
	sll	1,a5		;Reverse bits of word
	movy	a5,a3
	srl	1,a3
	zext	a5
	dsjs	a9,rvrsbts

	move	a3,*a7		;store code with bits reversed
	dsjs	a14,utr4

	clr	a0

x4	PULL	a4,a5
	move	a0,a0
	rets


error3:
	movk	1001b,a14
	move	a14,@DEBUGPORT

	lockup
	movk	1,a0		;Error!
	jruc	x4



********************************

SetConstants:
	movi	lengthtree,b0
	movi	disttree,b1
SetConstX:
	movi	RamBuffer+RAMBUFSIZ-1,a0	;mask for rambuf ptr
	movi	RamBuffer,a6			;used for negative wraparound
	movi	0c0c0h,b7			;for blowing words of
	movi	dmacmap,b8
;	movi	blowline,b10
	rets



*******************************
* Initialize and run unzip loop (jsrp)
* A4= of frames
* A8=* compressed data table
* A10=Screen * for top left of picture
* B3=Y size
* B4=strt pal
* B9=X size

movie_unzip
	.if	TUNITDB
	jruc	debugstrt
	.endif


	movi	lengthtree,b0
	movi	disttree,b1

	movk	10,a5
ltlp	move	b0,a7			;Length Tree
	move	a8,b2
	callr	UncompressTree
	jrz	ltok			;OK?
	move	b2,a8
	dsj	a5,ltlp
	jruc	error
ltok

	movk	10,a5
dtlp	move	b1,a7			;Distance Tree
	move	a8,b2
	callr	UncompressTree
	jrz	dtok			;OK?
	move	b2,a8
	dsj	a5,dtlp
	jruc	error
dtok

	.if	CARYTEST
	clr	a14
	move	a14,@DEBUGPORT
	.endif

debugstrt

	;Clear top 4K of buffer to take care of initial wraparound

	movi	RamBuffer+RAMBUFSIZ,a1	;End of buffer
	movi	1024,a2			;4K
	clr	a3
clrbuf
	move	a3,*-a1,l
	dsj	a2,clrbuf

					;Do some initializing
	mpyu	b9,b3
	move	b3,a11			;total  bytes in frame in a11
	move	a11,*a13(PIXPERFRM),l
	callr	SetConstX
	move	a6,a9			;Where to uncompress to
	move	a9,b3			;first frame start
	clr	b5			;pixel count for Stills only


;**********************
;	cmpi	1,a4
;	jreq	UncompressFrame		;1 frame?
;**********************


lp5
	mmtm	a12,a4,a10

	callr	movie_waitdma

	.if	CARYTEST
	movk	10b,a14
	move	a14,@DEBUGPORT
	.endif

	.if	TUNITDB
	movi	50,a0
dblp
	movi	80,a2
dblp2
	move	a8,a9
	addi	GRANT_F2-GRANT_F,a9
	movb	*a8,a14
	movb	*a9,a1
	move	a14,@SCRATCH+13
	move	a1,@SCRATCH+16+15
	cmp	a1,a14
	jreq	cmpok

dberr
	callr	movie_error
	mmfm	a12,a4,a10
	retp

cmpok
	move	@dmactrl,a1
	move	@dmactrl,a1
	move	@dmactrl,a1
	move	@SWITCH,a1,l
	move	@SWITCH,a1,l
	move	@SWITCH,a1,l
	movb	*a9,a1
	cmp	a1,a14
	jrne	dberr
	move	@SCRATCH+13,a1
	cmp	a1,a14
	jrne	dberr
	movb	*a8,a14
	move	@SCRATCH+16+15,a1
	cmp	a1,a14
	jrne	dberr

	movb	a14,*a10
	addk	8,a8
	addk	8,a9
	addk	8,a10
	dsj	a2,dblp2
	addi	(512-80)*8,a10
	dsj	a0,dblp

	jruc	skipuncomp
	.endif


	jsrp	UncompressFrame

	clr	a0
	move	a0,@DEBUGPORT
skipuncomp:
	movk	1,a0			;1 tick sleep
;	move	*a13(FRAMENUM),a14	;if 1st frame, check for hold
;	jrz	chk4hold
;	subk	1,a14
;	jrne	nonono
;
;	move	*a13(HOLDFADE),a14	;on second frame, wait for hold time
;	add	a14,a0
;	jruc	nonono
;
;chk4hold
;	move	*a13(HOLDFADE),a14
;	jrz	nonono			; if need to hold, create fade process
;	PUSH	a8
;	move	b4,a8
;;	CREATE0	HOLD_FADE_PROC
;	PULL	a8
;	movk	6,a0			; sleep longer if we are fading pal
;nonono


	movi	swappg,a14
	jruc	GoToSleep


swappg:
	mmfm	a12,a4,a10
	xori	page_1_address,a10	;Flip * to other page
;	PUSH	a0
	setf	16,1,0
;	move	*a13(FRAMENUM),a14	;sound only on first frame
;	jrnz	no
;	move	*a13(CLIPSND),a0,L	;sound from sound table
;	jrz	no
;	PUSH	a14
;	calla	snd_play1
;	PULL	a14
;no
;	PULL	a0
;
;	addk	1,a14
;	move	a14,*a13(FRAMENUM)	;save next frame number
	move	*a13(PIXPERFRM),a14,l	;number of pixels in a frame
	add	a14,a11			;adjust by extra pixels done last time
;	cmpi	2,a4
;	jrne	nxtf
;	movi	blowlinelastfrm,b10
nxtf:

; button abort code
;	mmtm	sp,a0,a1,a2
;	calla	get_all_buttons_cur
;	mmfm	sp,a0,a1,a2
;	jrnz	abort


	dsj	a4,lp5			;Loop once for each frame

abort
	callr	movie_waitdma

;*************************
; Copy visable frame to other page
;
;	move	*a13(PIXPERFRM),a14,l	; of pixels in a frame
;	move	b4,*b8				; Set pallette
;	move	a10,a2 				; * screen
;	xori	page_1_address,a2		; Flip * to other page
;cpylp	move	a2,a0
;	move	a10,a1
;	move	b9,a5				;X size
;	srl	1,a5				;X/2 = loop counter
;cllp	move	*a0+,*a1+
;	dsj	a5,cllp
;	subi	scrn_ptch,a2
;	subi	scrn_ptch,a10
;	move	b9,a0
;	sub	a0,a14
;	jrgt	cpylp			;More pixels?
;*************************

x5	retp


error	lockup
	jruc	x5

********************************

GoToSleep
	getst	b2
	move	a12,b6
	mmtm	b6,b2,b3,b4,b5,b9,b10
	move	b6,a12

	setf	16,1,0
	setf	32,0,1
	move	a14,*a13(PTEMP1),l
	calla	prcslp

	move	a12,b6
	mmfm	b6,b2,b3,b4,b5,b9,b10
	move	b6,a12

	callr	SetConstants
	move	*a13(PTEMP1),a14,l

	putst	b2
	exgpc	a14			;Return



********************************
* Uncompress a single frame
* A0=Address mask for circular buffer
* A8=* to compressed data
* A9=* to buffer for uncompressed bytes
* A11=How many to place before returning
* B0=*Length tree
* B1=*Distance tree
*
*Trashes:
*	a1 = Distance
*	a2 = ptr to leftover data if there is any
*	a4 = Length
*
* ReadTree uses A2-A5,A7,A14,B6
* Need to Preserve: 	B9-B10

UncompressFrame:

	setf	16,0,1		;Field 1 = 16 bits no sign-ext
	move	b4,*b8,1	;Set pallette

UncFr0
	setf	1,0,0
	move	*a8+,a14	; if bit = 1, read 8 bits and copy
	.if	ERRORTEST
	move	@HCOUNT,a14
	.endif
	jrz	decode_still
	setf	8,0,0

	move	*a8+,*a9+
	and	a0,a9

	addk	1,b5		; pixel count
	subk	1,a11
us1
	cmp	b5,b9		; have we filled a line yet?
	jrgt	us0

    	call	b10		; Blow Line Routine

us0
	move	a11,a11
	jrgt	UncFr0

	setf	16,1,0
	setf	32,0,1
	retp


decode_still:		 	; if bit = 0, decode from trees
	setf	6,0,0
	move	*a8+,a1		; lower 6 bits of distance

	.if	ERRORTEST
	move	@HCOUNT,a1
	.endif

	move	b1,a5		; Distance Tree in a5
	callr	ReadTree	; Result in a7
	sll	6,a7
	or	a7,a1
	inc	a1		; DISTANCE in a1
	sll	BPP,a1		; turn it into a pointer

	move	b0,a5		; Length Tree in a5
	callr	ReadTree	; Result in a7

	setf	8,0,0

	cmpi	63,a7
	jrne	notmaxs
	move	*a8+,a3		; If length is 63, get next byte, and

	.if	ERRORTEST
	move	@HCOUNT,a3
	.endif

	add	a3,a7		; add it to the length
notmaxs
	addk	2,a7		; add MML, LENGTH in a7

;	We now have Length and Distance,  now determine where to copy from

	move	a9,a2		; copy of current position in a2
	sub	a1,a2  		; initial attempt
	and	a0,a2		; handle wraparound
	or	a6,a2		;copy pointer is now in a2

	sub	a7,a11		;Adjust total pixel count
	move	a7,b6
	add	b6,b5	    	;Adjust pixel counter for this line

copys
	move	*a2+,*a9+	;0CHopy
	and	a0,a2
	and	a0,a9
	dsj	a7,copys

	jruc	us1


*******************************
* Read compression tree
* A5=*Tree table
* A8=*Compressed data
* Field 1 = 16 bits
* 0A7H=Data
*
* Trashes: A2-A5,A14,B6
*
* Must preserve: A0,A1,A6,A8-A11

ReadTree:
	movk	1,a2		; bits_read
	setf	1,0,0
	move	*a8+,a7		; read a bit
	rl	31,a7		; rotate right one more bit
	clr	b6		; result
	jruc	strt
lp6
	addk	1,b6
strt	move	*a5+,a3,1	; Code in a3
	move	*a5+,a4,1	; Blngth in a4
	movk	32,a14
	sub	a2,a14
	rl	a14,a3		; rotate right as many bits have been read
lp2
	cmpxy	a3,a7
	jrynz	lp6

	cmp	a2,a4
	jreq	x6
	move	*a8+,a14	; read a bit
	or	a14,a7		; accumulate with other bits
	inc	a2		; inc bits_read
	rl	31,a7		; rotate right one more bit
	rl	31,a3		; shift code for check of next bit
	jruc	lp2

x6
	move	b6,a7
	rets			;Result returned in a7



*******************************
* BlowLine is used during decompression of a Still Picture to blow out
* a single line of data.  Since only a single line needs to be stored at
* once, the RamBuffer can be as small as 4K.
* A0=Address mask for circular buffer
* Field 1 = 16 bits
* Trashes A1-A2,A5


*** all the stuff below is removed from unzip in many other games, si i nuked it. see .bak!

blowline

;	setf	32,0,0

	move	a10,a2 		;* screen

	move	b3,a1		;Start of line
	move	b9,a5		;X size
	srl	2,a5		;X/4 = loop counter
	jrnc	by4
	move	*a1+,*a2+,1	;Copy 2 pixels
	and	a0,a1
by4
lp7
	move	*a1+,*a2+,1	;Copy 2 pixels
	and	a0,a1
	move	*a1+,*a2+,1	;Copy 2 pixels
	and	a0,a1
	dsj	a5,lp7


endblowline
	subi	scrn_ptch,a10
	move	a1,b3		;save for next frame
	sub	b9,b5		;readjust pixels for next line
	cmp	b9,b5		;added 6/92. if there are enough pixels
	jrge	nuther1		;left to do another line, do it.

      	rets

nuther1
	jruc	blowline



********************************
* Same as BlowLine, but blows to both screens
* Trashes A1,A3-A5

;blowlinelastfrm
;
;	move	a10,a3 		; where on screen to put
;	move	a3,a4
;	xori	PAGE1ADR,a4
;	move	b3,a1		; start of line
;	move	b9,a5		; X size
;	srl	1,a5		; X/2 = loop counter
;
;spbl1
;	move	*a1+,a14,1		; write into both screens
;	move	a14,*a3+,1
;	move	a14,*a4+,1		; write into both screens
;	and	a0,a1
;	dsjs	a5,spbl1
;
;	jruc	endblowline



*******************************
* BlowLine is used during decompression of a Still Picture to blow out
* a single line of data.  Since only a single line needs to be stored at
* once, the RamBuffer can be as small as 4K.
* A0=Address mask for circular buffer
* Field 1 = 16 bits

blowlinex2


	move	a10,a2 		;* screen
	move	a10,a3
	addi	scrn_ptch,a3

	move	b3,a1		;start of line
	move	b9,a5		;X size

	setf	8,0,0
lp8
	move	*a1+,a14	;Get 8 bits
	move	a14,a4
	sll	8,a4
	or	a4,a14
	move	a14,*a2+,1	;16 bits
	move	a14,*a3+,1
	and	a0,a1
	dsjs	a5,lp8

	subi	scrn_ptch*2,a10
	move	a1,b3		; save for next frame
	sub	b9,b5		; readjust pixels for next line
	cmp	b9,b5		; added 6/92. if there are enough pixels
	jrge	nuther2		; left to do another line, do it.

      	rets

nuther2	jruc	blowlinex2
;**********************************************************************
;* There is extra code in the production rom here.
;**********************************************************************
;FF905190: 09E0 7A60 FF96           MOVI   FF967A60h,A0		!! UNKNOWN TABLE FF96CCB0
;FF9051C0: 1930                     MOVK   9h,B0
;FF9051D0: 09E8 5351 0005           MOVI   55351h,A8
;FF905200: B401 D3B0                MOVE   *A0(D3B0h),A1,0
;FF905220: 4028                     ADD    A1,A8
;FF905230: 1200                     ADDK   10h,A0
;FF905240: 3CB0                     DSJS   B0,FF905200h
;FF905250: 09E0 E8C0 FF82           MOVI   FF82E8C0h,A0 	!! TABLE 00455250
;FF905280: 09D0 00A8                MOVI   A8h,B0
;FF9052A0: B401 C4D0                MOVE   *A0(C4D0h),A1,0
;FF9052C0: 4028                     ADD    A1,A8
;FF9052D0: 1200                     ADDK   10h,A0
;FF9052E0: 3CB0                     DSJS   B0,FF9052A0h
;FF9052F0: 0960                     RETS   
;**********************************************************************

	.end
