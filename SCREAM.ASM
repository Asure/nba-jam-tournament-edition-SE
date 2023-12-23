scream_snd
	movi	scrm1_snd,a0
	calla	snd_play1
	SLEEP	85
	movi	scrm2_snd,a0
	calla	snd_play1
	SLEEP	85
	movi	scrm3_snd,a0
	calla	snd_play1
	SLEEP	85
	movi	scrm4_snd,a0
	calla	snd_play1
	SLEEP	85
	jruc	scream_snd

;scrm1_snd	.word	0f898H,10,08144H,0	;Quick cheer
;scrm2_snd	.word	0fd84H,80,0810fH,0	;Long cheer
;scrm3_snd	.word	0f894H,80,08144H,0	;Long cheer
;scrm4_snd	.word	0fc84H,120,0814eH,0	;Long cheer
;boo1_snd	.word	0f884H,120,0814aH,0	;Boo

;RJR	scrm1_snd	.word	0f380H,10,0810cH,0
scrm1_snd	.word	0f380H,10,0813dH,0

scrm2_snd	.word	0f080H,10,0814bH,0
scrm3_snd	.word	0f480H,10,0815eH,0
scrm4_snd	.word	0f180H,10,0815fH,0

