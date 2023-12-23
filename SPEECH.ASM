#****************************************************************
*
* Software:	Jamie Rivett
* Initiated:	?
*
* Modified:	?
*
* COPYRIGHT (C) 1992 WILLIAMS ELECTRONICS GAMES, INC.
*
****************************************************************
	.file	"speech.asm"
	.title	"announcer speech etc..."
	.width	132
	.option	b,d,l,t
	.mnolist


	.include	"mproc.equ"
	.include	"disp.equ"
	.include	"sys.equ"
	.include	"gsp.equ"
	.include	"mac2.asm"
	.include	"imgtbl.glo"
	.include	"imgtbl2.glo"
	.include	"bgndtbl.glo"
	.include	"game.equ"
	.include	"audit.equ"
	.include	"shawn.hdr"

	.asg		0,SEQT
	.include	"plyr.equ"

******************************************************************************

;	.ref	player_toggle1,player_toggle2

	.ref	fire_flags
	.ref	ballobj_p
	.ref	special_heads			;-1 = normal player head

	.ref	brick_count
	.ref	plyrproc_t
	.ref	ballpnum,ballpnumshot
	.ref	inbound
	.ref	ballrimhitcnt,ballbbhitcnt
	.ref	snd_play1,snd_play1ovrp
	.ref	snd_play1ovr
	.ref	rndrng0,RNDPER
	.ref	game_time
	.ref	gmqrtr,scores
	.ref	ballptsforshot		;Point value for current shot (1-3)
	.ref	team1,team2

	.ref	ballpnumscored		;Last plyr who scored (0-3) or neg
	.ref	ballnumscored		;# times last plyr scored
	.ref	plyrnumonfire		;plyr who is on fire


#*****************************************************************************
;ram

	BSSX	last_name,	16	;last name called (0-3)
	BSSX	last_name_time,	16	;# ticks since name called
	BSSX	shot_type,	16	;dunk, 3ptr etc
	BSSX	plyr_shot,	16	;player who shot last
	BSSX	shot_percentage,16	;0-999
	BSSX	shot_distance,	16	;distance from hoop
	.bss	ugly_stat,	16	;0=not ugly, 1=ugly called
	BSSX	score_diff,	16	;+winning by, -losing by
	.bss	blowout_called,	16	;0=not called, 1=called
	.bss	needshot_called,16	;0=not called, 1=called
	.bss	freakout,	16	;0=no freakout
	BSSX	jam_speech,	16	;speech type to call when jammed
	BSSX	next_call,	16	;# shots before next score call
	.bss	sound_ram,	16*4*4	;queued speech ram
	.bss	sound_ram2,	16*4*4	;queued speech ram
	.bss	skycalled,	16	;skyhook called (0=no)
	BSSX	spch_name_ram,	32*4
	BSSX	spch_pass_ram,	32*4

	.text

#*****************************************************************************
;speech tables

STAB_START

scrs0	.word	0f981H,60,08182H,0	;and it's good
scrs1	.word	0f9a1H,60,081e0H,0	;it's good (excited)
scrs2	.word	0f981H,30,08187H,0	;got it!
scrs3	.word	0f981H,30,081daH,0	;finds the hole
scrs4	.word	0f981H,30,081dcH,0	;what a shot
scrs5	.word	0f981H,30,081dfH,0	;hooks it in
scrs6	.word	0f981H,30,081a0H,0	;finger rolls it in
scrs7	.word	0f981H,98,081eaH,0	;oh my!
scrs8	.word	0f981H,30,081f5H,0	;spectacular dunk
scrs9	.word	0f981H,60,0819dH,0	;sweet touch
scrs10	.word	0f1a0H,39,081e1H,0	;IT IS....
scrs11	.word	0f9a1H,51,081e2H,0	;GOOOOD!!!
scrs12	.word	0f981H,47,0819bH,0	;scores
scrs13	.word	0f981H,87,08184H,0	;gets a lucky bounce
scrs14	.word	0f990H,100,081d6H,0	;the nail in the coffin!
scrs15	.word	0f981H,30,081afH,0	;lays it up
scrs16	.word	0f981H,70,0819cH,0	;boom shakalaka
scrs17	.word	0f981H,86,081a8H,0	;razzle dazzle (incredible dunk)
scrs18	.word	0f981H,60,081adH,0	;is it the shoes?
scrs19	.word	0f981H,51,081aeH,0	;kaboom
scrs20	.word	0f981H,90,081b2H,0	;monster jam
;scrs21	.word	0f981H,72,081baH,0	;slams one home
scrs22	.word	0f981H,59,081bbH,0	;slams it
scrs23	.word	0f981H,49,081bcH,0	;stuffs it
scrs24	.word	0f981H,73,0812dH,0	;the easy jam
scrs25	.word	0f981H,76,0812fH,0	;fancy move
scrsrz	.word	0f981H,76,081a8H,0	;razzle dazzle
scrs26	.word	0f981H,76,0812BH,0	;FANTASTIC!

jamsit	.word	0f981H,74,081a4H,0	;jams it in

twopts	.word	0f981H,50,081caH,0	;gets two (two points)
;getstwo	.word	0f981H,45,08197H,0	;gets two
bookit	.word	0f981H,42,081a6H,0	;book it
;countit	.word	0f981H,38,081a7H,0	;count it
uncon	.word	0f981H,86,0816fH,0	;he's unconscious
cantbuy	.word	0f981H,73,08175H,0	;can't buy a bucket
baddec	.word	0f981H,72,081b7H,0	;bad decision		<--change!


blowout_snd
	.word	0f990H,25,081feH,1	;silence
	.word	0f990H,67,08172H,0	;it's a blowout
blowout2_snd
	.word	0f990H,25,081feH,1	;silence
	.word	0f990H,87,081abH,0	;Whoomp, there it is
swish_snd
	.word	0f981H,5,081feH,1		;silence
	.word	0f981H,43,081e8H,0	;SWISH!
allnet_snd
	.word	0f981H,5,081feH,1		;silence
	.word	0f981H,72,08195H,0	;nothing but net

shts0	.word	0f180H,95,0818aH,0	;from the 3 point line
shts1	.word	0f180H,53,081e6H,0	;shoots for 3
shts2	.word	0f180H,98,0818eH,0	;from down town
shts3	.word	0f180H,99,08190H,0	;he shoots from the outside
shtsrb	.word	0f180H,99,081f0H,0	;rainbow
shts4	.word	0f980H,67,081c1H,0	;wild shot
shts5	.word	0f180H,81,0818bH,0	;from long range
shts6	.word	0f980H,70,081e3H,0	;out of range (launches a shot)
shts7	.word	0f9a0H,70,08183H,0	;at the buzzer
shts8	.word	0f180H,53,081a3H,0	;for two
;shts9	.word	0f180H,80,081b9H,0	;with the sky hook
hooksht	.word	0f990H,60,081bdH,0	;takes the hook shot	<----check this

;getoutb	.word	0f990H,86,081b5H,0	;get that beep outta here
getout	.word	0f990H,86,0815dH,0	;get that outta here
getout2	.word	0f990H,86,081c9H,0	;get that shit outta here
yes	.word	0f981H,46,081c2H,0	;YES!
greatsht .word	0f981H,62,081d8H,0	;great shot!
wideopen .word	0f981H,66,081ddH,0	;wide open
gottasht .word	0f990H,51,081d7H,0	;they've gotta shoot it
nogood	.word	0f981H,58,081f1H,0	;NO GOOD!
hescores .word	0f981H,63,081f6H,0	;he scores

ugly0
	.word	0f980H,25,081feH,1	;silence
	.word	0f980H,63,081d9H,0	;ugly shot!

ugly1
	.word	0f980H,25,081feH,1	;silence
	.word	0f980H,64,08198H,0	;puts up a brick

ugly2
	.word	0f980H,25,081feH,1	;silence
	.word	0f980H,66,0819fH,0	;terrible shot!



matchup	.word	0f9ffH,66,081deH,0	;tonight's matchup
versus	.word	0f9ffH,42,0802fH,0	;versus

ovrtme .word	0f9ffH,69,08180H,0	;overtime!
wingame	.word	0f9ffH,75,08173H,0	;win the game
arewinrs .word	0f9ffH,69,08174H,0	;are the winners


munged	.word	0f990H,49,0812eH,0	;munged
ambushed .word	0f990H,47,081c4H,0	;ugly knockdown	(ambushed)
takethat .word	0f990H,46,08189H,0	;take that!
flagrant .word	0f990H,50,08178H,0	;flagrant
;uglyknok .word	0f990H,73,081c6H,0	;ugly knock down
tofloor	.word	0f990H,81,081ceH,0	;knocked to the floor
hello	.word	0f990H,47,081c8H,0	;hello!
excuse	.word	0f990H,57,081c0H,0	;excuse me!

reject	.word	0f990H,79,081b6H,0	;rejected!
rejects	.word	0f990H,93,081f2H,0	;rejects the shot
greatd	.word	0f990H,70,08188H,0	;great defense
noway	.word	0f990H,68,081b4H,0	;no way!
grabreb	.word	0f990H,84,081efH,0	;grabs the rebound
;withbrd	.word	0f990H,78,081f0H,0	;comes away with the board
intrcpt	.word	0f990H,59,081a9H,0	;intercepted!
turnovr	.word	0f990H,51,081bfH,0	;the turnover!
stolen	.word	0f990H,47,081f3H,0	;steals the ball

downby	.word	0f990H,41,081cdH,0	;down by
upby	.word	0f990H,34,081cfH,0	;up by
scrtied	.word	0f990H,83,081baH,0	;the score is tied

snd_1	.word	0f990H,45,081d0H,0	;
snd_2	.word	0f990H,42,081d1H,0	;
snd_3	.word	0f990H,46,081d2H,0	;
snd_4	.word	0f990H,44,081d3H,0	;
snd_5	.word	0f990H,41,081d4H,0	;
snd_6	.word	0f990H,38,081d5H,0	;
snd_7	.word	0f990H,47,081f7H,0	;
snd_8	.word	0f990H,38,081f8H,0	;
snd_9	.word	0f990H,46,081f9H,0	;
snd_10	.word	0f990H,43,081faH,0	;
snd_15	.word	0f990H,57,081fbH,0	;
snd_20	.word	0f990H,50,081fcH,0	;


heatup_snd	.word	0f9f1H,60,08168H,0	;He's heating up
onfire_snd	.word	0f9a1H,83,08169H,0	;He's on fire
hothand		.word	0f990H,87,081fdH,0	;He's got a hot hand
organ1_snd	.word	0f3ffH,08H,080aeH,0
organ2_snd	.word	0f3ffH,08H,080afH,0

needshot	.word	0f981H,55,081feH,1	;silence
		.word	0f998H,71,081e9H,0	;They need a shot here

silence55	.word	0f981H,55,081feH,1	;silence

runout		.word	0f990H,8,081feH,1		;silence
		.word	0f990H,90,08186H,0	;running out of time

	.def	pass_speech

pass_speech

 .word	0f980H,32,08050H,0	;TO MANNING
 .word	0f980H,31,080efH,0	;TO AUGMON	( ATLANTA )
 .word	0f980H,40,08162H,0	;TO WILLIS

 .word	0f980H,43,080f8H,0	;TO BROWN	( BOSTON )
 .word	0f980H,28,080f7H,0	;TO MCDAN
 .word	0f980H,30,08145H,0	;TO GAMBLE

 .word	0f980H,50,080e9H,0	;TO JOHNSN_L	( CHARLOTTE )
 .word	0f980H,43,08061H,0	;TO HAWKINS
 .word	0f980H,45,08121H,0	;TO MOURNING

 .word	0f980H,29,080e7H,0	;TO PIPPEN
 .word	0f980H,49,08130H,0	;TO ARMSTRNG
 .word	0f980H,40,0817cH,0	;TO KUKOC
 .word	0f980H,34,080e6H,0	;TO GRANT_HC	( CHICAGO )

 .word	0f980H,33,08055H,0	;TO PRICE
 .word	0f980H,34,08056H,0	;TO DAUGHRTY	( CLEVELAND )
 .word	0f980H,34,08122H,0	;TO NANCE

; .word	0f980H,28,08051H,0	;TO HARPER_D
 .word	0f980H,34,0817bH,0	;TO JACKSON
 .word	0f980H,34,0817dH,0	;TO MASHBURN

 .word	0f980H,46,08059H,0	;TO MUTUMBO
 .word	0f980H,29,0805aH,0	;TO ELLIS	( DENVER )
 .word	0f980H,34,08137H,0	;TO ROGERS

 .word	0f980H,42,080feH,0	;TO THOMAS
 .word	0f980H,34,08141H,0	;TO DUMARS
 .word	0f980H,37,080f6H,0	;TO ELLIOT
 .word	0f980H,34,08147H,0	;TO HUNTER
; .word	0f980H,45,080fdH,0	;TO LAIMBEER	( DETROIT )

 .word	0f980H,37,080fbH,0	;TO HARDAWAY
 .word	0f980H,30,080fcH,0	;TO MULLIN	( GOLDEN STATE )
 .word	0f980H,34,08161H,0	;TO WEBBER

 .word	0f980H,43,08058H,0	;TO OLAJUWON
 .word	0f980H,34,0817fH,0	;TO MAXWELL
 .word	0f980H,34,08146H,0	;TO HORRY
 .word	0f980H,25,08057H,0	;TO SMITH	( HOUSTON )

 .word	0f980H,22,0804dH,0	;TO MILLER
 .word	0f980H,34,08149H,0	;TO SEALY
 .word	0f980H,34,0814fH,0	;TO SMITS

 .word	0f980H,37,080f0H,0	;TO WILKINS
 .word	0f980H,28,08051H,0	;TO HARPER_R	( L.A. CLIPPERS )
 .word	0f980H,40,0802bH,0	;TO ROBERTS

 .word	0f980H,34,08125H,0	;TO PEELER
 .word	0f980H,37,0804eH,0	;TO DIVAC	( L.A. LAKERS )
 .word	0f980H,34,0813eH,0	;TO CAMPBELL
;**************** .word	0f980H,50,080e9H,0	;TO MAGIC
 .word	0f980H,31,0804fH,0	;TO WORTHY

 .word	0f980H,27,08054H,0	;TO RICE
 .word	0f980H,33,08053H,0	;TO SEIKALY	( MIAMI )
 .word	0f980H,34,0811cH,0	;TO MINER

 .word	0f980H,34,08131H,0	;TO BAKER
 .word	0f980H,29,0804bH,0	;TO EDWARDS	( MILWAUKEE )
 .word	0f980H,34,08140H,0	;TO DAY
 .word	0f980H,32,080ffH,0	;TO LOHAUS

 .word	0f980H,37,0805eH,0	;TO LAETNER
 .word	0f980H,30,0805dH,0	;TO PERSON	( MINNESOTTA )
 .word	0f980H,34,0812aH,0	;TO RIDER

 .word	0f980H,31,08060H,0	;TO COLEMAN
 .word	0f980H,50,0805fH,0	;TO KANDERSON	( NEW JERSEY )
 .word	0f980H,34,0811eH,0	;TO CMORRIS
 .word	0f980H,40,080f2H,0	;TO BENJAMIN	( SEATTLE )

 .word	0f980H,37,080eeH,0	;TO EWING
 .word	0f980H,34,0817eH,0	;TO MASON
 .word	0f980H,34,08151H,0	;TO STARKS
 .word	0f980H,38,080edH,0	;TO OAKLEY	( NEW YORK )
 .word	0f980H,28,08051H,0	;TO HARPER_D

;******************** .word	0f980H,39,080e5H,0	;TO ONEAL

 .word	0f980H,37,080fbH,0	;TO AHARDAWAY
 .word	0f980H,50,0805fH,0	;TO NANDERSON
 .word	0f980H,40,080e4H,0	;TO SKILES	( ORLANDO )
; .word	0f980H,38,08052H,0	;TO IUZZ	( DALLAS )

 .word	0f980H,34,08152H,0	;TO WEATHERSPOON
 .word	0f980H,34,08133H,0	;TO BRADLEY
; .word	0f980H,36,08062H,0	;TO HORNACEK	( PHILADELPHIA )

 .word	0f980H,36,080ecH,0	;TO BARKLEY
 .word	0f980H,38,080ebH,0	;TO MAJERLE	( PHOENIX )
 .word	0f980H,50,080e9H,0	;TO KJOHNSON

 .word	0f980H,33,080f4H,0	;TO DREXLER
 .word	0f980H,24,080f3H,0	;TO PORTER	( PORTLAND )
 .word	0f980H,46,080f5H,0	;TO CROBINSON
 .word	0f980H,34,080e6H,0	;TO GRANT_HV

 .word	0f980H,34,0814cH,0	;TO SIMMONS
 .word	0f980H,34,0817aH,0	;TO HURLEY
 .word	0f980H,34,08127H,0	;TO RICHMOND
 .word	0f980H,43,0805bH,0	;TO TISDALE
 .word	0f980H,46,0805cH,0	;TO WEBB	( SACRAMENTO )

 .word	0f980H,46,080f5H,0	;TO ROBINSON	( SAN ANTONIO )
 .word	0f980H,34,08135H,0	;TO RODMAN
 .word	0f980H,29,0805aH,0	;TO DELLIS 

 .word	0f980H,31,080f1H,0	;TO KEMP
 .word	0f980H,40,08126H,0	;TO PAYTON	( SEATTLE )
 .word	0f980H,28,080eaH,0	;TO GILL
 .word	0f980H,26,0804cH,0	;TO SCHREMPF	( INDIANA )

 .word	0f980H,37,080faH,0	;TO MALONE_K
 .word	0f980H,31,080f9H,0	;TO STOCKTON	( UTAH )
 .word	0f980H,40,08132H,0	;TO BENOIT
 .word	0f980H,36,08062H,0	;TO HORNACEK	( PHILADELPHIA )

 .word	0f980H,36,080e8H,0	;TO GUGLIOTA	( WASHINGTON )
 .word	0f980H,40,08142H,0	;TO ELLISON
 .word	0f980H,40,0813fH,0	;TO CHEANEY

 .word	0f980H,37,080faH,0	;TO MALONE_K
 .word	0f980H,31,080f1H,0	;TO KEMP
 .word	0f980H,46,080f5H,0	;TO ROBINSON	( SAN ANTONIO )
 .word	0f980H,36,080ecH,0	;TO barkley
 .word	0f980H,33,080f4H,0	;TO DREXLER
 .word	0f980H,37,080fbH,0	;TO AHARDAWAY
 .word	0f980H,37,080eeH,0	;TO EWING
 .word	0f980H,50,0805fH,0	;TO KANDERSON	( NEW JERSEY )
 .word	0f980H,31,08060H,0	;TO COLEMAN
 .word	0f980H,50,0805fH,0	;TO NANDERSON
 .word	0f980H,31,080f9H,0	;TO STOCKTON	( UTAH )
 .word	0f980H,50,080e9H,0	;TO KJOHNSON
 .word	0f980H,28,080eaH,0	;TO GILL
 .word	0f980H,34,08127H,0	;TO RICHMOND
 .word	0f980H,34,08133H,0	;TO BRADLEY
 .word	0f980H,46,0805cH,0	;TO WEBB	( SACRAMENTO )
 .word	0f980H,34,08141H,0	;TO DUMARS
 .word	0f980H,34,08151H,0	;TO STARKS
 .word	0f980H,46,08059H,0	;TO MUTUMBO
 .word	0f980H,37,080f0H,0	;TO WILKINS
 .word	0f980H,28,08051H,0	;TO HARPER_R	( L.A. CLIPPERS )
 .word	0f980H,34,0812aH,0	;TO RIDER
 .word	0f980H,22,0804dH,0	;TO MILLER
 .word	0f980H,50,080e9H,0	;TO JOHNSN_L	( CHARLOTTE )
 .word	0f980H,43,08058H,0	;TO OLAJUWON
 .word	0f980H,34,08131H,0	;TO BAKER
 .word	0f980H,49,08130H,0	;TO ARMSTRNG
 .word	0f980H,45,08121H,0	;TO MOURNING
 .word	0f980H,27,08054H,0	;TO RICE
 .word	0f980H,37,080fbH,0	;TO HARDAWAY
 .word	0f980H,34,0817bH,0	;TO JACKSON
 .word	0f980H,29,080e7H,0	;TO PIPPEN
 .word	0f980H,34,0811cH,0	;TO MINER
 .word	0f980H,42,080feH,0	;TO THOMAS
 .word	0f980H,34,08161H,0	;TO WEBBER
 .word	0f980H,34,0817dH,0	;TO MASHBURN
 .word	0f980H,31,0804fH,0	;TO WORTHY
 .word	0f980H,30,080fcH,0	;TO MULLIN	( GOLDEN STATE )
 .word	0f980H,32,08050H,0	;TO MANNING


; .word	0f980H,36,081a2H,0	;TO SCORPION	( MORTAL KOMBAT )
; .word	0f980H,50,080e5H,0	;TO RAIDEN
; .word	0f980H,50,081a6H,0	;TO REPTILE
; .word	0f980H,50,081a1H,0	;TO SUBZERO
; .word	0f990H,8,081feH,1		;silence
; .word	0f990H,8,081feH,1		;silence

 .word	0f990H,8,081feH,1		;silence
 .word	0f990H,8,081feH,1		;silence
 .word	0f990H,8,081feH,1		;silence
 .word	0f990H,8,081feH,1		;silence
 .word	0f990H,8,081feH,1		;silence


	.def	name_speech

name_speech


 .word	0f980H,32,080d2H,0	;MANNING	( L.A. CLIPPERS )
 .word	0f980H,31,080bcH,0	;AUGMON
 .word	0f980H,35,0806aH,0	;WILLIS

;_brwn
 .word	0f980H,43,080c3H,0	;BROWN		( BOSTON )
 .word	0f980H,28,080c4H,0	;MCDAN
 .word	0f980H,40,08019H,0	;GAMBLE

 .word	0f980H,50,080b6H,0	;JOHNSN_L	( CHARLOTTE )
 .word	0f980H,43,080e3H,0	;HAWKINS
 .word	0f980H,43,08025H,0	;MOURNING

 .word	0f980H,29,080b2H,0	;PIPPEN		( CHICAGO )
 .word	0f980H,40,08010H,0	;ARMSTRNG
 .word	0f980H,35,0801eH,0	;KUKOC
 .word	0f980H,34,080b3H,0	;GRANT_HC

 .word	0f980H,33,080d7H,0	;PRICE		( CLEVELAND )
 .word	0f980H,34,080d6H,0	;DAUGHRTY
 .word	0f980H,34,08026H,0	;NANCE

; .word	0f980H,28,080d1H,0	;HARPER_D	( DALLAS )
 .word	0f980H,34,0801dH,0	;JACKSON
 .word	0f980H,44,0801fH,0	;MASHBURN

 .word	0f980H,46,080dbH,0	;MUTUMBO	( DENVER )
 .word	0f980H,29,080daH,0	;ELLIS
 .word	0f980H,34,08063H,0	;ROGERS

 .word	0f980H,42,080c9H,0	;THOMAS		( DETROIT )
 .word	0f980H,40,08017H,0	;DUMARS
 .word	0f980H,37,080c1H,0	;ELLIOT
 .word	0f980H,40,0801bH,0	;HUNTER
; .word	0f980H,45,080caH,0	;LAIMBEER

 .word	0f980H,37,080c8H,0	;HARDAWAY	( GOLDEN STATE )
 .word	0f980H,30,080c7H,0	;MULLIN
 .word	0f980H,40,08069H,0	;WEBBER

 .word	0f980H,43,080d8H,0	;OLAJUWON	( HOUSTON )
 .word	0f980H,40,08021H,0	;MAXWELL
 .word	0f980H,34,0801aH,0	;HORRY
 .word	0f980H,25,080d9H,0	;SMITH

 .word	0f980H,22,080cdH,0	;MILLER		( INDIANA )
 .word	0f980H,34,08064H,0	;SEALY
 .word	0f980H,34,08066H,0	;SMITS

 .word	0f980H,37,080bbH,0	;WILKINS	( ATLANTA )
 .word	0f980H,28,080d1H,0	;HARPER_R
 .word	0f980H,34,0802bH,0	;ROBERTS

 .word	0f980H,34,08027H,0	;PEELER
 .word	0f980H,37,080d0H,0	;DIVAC
 .word	0f980H,45,08014H,0	;CAMPBELL
;******************* .word	0f980H,34,081feH,0	;MAGIC
 .word	0f980H,31,080cfH,0	;WORTHY		( L.A. LAKERS )

 .word	0f980H,27,080d4H,0	;RICE		( MIAMI )
 .word	0f980H,33,080d5H,0	;SEIKALY
 .word	0f980H,34,08023H,0	;MINER

 .word	0f980H,37,08011H,0	;BAKER
 .word	0f980H,29,080cbH,0	;EDWARDS
 .word	0f980H,34,08016H,0	;DAY
 .word	0f980H,32,080ccH,0	;LOHAUS		( MILWAUKEE )

 .word	0f980H,37,080deH,0	;LAETNER	( MINNESOTTA )
 .word	0f980H,30,080dfH,0	;PERSON
 .word	0f980H,34,0802aH,0	;RIDER

 .word	0f980H,31,080e0H,0	;COLEMAN	( NEW JERSEY )
 .word	0f980H,45,080e1H,0	;KANDERSON
 .word	0f980H,34,08024H,0	;CMORRIS
 .word	0f980H,40,080bdH,0	;BENJAMIN

 .word	0f980H,37,080b9H,0	;EWING		( NEW YORK )
 .word	0f980H,34,08020H,0	;MASON
 .word	0f980H,34,08067H,0	;STARKS
 .word	0f980H,38,080baH,0	;OAKLEY
 .word	0f980H,28,080d1H,0	;HARPER_D	( DALLAS )

;****************** .word	0f980H,39,080b0H,0	;ONEAL		( ORLANDO )
 .word	0f980H,37,080c8H,0	;AHARDAWAY
 .word	0f980H,45,080e1H,0	;NANDERSON
 .word	0f980H,40,080b1H,0	;SKILES
; .word	0f980H,38,080d3H,0	;IUZZOLINO

 .word	0f980H,44,08068H,0	;WEATHERSPOON	( PHILADELPHIA )
 .word	0f980H,40,08013H,0	;BRADLEY
; .word	0f980H,36,080e2H,0	;HORNACEK

 .word	0f980H,36,080b7H,0	;BARKLEY	( PHOENIX )
 .word	0f980H,38,080b8H,0	;MAJERLE
 .word	0f980H,50,080b6H,0	;KJOHNSON

 .word	0f980H,33,080bfH,0	;DREXLER	( PORTLAND )
 .word	0f980H,24,080c0H,0	;PORTER
 .word	0f980H,46,080c2H,0	;CROBINSON
 .word	0f980H,34,080b3H,0	;GRANT_HV

 .word	0f980H,34,08065H,0	;SIMMONS
 .word	0f980H,34,0801cH,0	;HURLEY
 .word	0f980H,43,08029H,0	;RICHMOND
 .word	0f980H,43,080ddH,0	;TISDALE	( SACRAMENTO )
 .word	0f980H,46,080dcH,0	;WEBB

 .word	0f980H,46,080c2H,0	;ROBINSON	( SAN ANTONIO )
 .word	0f980H,34,0802cH,0	;RODMAN
 .word	0f980H,29,080daH,0	;DELLIS 

 .word	0f980H,31,080beH,0	;KEMP		( SEATTLE )
 .word	0f980H,40,08028H,0	;PAYTON
 .word	0f980H,28,080eaH,0	;GILL
 .word	0f980H,26,080ceH,0	;SCHREMPF

 .word	0f980H,37,080c5H,0	;MALONE_K	( UTAH )
 .word	0f980H,31,080c6H,0	;STOCKTON
 .word	0f980H,40,08012H,0	;BENOIT
 .word	0f980H,36,080e2H,0	;HORNACEK

 .word	0f980H,36,080b4H,0	;GUGLIOTTA	( WASHINGTON )
 .word	0f980H,47,08018H,0	;ELLISON
 .word	0f980H,40,08015H,0	;CHEANEY

 .word	0f980H,37,080c5H,0	;MALONE_K	( UTAH )
 .word	0f980H,31,080beH,0	;KEMP		( SEATTLE )
 .word	0f980H,46,080c2H,0	;ROBINSON	( SAN ANTONIO )
 .word	0f980H,36,080b7H,0	;Barkley
 .word	0f980H,33,080bfH,0	;DREXLER	( PORTLAND )
 .word	0f980H,37,080c8H,0	;AHARDAWAY
 .word	0f980H,37,080b9H,0	;EWING		( NEW YORK )
 .word	0f980H,45,080e1H,0	;KANDERSON
 .word	0f980H,31,080e0H,0	;COLEMAN	( NEW JERSEY )
 .word	0f980H,45,080e1H,0	;NANDERSON
 .word	0f980H,31,080c6H,0	;STOCKTON
 .word	0f980H,50,080b6H,0	;KJOHNSON
 .word	0f980H,28,080eaH,0	;GILL
 .word	0f980H,43,08029H,0	;RICHMOND
 .word	0f980H,40,08013H,0	;BRADLEY
 .word	0f980H,46,080dcH,0	;WEBB
 .word	0f980H,40,08017H,0	;DUMARS
 .word	0f980H,34,08067H,0	;STARKS
 .word	0f980H,46,080dbH,0	;MUTUMBO	( DENVER )
 .word	0f980H,37,080bbH,0	;WILKINS	( ATLANTA )
 .word	0f980H,28,080d1H,0	;HARPER_R
 .word	0f980H,34,0802aH,0	;RIDER
 .word	0f980H,22,080cdH,0	;MILLER		( INDIANA )
 .word	0f980H,50,080b6H,0	;JOHNSN_L	( CHARLOTTE )
 .word	0f980H,43,080d8H,0	;OLAJUWON	( HOUSTON )
 .word	0f980H,37,08011H,0	;BAKER
 .word	0f980H,40,08010H,0	;ARMSTRNG
 .word	0f980H,40,08021H,0	;MAXWELL
 .word	0f980H,43,08025H,0	;MOURNING
 .word	0f980H,27,080d4H,0	;RICE		( MIAMI )
 .word	0f980H,37,080c8H,0	;HARDAWAY	( GOLDEN STATE )
 .word	0f980H,34,0801dH,0	;JACKSON
 .word	0f980H,29,080b2H,0	;PIPPEN		( CHICAGO )
 .word	0f980H,34,08023H,0	;MINER
 .word	0f980H,42,080c9H,0	;THOMAS		( DETROIT )
 .word	0f980H,40,08069H,0	;WEBBER
 .word	0f980H,44,0801fH,0	;MASHBURN
 .word	0f980H,31,080cfH,0	;WORTHY		( L.A. LAKERS )
 .word	0f980H,30,080c7H,0	;MULLIN
 .word	0f980H,32,080d2H,0	;MANNING	( L.A. CLIPPERS )


; .word	0f980H,50,08197H,0	;SCORPION	( MORTAL KOMBAT )
; .word	0f980H,43,080b0H,0	;RAIDEN
; .word	0f980H,50,081a5H,0	;REPTILE
; .word	0f980H,50,08196H,0	;SUBZERO
; .word	0f990H,8,081feH,1		;silence
; .word	0f990H,8,081feH,1		;silence
; .word	0f990H,8,081feH,1		;silence

 .word	0f990H,8,081feH,1		;silence
 .word	0f990H,8,081feH,1		;silence
 .word	0f990H,8,081feH,1		;silence

name_blank
pass_blank
 .word	0f980H,1,081feH,0		;blank


special_name_speech
;special guests

	.word	0f980H,1,081feH,0		;0  GOSKIE	
	.word	0f980H,1,081feH,0		;1  RIVETT		
	.word	0f980H,1,081feH,0		;2  CARLTON
	.word	0f980H,1,081feH,0		;3  DIVITA
	.word	0f980H,1,081feH,0		;4  LIPTAK
	.word	0f980H,1,081feH,0		;5  TURMELL
	.word	0f980H,1,081feH,0		;6  HEY
	.word	0f980H,1,081feH,0		;7  PETRO
	.word	0f980H,1,081feH,0		;8  NEWCOMER
	.word	0f980H,1,081feH,0		;9  OURSLER
	.word	0f980H,1,081feH,0		;10 LASCO
	.word	0f980H,1,081feH,0		;11 MORRIS
	.word	0f980H,1,081feH,0		;12 MEDNICK
	.word	0f980H,1,081feH,0		;13 FORDEN	
	.word	0f980H,1,081feH,0		;14 KINKEAD
	.word	0f980H,1,081feH,0		;15 JARVIS	

	.word	0f980H,50,08196H,0	;16 SUBZ	

	.word	0f980H,1,081feH,0		;17 HAEGER	
	.word	0f980H,1,081feH,0		;18 SIMPSON
	.word	0f980H,1,081feH,0		;19 GREEN	
	.word	0f980H,1,081feH,0		;20 GENTILE
	.word	0f980H,1,081feH,0		;21 DILLON	
	.word	0f980H,1,081feH,0		;22 LOWES	
	.word	0f980H,1,081feH,0		;23 VOGEL	
	.word	0f980H,1,081feH,0		;24 TSUI	
	.word	0f980H,1,081feH,0		;25 KAM		
	.word	0f980H,1,081feH,0		;26 DEAL		
	.word	0f980H,1,081feH,0		;27 BOOTY		
	.word	0f980H,1,081feH,0		;28 LOFFRE		
	.word	0f980H,1,081feH,0		;29 PENACHO	
	.word	0f980H,1,081feH,0		;30 BARKER		
	.word	0f980H,1,081feH,0		;31 COX
			
	.word	0f980H,43,080b0H,0	;32 RAIDEN
	.word	0f980H,1,081feH,0		;33 REAPER		

	.word	0f980H,1,081feH,0		;34 MACIKA		
	.word	0f980H,1,081feH,0		;35 SHARPE		
	.word	0f980H,1,081feH,0		;36 BERAN		

;	.word	0f980H,1,081feH,0		;37 COMAN		
	.word	0f980H,1,081feH,0		;38 KONGO	

	.word	0f980H,1,081feH,0		;39 PONTAREL	

	.word	0f980H,1,081feH,0		;40 ELVIS		

	.word	0f980H,1,081feH,0		;41 DAVIS		
	.word	0f980H,1,081feH,0		;42 BOON		
	.word	0f980H,1,081feH,0		;43 TOBIAS		
	.word	0f980H,1,081feH,0		;44 HEITSCH	
	.word	0f980H,1,081feH,0		;45 DABEL		
	.word	0f980H,1,081feH,0		;46 MARTINEZ	
	.word	0f980H,1,081feH,0		;47 DAVIES		
	.word	0f980H,1,081feH,0		;48 HOSK		
	.word	0f980H,1,081feH,0		;49 OLIV		

	.word	0f980H,50,08197H,0	;50 SCORP		
	.word	0f980H,50,081a5H,0	;51 REPT   
		
	.word	0f980H,1,081feH,0		;52 GRANNER
;	.word	0f980H,40,080b1H,0	;53 GAY
	.word	0f980H,40,08199H,0	;53 GRIFFEY
	.word	0f980H,40,080B1H,0	;54 SKILES
	.word	0f980H,1,081feH,0		;55 LINHOFF

;Superstar guests

	.word	0f980H,37,080bbH,0	;56 WILKINS
	.word	0f980H,43,080c3H,0	;57 BROWN
	.word	0f980H,43,08025H,0	;58 MOURNING
	.word	0f980H,29,080b2H,0	;59 PIPPEN  

;	.word	0f980H,42,080c9H,0	;60 I. THOMAS
	.word	0f980H,42,08028H,0	;60 PAYTON

	.word	0f980H,40,08069H,0	;61 WEBBER
	.word	0f980H,43,080d8H,0	;62 OLAJUWON
	.word	0f980H,31,080e0H,0	;63 COLEMAN
	.word	0f980H,37,080b9H,0	;64 EWING
	.word	0f980H,36,080b7H,0	;65 BARKLEY
	.word	0f980H,46,080c2H,0	;66 ROBINSON
	.word	0f980H,31,080beH,0	;67 KEMP
	.word	0f980H,37,080c5H,0	;68 MALONE


special_pass_speech
;special guests

	.word	0f980H,1,081feH,0		;0  GOSKIE	
	.word	0f980H,1,081feH,0		;1  RIVETT		
	.word	0f980H,1,081feH,0		;2  CARLTON
	.word	0f980H,1,081feH,0		;3  DIVITA
	.word	0f980H,1,081feH,0		;4  LIPTAK
	.word	0f980H,1,081feH,0		;5  TURMELL
	.word	0f980H,1,081feH,0		;6  HEY
	.word	0f980H,1,081feH,0		;7  PETRO
	.word	0f980H,1,081feH,0		;8  NEWCOMER
	.word	0f980H,1,081feH,0		;9  OURSLER
	.word	0f980H,1,081feH,0		;10 LASCO
	.word	0f980H,1,081feH,0		;11 MORRIS
	.word	0f980H,1,081feH,0		;12 MEDNICK
	.word	0f980H,1,081feH,0		;13 FORDEN	
	.word	0f980H,1,081feH,0		;14 KINKEAD
	.word	0f980H,1,081feH,0		;15 JARVIS	

	.word	0f980H,50,081a1H,0	;16 SUBZ	

	.word	0f980H,1,081feH,0		;17 HAEGER	
	.word	0f980H,1,081feH,0		;18 SIMPSON
	.word	0f980H,1,081feH,0		;19 GREEN	
	.word	0f980H,1,081feH,0		;20 GENTILE
	.word	0f980H,1,081feH,0		;21 DILLON	
	.word	0f980H,1,081feH,0		;22 LOWES	
	.word	0f980H,1,081feH,0		;23 VOGEL	
	.word	0f980H,1,081feH,0		;24 TSUI	
	.word	0f980H,1,081feH,0		;25 KAM		
	.word	0f980H,1,081feH,0		;26 DEAL		
	.word	0f980H,1,081feH,0		;27 BOOTY		
	.word	0f980H,1,081feH,0		;28 LOFFRE		
	.word	0f980H,1,081feH,0		;29 PENACHO	
	.word	0f980H,1,081feH,0		;30 BARKER		
	.word	0f980H,1,081feH,0		;31 COX			

	.word	0f980H,50,080e5H,0	;32 RAIDEN
	.word	0f980H,1,081feH,0		;33 REAPER		

	.word	0f980H,1,081feH,0		;34 MACIKA		
	.word	0f980H,1,081feH,0		;35 SHARPE		
	.word	0f980H,1,081feH,0		;36 BERAN 
		
;	.word	0f980H,1,081feH,0		;37 COMAN		
	.word	0f980H,1,081feH,0		;38 KONGO	

	.word	0f980H,1,081feH,0		;39 PONTAREL	

	.word	0f980H,1,081feH,0		;40 ELVIS		

	.word	0f980H,1,081feH,0		;41 DAVIS		
	.word	0f980H,1,081feH,0		;42 BOON		
	.word	0f980H,1,081feH,0		;43 TOBIAS		
	.word	0f980H,1,081feH,0		;44 HEITSCH	
	.word	0f980H,1,081feH,0		;45 DABEL		
	.word	0f980H,1,081feH,0		;46 MARTINEZ	
	.word	0f980H,1,081feH,0		;47 DAVIES		
	.word	0f980H,1,081feH,0		;48 HOSK		
	.word	0f980H,1,081feH,0		;49 OLIV		

	.word	0f980H,50,081a2H,0	;50 SCORP		
	.word	0f980H,50,081a6H,0	;51 REPT		

	.word	0f980H,1,081feH,0		;52 GRANNER

;	.word	0f980H,1,081feH,0		;53 GAY
	.word	0f980H,40,0819AH,0	;53 TO GRIFFEY

	.word	0f980H,40,080e4H,0	;54 SKILES
	.word	0f980H,1,081feH,0		;55 LINHOFF


;Superstar guests pass speech

	.word	0f980H,37,080f0H,0	;56 TO WILKINS
	.word	0f980H,43,080f8H,0	;57 TO BROWN
	.word	0f980H,45,08121H,0	;58 TO MOURNING
	.word	0f980H,29,080e7H,0	;59 TO PIPPEN  

;	.word	0f980H,42,080feH,0	;60 TO I. THOMAS
         .word	0f980H,40,08126H,0	;60 TO PAYTON	( SEATTLE )

	.word	0f980H,45,08161H,0	;61 TO WEBBER
	.word	0f980H,43,08058H,0	;62 TO OLAJUWON
	.word	0f980H,40,08060H,0	;63 TO COLEMAN
	.word	0f980H,40,080eeH,0	;64 TO EWING
	.word	0f980H,40,080ecH,0	;65 TO BARKLEY
	.word	0f980H,40,080f5H,0	;66 TO ROBINSON
	.word	0f980H,40,080f1H,0	;67 TO KEMP
	.word	0f980H,40,080faH,0	;68 TO MALONE


******************************************************************************

team_speech
 .word	0f981H,50,08035H,0	;00 ATLANTA		"Hawks"
 .word	0f981H,55,08033H,0	;01 BOSTON		"Celtics"
 .word	0f981H,37,08036H,0	;02 CHARLOTTE		"Hornets"
 .word	0f981H,43,08031H,0	;03 CHICAGO		"Bulls"
 .word	0f981H,65,08032H,0	;04 CLEVELAND		"Cavaliers"
 .word	0f981H,45,0803cH,0	;05 DALLAS		"Maverick"
 .word	0f981H,40,0803eH,0	;06 DENVER		"Nuggets"
 .word	0f981H,40,08040H,0	;07 DETROIT		"Pistons"
 .word	0f981H,48,08048H,0	;08 GOLDEN STATE	"Warriors"
 .word	0f981H,43,08041H,0	;09 HOUSTON		"Rockets"
 .word	0f981H,46,0803fH,0	;10 INDIANA		"Pacers"
 .word	0f981H,43,08034H,0	;11 L.A. CLIPPERS	"Clippers"
 .word	0f981H,42,0803aH,0	;12 L.A. LAKERS		"Lakers"
 .word	0f981H,37,08046H,0	;13 MIAMI		"Heat"
 .word	0f981H,26,0804aH,0	;14 MILWAUKEE		"Bucks"
 .word	0f981H,51,08047H,0	;15 MINNESOTTA		"Timberwolves"
 .word	0f981H,40,0803dH,0	;16 NEW JERSEY		"Nets"
 .word	0f981H,43,08039H,0	;17 NEW YORK		"Knicks"
 .word	0f981H,38,0803bH,0	;18 ORLANDO		"Magic"
 .word	0f981H,47,08042H,0	;19 PHILADELPHIA	"Sixers"
 .word	0f981H,42,08044H,0	;20 PHOENIX		"Suns"
 .word	0f981H,48,08049H,0	;21 PORTLAND		"Blazers"
 .word	0f981H,49,08038H,0	;22 SACRAMENTO		"Kings"
 .word	0f981H,46,08043H,0	;23 SAN ANTONIO		"Spurs"
 .word	0f981H,59,08045H,0	;24 SEATTLE		"Supersonics"
 .word	0f981H,42,08037H,0	;25 UTAH		"Jazz"
 .word	0f981H,39,08030H,0	;26 WASHINGTON		"Bullets"
 .word	0f981H,51,081e2H,0	;GOOOOD!!!

; .word	0fcf9H,250,08153H,0	;Backboard smash
; .word	0f990H,25,081feH,1	;silence


STAB_END


#*****************************************************************************
* a0 = * sound table

 SUBRP	speech_play

	calla	snd_play1
	rets

#*****************************************************************************
* a0 = * sound table

 SUBR	speech_playovrp

	calla	snd_play1ovrp
	rets


#*****************************************************************************
;a player has just launched a shot
;a0 = player number (0-3)

 SUBR	shoots_speech

	PUSH	a1,a2

	move	a0,@plyr_shot
	callr	calc_score_diff

	clr	a0
	move	a0,@ugly_stat		;not ugly
	move	a0,@freakout		;no freakout on score

	callr	at_buzzer
	jrnc	#xshtspeech

	move	@shot_type,a0
	sll	5,a0			;x 32 bits
	addi	#shoots_table,a0
	move	*a0,a0,L
	call	a0

#xshtspeech
	PULL	a1,a2
	rets

#shoots_table
	.long	#desperation
	.long	#long_range
	.long	#2_points
	.long	#3_points
	.long	#hook_shot
	.long	#lay_up
	.long	#finger_roll
	.long	#dunk_short
	.long	#dunk_med
	.long	#dunk_long

****************
#desperation

	movi	2,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#desptab,a0
	move	*a0,a0,L
	calla	speech_play
	rets

#desptab
	.long	shts5	;from long range
	.long	shts6	;launches a shot
	.long	shts4	;wild shot

****************
#long_range

	movi	1,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#longtab,a0
	move	*a0,a0,L
	calla	speech_play
	rets

#longtab
	.long	shts5	;from long range
	.long	shts6	;launches a shot

****************
#2_points

	callr	ugly_shot
	jrnc	#ugly_2pts

	callr	wideopen_speech
	jrnc	#x2pts

	movi	100,a0			;call for two 10% time
	calla	RNDPER
	jrhi	#do_for2

	move	@plyr_shot,a0
	callr	call_player_name
	jrnc	#x2pts			;nc = name called

#do_for2
	movi	shts8,a0	;for two
	calla	speech_play
#x2pts
#ugly_2pts
	rets


****************
#3_points

	callr	ugly_shot
	jrnc	#x3pts

	callr	wideopen_speech
	jrnc	#x3pts

	movi	300,a0			;call name 30% time
	calla	RNDPER
	jrls	#no_name3p

	move	@plyr_shot,a0
	callr	call_player_name
	jrnc	#x3pts			;nc = name called

#no_name3p
	movi	4,a0
	calla	rndrng0
	sll	5,a0	;x 32 bits
	addi	#3ptab,a0
	move	*a0,a0,L
	jrz	#x3pts
	calla	speech_play
#x3pts
	rets

#3ptab
	.long	shts0		;from the 3 point line
	.long	shts1		;shoots for 3
	.long	shts1		;shoots for 3
	.long	shts2		;from down town
	.long	shts3		;he shoots from the outside
	.long	shtsrb		;rainbow

****************
#hook_shot

	clr	a0
	move	a0,@skycalled

	callr	ugly_shot
	jrnc	#xhook

	move	@shot_distance,a0	;distance from hoop
	cmpi	130,a0
	jrlt	#too_close

	movi	1,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#hooktab,a0
	move	*a0,a0,L
	calla	speech_play
	jrc	#failed

	movk	1,a0
	move	a0,@skycalled
	rets

#failed
#too_close
	move	@plyr_shot,a0
	callr	call_player_name

#xhook
	rets

#hooktab
	.long	hooksht		;1 takes the hook shot
	.long	hooksht		;1 takes the hook shot
;	.long	shts9		;0 with the sky hook

****************
#lay_up

	rets

	move	@plyr_shot,a0
	callr	call_player_name

#xlay
	rets

****************
#finger_roll

	move	@plyr_shot,a0
	callr	call_player_name

#xfing
	rets

****************
#dunk_short

	move	@plyr_shot,a0
	callr	call_player_name

	rets

****************
#dunk_med

	move	@plyr_shot,a0
	callr	call_player_name

	rets

****************
#dunk_long

	movi	400,a0			;call name 40% time
	calla	RNDPER
	jrls	#noname_dnkl

	move	@plyr_shot,a0
	callr	call_player_name
	jrnc	#xdnkl			;nc = name called

#noname_dnkl
	movi	1,a0
	calla	rndrng0
	sll	5,a0	;x 32 bits
	addi	#dnktab,a0
	move	*a0,a0,L
	jrz	#xdnkl
	calla	speech_play
#xdnkl
	rets

#dnktab
	.long	scrs7		;oh my!
	.long	scrs8		;spectacular dunk

#*****************************************************************************
;a player has just scored a basket

 SUBR	scored_speech

	PUSH	a1,a2

	callr	blowout
	jrnc	#xscrdspeech

	callr	onfire_speech
	jrnc	#xscrdspeech

	callr	lucky_bounce
	jrnc	#xscrdspeech

	move	@shot_type,a0
	sll	5,a0			;x 32 bits
	addi	#scored_table,a0
	move	*a0,a0,L
	call	a0

#xscrdspeech
	PULL	a1,a2
	rets


#scored_table
	.long	#desperation
	.long	#long_range
	.long	#2_points
	.long	#3_points
	.long	#hook_shot
	.long	#lay_up
	.long	#finger_roll
	.long	#dunk_short
	.long	#dunk_med
	.long	#dunk_long

****************
#desperation
hotscored

	callr	itsgood
	jrnc	#xdesp

	movi	5,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#desptab,a0
	move	*a0,a0,L
	calla	speech_play
#xdesp
	rets

#desptab
	.long	scrs7		;0 oh my!
	.long	scrs7		;1 oh my!
	.long	scrs7		;2 oh my!
	.long	scrs7		;3 oh my!
	.long	takethat	;4 take that!
	.long	hello		;5 hello!

****************
#long_range

	callr	itsgood
	jrnc	#xlong

	movi	3,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#longtab,a0
	move	*a0,a0,L
	calla	speech_play
#xlong
	rets

#longtab
	.long	scrs4		;0 what a shot
	.long	scrs0		;1 and it's good
	.long	greatsht	;2 great shot!
	.long	hescores	;4 he scores

****************
#2_points

	movi	500,a0		;call 50% swishes
	callr	swish_speech
	jrnc	#x2pts

	movi	300,a0		;call scores 20% time
	calla	RNDPER
	jrls	#x2pts

	movi	6,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#2tab,a0
	move	*a0,a0,L
	calla	speech_play
#x2pts

	rets

#2tab
	.long	scrs12		;0 count it (scores)
	.long	scrs12		;1 count it (scores)
	.long	hescores	;2 he scores
	.long	hescores	;3 he scores
	.long	hescores	;5 he scores
	.long	twopts		;6 two points
	.long	twopts		;7 two points

;	.long	countit		;6 count it
;	.long	bookit		;7 book it
;	.long	getstwo		;8 gets two


****************
#3_points

	callr	itsgood
	jrnc	#x3p

	movi	350,a0		;call 35% swishes
	callr	swish_speech
	jrnc	#x3p

	movi	6,a0
	calla	rndrng0
	sll	5,a0	;x 32 bits
	addi	#3ptab,a0
	move	*a0,a0,L
	jrz	#x3p
	calla	speech_play
#x3p
	rets

#3ptab
	.long	scrs0		;0 and it's good
	.long	scrs0		;1 and it's good
	.long	scrs2		;2 got it!
	.long	scrs4		;3 what a shot
	.long	greatsht	;4 great shot!
	.long	yes		;5 yes!
	.long	hescores	;6 he scores


****************
#hook_shot

	callr	itsgood
	jrnc	#xhook

	move	@skycalled,a0	;sky hook called?
	jrz	#nosky

	jruc	#2_points	;call like regular 2 pointer
	calla	speech_play
	rets

#nosky
	movi	scrs5,a0	;hooks it in
	calla	speech_play

#xhook
	rets


****************
#lay_up

	movk	3,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#laytab,a0
	move	*a0,a0,L
	calla	speech_play
	rets

#laytab
	.long	scrs9	;0 sweet touch
	.long	scrs25	;1 fancy move
	.long	scrsrz	;2 razzle dazzle
	.long	scrs26	;3 fantastic

****************
#finger_roll

	movi	5,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#fingtab,a0
	move	*a0,a0,L
	calla	speech_play
	rets

#fingtab
	.long	scrs9	;0 sweet touch
	.long	scrs3	;1 finds the hole
	.long	scrs6	;2 finger rolls it in
	.long	scrs25	;3 fancy move
	.long	scrsrz	;4 razzle dazzle
	.long	scrs26	;5 fantastic


****************
#dunk_short
#dunk_med
#dunk_long


	move	@jam_speech,a0		;speech type to call when jammed
	jrz	#no_speech
	sll	5,a0			;x 32 bits
	addi	#jam_jump,a0
	move	*a0,a0,L
	call	a0
#no_speech
	rets


#jam_jump
	.long	0
	.long	#easy_jam
	.long	#med_jam
	.long	#good_jam
	.long	#great_jam

****************
#easy_jam

	movi	5,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#easy_tab,a0
	move	*a0,a0,L
	calla	speech_play
	rets

#easy_tab
	.long	scrs19	;0 kaboom
	.long	scrs22	;1 slams it
	.long	scrs23	;2 stuffs it
	.long	scrs24	;3 the easy jam
	.long	jamsit	;4 jams it in
	.long	scrs26	;5 fantastic


****************
#med_jam

	movi	6,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#med_tab,a0
	move	*a0,a0,L
	calla	speech_play
	rets

#med_tab
	.long	scrs16		;0 boom shakalaka
	.long	scrs19		;1 kaboom
	.long	scrs20		;2 monster jam
	.long	jamsit		;3 jams it in
	.long	scrs22		;4 slams it
	.long	scrs23		;5 stuffs it
	.long	scrs26		;6 fantastic


****************
#good_jam

	movi	2,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#good_tab,a0
	move	*a0,a0,L
	calla	speech_play
	rets

#good_tab
	.long	scrs16	;0 boom shakalaka
	.long	scrs19	;1 kaboom
	.long	jamsit	;2 jams it in


****************
#great_jam

	movk	5,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#great_tab,a0
	move	*a0,a0,L
	calla	speech_play
	rets

#great_tab
	.long	scrs8		;0 spectacular dunk
	.long	scrs16		;1 boom shakalaka
	.long	scrs17		;2 razzle dazzle
;	.long	scrs18		;3 is it the shoes?
	.long	scrs19		;4 kaboom
	.long	scrs20		;5 monster jam
	.long	takethat	;6 take that

#*****************************************************************************

 SUBR	seq_call_name

	move	*a13(plyr_num),a0	;(0-3)
	callr	call_player_name
	rets


#*****************************************************************************
;calls player name speech
;a0 = player number to call (0-3)
;
;RETURNS:
;CC = name called
;CS = name NOT called

 SUBRP	call_player_name

;	move	a0,a1
;	sll	4,a1			;x16
;	addi	special_heads,a1	;-1 = normal player head
;	move	*a1,a1
;	jrnn	#snd_fail


	move	@last_name_time,a1	;# ticks since name called
	cmpi	TSEC*2,a1
	jrhs	#playit

	move	@last_name,a1		;if name called in last 3 secs
	cmp	a0,a1			;then don't call it again
	jreq	#snd_fail

#playit
	PUSH	a0

	move	a0,a1
	sll	5,a1
	addi	spch_name_ram,a1
	move	*a1,a0,L

;	move	a0,a1
;	srl	1,a0			;team 0-1
;	sll	4,a0
;	addi	team1,a0
;	move	*a0,a0			;team (0-26)
;	sll	7,a0			;x 16bits x 4 x 2
;	addi	name_speech,a0
;	andi	1,a1
;	sll	6,a1			;x 16bits x 4
;	add	a1,a0


	calla	speech_play
	PULL	a0
	jrc	#snd_fail
	move	a0,@last_name		;last player name called
	clr	a0
	move	a0,@last_name_time	;# ticks since name called
	clrc
	rets

#snd_fail
	setc
	rets


#*****************************************************************************
;calls "to player" speech when players pass the ball
;
;a1 = player number passing ball (0-3)
;
;RETURNS:
;CC = name called
;CS = name NOT called

 SUBR	pass_to_speech

	move	@last_name_time,a0	;# ticks since name called
	cmpi	TSEC*3,a0
	jrls	#snd_fail

;	move	a1,a0
;	xori	1,a0
;	sll	4,a0			;x16
;	addi	special_heads,a0	;-1 = normal player head
;	move	*a0,a0
;	jrnn	#snd_fail

	move	a1,a0

	PUSH	a1

	move	a0,a1
	sll	5,a1
	addi	spch_pass_ram,a1
	move	*a1,a0,L


;	move	a1,a0
;	srl	1,a0			;team 0-1
;	sll	4,a0
;	addi	team1,a0
;	move	*a0,a0			;team (0-26)
;	sll	7,a0			;x 16bits x 4 x 2
;	addi	pass_speech,a0
;	andi	1,a1
;	sll	6,a1			;x 16bits x 4
;	add	a1,a0


	calla	speech_play
	PULL	a1
	jrc	#snd_fail
	move	a1,a0
	xori	1,a0
	move	a0,@last_name		;last player name called
	clr	a0
	move	a0,@last_name_time	;# ticks since name called
	clrc
	rets

#snd_fail
	setc
	rets

#*****************************************************************************
;
;CC = at buzzer called
;CS = at buzzer NOT called

	.asg	040500h,MAX_TIME	;45 seconds
	.asg	020500h,MAX_TIME2	;25 seconds
	.asg	000200h,MIN_TIME	;2 seconds

 SUBRP	blowout

	move	@freakout,a1		;no freakout on score
	jrz	#no_freakout

	movi	scrs1,a0		;it's good (excited)
	dec	a1
	jrnz	#ok
	move	@game_time,a0,L
	cmpi	MAX_TIME,a0
	jrhi	#snd_fail
	movi	scrs11,a0		;GOOOOD!!!
#ok
	callr	speech_playovrp
	jrc	#snd_fail
	rets


#no_freakout
	move	@gmqrtr,a0
	cmpi	3,a0
	jrlt	#not_last_qtr

	move	@game_time,a0,L
	cmpi	MAX_TIME,a0
	jrhi	#snd_fail
	cmpi	MIN_TIME,a0
	jrlo	#snd_fail

	move	@blowout_called,a0
	jrnz	#snd_fail

	move	@ballpnumscored,a0	;Last plyr who scored (0-3) or neg
	callr	calc_score_diff

	move	@score_diff,a1
	cmpi	6,a1
	jrge	#isblow

	cmpi	3,a1
	jrlt	#snd_fail

	move	@needshot_called,a0
	jrnz	#snd_fail

	move	@game_time,a0,L
	cmpi	MAX_TIME2,a0
	jrhi	#snd_fail


	movi	1,a0
	calla	rndrng0
	move	a0,a0
	jrz	#do_needshot

;say " TEAM... running out of time"

	move	@ballpnumscored,a0	;Last plyr who scored (0-3) or neg
	jrn	#error

	movi	silence55,a2
	movi	sound_ram2,a4
	move	*a2+,*a4+,L
	move	*a2+,*a4+,L

	move	@team1,a2
	srl	1,a0			;0-1
	jrnz	#tm1_scored
;tm2_scored
	move	@team2,a2
#tm1_scored
	sll	6,a2			;x 16bits x 4
	addi	team_speech,a2
	move	*a2+,*a4+,L
	move	*a2+,*a4+,L
	movk	1,a0
	move	a0,@sound_ram2+40h+30h

	movi	runout,a2
	move	*a2+,*a4+,L
	move	*a2+,*a4+,L
	move	*a2+,*a4+,L
	move	*a2+,*a4+,L

	movi	sound_ram2,a0
	jruc	#playit
	rets

#error
#do_needshot
	movi	needshot,a0		;They need a shot here
#playit
	calla	speech_play
	jrc	#snd_fail
	movk	1,a0
	move	a0,@needshot_called
	rets


#isblow
	movi	blowout_snd,a0		;it's a blowout
	cmpi	9,a1
	jrge	#blowout

	movi	blowout2_snd,a0		;Whoomp
	move	@HCOUNT,a14
	btst	0,a14
	jrz	#whoomp
	movi	scrs14,a0		;the nail in the coffin!
#whoomp
#blowout
	calla	speech_play
	jrc	#snd_fail

	movk	1,a0
	move	a0,@blowout_called

	clrc
	rets


#not_last_qtr
	clr	a0
	move	a0,@blowout_called
	move	a0,@needshot_called

#snd_fail
	setc
	rets

#*****************************************************************************
;
;CC = at buzzer called
;CS = at buzzer NOT called

 SUBRP	at_buzzer

	move	@shot_type,a0		;don't call on dunks
	cmpi	DUNK_SHORT,a0
	jrhs	#check_buzzer

	move	@game_time,a0,L
	cmpi	400h,a0			;less than 4 seconds left
	jrgt	#snd_fail

	move	@gmqrtr,a0
	cmpi	3,a0			;last quarter?
	jrlt	#not_last_qtr

	move	@score_diff,a0
	jrp	#in_front		;already in front
	move	@ballptsforshot,a1	;Point value for current shot (1-3)
	add	a1,a0
	jrz	#ties_it
	jrn	#behind
#wins_it
	movi	scrs10,a0		;IT IS....
	calla	speech_play
	jrc	#snd_fail
	movk	1,a0
	move	a0,@freakout		;freak out if it scores
	rets

#ties_it
	movi	shts6,a0		;launches a shot
	calla	speech_play
	jrc	#snd_fail

	movk	2,a0
	move	a0,@freakout		;freak out if it scores
	rets


#behind
#in_front
#not_last_qtr
#check_buzzer
	move	@game_time,a0,L
	cmpi	200h,a0
	jrgt	#snd_fail

	movi	shts7,a0		;at the buzzer
	callr	speech_playovrp
	jrc	#snd_fail
	rets

#snd_fail
	setc
	rets

#*****************************************************************************
;
;CC = lucky bounce called
;CS = lucky bounce NOT called

 SUBRP	lucky_bounce

	move	@shot_type,a0
	cmpi	DUNK_SHORT,a0		;no lucky bounce on dunks!
	jrge	#snd_fail

	move	@ugly_stat,a0
	jrz	#snd_fail		;ugly not called

	movi	scrs13,a0		;gets a lucky bounce
	calla	speech_play
	jrc	#snd_fail
	clrc
	rets

#snd_fail
	setc
	rets

#*****************************************************************************
;
;CC = ugly called
;CS = ugly NOT called

 SUBRP	ugly_shot

	move	@shot_percentage,a0	;0=ugly, 1=ok
	jrn	#doit
	jrnz	#snd_fail

	movi	100,a0			;call ugly 20% time
	calla	RNDPER
	jrls	#snd_fail

#doit
	movi	2,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#uglytab,a0
	move	*a0,a0,L
	calla	speech_play
	jrc	#snd_fail

	movk	1,a0
	move	a0,@ugly_stat		;ugly called

	clrc
	rets

#snd_fail
	setc
	rets

#uglytab
	.long	ugly0	;ugly shot!
	.long	ugly1	;puts up a brick
	.long	ugly2	;terrible shot!


#*****************************************************************************
;calls team names speech
;a0 = team number to call (0-26)

 SUBR	call_team_name

	sll	6,a0			;x 16bits x 4
	addi	team_speech,a0
	calla	speech_play
	rets


#*****************************************************************************

 SUBR	call_matchup

	SLEEP	20

	movi	matchup,a0
	calla	snd_play1

	SLEEP	1*TSEC+20

	move	@team1,a2
	sll	6,a2			;x 16bits x 4
	addi	team_speech,a2
	movi	sound_ram,a4
	move	*a2+,*a4+,L
	move	*a2+,*a4+,L
	movk	1,a0
	move	a0,@sound_ram+30h

	movi	versus,a2
	move	*a2+,*a4+,L
	move	*a2+,*a4+,L
	movk	1,a0
	move	a0,@sound_ram+40h+30h

	move	@team2,a2
	sll	6,a2			;x 16bits x 4
	addi	team_speech,a2
	move	*a2+,*a4+,L
	move	*a2+,*a4+,L

	movi	sound_ram,a0
	calla	snd_play1

	DIE


#*****************************************************************************
* a0 = player who last scored or shot

calc_score_diff

	PUSH	a0,a1,a2

	move	@scores,a1
	move	@scores+10h,a2
	sub	a2,a1
	srl	1,a0
	jrz	#team1
	neg	a1			;team2, so negate
#team1
	move	a1,@score_diff
	PULL	a0,a1,a2
	rets

#*****************************************************************************
;called when player with ball gets pushed and loses ball

 SUBR	pushed_speech

	movi	4,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#pushtab,a0
	move	*a0,a0,L
	jrz	#snd_fail
	calla	speech_play

#snd_fail
	setc
	rets

#pushtab
	.long	munged		;0 munged
	.long	ambushed	;1 ambushed
	.long	excuse		;2 excuse me
	.long	tofloor		;3 knocked to the floor
	.long	takethat	;4 take that

#*****************************************************************************
;called when a player rejects a shot

 SUBR	rejected_speech

;Check to make sure ball is high enough in air
	move	@ballobj_p,a1,L
	move	*a1(OYPOS),a0
	cmpi	-28,a0
	jrgt	#yes		;Br=near ground

	movk	11,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#regtab,a0
	move	*a0,a0,L
	calla	speech_playovrp
#yes
	rets

#regtab
	.long	reject		;0 rejected!
	.long	reject		;1 rejected!
	.long	rejects		;2 rejects the shot
	.long	rejects		;2 rejects the shot
	.long	greatd		;3 great defense
	.long	greatd		;4 great defense
	.long	noway		;5 no way!
	.long	getout		;6 get that outta here!
	.long	getout		;6 get that outta here!
	.long	getout		;8 get that outta here!
	.long	getout		;8 get that outta here!
	.long	getout2		;8 get that outta here!

#*****************************************************************************
;called when a player rejects a dunk

 SUBR	rejected_dnk_speech

;Check to make sure ball is high enough in air
	move	@ballobj_p,a1,L
	move	*a1(OYPOS),a0
	cmpi	-28,a0
	jrgt	#yes		;Br=near ground

	movk	7,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#regdnktab,a0
	move	*a0,a0,L
	calla	speech_playovrp
#yes
	rets

#regdnktab
	.long	reject		;0 rejected!
	.long	reject		;1 rejected!
	.long	reject		;1 rejected!
	.long	noway		;2 no way!
	.long	noway		;2 no way!
	.long	getout		;3 get that outta here!
	.long	getout		;3 get that outta here!
	.long	getout2		;3 get that outta here!
;	.long	getoutb		;4 get that beep outta here!

#*****************************************************************************

 SUBR	rebound_speech

	PUSH	a1,a2

	move	@game_time,a0,L	;don't call if clock run down
	jrz	#snd_fail

	movi	1,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#rebtab,a0
	move	*a0,a0,L

	move	@ballpnum,a1
	jrn	#snd_fail

	sll	4,a1			;x16
	addi	special_heads,a1	;-1 = normal player head
	move	*a1,a1
;	jrnn	#no_name

	move	@last_name,a2
	cmp	a1,a2
	jrne	#call_name

#no_name
	calla	speech_play
	jrc	#snd_fail
	PULL	a1,a2
	rets

#call_name
	movi	sound_ram+40h,a2
	move	*a0+,*a2+,L
	move	*a0+,*a2+,L

	move	@ballpnum,a0

;Fix for new players
;	move	a0,a1
;	srl	1,a1			;team 0-1
;	sll	4,a1			;x 16
;	addi	player_toggle1,a1
;	move	*a1,a1			;toggle names?
;	jrz	#no_toggle
;	xori	1,a0			;toggle
;#no_toggle


	move	a0,a1
	sll	5,a1
	addi	spch_name_ram,a1
	move	*a1,a0,L


;	move	a0,a1
;	srl	1,a0			;team 0-1
;	sll	4,a0
;	addi	team1,a0
;	move	*a0,a0			;team (0-26)
;	sll	7,a0			;x 16bits x 4 x 2
;	addi	name_speech,a0
;	andi	1,a1
;	sll	6,a1			;x 16bits x 4
;	add	a1,a0
 

	movi	sound_ram,a2
	move	*a0+,*a2+,L
	move	*a0+,*a2+,L
	movk	1,a0
	move	a0,@sound_ram+30h
	movi	sound_ram,a0
	calla	speech_play
	jrc	#snd_fail

	move	@ballpnum,a0
	move	a0,@last_name		;last player name called
	clr	a0
	move	a0,@last_name_time	;# ticks since name called

	PULL	a1,a2
	rets


#snd_fail
	setc
	PULL	a1,a2
	rets

#rebtab
	.long	grabreb		;0 grabs the rebound
	.long	grabreb		;0 grabs the rebound
;	.long	withbrd		;1 comes away with the board


#*****************************************************************************

 SUBR	intercepted_speech

	movi	1,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#intcptab,a0
	move	*a0,a0,L
	calla	speech_playovrp
	rets

#intcptab
	.long	intrcpt		;intercepted!
	.long	turnovr		;the turnover!

#*****************************************************************************

 SUBR	stolen_speech

	movi	1,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#stealstab,a0
	move	*a0,a0,L
	calla	speech_playovrp
	rets

#stealstab
	.long	turnovr		;the turnover!
	.long	stolen		;stolen!


#*****************************************************************************
;calls "it's good" whenever a player scores from 3pt out with no time left
;CC = it's good called
;CS = it's good NOT called

 SUBRP	itsgood

	move	@game_time,a0,L
	jrnz	#snd_fail

	movi	scrs1,a0	;it's good (excited)
	calla	speech_play
	jrc	#snd_fail
	rets

#snd_fail
	setc
	rets


#*****************************************************************************

 SUBR	seq_lay_up_start

	movi	scrs15,a0	;lays it up
	calla	speech_play
	rets

#*****************************************************************************
* B4=*Next data in seq list

 SUBR	seq_jam_speech

	move	*b4+,b0
	move	b0,a0		;jam speech type
	move	a0,@jam_speech	;speech type to call when jammed
 	rets

#*****************************************************************************
* a0 = % of swishes to call

 SUBRP	swish_speech

	move	@ballrimhitcnt,a1
	jrnz	#noswish

	move	@ballbbhitcnt,a1
	jrnz	#snd_fail

	calla	RNDPER
	jrls	#snd_fail

#doit
	movi	2,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#swishtab,a0
	move	*a0,a0,L
	calla	speech_play
	rets
#snd_fail
	setc
	rets

#noswish
	cmpi	9,a1
	jrlt	#snd_fail

	movi	scrs13,a0	;gets a lucky bounce
	calla	speech_play

	rets


#swishtab
	.long	swish_snd	;0 SWISH!
	.long	allnet_snd	;1 nothing but net
	.long	swish_snd	;2 SWISH!


#*****************************************************************************
* A11=Team who gets ball (0=1, !0=2)

 SUBR	call_scores

	PUSH	a0,a1,a7,a14
	PUSH	b0,b1

	move	@game_time,a0,L
	jrz	#no_call0

	cmpi	010000h,a0		;10 seconds
	jrlt	#no_call0

;	move	@gmqrtr,a1		;don't call if in last quarter and
;	cmpi	3,a1			;less than 30 seconds on clock
;	jrlt	#not_last_qtr
;	cmpi	030000h,a0		;30 seconds
;	jrlt	#no_call0

#not_last_qtr

	move	@next_call,a0
	jrz	#do_call
	dec	a0
	move	a0,@next_call
	jruc	#no_call0

#do_call
	CREATE0	call_scores_proc

#no_call0
	PULL	b0,b1
	PULL	a0,a1,a7,a14
	rets


 SUBRP	call_scores_proc

	SLEEP	TSEC+30

	move	@game_time,a0,L
	jrz	#no_call

	move	@scores,a1
	move	@scores+10h,a0
	sub	a0,a1

	move	a11,a11
	jrnz	#tm1_scored
#tm2_scored
	move	@team2,a2
	neg	a1
	jruc	#cnt

#tm1_scored
	move	@team1,a2
#cnt
	sll	6,a2			;x 16bits x 4
	addi	team_speech,a2
	movi	sound_ram,a4
	move	*a2+,*a4+,L
	move	*a2+,*a4+,L
	movk	1,a0
	move	a0,@sound_ram+30h

	movi	upby,a2
	move	a1,a1
	jrz	#tied
	jrp	#pos

	movi	downby,a2
	neg	a1
#pos
	cmpi	20,a1
	jreq	#ok
	cmpi	15,a1
	jreq	#ok
	cmpi	10,a1
	jrgt	#outrange


#ok
	movi	sound_ram+40h,a4
	move	*a2+,*a4+,L
	move	*a2+,*a4+,L
	movk	1,a0
	move	a0,@sound_ram+40h+30h

	sll	5,a1			;x 32 bits
	addi	#numtab-20h,a1
	move	*a1,a2,L
	movi	sound_ram+80h,a4
	move	*a2+,*a4+,L
	move	*a2+,*a4+,L

	movi	sound_ram,a0
	calla	speech_play
	jrc	#snd_fail		;so try again

	movi	2,a0
	move	a0,@next_call

#snd_fail
#outrange
#no_call
	DIE


#tied
	movi	scrtied,a0		;the score is tied
	calla	speech_play
	jrc	#snd_fail		;so try again

	movi	2,a0
	move	a0,@next_call

	move	@gmqrtr,a0
	jrz	#noorg
	movi	150,a0
	calla	RNDPER
	jrls	#noorg

	move	@game_time,a1,L
	cmpi	020000h,a1
	jrlt	#noorg

	SLEEP	3*60

	movi	organ1_snd,a1
	btst	0,a0
	jrz	#org1
	movi	organ2_snd,a1
#org1	move	a1,a0
	calla	snd_play1ovr

#noorg

	DIE

#numtab
	.long	snd_1
	.long	snd_2
	.long	snd_3
	.long	snd_4
	.long	snd_5
	.long	snd_6
	.long	snd_7
	.long	snd_8
	.long	snd_9
	.long	snd_10
	.long	0,0,0,0
	.long	snd_15
	.long	0,0,0,0
	.long	snd_20


;RJR
	movi	needshot,a0		;They need a shot here


#*****************************************************************************
* process

 SUBR	name_call

#restart
	movi	TSEC*2,a10
#loop
	SLEEPK	1

	move	@game_time,a0,L
	jrz	#restart

	move	@inbound,a0
	jrnn	#restart

	move	@ballpnum,a0
	jrn	#restart		;ball free

;	move	a0,a1
;	sll	4,a1			;x16
;	addi	special_heads,a1	;-1 = normal player head
;	move	*a1,a1
;	jrnn	#restart

	move	a0,a1
	sll	5,a1			;*32
	addi	plyrproc_t,a1
	move	*a1,a1,L
	move	*a1(plyr_seqflgs),a1
	btst	DUNK_B,a1
	jrnz	#restart

	dsj	a10,#loop

	move	@last_name,a1		;if name called in last 3 secs
	cmp	a0,a1
	jrne	#diff_name

	move	@last_name_time,a1	;# ticks since name called
	cmpi	TSEC*2,a1
	jrlt	#restart

#diff_name
	callr	call_player_name

	movi	TSEC*4,a10
	jruc	#loop


#*****************************************************************************
;CC = onfire called
;CS = onfire NOT called

 SUBRP	onfire_speech

	move	@game_time,a0,L
	jrz	#snd_fail


	move	@ballpnumscored,a0	;Last plyr who scored (0-3) or neg
;	move	@fire_flags,a14
;	btst	a0,a14
;	jrz	#normf
;
;	move	@ballnumscored,a0	;# times last plyr scored
;	cmpi	4,a0
;	jrge	#onfire
;	cmpi	3,a0
;	jrne	#snd_fail		;is cold
;
;	movi	heatup_snd,a0
;	jruc	#heatup
;
;#normf

	move	@ballnumscored,a0	;# times last plyr scored
	cmpi	3,a0
	jrge	#onfire
	cmpi	2,a0
	jrne	#snd_fail		;is cold

	movi	heatup_snd,a0
	jruc	#heatup

#onfire
	move	@plyrnumonfire,a0	;plyr who is on fire
	move	@ballpnumscored,a1	;Last plyr who scored (0-3) or neg
	cmp	a0,a1
	jrne	#was_teammate

	move	@shot_type,a0
	jrnz	#not_desp

	movi	400,a0			;call desp speech 40% time
	calla	RNDPER
	jrhi	hotscored

#not_desp
	movi	3,a0
	calla	rndrng0
	sll	5,a0		;x 32 bits
	addi	#onfiretab,a0
	move	*a0,a0,L
#heatup
	callr	speech_playovrp
	rets

#was_teammate
#snd_fail
	setc
	rets

#onfiretab
	.long	onfire_snd		;0 he's on fire
	.long	hothand			;1 he's got a hot hand
	.long	takethat		;2 take that!
	.long	uncon			;3 he's unconscious

#*****************************************************************************
* call wide open if applicable

	.asg	140,RANGE

 SUBRP	 wideopen_speech

	move	@plyr_shot,a0		;player who shot last (0-3)
	sll	5,a0			;*32
	addi	plyrproc_t,a0
	move	*a0,a0,L
	move	*a0(plyr_o1dist),a1	;opponent 1 dist
	cmpi	RANGE,a1
	jrlt	#not_open
	move	*a0(plyr_o2dist),a1	;opponent 2 dist
	cmpi	RANGE,a1
	jrlt	#not_open

	movi	wideopen,a0
	calla	speech_play

	rets

#not_open
	setc
	rets


#*****************************************************************************

	.asg	3,BRICK_MAX

 SUBR	nogood_speech

	PUSH	a10

	move	@ballpnumshot,a10
	sll	4,a10			;x 16
	addi	brick_count,a10
	move	*a10,a1			;brick_count
	cmpi	BRICK_MAX,a1
	jrlt	#no_good
	movi	cantbuy,a0		;can't buy a bucket
	callr	speech_play
	jrc	#failed
	clr	a0
	move	a0,*a10			;played, now clear it

#no_good
	move	@game_time,a0,L		;always call if clock at zero
	jrz	#doit_baby

	movi	400,a0			;don't call 40% of no goods
	calla	RNDPER
	jrls	#failed

#doit_baby
	movi	nogood,a0		;NO GOOD!
	callr	speech_play

#failed
	PULL	a10
	rets

#*****************************************************************************

 SUBR	victory_speech

	move	@team1,a0
	move	@scores,a1
	move	@scores+10h,a2
	cmp	a1,a2
	jrlt	#t1_wins
	move	@team2,a0
#t1_wins
	sll	6,a0			;x 16bits x 4
	addi	team_speech,a0

	movi	sound_ram2,a4
	move	*a0+,*a4+,L
	move	*a0+,*a4+,L
	movk	1,a0
	move	a0,@sound_ram2+30h

	movi	wingame,a0
	move	*a0+,*a4+,L
	move	*a0+,*a4+,L

	movi	sound_ram2,a0
	callr	speech_play

	rets

#******************************************************************************

;After teams have been selected, call this routine
;Stuff name_ram for calling player name based on who's been picked

	.ref	player_names,tm1set,tm2set,name_sort

 SUBR	setup_speech

	movi	player_names,a10
	move	@team1,a2

;	cmpi	27,a2
;	jrnz	#lp3
;	movi	name_speech,a10
;	movi	pass_speech,a0
;	jruc	#tag2

#lp3	cmpi	0,a2
	jrz	#out3
	addi	20*64,a10
	dec	a2
	jruc	#lp3
#out3
	move	@team1,a0
	sll	4,a0
	addi	tm1set,a0
	move	*a0,a14
	sll	6,a14
	add	a14,a10

	move	*a10,a0,L
	movi	name_sort,a14
	movi	-1,a10
#lp4
	inc	a10
	move	*a14+,a1,L
	cmp	a1,a0
	jrnz	#lp4

	sll	6,a10
	move	a10,a0
	addi	name_speech,a10
	addi	pass_speech,a0

	move	@special_heads,a14
	jrn	#tag1
	sll	6,a14
	addi	special_name_speech,a14
	move	a14,a10
#tag1
	move	@special_heads,a14
	jrn	#tag2
	sll	6,a14
	addi	special_pass_speech,a14
	move	a14,a0
#tag2

	move	a10,@spch_name_ram,L
	move	a0,@spch_pass_ram+32,L

#*

;Player 2 on team 1

	movi	player_names,a10
	move	@team1,a2



;	cmpi	27,a2
;	jrnz	#lp3
;	movi	_brwn,a10
;	movi	to_brwn,a0
;	jruc	#tag2a



#lp3	cmpi	0,a2
	jrz	#out3
	addi	20*64,a10
	dec	a2
	jruc	#lp3
#out3
	move	@team1,a0
	sll	4,a0
	addi	tm1set,a0
	move	*a0,a14
	sll	6,a14
	add	a14,a10

	addk	32,a10

	move	*a10,a0,L
	movi	name_sort,a14
	movi	-1,a10
#lp4
	inc	a10
	move	*a14+,a1,L
	cmp	a1,a0
	jrnz	#lp4

	sll	6,a10
	move	a10,a0
	addi	name_speech,a10
	addi	pass_speech,a0

	move	@special_heads+10h,a14
	jrn	#tag1a
	sll	6,a14
	addi	special_name_speech,a14
	move	a14,a10
#tag1a
	move	@special_heads+10h,a14
	jrn	#tag2a
	sll	6,a14
	addi	special_pass_speech,a14
	move	a14,a0
#tag2a


	move	a10,@spch_name_ram+32,L
	move	a0,@spch_pass_ram,L


#*
;Do team 2

	movi	player_names,a10
	move	@team2,a2
#lp3	cmpi	0,a2
	jrz	#out3
	addi	20*64,a10
	dec	a2
	jruc	#lp3
#out3
	move	@team2,a0
	sll	4,a0
	addi	tm2set,a0
	move	*a0,a14
	sll	6,a14
	add	a14,a10

	move	*a10,a0,L
	movi	name_sort,a14
	movi	-1,a10
#lp4
	inc	a10
	move	*a14+,a1,L
	cmp	a1,a0
	jrnz	#lp4

	sll	6,a10
	move	a10,a0
	addi	name_speech,a10
	addi	pass_speech,a0

	move	@special_heads+20h,a14
	jrn	#tag1b
	sll	6,a14
	addi	special_name_speech,a14
	move	a14,a10
#tag1b
	move	@special_heads+20h,a14
	jrn	#tag2b
	sll	6,a14
	addi	special_pass_speech,a14
	move	a14,a0
#tag2b

	move	a10,@spch_name_ram+64,L
	move	a0,@spch_pass_ram+96,L

#*

;Player 2 on team 2

	movi	player_names,a10
	move	@team2,a2
#lp3	cmpi	0,a2
	jrz	#out3
	addi	20*64,a10
	dec	a2
	jruc	#lp3
#out3
	move	@team2,a0
	sll	4,a0
	addi	tm2set,a0
	move	*a0,a14
	sll	6,a14
	add	a14,a10

	addk	32,a10

	move	*a10,a0,L
	movi	name_sort,a14
	movi	-1,a10
#lp4
	inc	a10
	move	*a14+,a1,L
	cmp	a1,a0
	jrnz	#lp4

	sll	6,a10
	move	a10,a0
	addi	name_speech,a10
	addi	pass_speech,a0

	move	@special_heads+30h,a14
	jrn	#tag1c
	sll	6,a14
	addi	special_name_speech,a14
	move	a14,a10
#tag1c
	move	@special_heads+30h,a14
	jrn	#tag2c
	sll	6,a14
	addi	special_pass_speech,a14
	move	a14,a0
#tag2c

	move	a10,@spch_name_ram+96,L
	move	a0,@spch_pass_ram+64,L

	rets

	.end

