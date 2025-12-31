;****************************************************************************
; *                                                                         *
; * NBA JAM Special Edition                                                 *
; *                                                                         *
;****************************************************************************

; **************************************************************************
; *                                                                        *
; * The sound call table maps sound calls from the host to playlists.      *
; * It must be started with the keyword SOUNDCALLS.                        *
; *                                                                        *
; **************************************************************************

SOUNDCALLS				

; ***
; Music
; ***


	0	immed	0	; Stop all sound.

	1	immed	1	; Main Game Start, Selection screen.
	2	immed	2	; Q1 and Q4 music track.
	3	immed	3	; Game Over / Win state.
	4	immed	4	; Intermission
;	5	immed	5	; Unused
	6	immed	6	; Q2
	7	immed	7	; Q3
	8	immed	8	; Q4 / OT
	10	immed	4	; Game Over / No Win state
;	11	immed	11

	47	immed	47	; Versus

; ***
; Team Names
; ***
    48 immed 48 
    49 immed 49 
    50 immed 50 
    51 immed 51 
    52 immed 52 
    53 immed 53 
    54 immed 54 
    55 immed 55 
    56 immed 56 
    57 immed 57 
    58 immed 58 
    59 immed 59 
    60 immed 60 
    61 immed 61 
    62 immed 62 
    63 immed 63 
    64 immed 64 
    65 immed 65 
    66 immed 66 
    67 immed 67 
    68 immed 68 
    69 immed 69 
;    70 immed 47 ; What is this team? CHECK! (not GUUUD)
    71 immed 71 
    72 immed 72 
    73 immed 73 
    74 immed 74 

  




	1825	immed	1825	; PSX Main (0001)
	1826	immed	1826	; PSX Q1/Q4 (0002)
	1828	immed	1828	; PSX (0004)
	1830	immed	1830	; PSX Q2
	1831	immed	1831    ; PSX Q3
	1834	immed	1834	; PSX Game Over


; Sound FX
; ***
	128	immed	128	;Cursor sounds
	129	immed	129
	130	immed	130
	131	immed	131

	132	immed	132	;Selection confirm
	133	immed	132
	134	immed	132
	135	immed	135

	136	immed	136	;Full game purchase
	137	immed	137	;Full game purchase
	138	immed	138	;Full game purchase
	139	immed	139	;Full game purchase
	140	immed	140

	144	immed	144	;tick
	145	immed	145
	146	immed	146

	147	immed	147

	151	immed	151	;infoex
	160	immed	160
	162	immed	162
	163	immed	163
	164	immed	164	;Coin
	165	immed	165	;Win/Warn (unused credits etc.)
	167	immed	167	;Credit eat
	168	immed	168	;Camera flash 1
	169	immed	169	;Camera flash 2
	174	immed	174
	175	immed	175
	273	immed	273	;Cheer
	274	immed	274	;swish
	276	immed	276	;Sneakers
	277	immed	277
	278	immed	278
	279	immed	279

	281	immed	281
	288	immed	288	;dunk noise

	291	immed	291	;Countdown Bonk
	296	immed	296	;missed dunk cartoon
	297	immed	297	;Ball Bounce

	312	immed	312	;Hit backboard
	313	immed	313	;miss sounds
	314	immed	314
	315	immed	314

	317	immed	317	;Crowd screams
	324	immed	324	;Crowd cheer
	328	immed	328	;Ref Whistle

	330	immed	330	;Crow boo 1
	331	immed	317	;Crowd screams
	333	immed	333	;airball
	334	immed 	334	;cheer 3
	336	immed	336	;boo
	

	339	immed	339	;Glass explode
	343	immed	343
	350	immed	317	;Crowd screams
	351	immed	317	;Crowd screams
	377	immed	377	;Fireball
	390	immed	390	;Running out of time
	439	immed 	439	;bad decision
	459	immed	459	;welcome
	461	immed	461	;down by
	463	immed	463	;up by
	464	immed	464	;one
	465	immed	465	;
	466	immed	466	;
	467	immed	467	;
	468	immed	468	;
	469	immed	469	;six
	503	immed	503	;seven
	504	immed	504	;
	505	immed	505	;
	506	immed	506	;ten
	507	immed	507	;fifteen
	508	immed	508	;twenty
	
	478	immed	478	;Matchup
	489	immed	489	;Need shot
	494	immed	494	;facial




; ***
; System stuff
; ***

	999	immed	999	; version ack
	1000	immed	1000	; fd
	1001	immed	1001	; fd
	1002	immed	1002	; fd
	1003	immed	1003	; fd
	1004	immed	1004	; fd
	1005	immed	1005	; fd
	1006	immed	1006	; Stop all FX
	1007	immed	1007	; Stop all FX
	1008	immed	1008    ; Stop 0
	1009	immed	1009    ; Stop 1
	1010	immed	1010    ; Stop 2
	1011	immed	1011    ; Stop 3
	1012	immed	1012    ; Stop 4
	1013	immed	1013	; Stop 5



; ***
; Speech
; Player names & pass speech. All follow same format mostly.
; ***


; **************************************************************************
; *                                                                        *
; * Note The game code has a debug comment that 0xC00 (3072) is maximum!   *
; *                                                                        *
; **************************************************************************


END					

; **************************************************************************

; **************************************************************************
; *                                                                        *
; * The transition table must be started with the keyword TRANSITION.      *
; *                                                                        *
; **************************************************************************

TRANSITION		
END

; **************************************************************************
; *                                                                        *
; * The following are the actual playlists...                              *
; *                                                                        *
; **************************************************************************

; **************************************************************************
; *                                                                        *
; *                         Tunes and grooves                              *
; *                                                                        *
; **************************************************************************

	playlist	0, 0, 'kill sound on all tracks'
	0	stop	1
	0	stop	2
	0	stop	3
	0	stop	4
	0	stop	5
	1	end
	end

	playlist 1, 0 ,'Music: Main Tune (Game Start)'
    	0	setvol 0, 110         
    	0	play	0, 'main1a', 1
    	1585 	loopstart	4     
      	0	play	0, 'main1b', 1
      	4237	loopend               
    	0	end
    	end

	playlist 2, 0 ,'Music: Q1 music track.' 
	0	setvol 0, 110
	0	play	0, 'main2a', 1
	1627 	loopstart	8   
	0	play	0, 'main2b', 1
	6417	loopend                                                       
	0	end
	end

	playlist 3, 0 ,'Music: Game Over / Win state.' 
	0	setvol 0, 110
	0	play	0, 'main3a', 1
	908 	play	0, 'main3b', 1
	6137	play	0, 'main3b', 1
	4835	rampvol 0, 0, 1302
	1302 	end
	end

	playlist 4, 0 ,'Music: Intermission'
	0	setvol 0, 110
	0	play	0, 'main4', 1
	2043 	play	0, 'main4', 1
	2043 	play	0, 'main4', 1
	2043 	play	0, 'main4', 1
	2043 	play	0, 'main4', 1
	2043 	play	0, 'main4', 1
	741 	rampvol 0, 0, 1302
	1302 	end
	end

	playlist 6, 0 ,'Music: Q2 Music Track'
	0	setvol 0, 110
	0	play	0, 'main6a', 1
	1109 	loopstart	8
	0	play	0, 'main6b', 1
	3727	loopend                                                       
	0	end      
	end

	playlist 7, 0 ,'Music: Q3 Music Track'
	0	setvol 0, 110
	0	play	0, 'main7a', 1
	1638 	loopstart	8     
	0	play	0, 'main7b', 1
	5844	loopend                                                       
	0	end
	end

	playlist 8, 0 ,'Music: Q4 and Overtime Music Track'	;most lazy work from me ever. It's huge.
	0	setvol 0, 110
	0	loopstart	8
	0	play	0, 'main8', 1
	8212	loopend                                                       
	0	end
	end

;Track $0721 Channel 0
	playlist 1825, 0 ,'Music: PSX CD Main Tune (Game Start)'
	0	setvol 0, 120
	0	play	0, 'PSMAIN1A', 1
	889 	loopstart	3
	0	play	0, 'PSMAIN1B', 1
	6249	loopend                                                       
	0	end      
	end

;Track $0722 Channel 0
	playlist 1826, 0 ,'Music: PSX CD Q1/Q4 Music Track' 
	0	setvol 0, 120         
	0	play	0, 'PSMAIN2A', 1 
	924 	loopstart	8     
	0	play	0, 'PSMAIN2B', 1 
	4689	loopend                                                       
	0	end                   
	end

;Track $0724 Channel 0
; Intermission: Deluxe halftime (was 0004)
; PC and PSX use this one on all quarters end including half time.
; Arcade has a special half time tune. Ports do not!
; So we use a different one for end-of-game (000A) by using both JAM and JAM TE soundtracks ;)

	playlist 1828, 0 ,'Music: PSX CD Intermission Track'     ;Pretty lazy, this could be cut down
	0	setvol 0, 120                         
	0	play	0, 'PSMAIN4', 1
	10005 	play	0, 'PSMAIN4', 1
	8703 	rampvol 0, 0, 1302
	1302 	end               
	end

;Track $0726 Channel 0
	playlist 1830, 0 ,'Music: PSX CD Q2 Music Track' ; {    // Address $00076b7 [U2 $076b7], Time 616965.12ms
	0	setvol 0, 120                                                 ;// 0000 07 00 78
	0	play	0, 'PSMAIN6A', 1 ; ** single play                          ;// 0000 01 00 30000C 01
	1134 	loopstart	8                                              ;// 046E 0E 08
	0	play	0, 'PSMAIN6B', 1 ; ** single play                        ;// 0000 01 00 0A90AC 01
	9900	loopend                                                       
	0	end                                                             ;// 0000 00
	end

;Track $0727 Channel 0
	playlist 1831, 0 ,'Music: PSX CD Q3 Music Track' ; {    // Address $00076d8 [U2 $076d8], Time 235814.39ms
	0	setvol 0, 120                                                 ;// 0000 07 00 78
	0	play	0, 'PSMAIN7A', 1 ; ** single play                          ;// 0000 01 00 2D79EA 01
	1513 	loopstart	8                                              ;// 05E9 0E 08
	0	play	0, 'PSMAIN7B', 1 ; ** single play                        ;// 0000 01 00 1DFBA6 01
	3649    loopend                                                       
	0	end                                                             ;// 0000 00
	end


;Track $072a Channel 0
;Special end tune
	playlist 1834, 0 ,'Music: PSX CD Game End (Win)'
	0	setvol 0, 120
	0	play	0, 'PSEND1A', 1
	2475 	play	0, 'PSEND1B', 1
	2776 	play	0, 'PSEND1B', 1
	1474 	rampvol 0, 0, 1302
	1302 	end
	end

;Track $002f Channel 5
    playlist 47, 5 ,'Speech: Versus' ; {    // Address $0005915 [U2 $05915], Time 798.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'versus', 1 ; ** single play                          ;// 0000 01 05 409C3C 01
    104 end                                                         ;// 0068 00
    end

; ***
; Speech
; Team Names and variants of city/team. Used in matchup and during 'up by xx' call.
; ***

;Track $0030 Channel 5
    playlist 48, 5 ,'Team: Bullets' ; {    // Address $0005927 [U2 $05927], Time 729.60ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'bullets', 1 ; ** single play                          ;// 0000 01 05 42CB52 01
    95 end                                                          ;// 005F 00
    end

;Track $0031 Channel 5
    playlist 49, 5 ,'Team: Bulls' ; {    // Address $0005939 [U2 $05939], Time 798.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'bulls', 1 ; ** single play                          ;// 0000 01 05 41C3F2 01
    104 end                                                         ;// 0068 00
    end
;Track $0032 Channel 5
    playlist 50, 5 ,'Team: Caveliers' ; {    // Address $000594b [U2 $0594b], Time 1190.40ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'cavel', 1 ; ** single play                          ;// 0000 01 05 3B0BFE 01
    155 end                                                         ;// 009B 00
    end

;Track $0033 Channel 5
    playlist 51, 5 ,'Team: Celtics' ; {    // Address $000595d [U2 $0595d], Time 890.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'celtics', 1 ; ** single play                          ;// 0000 01 05 3FF008 01
    116 end                                                         ;// 0074 00
    end

;Track $0034 Channel 5
    playlist 52, 5 ,'Team: Clippers' ; {    // Address $000596f [U2 $0596f], Time 944.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'clippers', 1 ; ** single play                          ;// 0000 01 05 3EB7DC 01
    123 end                                                         ;// 007B 00
    end

;Track $0035 Channel 5
    playlist 53, 5 ,'Team: Hawks' ; {    // Address $0005981 [U2 $05981], Time 936.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'hawks', 1 ; ** single play                          ;// 0000 01 05 3F4E94 01
    122 end                                                         ;// 007A 00
    end

;Track $0036 Channel 5
    playlist 54, 5 ,'Team: Hornets' ; {    // Address $0005993 [U2 $05993], Time 706.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'hornets', 1 ; ** single play                          ;// 0000 01 05 42D758 01
    92 end                                                          ;// 005C 00
    end

;Track $0037 Channel 5
    playlist 55, 5 ,'Team: Jazz' ; {    // Address $00059a5 [U2 $059a5], Time 791.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'jazz', 1 ; ** single play                          ;// 0000 01 05 40AA0E 01
    103 end                                                         ;// 0067 00
    end

;Track $0038 Channel 5
    playlist 56, 5 ,'Team: Kings' ; {    // Address $00059b7 [U2 $059b7], Time 936.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'kings', 1 ; ** single play                          ;// 0000 01 05 3E9962 01
    122 end                                                         ;// 007A 00
    end

;Track $0039 Channel 5
    playlist 57, 5 ,'Team: Knicks' ; {    // Address $00059c9 [U2 $059c9], Time 814.08ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'knicks', 1 ; ** single play                          ;// 0000 01 05 413234 01
    106 end                                                         ;// 006A 00
    end

;Track $003a Channel 5
    playlist 58, 5 ,'Team: Lakers' ; {    // Address $00059db [U2 $059db], Time 791.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'lakers', 1 ; ** single play                          ;// 0000 01 05 40C59A 01
    103 end                                                         ;// 0067 00
    end

;Track $003b Channel 5
    playlist 59, 5 ,'Team: Magic' ; {    // Address $00059ed [U2 $059ed], Time 721.92ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'magic', 1 ; ** single play                          ;// 0000 01 05 4312C0 01
    94 end                                                          ;// 005E 00
    end

;Track $003c Channel 5
    playlist 60, 5 ,'Team: Mavericks' ; {    // Address $00059ff [U2 $059ff], Time 852.48ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'maverick', 1 ; ** single play                          ;// 0000 01 05 4063FE 01
    111 end                                                         ;// 006F 00
    end

;Track $003d Channel 5
    playlist 61, 5 ,'Team: Nets' ; {    // Address $0005a11 [U2 $05a11], Time 591.36ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'nets', 1 ; ** single play                          ;// 0000 01 05 4409D8 01
    77 end                                                          ;// 004D 00
    end

;Track $003e Channel 5
    playlist 62, 5 ,'Team: Nuggets' ; {    // Address $0005a23 [U2 $05a23], Time 760.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'nuggets', 1 ; ** single play                          ;// 0000 01 05 4275C8 01
    99 end                                                          ;// 0063 00
    end

;Track $003f Channel 5
    playlist 63, 5 ,'Team: Pacers' ; {    // Address $0005a35 [U2 $05a35], Time 867.84ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'pacers', 1 ; ** single play                          ;// 0000 01 05 401CD0 01
    113 end                                                         ;// 0071 00
    end

;Track $0040 Channel 5
    playlist 64, 5 ,'Team: Pistons' ; {    // Address $0005a47 [U2 $05a47], Time 768.00ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'pistons', 1 ; ** single play                          ;// 0000 01 05 41F7A6 01
    100 end                                                         ;// 0064 00
    end

;Track $0041 Channel 5
    playlist 65, 5 ,'Team: Rockets' ; {    // Address $0005a59 [U2 $05a59], Time 814.08ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'rockets', 1 ; ** single play                          ;// 0000 01 05 415A70 01
    106 end                                                         ;// 006A 00
    end

;Track $0042 Channel 5
    playlist 66, 5 ,'Team: Sixers' ; {    // Address $0005a6b [U2 $05a6b], Time 883.20ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'sixers', 1 ; ** single play                          ;// 0000 01 05 408038 01
    115 end                                                         ;// 0073 00
    end

;Track $0043 Channel 5
    playlist 67, 5 ,'Team: Spurs' ; {    // Address $0005a7d [U2 $05a7d], Time 875.52ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'spurs', 1 ; ** single play                          ;// 0000 01 05 3EE54E 01
    114 end                                                         ;// 0072 00
    end

;Track $0044 Channel 5
    playlist 68, 5 ,'Team: Suns' ; {    // Address $0005a8f [U2 $05a8f], Time 791.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'suns', 1 ; ** single play                          ;// 0000 01 05 4124B4 01
    103 end                                                         ;// 0067 00
    end

;Track $0045 Channel 5
    playlist 69, 5 ,'Team: Supersonics' ; {    // Address $0005aa1 [U2 $05aa1], Time 1121.28ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'supersnc', 1 ; ** single play                          ;// 0000 01 05 3C266C 01
    146 end                                                         ;// 0092 00
    end

;Track $0047 Channel 5
    playlist 71, 5 ,'Team: Timberwolves' ; {    // Address $0005ab3 [U2 $05ab3], Time 960.00ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'timberwl', 1 ; ** single play                          ;// 0000 01 05 3DBD8A 01
    125 end                                                         ;// 007D 00
    end

;Track $0048 Channel 5
    playlist 72, 5 ,'Team: Warriors' ; {    // Address $0005ac5 [U2 $05ac5], Time 883.20ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'warriors', 1 ; ** single play                          ;// 0000 01 05 3E1D88 01
    115 end                                                         ;// 0073 00
    end

;Track $0049 Channel 5
    playlist 73, 5 ,'Team: Blazers' ; {    // Address $0005ad7 [U2 $05ad7], Time 913.92ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'blazers', 1 ; ** single play                          ;// 0000 01 05 3E5C00 01
    119 end                                                         ;// 0077 00
    end

;Track $004a Channel 5
    playlist 74, 5 ,'Team: Bucks' ; {    // Address $0005ae9 [U2 $05ae9], Time 752.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'bucks', 1 ; ** single play                          ;// 0000 01 05 432A4A 01
    98 end                                                          ;// 0062 00
    end

;Track $0179 Channel 2
    playlist 377, 2 ,'FX: Fire Ball' ; {    // Address $0006e03 [U2 $06e03], Time 990.72ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, 'fball', 1 ; ** single play                          ;// 0000 01 02 3BCAFE 01
    129 end                                                         ;// 0081 00
    end


; **************************************************************************
; *                                                                        *
; *                         Ambient and fx                                 *
; *                                                                        *
; **************************************************************************

;Track $0080 Channel 1
    playlist 128, 1 ,'FX: Cursor sound (Channel 1)' ; {    // Address $0005e54 [U2 $05e54], Time 422.40ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, 'cursor1', 1 ; ** single play                          ;// 0000 01 01 44F01E 01
    55 end                                                          ;// 0037 00
    end

;Track $0081 Channel 2
    playlist 129, 2 ,'FX: Cursor sound (Channel 2)' ; {    // Address $0005e66 [U2 $05e66], Time 422.40ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, 'cursor2', 1 ; ** single play                          ;// 0000 01 02 44F566 01
    55 end                                                          ;// 0037 00
    end

;Track $0082 Channel 3
    playlist 130, 3 ,'FX: Cursor sound (Channel 3)' ; {    // Address $0005e78 [U2 $05e78], Time 422.40ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, 'cursor3', 1 ; ** single play                          ;// 0000 01 03 44FAA8 01
    55 end                                                          ;// 0037 00
    end

;Track $0083 Channel 4
    playlist 131, 4 ,'FX: Cursor sound (Channel 4)' ; {    // Address $0005e8a [U2 $05e8a], Time 422.40ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, 'cursor4', 1 ; ** single play                          ;// 0000 01 04 0FFA20 01
    55 end                                                          ;// 0037 00
    end

;Track $0084 Channel 1
    playlist 132, 1 ,'FX: Select sound (Channel 1)' ; {    // Address $0005e9c [U2 $05e9c], Time 921.60ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, 'select', 1 ; ** single play                          ;// 0000 01 01 3ABC52 01
    120 end                                                         ;// 0078 00
    end

;Track $0085 Channel 2
    playlist 133, 2 ,'FX: Select sound (Channel 2)' ; {    // Address $0005eae [U2 $05eae], Time 921.60ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, 'select', 1 ; ** single play                          ;// 0000 01 02 3ABC52 01
    120 end                                                         ;// 0078 00
    end

;Track $0086 Channel 3
    playlist 134, 3 ,'FX: Select sound (Channel 3)' ; {    // Address $0005ec0 [U2 $05ec0], Time 921.60ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, 'select', 1 ; ** single play                          ;// 0000 01 03 3ABC52 01
    120 end                                                         ;// 0078 00
    end

;Track $0087 Channel 4
    playlist 135, 4 ,'FX: Select sound (Channel 4)' ; {    // Address $0005ed2 [U2 $05ed2], Time 921.60ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, 'select', 1 ; ** single play                          ;// 0000 01 04 3ABC52 01
    120 end                                                         ;// 0078 00
    end

;Track $0088 Channel 1
    playlist 136, 1 ,'FX: Full game purchased (Channel 1)' ; {    // Address $0005ee4 [U2 $05ee4], Time 1413.12ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, 'fullg1', 1 ; ** single play                          ;// 0000 01 01 3573A2 01
    184 end                                                         ;// 00B8 00
    end

;Track $0089 Channel 2
    playlist 137, 2 ,'FX: Full game purchased (Channel 2)' ; {    // Address $0005ef6 [U2 $05ef6], Time 1413.12ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, 'fullg2', 1 ; ** single play                          ;// 0000 01 02 3591BC 01
    184 end                                                         ;// 00B8 00
    end

;Track $008a Channel 3
    playlist 138, 3 ,'FX: Full game purchased (Channel 3)' ; {    // Address $0005f08 [U2 $05f08], Time 1413.12ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, 'fullg3', 1 ; ** single play                          ;// 0000 01 03 34DA4C 01
    184 end                                                         ;// 00B8 00
    end

;Track $008b Channel 4
    playlist 139, 4 ,'FX: Full game purchased (Channel 4)' ; {    // Address $0005f1a [U2 $05f1a], Time 1413.12ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, 'fullg4', 1 ; ** single play                          ;// 0000 01 04 3626E2 01
    184 end                                                         ;// 00B8 00
    end

;Track $0090 Channel 4
    playlist 144, 4 ,'FX: Tick sound' ; {    // Address $0005f3e [U2 $05f3e], Time 330.24ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, 'tick', 1 ; ** single play                          ;// 0000 01 04 44FFCE 01
    43 end                                                          ;// 002B 00
    end

;Track $0091 Channel 4
    playlist 145, 4 ,'FX: Tock sound' ; {    // Address $0005f50 [U2 $05f50], Time 337.92ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, 'tock', 1 ; ** single play                          ;// 0000 01 04 451B9A 01
    44 end                                                          ;// 002C 00
    end

;Track $0092 Channel 4
    playlist 146, 4 ,'FX: Alert horn' ; {    // Address $0005f62 [U2 $05f62], Time 1052.16ms
    0	setvol 4, 95                                                  ;// 0000 07 04 5F
    0	play	4, 'alert', 1 ; ** single play                          ;// 0000 01 04 3A41D0 01
    137 end                                                         ;// 0089 00
    end

;Track $0097 Channel 4
    playlist 151, 4 ,'FX: Info snd' ; {    // Address $0005f86 [U2 $05f86], Time 591.36ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, 'infoex', 1 ; ** single play                          ;// 0000 01 04 426952 01
    77 end                                                          ;// 004D 00
    end

;Track $00a0 Channel 4
    playlist 160, 4 ,'FX: Warn' ; {    // Address $0005f98 [U2 $05f98], Time 560.64ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, 'warn', 1 ; ** single play                          ;// 0000 01 04 4358F0 01
    73 end                                                          ;// 0049 00
    end

;Track $00a2 Channel 4
    playlist 162, 4 ,'FX: Beep' ; {    // Address $0005faa [U2 $05faa], Time 552.96ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, 'beep_a2', 1 ; ** single play                          ;// 0000 01 04 3F309C 01
    72 end                                                          ;// 0048 00
    end

;Track $00a3 Channel 4
    playlist 163, 4 ,'FX: Beep' ; {    // Address $0005fbc [U2 $05fbc], Time 552.96ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, 'beep_a3', 1 ; ** single play                          ;// 0000 01 04 3F128C 01
    72 end                                                          ;// 0048 00
    end

;Track $00a4 Channel 4
    playlist 164, 4 ,'FX: Coin in' ; {    // Address $0005fce [U2 $05fce], Time 952.32ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, 'coin', 1 ; ** single play                          ;// 0000 01 04 3C6DE2 01
    124 end                                                         ;// 007C 00
    end

;Track $00a5 Channel 1
    playlist 165, 1 ,'FX: Win snd' ; {    // Address $0005fe0 [U2 $05fe0], Time 2250.24ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, 'win', 1 ; ** single play                          ;// 0000 01 01 347562 01
    293 end                                                         ;// 0125 00
    end

;Track $00a7 Channel 1
    playlist 167, 1 ,'FX: Eat credit' ; {    // Address $0005ff2 [U2 $05ff2], Time 261.12ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, 'eat', 1 ; ** single play                          ;// 0000 01 01 1FFC92 01
    34 end                                                          ;// 0022 00
    end

;Track $00a8 Channel 3
    playlist 168, 3 ,'FX: Camera flash 1' ; {    // Address $0006004 [U2 $06004], Time 115.20ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, 'flash1', 1 ; ** single play                          ;// 0000 01 03 4517D2 01
    15 end                                                          ;// 000F 00
    end

;Track $00a9 Channel 3
    playlist 169, 3 ,'FX: Camera flash 2' ; {    // Address $0006016 [U2 $06016], Time 345.60ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, 'flash2', 1 ; ** single play                          ;// 0000 01 03 446D36 01
    45 end                                                          ;// 002D 00
    end

;Track $00ae Channel 3
    playlist 174, 3 ,'Special: Organ fade-over-back 1' ; {    // Address $0006028 [U2 $06028], Time 3809.28ms
    0	setvol 3, 70                                                 ;// 0000 07 03 64
    0	downvol 0, 50                                                 ;// 0000 09 00 32
    0	play	3, 'organ1', 1 ; ** single play                          ;// 0000 01 03 321C2E 01
    496 rampupvol 0, 50, 58    ;                                   ;// 01F0 0B 00 7F 003A
    0	end                                                             ;// 0000 00
    end

;Track $00af Channel 3
    playlist 175, 3 ,'Special: Organ fade-over-back 2' ; {    // Address $0006046 [U2 $06046], Time 1973.76ms
    0	setvol 3, 70                                                 ;// 0000 07 03 64
    0	downvol 0, 50                                                 ;// 0000 09 00 32
    0	play	3, 'organ2', 1 ; ** single play                          ;// 0000 01 03 339B8A 01
    257 rampupvol 0, 50, 58    ;                                   ;// 0101 0B 00 7F 003A
    0	end                                                             ;// 0000 00
    end

;Track $0093 Channel 3
    playlist 147, 3 ,'FX: Steal' ; {    // Address $0005f74 [U2 $05f74], Time 652.80ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, 'steal', 1 ; ** single play                          ;// 0000 01 03 400E70 01
    85 end                                                          ;// 0055 00
    end

;Track $008c Channel 2
    playlist 140, 2 ,'FX: Pass ball' ; {    // Address $0005f2c [U2 $05f2c], Time 238.08ms
    0	setvol 2, 25                                                  ;// 0000 07 02 19
    0	play	2, 'pass', 1 ; ** single play                          ;// 0000 01 02 44E3D4 01
    31 end                                                          ;// 001F 00
    end

;Track $0111 Channel 3
    playlist 273, 3 ,'Ambient: Cheer1' ; {    // Address $000670e [U2 $0670e], Time 2388.48ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, 'cheer1', 1 ; ** single play                          ;// 0000 01 03 33F884 01
    311 end                                                         ;// 0137 00
    end

;Track $0112 Channel 2
    playlist 274, 2 ,'FX: Swish' ; {    // Address $0006720 [U2 $06720], Time 668.16ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, 'swish', 1 ; ** single play                          ;// 0000 01 02 43C9C4 01
    87 end                                                          ;// 0057 00
    end

;Track $0114 Channel 1
    playlist 276, 1 ,'FX: Sneaker squeek 1' ; {    // Address $0006732 [U2 $06732], Time 529.92ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, 'sqk1_snd', 1 ; ** single play                          ;// 0000 01 01 4463B2 01
    69 end                                                          ;// 0045 00
    end

;Track $0115 Channel 1
    playlist 277, 1 ,'FX: Sneaker squeek 2' ; {    // Address $0006744 [U2 $06744], Time 476.16ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, 'sqk2_snd', 1 ; ** single play                          ;// 0000 01 01 44EA06 01
    62 end                                                          ;// 003E 00
    end

;Track $0116 Channel 1
    playlist 278, 1 ,'FX: Sneaker squeek 3' ; {    // Address $0006756 [U2 $06756], Time 499.20ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, 'sqk3_snd', 1 ; ** single play                          ;// 0000 01 01 44A426 01
    65 end                                                          ;// 0041 00
    end

;Track $0117 Channel 1
    playlist 279, 1 ,'FX: Sneaker squeek 4' ; {    // Address $0006768 [U2 $06768], Time 453.12ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, 'sqk4_snd', 1 ; ** single play                          ;// 0000 01 01 44BDC4 01
    59 end                                                          ;// 003B 00
    end

;Track $0119 Channel 1
    playlist 281, 1 ,'FX: Swipe' ; {    // Address $000677a [U2 $0677a], Time 360.96ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, 'swipe', 1 ; ** single play                          ;// 0000 01 01 4509D0 01
    47 end                                                          ;// 002F 00
    end

;Track $0120 Channel 2
    playlist 288, 2 ,'FX: Dunk' ; {    // Address $00067dc [U2 $067dc], Time 1090.56ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, 'dunk', 1 ; ** single play                          ;// 0000 01 02 3C3882 01
    142 end                                                         ;// 008E 00
    end

;Track $0128 Channel 2
    playlist 296, 2 ,'FX: Cartoon missed dunk' ; {    // Address $000689b [U2 $0689b], Time 1052.16ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, 'missd', 1 ; ** single play                          ;// 0000 01 02 3D8CA2 01
    137 end                                                         ;// 0089 00
    end

;Track $0123 Channel 1
    playlist 291, 1 ,'FX: Buy-in Countdown bonk' ; {    // Address $000682c [U2 $0682c], Time 883.20ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, 'cntdown', 1 ; ** single play                          ;// 0000 01 01 3FB5E0 01
    115 end                                                         ;// 0073 00
    end

;Track $0129 Channel 2
    playlist 297, 2 ,'FX: Bucket Ball Bounce' ; {    // Address $00068ad [U2 $068ad], Time 414.72ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, 'bounce', 1 ; ** single play                          ;// 0000 01 02 44DD10 01
    54 end                                                          ;// 0036 00
    end

;//oops
;Track $0138 Channel 2
    playlist 312, 2 ,'FX: Hit backboard' ; {    // Address $00069e0 [U2 $069e0], Time 491.52ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, 'hitboard', 1 ; ** single play                          ;// 0000 01 02 44CDDA 01
    64 end                                                          ;// 0040 00
    end

;Track $0139 Channel 2
    playlist 313, 2 ,'FX: Miss 2' ; {    // Address $00069f2 [U2 $069f2], Time 583.68ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, 'miss2', 1 ; ** single play                          ;// 0000 01 02 447690 01
    76 end                                                          ;// 004C 00
    end

;Track $013a Channel 2
    playlist 314, 2 ,'FX: Miss 3' ; {    // Address $0006a04 [U2 $06a04], Time 522.24ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, 'miss3', 1 ; ** single play                          ;// 0000 01 02 449B4E 01
    68 end                                                          ;// 0044 00
    end

;Track $013b Channel 2
    playlist 315, 2 ,'FX: Miss 1' ; {    // Address $0006a16 [U2 $06a16], Time 460.80ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, 'miss1', 1 ; ** single play                          ;// 0000 01 02 44D5A4 01
    60 end                                                          ;// 003C 00
    end


;Track $013d Channel 2
    playlist 317, 2 ,'Ambient: Crowd noise' ; {    // Address $0006a28 [U2 $06a28], Time 4416.00ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, 'SCRM1', 1 ; ** single play                          ;// 0000 01 02 SCRM1SND 01
    575 end                                                         ;// 023F 00
    end

;Track $0144 Channel 3
    playlist 324, 3 ,'Ambient: Cheer' ; {    // Address $0006ad5 [U2 $06ad5], Time 2257.92ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, 'cheer', 1 ; ** single play                          ;// 0000 01 03 34227E 01
    294 end                                                         ;// 0126 00
    end

;Track $0148 Channel 3
    playlist 328, 3 ,'FX: Whistle' ; {    // Address $0006b44 [U2 $06b44], Time 476.16ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, 'whistle', 1 ; ** single play                          ;// 0000 01 03 44C5E0 01
    62 end                                                          ;// 003E 00
    end

;Track $014a Channel 3
    playlist 330, 3 ,'Ambient: Crowd boo 2' ; {    // Address $0006b75 [U2 $06b75], Time 4162.56ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, 'boo1', 1 ; ** single play                          ;// 0000 01 03 313090 01
    542 end                                                         ;// 021E 00
    end

;Track $014d Channel 3
    playlist 333, 3 ,'Speech: Crowd - Airball!' ; {    // Address $0006bb8 [U2 $06bb8], Time 1474.56ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, 'airball', 1 ; ** single play                          ;// 0000 01 03 382C22 01
    192 end                                                         ;// 00C0 00
    end

;Track $014e Channel 3
    playlist 334, 3 ,':' ; {    // Address $0006bca [U2 $06bca], Time 4170.24ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, 'cheer3', 1 ; ** single play                          ;// 0000 01 03 331EC4 01
    543 end                                                         ;// 021F 00
    end

;Track $0150 Channel 3
    playlist 336, 3 ,'Ambient: Crowd boo 1' ; {    // Address $0006bfb [U2 $06bfb], Time 2757.12ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, 'boo', 1 ; ** single play                          ;// 0000 01 03 3281AA 01
    359 end                                                         ;// 0167 00
    end

;Track $0153 Channel 3
    playlist 339, 3 ,'FX: Shatter BB' ; {    // Address $0006c4b [U2 $06c4b], Time 3264.00ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, 'explode', 1 ; ** single play                          ;// 0000 01 03 33651E 01
    425 end                                                         ;// 01A9 00
    end

;Track $0157 Channel 2
    playlist 343, 2 ,'FX: Swat ball' ; {    // Address $0006c6f [U2 $06c6f], Time 268.80ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, 'swat', 1 ; ** single play                          ;// 0000 01 02 451336 01
    35 end                                                          ;// 0023 00
    end






;Track $0186 Channel 5
    playlist 390, 5 ,'Speech: .. running out of time!' ; {    // Address $0006f17 [U2 $06f17], Time 1704.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'runout', 1 ; ** single play                          ;// 0000 01 05 35EBBC 01
    222 end                                                         ;// 00DE 00
    end

;Track $01b7 Channel 5
    playlist 439, 5 ,'Speech: Bad decision!' ; {    // Address $00071d3 [U2 $071d3], Time 952.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'baddec', 1 ; ** single play                          ;// 0000 01 05 3D18A4 01
    124 end                                                         ;// 007C 00
    end

;Track $01cb Channel 5
    playlist 459, 5 ,'Speech: Showtime!' ; {    // Address $00072ee [U2 $072ee], Time 1512.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'welcm', 1 ; ** single play                          ;// 0000 01 05 3794CA 01
    197 end                                                         ;// 00C5 00
    end

;Track $01cd Channel 5
    playlist 461, 5 ,'Speech : .. down by ..' ; {    // Address $0007300 [U2 $07300], Time 783.36ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'downby', 1 ; ** single play                          ;// 0000 01 05 40FC2E 01
    102 end                                                         ;// 0066 00
    end

;Track $01cf Channel 5
    playlist 463, 5 ,'Speech : .. up by ..' ; {    // Address $0007324 [U2 $07324], Time 652.80ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'upby', 1 ; ** single play                          ;// 0000 01 05 43EA18 01
    85 end                                                          ;// 0055 00
    end


;Track $01d0 Channel 5
    playlist 464, 5 ,'Speech: One' ; {    // Address $0007336 [U2 $07336], Time 844.80ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'one', 1 ; ** single play                          ;// 0000 01 05 417522 01
    110 end                                                         ;// 006E 00
    end

;Track $01d1 Channel 5
    playlist 465, 5 ,'Speech: Two' ; {    // Address $0007348 [U2 $07348], Time 791.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'two', 1 ; ** single play                          ;// 0000 01 05 42EF30 01
    103 end                                                         ;// 0067 00
    end

;Track $01d2 Channel 5
    playlist 466, 5 ,'Speech: Three' ; {    // Address $000735a [U2 $0735a], Time 860.16ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'three', 1 ; ** single play                          ;// 0000 01 05 418264 01
    112 end                                                         ;// 0070 00
    end

;Track $01d3 Channel 5
    playlist 467, 5 ,'Speech: Four' ; {    // Address $000736c [U2 $0736c], Time 837.12ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'four', 1 ; ** single play                          ;// 0000 01 05 4167D2 01
    109 end                                                         ;// 006D 00
    end

;Track $01d4 Channel 5
    playlist 468, 5 ,'Speech: Five' ; {    // Address $000737e [U2 $0737e], Time 775.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'five', 1 ; ** single play                          ;// 0000 01 05 41B6F6 01
    101 end                                                         ;// 0065 00
    end

;Track $01d5 Channel 5
    playlist 469, 5 ,'Speech: Six' ; {    // Address $0007390 [U2 $07390], Time 714.24ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'six', 1 ; ** single play                          ;// 0000 01 05 439228 01
    93 end                                                          ;// 005D 00
    end
;Track $01f7 Channel 5
    playlist 503, 5 ,'Speech: Seven' ; {    // Address $0007570 [U2 $07570], Time 890.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'seven', 1 ; ** single play                          ;// 0000 01 05 40396A 01
    116 end                                                         ;// 0074 00
    end

;Track $01f8 Channel 5
    playlist 504, 5 ,'Speech: Eight' ; {    // Address $0007582 [U2 $07582], Time 714.24ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'eight', 1 ; ** single play                          ;// 0000 01 05 43DF60 01
    93 end                                                          ;// 005D 00
    end

;Track $01f9 Channel 5
    playlist 505, 5 ,'Speech: Nine' ; {    // Address $0007594 [U2 $07594], Time 867.84ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'nine', 1 ; ** single play                          ;// 0000 01 05 3EF466 01
    113 end                                                         ;// 0071 00
    end

;Track $01fa Channel 5
    playlist 506, 5 ,'Speech: Ten' ; {    // Address $00075a6 [U2 $075a6], Time 821.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'ten', 1 ; ** single play                          ;// 0000 01 05 41A9EA 01
    107 end                                                         ;// 006B 00
    end

;Track $01fb Channel 5
    playlist 507, 5 ,'Speech: Fifteen' ; {    // Address $00075b8 [U2 $075b8], Time 1082.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'fifteen', 1 ; ** single play                          ;// 0000 01 05 3C4A82 01
    141 end                                                         ;// 008D 00
    end

;Track $01fc Channel 5
    playlist 508, 5 ,'Speech: Twenty' ; {    // Address $00075ca [U2 $075ca], Time 952.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'twenty', 1 ; ** single play                          ;// 0000 01 05 3DEDE0 01
    124 end                                                         ;// 007C 00
    end


;Track $01de Channel 5
    playlist 478, 5 ,'Speech: Tonights matchup' ; {    // Address $000740e [U2 $0740e], Time 1236.48ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'matchup', 1 ; ** single play                          ;// 0000 01 05 3A2D0A 01
    161 end                                                         ;// 00A1 00
    end

;Track $01e9 Channel 5
    playlist 489, 5 ,'Speech: They need a shot here' ; {    // Address $000749e [U2 $0749e], Time 1344.00ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'needshot', 1 ; ** single play                          ;// 0000 01 05 38740A 01
    175 end                                                         ;// 00AF 00
    end

;Track $01ee Channel 5
    playlist 494, 5 ,'Speech: Delivers the facial!' ; {    // Address $00074c2 [U2 $074c2], Time 1758.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, 'facial', 1 ; ** single play                          ;// 0000 01 05 35CDD6 01
    229 end                                                         ;// 00E5 00
    end










; **************************************************************************
; *                                                                        *
; * Diagnostics live in the same place as in the 6809/Yamaha system.       *
; *                                                                        *
; **************************************************************************

; **************************************************************************
; *                                                                        *
; *                         Utilities                                      *
; *                                                                        *
; **************************************************************************

	playlist	999, 0, 'SYSTEM      send version # as a signal'
	0	signal	0x01
	5	end
	end

	playlist	1000, 0, 'SYSTEM      send version # as a signal'
	0	signal	0xfd
	1	end
	end

	playlist	1001, 1, 'SYSTEM      send version # as a signal'
	0	signal	0xfd
	1	end
	end

	playlist	1002, 2, 'SYSTEM      send version # as a signal'
	0	signal	0xfd
	1	end
	end

	playlist	1003, 3, 'SYSTEM      send version # as a signal'
	0	signal	0xfd
	1	end
	end

	playlist	1004, 4, 'SYSTEM      send version # as a signal'
	0	signal	0xfd
	1	end
	end

	playlist	1005, 5, 'SYSTEM      send version # as a signal'
	0	signal	0xfd
	1	end
	end

	playlist	1006, 0, 'Stop all FX channels'
	0 marker 0
	1 stop 1
	0 stop 2
	0 stop 3
	0 stop 4
	0 stop 5
	1	end
	end

	playlist	1007, 0, 'Stop all FX channels'
	0 marker 0
	1 stop 1
	0 stop 2
	0 stop 3
	0 stop 4
	0 stop 5
	1	end
	end

	playlist	1008, 0, 'Stop chan 0'
	0	end
	end
	playlist	1009, 1, 'Stop chan 1'
	0	end
	end
	playlist	1010, 2, 'Stop chan 2'
	0	end
	end
	playlist	1011, 3, 'Stop chan 2'
	0	end
	end
	playlist	1012, 4, 'Stop chan 2'
	0	end
	end
	playlist	1013, 5, 'Stop chan 2'
	0	end
	end



; **************************************************************************
; * END of playlist and file                                               *
; **************************************************************************


