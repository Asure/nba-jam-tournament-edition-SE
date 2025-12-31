// Two slashes start a comment
//
// From sound.asm documentation.
//*SOUND PROCESSOR MAKES SOUNDS FOR N-CHANNELS (CURRENTLY 6):
//*
//*		CHANNEL #0	OKI CHANNEL 3
//*		CHANNEL #1	OKI CHANNEL 4
//*		CHANNEL #2	YAMAHA SOUNDS
//*		CHANNEL #3	MUSIC	      
//*		CHANNEL #4	OKI CHANNEL 1 (PLAYER 1)
//*		CHANNEL #5	OKI CHANNEL 2 (PLAYER 2)
//*
//*SOUND TABLE FORMAT
//*
//*SOUND DESCRIPTION:
//*	.WORD PRIORITY, TIME, SOUND CODE, 
//      (PRIORITY), (TIME), (SOUND CODE), 0
//*
//*SOUND ENDS IN 0000.
//*PRIORITY WORD = 1111INNNPPPPPPPP; I=1=NON-INTERRUPTABLE
//*NNN=CHANNEL #(0-7);
//*PP=PRIORITY (00-FF), FF=HIGHEST.
//*TIME WORD =TTTT (0000-7FFF X 16MS).
//*SOUND WORD =8SSS SSS=SOUND CODE(000-FFF).
// 0f540H = 0000 1111 chan 4 prio 40?
// f    5 4 0 
// 1111
// 0f3f7H,08H,0080H,0  = 0f3f7H,time 08Hx16ms,code 0080H,end 0



Signature "NBAJAM DCS AMM";

Default encoding parameters (
//Type=0, Subtype=0, BitRate=70000,
Type=*, Subtype=*, BitRate=71000,
//PowerCut=97, MinRange=5, MaxError=5);
PowerCut=97.5, MinRange=5, MaxError=10);

//Stream MainTheme "theme-music.mp3" (BitRate=96000);
//Stream AltTheme replaces $2010CA "alt-music.ogg";   // replaces imported stream, for --patch use


// Tracks by name
// Select.axx
// done win_snd		.word	0f3ffH,08H,080a5H,0	;Winner snd/Suckup credits
// tune1end_snd	.word	0f3feH,1,08004H,0		;End team select tune
// done tune1_snd	.word	0f3feH,10,08001H,0	;team select screen
// done cursor_snd1	.word	0f3f7H,08H,08080H,0	;cursor movement
// done cursor_snd2	.word	0f3f7H,08H,08081H,0	;
// done cursor_snd3	.word	0f3f7H,08H,08082H,0	;
// done cursor_snd4	.word	0f3f7H,08H,08083H,0	;
// done select_snd1	.word	0f3f7H,08H,08084H,0	;select option sound
// done select_snd2	.word	0f3f7H,08H,08085H,0	;
// done select_snd3	.word	0f3f7H,08H,08086H,0	;
// done select_snd4	.word	0f3f7H,08H,08087H,0	;
// done fullgame_snd1	.word	0f3f7H,08H,08088H,0	;fullgame purchase
// done fullgame_snd2	.word	0f3f7H,08H,08089H,0	;
// done fullgame_snd3	.word	0f3f7H,08H,0808aH,0	;
// done fullgame_snd4	.word	0f3f7H,08H,0808bH,0	;
// done scroll_snd	.word	0f3ffH,08H,08097H,0	;Scroll snd
// done welcm_snd	.word	0f990H,40,081cbH,0	;Welcome
// done baddec_snd	.word	0f990H,72,081b7H,0	;bad decision		<--change!
// done cheer_snd	.word	0f898H,10,08144H,0	;Quick cheer
// done cheer1_snd	.word	0fd84H,80,08111H,0	;Long cheer
// done cheer2_snd	.word	0f894H,80,08144H,0	;Long cheer
// done cheer3_snd	.word	0fc84H,120,0814eH,0	;Long cheer
// done boo1_snd	.word	0f884H,120,0814aH,0	;Boo
// done bounce_snd	.word	0fc80H,10,08129H,0	;Ball bounce

// plyr.axx
// done baddec_snd	.word	0f990H,72,081b7H,0	;bad decision		<--change!

// done win_snd		.word	0f3ffH,08H,00a5H,0	;Winner snd
// done swat_snd	.word	0fd94H,15,0157H,0	;Swat ball (Steals & blocks)
// done steal_snd	.word	0fbf7H,08H,0093H,0	;Steal
// done sqk1_snd	.word	0f584H,04H,0114H,0	;Sneaker squeek
// done sqk2_snd	.word	0f584H,04H,0115H,0
// done sqk3_snd	.word	0f584H,04H,0116H,0
// done sqk4_snd	.word	0f584H,04H,0117H,0
// done airball_snd	.word	0f894H,038H,0814dH,0	;crowd screams "air ball"
// done pass_snd	.word	0f3a7H,08H,008cH,0	;short pass
// done whstle_snd	.word	0f9f5H,030H,0148H,0	;Ref whistle at game start
// tuneend_snd	.word	0f3ffH,08H,08003H,0	;End game time tune
// tuneend1_snd	.word	0f3ffH,08H,0800aH,0	;End quarter 1 tune
// tunehalf_snd	.word	0f3ffH,08H,08004H,0	;Half time tune

// done anncr1_snd	.word	0f9f6H,120,0818eH,0	;He shoots from downtown
// done anncr2_snd	.word	0f9f6H,110,08190H,0	;He shoots from the outside
// done anncr4_snd	.word	0f9f6H,80,08183H,0	;At the buzzer
// done anncr5_snd	.word	0f9f6H,70,0818bH,0	;From long range
// done fball_snd	.word	0fcb0H,40,0179H,0	;Fire ball launch
// done overtime_snd	.word	0f9ffH,69,08180H,0	;overtime!
// done rainbow_snd	.word	0f1a0H,99,081f0H,0	;Rainbow

// attract.axx
// bounce_snd	.word	0fc80H,10,08129H,0	;Ball bounce
// tuneend_snd	.word	0f3ffH,8,08009H,0	;End game time tune
// tuneend1_snd	.word	0f3ffH,08H,0800aH,0	;End quarter 1 tune
// 
// tuneq2_snd	.word	0f3ffH,08H,08006H,0	;Quarter 2 tune
// tuneq3_snd	.word	0f3ffH,08H,08007H,0	;Quarter 3 tune
// tuneq4_snd	.word	0f3ffH,08H,08008H,0	;Quarter 4 tune
// tuneot_snd	.word	0f3ffH,08H,0800bH,0	;Quarter o.t. tune
// ting_snd	.word	0f3ffH,08H,080a6H,0	;Scroll snd

//score.axx
//showtm		.word	0fca1H,73,012cH,0	;showtime
//tuneq2_snd	.word	0f3ffH,08H,0006H,0	;Quarter 2 tune
//tuneq3_snd	.word	0f3ffH,08H,0007H,0	;Quarter 3 tune
//tuneq4_snd	.word	0f3ffH,08H,0008H,0	;Quarter 4 tune
//tuneot_snd	.word	0f3ffH,08H,000bH,0	;Quarter o.t. tune
//intoot_snd	.word	0f990H,40,08180H,0	;Into o.t.
//tick_snd	.word	0f3f7H,018H,08090H,0	;Tick snd
//tock_snd	.word	0f3f7H,018H,08091H,0	;Tock snd
//
//minute_snd
//	.word	0f97fH,1,081feH,1		;silence
//	.word	0f9f0H,80,08193H,0	;One minute speech call

//alert_snd	.word	0f3f7H,08H,08092H,0	;Alert snd
//warn_snd	.word	0fbf7H,018H,080a0H,0	;Warning on shot clock
//infoex_snd	.word	0f3ffH,08H,08097H,0	;Info box exit
//whstle_snd	.word	0f9f5H,030H,08148H,0	;Ref whistle at game start



// bb.axx
// done tip_snd		.word	0f9feH,175,0818dH,0	;Here's the tip
// tuneq1_snd	.word	0f3ffH,08H,08002H,0	;Quarter 1 tune
// ; tune1end_snd	.word	0f3feH,1,08004H,0		;End team select tune
// eat_snd		.word	0f31fH,010H,080a7H,0	;Suck up credit snd
// organ1_snd	.word	0f3ffH,08H,080aeH,0
// organ2_snd	.word	0f3ffH,08H,080afH,0
// scrm1_snd	.word	0f540H,10,0813dH,0
// scrm2_snd	.word	0f040H,10,0814bH,0
// scrm3_snd	.word	0f440H,10,0815eH,0
// scrm4_snd	.word	0f540H,10,0815fH,0	;<--- check channel on this
// There is no end to the selection screen. It plays a sound but that cuts out the music.

//Stream tunehalf "c_tunehalf.wav"; 	
Stream nuke1 "dummy.wav" replaces $010000e;
Stream nuke2 "dummy.wav" replaces $01022e2;
Stream nuke3 "dummy.wav" replaces $0102e28;

// silence track between speech
Track $01fe channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(nuke1);       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};


// Basic music traxx
// This is just the original sampled YM sound recorded from MAME
Track $0001 channel 0 {
    SetMixingLevel(level 110);   	// always set the mixing level for a new track
    Play("game_start.wav-intro.wav" (BitRate=64000,PowerCut=97.5, MinRange=5, MaxError=10));
    Wait(Stream);
    Loop (4) {				// do everything in this loop twice. (50s x 8 =400 sec)
    Play("game_start.wav-loop.wav" (BitRate=64000,PowerCut=97.5, MinRange=5, MaxError=10));       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    }
};
//q1
Track $0002 channel 0 {
    SetMixingLevel(level 110);   	// always set the mixing level for a new track
    Play("nbajamte-002.wav-intro.wav" (BitRate=64000,PowerCut=97.5, MinRange=5, MaxError=10));
    Wait(Stream);
    Loop (8) {				// do everything in this loop twice. (50s x 8 =400 sec)
    Play("nbajamte-002.wav-loop.wav" (BitRate=64000,PowerCut=97.5, MinRange=5, MaxError=10));       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    }
};
//q2
Track $0006 channel 0 {
    SetMixingLevel(level 110);   	// always set the mixing level for a new track
    Play("nbajamte-006.wav-intro.wav" (BitRate=64000,PowerCut=97.5, MinRange=5, MaxError=5));
    Wait(Stream);
    Loop (8) {				// do everything in this loop twice. (50s x 8 =400 sec)
    Play("nbajamte-006.wav-loop.wav" (BitRate=64000,PowerCut=97.5, MinRange=5, MaxError=5));       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    }
};
//q3
Track $0007 channel 0 {
    SetMixingLevel(level 110);   	// always set the mixing level for a new track
    Play("nbajamte-007.wav-intro.wav" (BitRate=64000,PowerCut=97.5, MinRange=5, MaxError=10));
    Wait(Stream);
    Loop (8) {				// do everything in this loop twice. (50s x 8 =400 sec)
    Play("nbajamte-007.wav-loop.wav" (BitRate=64000,PowerCut=97.5, MinRange=5, MaxError=10));       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    }
};
//q4
Track $0008 channel 0 {
    SetMixingLevel(level 110);   	// always set the mixing level for a new track
    Loop (8) {				// do everything in this loop twice.
    Play("nbajamte-008.wav-loop.wav" (BitRate=64000,PowerCut=97.5, MinRange=5, MaxError=10));       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    }
};


Stream nbajam003loop "nbajamte-003.wav-loop.wav" (BitRate=64000,PowerCut=97.5, MinRange=5, MaxError=10);

//Game Over "win" state. (aka TuneEnd)
Track $0003 channel 0 {
    SetMixingLevel(level 110);   	// always set the mixing level for a new track
    Play("nbajamte-003.wav-intro.wav" (BitRate=64000,PowerCut=97.5, MinRange=5, MaxError=5));
    Wait(Stream);
    Play(nbajam003loop);
    Wait(Stream);
    Play(nbajam003loop);
    Wait(Stream - 10.0 sec);                                 // wait until 8 second before end of stream
    SetMixingLevel(Level 0, steps 10 sec); //
    Wait(Stream);	
};

//halftime

Stream HalfTimeTheme "c_tunehalf2.wav" (BitRate=64000,PowerCut=97.5, MinRange=5, MaxError=10);

Track $0004 channel 0 {
    SetMixingLevel(level 110);   	// always set the mixing level for a new track
    Play(HalfTimeTheme);
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    Play(HalfTimeTheme);
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    Play(HalfTimeTheme);
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    Play(HalfTimeTheme);
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    Play(HalfTimeTheme);
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    Play(HalfTimeTheme);
    Wait(Stream - 10.0 sec);                                 // wait until 8 second before end of stream
    SetMixingLevel(Level 0, steps 10 sec); //
    Wait(Stream);	
};

//end of q1/3/4/ot
Track $000a channel 0 {
    SetMixingLevel(level 110);   	// always set the mixing level for a new track
    Play(HalfTimeTheme);
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    Play(HalfTimeTheme);
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    Play(HalfTimeTheme);
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    Play(HalfTimeTheme);
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    Play(HalfTimeTheme);
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    Play(HalfTimeTheme);
    Wait(Stream - 10.0 sec);                                 // wait until 8 second before end of stream
    SetMixingLevel(Level 0, steps 10 sec); //
    Wait(Stream);	
};

// Remastered CD Audio from PSX
// All tracks +$0700 (these id's are unused in orig src.)
//
// Team Selection (was 0001)
track $0721 channel 0 {
    SetMixingLevel(level 120);   	// always set the mixing level for a new track
    Play("Psx_Welcome_snd.wav" (BitRate=70000,PowerCut=97.5, MinRange=5, MaxError=7));
    Wait(Stream);
    Loop (3) {				// do everything in this loop twice.
    Play("PsxSelectLoop.wav" (BitRate=70000,PowerCut=97.5, MinRange=5, MaxError=7));       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    }
};

// Q1 + Q4 (was 0002)
Track $0722 channel 0 {	
    SetMixingLevel(level 120);   	// always set the mixing level for a new track
    Play("PsxQ1-intro.wav" (BitRate=70000,PowerCut=97.5, MinRange=5, MaxError=10));
    Wait(Stream);
    Loop (8) {				// do everything in this loop twice. (50s x 8 =400 sec)
    Play("PsxQ1-loop.wav" (BitRate=70000,PowerCut=97.5, MinRange=5, MaxError=6));       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    }
};

// Intermission: Deluxe halftime (was 0004)
// PC and PSX use this one on all quarters end including half time.
// Arcade has a special half time tune. Ports do not!

Stream PsxHalfTimeTheme "Psx-halftime.wav" (BitRate=70000,PowerCut=97.5, MinRange=5, MaxError=5);

Track $0724 channel 0 {	
    SetMixingLevel(level 120);   	// always set the mixing level for a new track
    Play(PsxHalfTimeTheme);
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    Play(PsxHalfTimeTheme);
    Wait(Stream - 10.0 sec);
    SetMixingLevel(Level 0, steps 10 sec); //
    Wait(Stream);	
};

// Q2 (was 0006)
Track $0726 channel 0 {	
    SetMixingLevel(level 120);   	// always set the mixing level for a new track
    Play("PsxQ2-intro.wav" (BitRate=70000,PowerCut=97.5, MinRange=5, MaxError=6));
    Wait(Stream);
    Loop (8) {				// do everything in this loop twice. (50s x 8 =400 sec)
    Play("PsxQ2-loop.wav" (BitRate=70000,PowerCut=97.5, MinRange=5, MaxError=6));       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    }
};

// Q3 (was 0007)
Track $0727 channel 0 {	
    SetMixingLevel(level 120);   	// always set the mixing level for a new track
    Play("PsxQ3-v2-intro.wav" (BitRate=70000,PowerCut=97.5, MinRange=5, MaxError=6));
    Wait(Stream);
    Loop (8) {				// do everything in this loop twice. (50s x 8 =400 sec)
    Play("PsxQ3-v2-loop.wav" (BitRate=70000,PowerCut=97.5, MinRange=5, MaxError=6));       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    }
};

// Intermission: Q1/Q3/Q4/Overtime intermission (was 000A)
Stream PsxJamTuneEnd "Psx_Jam-Tune_End.wav-loop.wav" (BitRate=70000,PowerCut=97.5, MinRange=5, MaxError=5);

Track $072A channel 0 {	
    SetMixingLevel(level 120);   	// always set the mixing level for a new track
    Play("Psx_Jam-Tune_End.wav-intro.wav" (BitRate=70000,PowerCut=97.5, MinRange=5, MaxError=5));
    Wait(Stream);
    Play(PsxJamTuneEnd);
    Wait(Stream);          		// ...and wait for it to finish before exiting this loop
    Play(PsxJamTuneEnd);
    Wait(Stream - 10.0 sec);
    SetMixingLevel(Level 0, steps 10 sec); //
    Wait(Stream);	
};


//
// Ambient (we put these on chan1?)
// boo, yeah, organ etc tie into this and should lower this channel's volume like it's done in Hangtime.
//

// Taken from Hangtime: Basic crowd noise loop.
//Track $07dd Channel 2 {    // Address $0008206 [U2 $08206], Time 5237.76ms (loop)
//    SetMixingLevel(level 20);                                       // 0000 07 02 14
//    Play("09C0EE.wav");                                           // 0000 01 02 09C0EE 01
//    Wait(170) SetMixingLevel(increase 48, steps 171);               // 00AA 0B 02 30 00AB
//    Wait(171) Loop {                                                // 00AB 0E 00
//      Play("09C0EE.wav");                                         // 0000 01 02 09C0EE 01
//      Wait(341)                                                     // 0155 0F
//    }                                                               
//    Wait(257) End;                                                  // 0101 00
//};

// scrm1_snd	.word	0f540H,10,0813dH,0
// scrm2_snd	.word	0f040H,10,0814bH,0
// scrm3_snd	.word	0f440H,10,0815eH,0
// scrm4_snd	.word	0f540H,10,0815fH,0	;<--- check channel on this
// Turns out it's all the same sample, but different channels.

Stream scrm1snd "scrm1_snd.wav";

Track $013d channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(scrm1snd);       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $014b channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(scrm1snd);       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $015e channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(scrm1snd);       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $015f channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(scrm1snd);       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0123 channel 1 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("cntdown_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00a7 channel 1 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("eat_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

//
// effects (we put these on chan1)
//


Track $0114 channel 1 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("sqk1_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0115 channel 1 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("sqk2_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0116 channel 1 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("sqk3_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0117 channel 1 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("sqk4_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// fix me!
// this should be the swipe noise for stealing ball
Track $0119 channel 1 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("119_swipe.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// ** this has uber prio in game for some reason (play1ovr)
Track $0157 channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("swat_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0093 channel 3 {			// chan2 for this one.
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("steal_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $008c channel 2 {
    SetMixingLevel(level 25); 		// always set the mixing level for a new track
    Play("pass_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

// i am here in plbuild
Track $0179 channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("fball_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0129 channel 2 {			// chan2 more bouncy
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("bounce_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0112 channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("swish_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0120 channel 2 {			// chan2 more dunky
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("dunk_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// here
Track $0139 channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("miss2_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $013a channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("miss3_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $013b channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("miss_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $0128 channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("missd1_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0138 channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("hitbboard_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

//done!


//camera flashes on dunks track 3
Track $00a8 channel 3 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("flsh1_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $00a9 channel 3 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("flsh2_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $0153 channel 3 {			// bb shatter
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("explode_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $0148 channel 3 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("whstle_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// done
Track $00a5 channel 1 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("win_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// cursor & select on own chans 1-4 for multiple noise at same time!
Track $0080 channel 1 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("cursor_snd1.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0081 channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("cursor_snd2.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0082 channel 3 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("cursor_snd3.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0083 channel 4 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("cursor_snd4.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
//turns out these are all nearly the same. 2 is the smallest so we keep that one.
Stream select "select_snd2.wav";
Track $0084 channel 1 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(select);	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0085 channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(select);	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0086 channel 3 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(select);	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0087 channel 4 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(select);	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
//done
Track $0088 channel 1 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("fullgame_snd1.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0089 channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("fullgame_snd2.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $008a channel 3 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("fullgame_snd3.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $008b channel 4 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("fullgame_snd4.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// HERE
Track $0090 channel 4 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("tick_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0091 channel 4 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("tock_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0092 channel 4 {
    SetMixingLevel(level 95); 		// always set the mixing level for a new track
    Play ("nba_015E_01_0699CE.wav");
//    Play("alert_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0097 channel 4 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("infoex_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
//done

Track $00a0 channel 4 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("warn_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00a2 channel 4 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("beep_a2.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00a3 channel 4 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("beep_a3.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00a4 channel 4 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("coin_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
//done


Track $01b7 channel 5 {			// chan 5 for speech!
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("baddec_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0144 channel 3 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("cheer_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0111 channel 3 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("cheer1_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $014a channel 3 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("boo1_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $014d channel 3 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("airball_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $014e channel 3 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("cheer3_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0150 channel 3 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("boo_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

// from hangtime - the music channels volume is decreased and the organ is played, then increased.
//Track $01a6 Channel 4 {    // Address $00086ed [U2 $086ed], Time 1482.24ms
//    SetMixingLevel(level 90);                                       // 0000 07 04 5A
//    SetMixingLevel(channel 0, decrease 127);                        // 0000 09 00 7F
//    Play(stream $3DB804);                                           // 0000 01 04 3DB804 01
//    Wait(134) SetMixingLevel(channel 0, increase 127, steps 58);    // 0086 0B 00 7F 003A
//    Wait(59) End;                                                   // 003B 00
//};
//

Track $00ae channel 3 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    SetMixingLevel(channel 0, decrease 50); // turn down music a bit.
    Play("organ1_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
    SetMixingLevel(channel 0, increase 127, steps 58);
};
Track $00af channel 3 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    SetMixingLevel(channel 0, decrease 50); // turn down music a bit.
    Play("organ2_snd.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
    SetMixingLevel(channel 0, increase 127, steps 58);
};
Track $01e9 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("needshot.wav");	       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0186 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("runout.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01ee channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("facial.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01d0 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("1-one.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01d1 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("2-two.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01d2 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("3-three.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01d3 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("4-four.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01d4 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("5-five.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01d5 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("6-six.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01f7 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("7-seven.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01f8 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("8-eight.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01f9 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("9-nine.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01fa channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("10-ten.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01fb channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("15-fifteen.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01fc channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("20-twenty.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01cd channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("downby.wav");		       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01cf channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("upby.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};




//here




// Speech & Grunts (original)
// Always use in-game references for sample names. Search .axx for all refs to it.

// Showtime!
Track $01cb channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("welcm_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
//from downtown
//Track $018e channel 5 {
//    SetMixingLevel(level 100); 		// always set the mixing level for a new track
//    Play("anncr1_snd.wav");       	// start an audio clip
//    Wait(Stream);          		// ...and wait for it to finish before exiting
//};
//from the outside
//Track $0190 channel 5 {
//    SetMixingLevel(level 100); 		// always set the mixing level for a new track
//    Play("anncr2_snd.wav");       	// start an audio clip
//    Wait(Stream);          		// ...and wait for it to finish before exiting
//};
Track $0193 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("minute_snd.wav");       	// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};


Track $01de channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("matchup.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $002f channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("versus.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $018d channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("tip_snd.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $0180 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("ovrtme.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $0159 channel 1 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("horn_snd.wav");      		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};


Track $0173 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("wingame.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $012e channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("munged.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $01c4 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("ambushed.wav");      		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $0189 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("takethat.wav");      		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $0178 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("flagrant.wav");      		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $01ce channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("tofloor.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $01c7 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("intostands.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};


Track $01c8 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("hello.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $01c0 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("excuse.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01b6 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("reject.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01f2 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("rejects.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0188 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("greatd.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01b4 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("noway.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01ef channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("grabreb.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01a9 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("intrcpt.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01bf channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("turnovr.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01f3 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("stolen.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};



Track $0160 channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("push1_snd.wav");     		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0164 channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("fall1_164.wav");     		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0166 channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("fall2_166.wav");     		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $011d channel 2 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("land_snd.wav");     		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};


Track $016e channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("fake_snd.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $01ea channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("ohmy_snd.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// add from here
Track $0168 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("heatup_snd.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0169 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("onfire_snd.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01fd channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("hothand.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

//Track $01fd channel 5 {
//    SetMixingLevel(level 100); 		// always set the mixing level for a new track
//    Play("downby.wav");       		// start an audio clip
//   Wait(Stream);          		// ...and wait for it to finish before exiting
//};
Track $01ba channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrtied.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01c2 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("yes.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01e8 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("swish_sp.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $018a channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("shts0.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01e6 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("shts1.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $018e channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("shts2.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $0190 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("shts3.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01c1 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("shts4.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01e3 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("shts6.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01a3 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("shts8.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0182 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs0.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01e0 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs1.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0187 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs2.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01da channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs3.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01dc channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs4.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01df channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs5.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01a0 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs6.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// scrs7 = ohmy_snd
Track $01f5 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs8.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $019d channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs9.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01e1 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs10.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01e2 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs11.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $019b channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs12.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0184 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs13.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01d6 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs14.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01af channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs15.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $019c channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs16.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01a8 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs17.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01ad channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs18.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01ae channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs19.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01b2 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs20.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01bb channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs22.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01bc channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs23.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $012d channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs24.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $012f channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs25.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $012b channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("scrs26.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
//Track $01a8 channel 5 {
//    SetMixingLevel(level 100); 		// always set the mixing level for a new track
//    Play("scrsrz.wav");       		// start an audio clip
//    Wait(Stream);          		// ...and wait for it to finish before exiting
//};

Track $01a4 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("jamsit.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $01ca channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("twopts.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $016f channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("uncon.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0175 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("cantbuy.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $0172 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("blowout_snd.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01ab channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("blowout2_snd.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0195 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("allnet_snd.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01d8 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("greatsht.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01dd channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("wideopen.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01f6 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("hescores.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $015d channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("getout.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01c9 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("getout2.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};



Track $01f1 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("nogood.wav");      		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0158 channel 4 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("jet.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0167 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("yell.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0177 channel 4 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("tarzan.wav");      		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0154 channel 4 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("heli_snd.wav");      		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};








Track $0183 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("anncr4_snd.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $018b channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("anncr5_snd.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01f0 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("rainbow_snd.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01d9 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("ugly0.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0198 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("ugly1.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $019f channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("ugly2.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};










// Teams
// let's put them on channel 5, so the game noises on 1-2-3-4 keep going.
Track $0030 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_bullets.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0031 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_bulls.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0032 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_cavel.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0033 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_celtics.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0034 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_clippers.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0035 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_hawks.wav");       		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0036 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_hornets.wav");     		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0037 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_jazz.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0038 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_kings.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0039 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_knicks.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $003a channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_lakers.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $003b channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_magic.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $003c channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_mavericks.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $003d channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_nets.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $003e channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_nuggets.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $003f channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_pacers.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0040 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_pistons.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0041 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_rockets.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0042 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_sixers.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0043 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_spurs.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0044 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_suns.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0045 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_supersonics.wav"); 		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0047 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_timber.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $0048 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_warriors.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0049 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_blazers.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

Track $004a channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play("t_bucks.wav");   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};










// recycle 'to' pass speech
Stream to "popass-to.wav";

// recycle players
Stream pomanning "pomanning.wav";

Stream poaugmon "poaugmon.wav";

Stream powillis "powillis.wav";
Stream pobrown "pobrown.wav";
Stream pomacdan "pomacdan.wav";
Stream pogamble "pogamble.wav";
Stream pojohnsn_l "pojohnsn_l.wav";
Stream pohawkins "pohawkins.wav";
Stream pomourning "pomourning.wav";
Stream popippen "popippen.wav";
Stream poarmstrng "poarmstrng.wav";
//Stream pokukoc "pokukoc.wav";
Stream pokukoc "pojordan.wav";
Stream pogrant "pogrant.wav";
Stream poprice "poprice.wav";
Stream podaughrty "podaughrty.wav";
Stream ponance "ponance.wav";
Stream pojackson "pojackson.wav";
Stream pomashburn "pomashburn.wav";
Stream pomutombo "pomutombo.wav";
Stream poellis "poellis.wav";
Stream porogers "porogers.wav";
Stream poithomas "poithomas.wav";
Stream podumars "podumars.wav";
Stream poelliot "poelliot.wav";
//Stream pohunter "pohunter.wav";
Stream pohunter "polaimbeer.wav";
Stream pohardaway "pohardaway.wav";
Stream pomullin "pomullin.wav";
Stream powebber "powebber.wav";
Stream poolajuwon "poolajuwon.wav";
Stream pomaxwell "pomaxwell.wav";
Stream pohorry "pohorry.wav";
Stream posmith "posmith.wav";
Stream pomiller "pomiller.wav";
Stream posealy "posealy.wav";
Stream posmits "posmits.wav";
Stream powilkins "powilkins.wav";
Stream poharper "poharper-r.wav";
Stream poroberts "poroberts.wav";
Stream popeeler "popeeler.wav";
Stream podivac "podivac.wav";
Stream pocampbell "pocampbell.wav";
Stream poworthy "poworthy.wav";
Stream porice "porice.wav";
Stream poseikaly "poseikaly.wav";
Stream pominer "pominer.wav";
Stream pobaker "pobaker.wav";
Stream poedwards "poedwards.wav";
Stream poday "poday.wav";
Stream polohaus "polohaus.wav";
Stream polaettner "polaettner.wav";
Stream poperson "poperson.wav";
Stream porider "porider.wav";
Stream pocoleman "pocoleman.wav";
Stream poanderson "poanderson.wav";
Stream pomorris "pomorris.wav";
Stream pobenjamin "pobenjamin.wav";
Stream poewing "poewing.wav";
Stream pomason "pomason.wav";
Stream postarks "postarks.wav";
Stream pooakley "pooakley.wav";
Stream poskiles "poskiles.wav";
Stream poweatherspoon "poweatherspoon.wav";
Stream pobradley "pobradley.wav";
Stream pobarkley "pobarkley.wav";
Stream pomajerle "pomajerle.wav";
//Stream pojohnson "pojohnson.wav";
Stream podrexler "podrexler.wav";
Stream poporter "poporter.wav";
Stream porobinson "porobinson.wav";
//Stream pogrant "pogrant.wav";
Stream posimmons "posimmons.wav";
Stream pohurley "pohurley.wav";
Stream porichmond "porichmond.wav";
Stream potisdale "potisdale.wav";
Stream pospudwebb "pospudwebb.wav";
//Stream porobinson "porobinson.wav";
Stream porodman "porodman.wav";
Stream podellis "podellis.wav";
Stream pokemp "pokemp.wav";
Stream popayton "popayton.wav";
Stream pogill "pogill.wav";
Stream poschrempf "poschrempf.wav";
Stream pomalone "pomalone.wav";
Stream postockton "postockton.wav";
Stream pobenoit "pobenoit.wav";
Stream pohornacek "pohornacek.wav";
Stream pogugliotta "pogugliotta.wav";
Stream poellison "poellison.wav";
Stream pocheaney "pocheaney.wav";
Stream poraiden "poraiden.wav";
Stream poscorpion "poscorpion.wav";
Stream griffey "griffey-1.wav";
Stream poreptile "poreptile.wav";
Stream posubzero "posubzero.wav";
Stream pooneal "pooneal.wav";
//

// Player names speech commands

// atlanta
Track $00d2 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomanning);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00bc channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poaugmon);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $006a channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(powillis);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// boston
Track $00c3 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pobrown);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00c4 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomacdan);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0019 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pogamble);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// charlotte
Track $00b6 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pojohnsn_l);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00e3 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pohawkins);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0025 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomourning);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// Chicago
Track $00b2 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(popippen);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0010 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poarmstrng);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $001e channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pokukoc);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00b3 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pogrant);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// Cleveland
Track $00d7 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poprice);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00d6 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(podaughrty);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0026 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(ponance);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $001d channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pojackson);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $001f channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomashburn);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// Denver
Track $00db channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomutombo);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00da channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poellis);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0063 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(porogers);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// Detroit
Track $00c9 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poithomas);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0017 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(podumars);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00c1 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poelliot);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $001b channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pohunter);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// Golden state Nuggets
Track $00c8 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pohardaway);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00c7 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomullin);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0069 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(powebber);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

// houston
Track $00d8 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poolajuwon);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0021 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomaxwell);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $001a channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pohorry);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00d9 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(posmith);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// indiana
Track $00cd channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomiller);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0064 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(posealy);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0066 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(posmits);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// atlanta
Track $00bb channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(powilkins);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00d1 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poharper);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $002b channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poroberts);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// la lakers
Track $0027 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(popeeler);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00d0 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(podivac);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0014 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pocampbell);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00cf channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poworthy);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// from here maybe in lower volume?
// miami
Track $00d4 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(porice);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00d5 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poseikaly);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0023 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pominer);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// milwaukee
Track $0011 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pobaker);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00cb channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poedwards);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0016 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poday);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00cc channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(polohaus);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// minnesota
Track $00de channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(polaettner);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00df channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poperson);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $002a channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(porider);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// new jersey
Track $00e0 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pocoleman);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00e1 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poanderson);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0024 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomorris);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00bd channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pobenjamin);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// new york
Track $00b9 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poewing);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0020 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomason);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0067 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(postarks);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00ba channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pooakley);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00b1 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poskiles);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// Filly
Track $0068 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poweatherspoon);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0013 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pobradley);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// phoenix
Track $00b7 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pobarkley);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00b8 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomajerle);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00bf channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(podrexler);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00c0 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poporter);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00c2 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(porobinson);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0065 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(posimmons);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $001c channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pohurley);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0029 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(porichmond);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00dd channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(potisdale);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00dc channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pospudwebb);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $002c channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(porodman);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00be channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pokemp);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0028 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(popayton);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00ea channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pogill);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00ce channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poschrempf);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// utah
Track $00c5 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomalone);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00c6 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(postockton);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0012 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pobenoit);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00e2 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pohornacek);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// washington
Track $00b4 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pogugliotta);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0018 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poellison);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0015 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pocheaney);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// the rest is guest stars/hiddens/new additions etc.
Track $00b0 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poraiden);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0197 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poscorpion);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0199 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(griffey);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01a5 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poreptile);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0196 channel 5 {
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(posubzero);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

//Shaq Oneal

Track $01b9 channel 5 {
    SetMixingLevel(level 100);
    Play(pooneal);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01be channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100);
    Play(pooneal);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};


// Pass speech commands
// atlanta
Track $0050 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomanning);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00ef channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poaugmon);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0162 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(powillis);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// boston
Track $00f8 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pobrown);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00f7 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomacdan);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0145 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pogamble);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// Charlotte
Track $00e9 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pojohnsn_l);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0061 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pohawkins);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0121 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomourning);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// Chicago
Track $00e7 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(popippen);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0130 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poarmstrng);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $017c channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pokukoc);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00e6 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pogrant);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// Cleveland
Track $0055 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poprice);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0056 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(podaughrty);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0122 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(ponance);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $017b channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pojackson);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $017d channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomashburn);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// Denver
Track $0059 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomutombo);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $005a channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poellis);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0137 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(porogers);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// Detroit
Track $00fe channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poithomas);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0141 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(podumars);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00f6 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poelliot);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0147 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pohunter);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// Golden state
Track $00fb channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pohardaway);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00fc channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomullin);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0161 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(powebber);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// houston
Track $0058 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poolajuwon);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $017f channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomaxwell);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0146 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pohorry);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0057 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(posmith);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// indiana
Track $004d channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomiller);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0149 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(posealy);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $014f channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(posmits);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// atlanta
Track $00f0 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(powilkins);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0051 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poharper);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
//no unique pass!?
//Track $002b channel 5 {
//    SetMixingLevel(level 100); 		// always set the mixing level for a new track
//    Play(poroberts);   		// start an audio clip
//    Wait(Stream);          		// ...and wait for it to finish before exiting
//};
// la lakers
Track $0125 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(popeeler);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $004e channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(podivac);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $013e channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pocampbell);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $004f channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poworthy);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// from here maybe in lower volume?
// miami
Track $0054 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(porice);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0053 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poseikaly);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $011c channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pominer);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// milwaukee
Track $0131 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pobaker);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $004b channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poedwards);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0140 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poday);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00ff channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(polohaus);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// minnesota
Track $005e channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(polaettner);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $005d channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poperson);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $012a channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(porider);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// new jersey
Track $0060 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pocoleman);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $005f channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poanderson);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $011e channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomorris);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00f2 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pobenjamin);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// new york
Track $00ee channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poewing);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $017e channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomason);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0151 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(postarks);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00ed channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pooakley);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00e4 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poskiles);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// Filly
Track $0152 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poweatherspoon);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0133 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pobradley);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// phoenix
Track $00ec channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pobarkley);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00eb channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomajerle);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00f4 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(podrexler);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00f3 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poporter);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00f5 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(porobinson);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $014c channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(posimmons);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $017a channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pohurley);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0127 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(porichmond);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $005b channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(potisdale);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $005c channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pospudwebb);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0135 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(porodman);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00f1 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pokemp);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0126 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(popayton);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// no unique pass speech!
//Track $00ea channel 5 {
//    SetMixingLevel(level 100); 		// always set the mixing level for a new track
//    Play(pogill);   		// start an audio clip
//    Wait(Stream);          		// ...and wait for it to finish before exiting
//};
Track $004c channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poschrempf);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// utah
Track $00fa channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pomalone);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $00f9 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(postockton);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0132 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pobenoit);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0062 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pohornacek);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
// washington
Track $00e8 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pogugliotta);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $0142 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poellison);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $013f channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(pocheaney);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};

// special pass speech
Track $00e5 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poraiden);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01a1 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(posubzero);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01a2 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poscorpion);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $01a6 channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(poreptile);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};
Track $019a channel 5 {
    SetMixingLevel(level 100);
    Play(to);
    Wait(40);
    SetMixingLevel(level 100); 		// always set the mixing level for a new track
    Play(griffey);   		// start an audio clip
    Wait(Stream);          		// ...and wait for it to finish before exiting
};











// Volume fade and kill tracks
Track $0000 Channel 0 {    // Address $00063ce [U2 $063ce], Time 7.68ms
    Stop(channel 5);                                                // 0000 02 05
    Wait(1) End;                                                    // 0001 00
};


//
// Ident tracks
// These are needed, games check for the reply on the data port.
//

Track $03e7 Channel 0 {    // Address $00093bd [U2 $093bd], Time 38.40ms
    WriteDataPort(byte $01);                                        // 0000 04 01
    Wait(5) End;                                                    // 0005 00
};
Track $03e8 Channel 0 {    // Address $00093c6 [U2 $093c6], Time 7.68ms
    WriteDataPort(byte $FD);                                        // 0000 04 FD
    Wait(1) End;                                                    // 0001 00
};
Track $03e9 Channel 1 {    // Address $00093cf [U2 $093cf], Time 7.68ms
    WriteDataPort(byte $FD);                                        // 0000 04 FD
    Wait(1) End;                                                    // 0001 00
};
Track $03ea Channel 2 {    // Address $00093d8 [U2 $093d8], Time 7.68ms
    WriteDataPort(byte $FD);                                        // 0000 04 FD
    Wait(1) End;                                                    // 0001 00
};
Track $03eb Channel 3 {    // Address $00093e1 [U2 $093e1], Time 7.68ms
    WriteDataPort(byte $FD);                                        // 0000 04 FD
    Wait(1) End;                                                    // 0001 00
};
Track $03ec Channel 4 {    // Address $00093ea [U2 $093ea], Time 7.68ms
    WriteDataPort(byte $FD);                                        // 0000 04 FD
    Wait(1) End;                                                    // 0001 00
};
Track $03ed Channel 5 {    // Address $00093f3 [U2 $093f3], Time 7.68ms
    WriteDataPort(byte $FD);                                        // 0000 04 FD
    Wait(1) End;                                                    // 0001 00
};