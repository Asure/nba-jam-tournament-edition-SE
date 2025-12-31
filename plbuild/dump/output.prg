Loaded ROM files from dump.zip:
  [U2] U2.ROM, 1048576 bytes
  [U3] U3.ROM, 1048576 bytes
  [U4] U4.ROM, 1048576 bytes
  [U5] U5.ROM, 1048576 bytes
  [U6] U6.ROM, 1048576 bytes

U2 Signature: NBAJAM DCS AMM
Known pinball machine: [Unknown]
Version: DCS audio board, Software 1.01 (1993)
Soft boot program offset: $01000
ROM U2 catalog offset: $04000
Maximum track number: 07 2a
Number of audio channels: 6
;Track $0000 Channel 0
    playlist 0, 0 ,':' ; {    // Address $00055c9 [U2 $055c9], Time 7.68ms
    Stop(channel 5);                                                ;// 0000 02 05
    1 end                                                           ;// 0001 00
    end

;Track $0001 Channel 0
    playlist 1, 0 ,':' ; {    // Address $00055d5 [U2 $055d5], Time 142333.44ms
    0	setvol 0, 110                                                 ;// 0000 07 00 6E
    0	play	0, '2BA20A', 1 ; ** single play                          ;// 0000 01 00 2BA20A 01
    1585 0	loopstart	4                                              ;// 0631 0E 04
      0	play	0, '20000C', 1 ; ** single play                        ;// 0000 01 00 20000C 01
      4237                                                          ;// 108D 0F
    0	loopend                                                       
    end                                                             ;// 0000 00
    end

;Track $0002 Channel 0
    playlist 2, 0 ,':' ; {    // Address $00055f6 [U2 $055f6], Time 406755.84ms
    0	setvol 0, 110                                                 ;// 0000 07 00 6E
    0	play	0, '2E52BA', 1 ; ** single play                          ;// 0000 01 00 2E52BA 01
    1627 0	loopstart	8                                              ;// 065B 0E 08
      0	play	0, '10000C', 1 ; ** single play                        ;// 0000 01 00 10000C 01
      6417                                                          ;// 1911 0F
    0	loopend                                                       
    end                                                             ;// 0000 00
    end

;Track $0003 Channel 0
    playlist 3, 0 ,':' ; {    // Address $0005617 [U2 $05617], Time 101237.76ms
    0	setvol 0, 110                                                 ;// 0000 07 00 6E
    0	play	0, '30A116', 1 ; ** single play                          ;// 0000 01 00 30A116 01
    908 0	play	0, '17915E', 1 ; ** single play                      ;// 038C 01 00 17915E 01
    6137 0	play	0, '17915E', 1 ; ** single play                     ;// 17F9 01 00 17915E 01
    4835 rampvol 0, 0, 1302    ;                                    ;// 12E3 0A 00 00 0516
    1302 end                                                        ;// 0516 00
    end

;Track $0004 Channel 0
    playlist 4, 0 ,':' ; {    // Address $0005640 [U2 $05640], Time 94141.44ms
    0	setvol 0, 110                                                 ;// 0000 07 00 6E
    0	play	0, '2A7B26', 1 ; ** single play                          ;// 0000 01 00 2A7B26 01
    2043 0	play	0, '2A7B26', 1 ; ** single play                     ;// 07FB 01 00 2A7B26 01
    2043 0	play	0, '2A7B26', 1 ; ** single play                     ;// 07FB 01 00 2A7B26 01
    2043 0	play	0, '2A7B26', 1 ; ** single play                     ;// 07FB 01 00 2A7B26 01
    2043 0	play	0, '2A7B26', 1 ; ** single play                     ;// 07FB 01 00 2A7B26 01
    2043 0	play	0, '2A7B26', 1 ; ** single play                     ;// 07FB 01 00 2A7B26 01
    741 rampvol 0, 0, 1302    ;                                     ;// 02E5 0A 00 00 0516
    1302 end                                                        ;// 0516 00
    end

;Track $0006 Channel 0
    playlist 6, 0 ,':' ; {    // Address $0005681 [U2 $05681], Time 237504.00ms
    0	setvol 0, 110                                                 ;// 0000 07 00 6E
    0	play	0, '2F2580', 1 ; ** single play                          ;// 0000 01 00 2F2580 01
    1109 0	loopstart	8                                              ;// 0455 0E 08
      0	play	0, '250912', 1 ; ** single play                        ;// 0000 01 00 250912 01
      3727                                                          ;// 0E8F 0F
    0	loopend                                                       
    end                                                             ;// 0000 00
    end

;Track $0007 Channel 0
    playlist 7, 0 ,':' ; {    // Address $00056a2 [U2 $056a2], Time 371635.19ms
    0	setvol 0, 110                                                 ;// 0000 07 00 6E
    0	play	0, '2C9944', 1 ; ** single play                          ;// 0000 01 00 2C9944 01
    1638 0	loopstart	8                                              ;// 0666 0E 08
      0	play	0, '13E572', 1 ; ** single play                        ;// 0000 01 00 13E572 01
      5844                                                          ;// 16D4 0F
    0	loopend                                                       
    end                                                             ;// 0000 00
    end

;Track $0008 Channel 0
    playlist 8, 0 ,':' ; {    // Address $00056c3 [U2 $056c3], Time 504545.28ms
    0	setvol 0, 110                                                 ;// 0000 07 00 6E
    0	loopstart	8                                                   ;// 0000 0E 08
      0	play	0, '059896', 1 ; ** single play                        ;// 0000 01 00 059896 01
      8212                                                          ;// 2014 0F
    0	loopend                                                       
    end                                                             ;// 0000 00
    end

;Track $000a Channel 0
    playlist 10, 0 ,':' ; {    // Address $00056dc [U2 $056dc], Time 94141.44ms
    0	setvol 0, 110                                                 ;// 0000 07 00 6E
    0	play	0, '2A7B26', 1 ; ** single play                          ;// 0000 01 00 2A7B26 01
    2043 0	play	0, '2A7B26', 1 ; ** single play                     ;// 07FB 01 00 2A7B26 01
    2043 0	play	0, '2A7B26', 1 ; ** single play                     ;// 07FB 01 00 2A7B26 01
    2043 0	play	0, '2A7B26', 1 ; ** single play                     ;// 07FB 01 00 2A7B26 01
    2043 0	play	0, '2A7B26', 1 ; ** single play                     ;// 07FB 01 00 2A7B26 01
    2043 0	play	0, '2A7B26', 1 ; ** single play                     ;// 07FB 01 00 2A7B26 01
    741 rampvol 0, 0, 1302    ;                                     ;// 02E5 0A 00 00 0516
    1302 end                                                        ;// 0516 00
    end

;Track $0010 Channel 5
    playlist 16, 5 ,':' ; {    // Address $000571d [U2 $0571d], Time 967.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3A5678', 1 ; ** single play                          ;// 0000 01 05 3A5678 01
    126 end                                                         ;// 007E 00
    end

;Track $0011 Channel 5
    playlist 17, 5 ,':' ; {    // Address $000572f [U2 $0572f], Time 591.36ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '447FEA', 1 ; ** single play                          ;// 0000 01 05 447FEA 01
    77 end                                                          ;// 004D 00
    end

;Track $0012 Channel 5
    playlist 18, 5 ,':' ; {    // Address $0005741 [U2 $05741], Time 698.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '431E86', 1 ; ** single play                          ;// 0000 01 05 431E86 01
    91 end                                                          ;// 005B 00
    end

;Track $0013 Channel 5
    playlist 19, 5 ,':' ; {    // Address $0005753 [U2 $05753], Time 775.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '42B32E', 1 ; ** single play                          ;// 0000 01 05 42B32E 01
    101 end                                                         ;// 0065 00
    end

;Track $0014 Channel 5
    playlist 20, 5 ,':' ; {    // Address $0005765 [U2 $05765], Time 698.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '428E9C', 1 ; ** single play                          ;// 0000 01 05 428E9C 01
    91 end                                                          ;// 005B 00
    end

;Track $0015 Channel 5
    playlist 21, 5 ,':' ; {    // Address $0005777 [U2 $05777], Time 783.36ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3F98A0', 1 ; ** single play                          ;// 0000 01 05 3F98A0 01
    102 end                                                         ;// 0066 00
    end

;Track $0016 Channel 5
    playlist 22, 5 ,':' ; {    // Address $0005789 [U2 $05789], Time 545.28ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '443240', 1 ; ** single play                          ;// 0000 01 05 443240 01
    71 end                                                          ;// 0047 00
    end

;Track $0017 Channel 5
    playlist 23, 5 ,':' ; {    // Address $000579b [U2 $0579b], Time 829.44ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3DDDCA', 1 ; ** single play                          ;// 0000 01 05 3DDDCA 01
    108 end                                                         ;// 006C 00
    end

;Track $0018 Channel 5
    playlist 24, 5 ,':' ; {    // Address $00057ad [U2 $057ad], Time 675.84ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4341B0', 1 ; ** single play                          ;// 0000 01 05 4341B0 01
    88 end                                                          ;// 0058 00
    end

;Track $0019 Channel 5
    playlist 25, 5 ,':' ; {    // Address $00057bf [U2 $057bf], Time 744.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3F6C52', 1 ; ** single play                          ;// 0000 01 05 3F6C52 01
    97 end                                                          ;// 0061 00
    end

;Track $001a Channel 5
    playlist 26, 5 ,':' ; {    // Address $00057d1 [U2 $057d1], Time 583.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '418F9E', 1 ; ** single play                          ;// 0000 01 05 418F9E 01
    76 end                                                          ;// 004C 00
    end

;Track $001b Channel 5
    playlist 27, 5 ,':' ; {    // Address $00057e3 [U2 $057e3], Time 921.60ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3ED636', 1 ; ** single play                          ;// 0000 01 05 3ED636 01
    120 end                                                         ;// 0078 00
    end

;Track $001c Channel 5
    playlist 28, 5 ,':' ; {    // Address $00057f5 [U2 $057f5], Time 729.60ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '439D62', 1 ; ** single play                          ;// 0000 01 05 439D62 01
    95 end                                                          ;// 005F 00
    end

;Track $001d Channel 5
    playlist 29, 5 ,':' ; {    // Address $0005807 [U2 $05807], Time 744.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3CB32C', 1 ; ** single play                          ;// 0000 01 05 3CB32C 01
    97 end                                                          ;// 0061 00
    end

;Track $001e Channel 5
    playlist 30, 5 ,':' ; {    // Address $0005819 [U2 $05819], Time 576.00ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '43F4C0', 1 ; ** single play                          ;// 0000 01 05 43F4C0 01
    75 end                                                          ;// 004B 00
    end

;Track $001f Channel 5
    playlist 31, 5 ,':' ; {    // Address $000582b [U2 $0582b], Time 783.36ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3E2D4A', 1 ; ** single play                          ;// 0000 01 05 3E2D4A 01
    102 end                                                         ;// 0066 00
    end

;Track $0020 Channel 5
    playlist 32, 5 ,':' ; {    // Address $000583d [U2 $0583d], Time 798.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3F89E4', 1 ; ** single play                          ;// 0000 01 05 3F89E4 01
    104 end                                                         ;// 0068 00
    end

;Track $0021 Channel 5
    playlist 33, 5 ,':' ; {    // Address $000584f [U2 $0584f], Time 798.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3F7B1C', 1 ; ** single play                          ;// 0000 01 05 3F7B1C 01
    104 end                                                         ;// 0068 00
    end

;Track $0023 Channel 5
    playlist 35, 5 ,':' ; {    // Address $0005861 [U2 $05861], Time 706.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '43BED6', 1 ; ** single play                          ;// 0000 01 05 43BED6 01
    92 end                                                          ;// 005C 00
    end

;Track $0024 Channel 5
    playlist 36, 5 ,':' ; {    // Address $0005873 [U2 $05873], Time 714.24ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4386E4', 1 ; ** single play                          ;// 0000 01 05 4386E4 01
    93 end                                                          ;// 005D 00
    end

;Track $0025 Channel 5
    playlist 37, 5 ,':' ; {    // Address $0005885 [U2 $05885], Time 752.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '42373A', 1 ; ** single play                          ;// 0000 01 05 42373A 01
    98 end                                                          ;// 0062 00
    end

;Track $0026 Channel 5
    playlist 38, 5 ,':' ; {    // Address $0005897 [U2 $05897], Time 668.16ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '419CD2', 1 ; ** single play                          ;// 0000 01 05 419CD2 01
    87 end                                                          ;// 0057 00
    end

;Track $0027 Channel 5
    playlist 39, 5 ,':' ; {    // Address $00058a9 [U2 $058a9], Time 721.92ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '40B7DA', 1 ; ** single play                          ;// 0000 01 05 40B7DA 01
    94 end                                                          ;// 005E 00
    end

;Track $0028 Channel 5
    playlist 40, 5 ,':' ; {    // Address $00058bb [U2 $058bb], Time 714.24ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '437016', 1 ; ** single play                          ;// 0000 01 05 437016 01
    93 end                                                          ;// 005D 00
    end

;Track $0029 Channel 5
    playlist 41, 5 ,':' ; {    // Address $00058cd [U2 $058cd], Time 691.20ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '43D49C', 1 ; ** single play                          ;// 0000 01 05 43D49C 01
    90 end                                                          ;// 005A 00
    end

;Track $002a Channel 5
    playlist 42, 5 ,':' ; {    // Address $00058df [U2 $058df], Time 706.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '43B3D4', 1 ; ** single play                          ;// 0000 01 05 43B3D4 01
    92 end                                                          ;// 005C 00
    end

;Track $002b Channel 5
    playlist 43, 5 ,':' ; {    // Address $00058f1 [U2 $058f1], Time 652.80ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '41DDE2', 1 ; ** single play                          ;// 0000 01 05 41DDE2 01
    85 end                                                          ;// 0055 00
    end

;Track $002c Channel 5
    playlist 44, 5 ,':' ; {    // Address $0005903 [U2 $05903], Time 844.80ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '40000C', 1 ; ** single play                          ;// 0000 01 05 40000C 01
    110 end                                                         ;// 006E 00
    end

;Track $002f Channel 5
    playlist 47, 5 ,':' ; {    // Address $0005915 [U2 $05915], Time 798.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '409C3C', 1 ; ** single play                          ;// 0000 01 05 409C3C 01
    104 end                                                         ;// 0068 00
    end

;Track $0030 Channel 5
    playlist 48, 5 ,':' ; {    // Address $0005927 [U2 $05927], Time 729.60ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '42CB52', 1 ; ** single play                          ;// 0000 01 05 42CB52 01
    95 end                                                          ;// 005F 00
    end

;Track $0031 Channel 5
    playlist 49, 5 ,':' ; {    // Address $0005939 [U2 $05939], Time 798.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '41C3F2', 1 ; ** single play                          ;// 0000 01 05 41C3F2 01
    104 end                                                         ;// 0068 00
    end

;Track $0032 Channel 5
    playlist 50, 5 ,':' ; {    // Address $000594b [U2 $0594b], Time 1190.40ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3B0BFE', 1 ; ** single play                          ;// 0000 01 05 3B0BFE 01
    155 end                                                         ;// 009B 00
    end

;Track $0033 Channel 5
    playlist 51, 5 ,':' ; {    // Address $000595d [U2 $0595d], Time 890.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3FF008', 1 ; ** single play                          ;// 0000 01 05 3FF008 01
    116 end                                                         ;// 0074 00
    end

;Track $0034 Channel 5
    playlist 52, 5 ,':' ; {    // Address $000596f [U2 $0596f], Time 944.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3EB7DC', 1 ; ** single play                          ;// 0000 01 05 3EB7DC 01
    123 end                                                         ;// 007B 00
    end

;Track $0035 Channel 5
    playlist 53, 5 ,':' ; {    // Address $0005981 [U2 $05981], Time 936.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3F4E94', 1 ; ** single play                          ;// 0000 01 05 3F4E94 01
    122 end                                                         ;// 007A 00
    end

;Track $0036 Channel 5
    playlist 54, 5 ,':' ; {    // Address $0005993 [U2 $05993], Time 706.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '42D758', 1 ; ** single play                          ;// 0000 01 05 42D758 01
    92 end                                                          ;// 005C 00
    end

;Track $0037 Channel 5
    playlist 55, 5 ,':' ; {    // Address $00059a5 [U2 $059a5], Time 791.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '40AA0E', 1 ; ** single play                          ;// 0000 01 05 40AA0E 01
    103 end                                                         ;// 0067 00
    end

;Track $0038 Channel 5
    playlist 56, 5 ,':' ; {    // Address $00059b7 [U2 $059b7], Time 936.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3E9962', 1 ; ** single play                          ;// 0000 01 05 3E9962 01
    122 end                                                         ;// 007A 00
    end

;Track $0039 Channel 5
    playlist 57, 5 ,':' ; {    // Address $00059c9 [U2 $059c9], Time 814.08ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '413234', 1 ; ** single play                          ;// 0000 01 05 413234 01
    106 end                                                         ;// 006A 00
    end

;Track $003a Channel 5
    playlist 58, 5 ,':' ; {    // Address $00059db [U2 $059db], Time 791.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '40C59A', 1 ; ** single play                          ;// 0000 01 05 40C59A 01
    103 end                                                         ;// 0067 00
    end

;Track $003b Channel 5
    playlist 59, 5 ,':' ; {    // Address $00059ed [U2 $059ed], Time 721.92ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4312C0', 1 ; ** single play                          ;// 0000 01 05 4312C0 01
    94 end                                                          ;// 005E 00
    end

;Track $003c Channel 5
    playlist 60, 5 ,':' ; {    // Address $00059ff [U2 $059ff], Time 852.48ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4063FE', 1 ; ** single play                          ;// 0000 01 05 4063FE 01
    111 end                                                         ;// 006F 00
    end

;Track $003d Channel 5
    playlist 61, 5 ,':' ; {    // Address $0005a11 [U2 $05a11], Time 591.36ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4409D8', 1 ; ** single play                          ;// 0000 01 05 4409D8 01
    77 end                                                          ;// 004D 00
    end

;Track $003e Channel 5
    playlist 62, 5 ,':' ; {    // Address $0005a23 [U2 $05a23], Time 760.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4275C8', 1 ; ** single play                          ;// 0000 01 05 4275C8 01
    99 end                                                          ;// 0063 00
    end

;Track $003f Channel 5
    playlist 63, 5 ,':' ; {    // Address $0005a35 [U2 $05a35], Time 867.84ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '401CD0', 1 ; ** single play                          ;// 0000 01 05 401CD0 01
    113 end                                                         ;// 0071 00
    end

;Track $0040 Channel 5
    playlist 64, 5 ,':' ; {    // Address $0005a47 [U2 $05a47], Time 768.00ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '41F7A6', 1 ; ** single play                          ;// 0000 01 05 41F7A6 01
    100 end                                                         ;// 0064 00
    end

;Track $0041 Channel 5
    playlist 65, 5 ,':' ; {    // Address $0005a59 [U2 $05a59], Time 814.08ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '415A70', 1 ; ** single play                          ;// 0000 01 05 415A70 01
    106 end                                                         ;// 006A 00
    end

;Track $0042 Channel 5
    playlist 66, 5 ,':' ; {    // Address $0005a6b [U2 $05a6b], Time 883.20ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '408038', 1 ; ** single play                          ;// 0000 01 05 408038 01
    115 end                                                         ;// 0073 00
    end

;Track $0043 Channel 5
    playlist 67, 5 ,':' ; {    // Address $0005a7d [U2 $05a7d], Time 875.52ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3EE54E', 1 ; ** single play                          ;// 0000 01 05 3EE54E 01
    114 end                                                         ;// 0072 00
    end

;Track $0044 Channel 5
    playlist 68, 5 ,':' ; {    // Address $0005a8f [U2 $05a8f], Time 791.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4124B4', 1 ; ** single play                          ;// 0000 01 05 4124B4 01
    103 end                                                         ;// 0067 00
    end

;Track $0045 Channel 5
    playlist 69, 5 ,':' ; {    // Address $0005aa1 [U2 $05aa1], Time 1121.28ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3C266C', 1 ; ** single play                          ;// 0000 01 05 3C266C 01
    146 end                                                         ;// 0092 00
    end

;Track $0047 Channel 5
    playlist 71, 5 ,':' ; {    // Address $0005ab3 [U2 $05ab3], Time 960.00ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3DBD8A', 1 ; ** single play                          ;// 0000 01 05 3DBD8A 01
    125 end                                                         ;// 007D 00
    end

;Track $0048 Channel 5
    playlist 72, 5 ,':' ; {    // Address $0005ac5 [U2 $05ac5], Time 883.20ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3E1D88', 1 ; ** single play                          ;// 0000 01 05 3E1D88 01
    115 end                                                         ;// 0073 00
    end

;Track $0049 Channel 5
    playlist 73, 5 ,':' ; {    // Address $0005ad7 [U2 $05ad7], Time 913.92ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3E5C00', 1 ; ** single play                          ;// 0000 01 05 3E5C00 01
    119 end                                                         ;// 0077 00
    end

;Track $004a Channel 5
    playlist 74, 5 ,':' ; {    // Address $0005ae9 [U2 $05ae9], Time 752.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '432A4A', 1 ; ** single play                          ;// 0000 01 05 432A4A 01
    98 end                                                          ;// 0062 00
    end

;Track $004b Channel 5
    playlist 75, 5 ,':' ; {    // Address $0005afb [U2 $05afb], Time 1320.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3D07F2', 1 ; ** single play                          ;// 0000 01 05 3D07F2 01
    132 end                                                         ;// 0084 00
    end

;Track $004c Channel 5
    playlist 76, 5 ,':' ; {    // Address $0005b1a [U2 $05b1a], Time 806.40ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '44B568', 1 ; ** single play                          ;// 0000 01 05 44B568 01
    65 end                                                          ;// 0041 00
    end

;Track $004d Channel 5
    playlist 77, 5 ,':' ; {    // Address $0005b39 [U2 $05b39], Time 721.92ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '4413F8', 1 ; ** single play                          ;// 0000 01 05 4413F8 01
    54 end                                                          ;// 0036 00
    end

;Track $004e Channel 5
    playlist 78, 5 ,':' ; {    // Address $0005b58 [U2 $05b58], Time 1297.92ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3B1FC0', 1 ; ** single play                          ;// 0000 01 05 3B1FC0 01
    129 end                                                         ;// 0081 00
    end

;Track $004f Channel 5
    playlist 79, 5 ,':' ; {    // Address $0005b77 [U2 $05b77], Time 1274.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '39C332', 1 ; ** single play                          ;// 0000 01 05 39C332 01
    126 end                                                         ;// 007E 00
    end

;Track $0050 Channel 5
    playlist 80, 5 ,':' ; {    // Address $0005b96 [U2 $05b96], Time 975.36ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3EA8A2', 1 ; ** single play                          ;// 0000 01 05 3EA8A2 01
    87 end                                                          ;// 0057 00
    end

;Track $0051 Channel 5
    playlist 81, 5 ,':' ; {    // Address $0005bb5 [U2 $05bb5], Time 860.16ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '40E112', 1 ; ** single play                          ;// 0000 01 05 40E112 01
    72 end                                                          ;// 0048 00
    end

;Track $0053 Channel 5
    playlist 83, 5 ,':' ; {    // Address $0005bd4 [U2 $05bd4], Time 944.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '43FF50', 1 ; ** single play                          ;// 0000 01 05 43FF50 01
    83 end                                                          ;// 0053 00
    end

;Track $0054 Channel 5
    playlist 84, 5 ,':' ; {    // Address $0005bf3 [U2 $05bf3], Time 814.08ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '44ACCE', 1 ; ** single play                          ;// 0000 01 05 44ACCE 01
    66 end                                                          ;// 0042 00
    end

;Track $0055 Channel 5
    playlist 85, 5 ,':' ; {    // Address $0005c12 [U2 $05c12], Time 936.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3DCDB0', 1 ; ** single play                          ;// 0000 01 05 3DCDB0 01
    82 end                                                          ;// 0052 00
    end

;Track $0056 Channel 5
    playlist 86, 5 ,':' ; {    // Address $0005c31 [U2 $05c31], Time 952.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3D2950', 1 ; ** single play                          ;// 0000 01 05 3D2950 01
    84 end                                                          ;// 0054 00
    end

;Track $0057 Channel 5
    playlist 87, 5 ,':' ; {    // Address $0005c50 [U2 $05c50], Time 768.00ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '44501E', 1 ; ** single play                          ;// 0000 01 05 44501E 01
    60 end                                                          ;// 003C 00
    end

;Track $0058 Channel 5
    playlist 88, 5 ,':' ; {    // Address $0005c6f [U2 $05c6f], Time 1144.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '38A2F8', 1 ; ** single play                          ;// 0000 01 05 38A2F8 01
    109 end                                                         ;// 006D 00
    end

;Track $0059 Channel 5
    playlist 89, 5 ,':' ; {    // Address $0005c8e [U2 $05c8e], Time 1198.08ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3A183C', 1 ; ** single play                          ;// 0000 01 05 3A183C 01
    116 end                                                         ;// 0074 00
    end

;Track $005a Channel 5
    playlist 90, 5 ,':' ; {    // Address $0005cad [U2 $05cad], Time 890.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '40EEA2', 1 ; ** single play                          ;// 0000 01 05 40EEA2 01
    76 end                                                          ;// 004C 00
    end

;Track $005b Channel 5
    playlist 91, 5 ,':' ; {    // Address $0005ccc [U2 $05ccc], Time 1121.28ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3FE198', 1 ; ** single play                          ;// 0000 01 05 3FE198 01
    106 end                                                         ;// 006A 00
    end

;Track $005c Channel 5
    playlist 92, 5 ,':' ; {    // Address $0005ceb [U2 $05ceb], Time 1167.36ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '4047A8', 1 ; ** single play                          ;// 0000 01 05 4047A8 01
    112 end                                                         ;// 0070 00
    end

;Track $005d Channel 5
    playlist 93, 5 ,':' ; {    // Address $0005d0a [U2 $05d0a], Time 883.20ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '443C3E', 1 ; ** single play                          ;// 0000 01 05 443C3E 01
    75 end                                                          ;// 004B 00
    end

;Track $005e Channel 5
    playlist 94, 5 ,':' ; {    // Address $0005d29 [U2 $05d29], Time 1013.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '425CD4', 1 ; ** single play                          ;// 0000 01 05 425CD4 01
    92 end                                                          ;// 005C 00
    end

;Track $005f Channel 5
    playlist 95, 5 ,':' ; {    // Address $0005d48 [U2 $05d48], Time 1090.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '4243D4', 1 ; ** single play                          ;// 0000 01 05 4243D4 01
    102 end                                                         ;// 0066 00
    end

;Track $0060 Channel 5
    playlist 96, 5 ,':' ; {    // Address $0005d67 [U2 $05d67], Time 890.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '441E16', 1 ; ** single play                          ;// 0000 01 05 441E16 01
    76 end                                                          ;// 004C 00
    end

;Track $0061 Channel 5
    playlist 97, 5 ,':' ; {    // Address $0005d86 [U2 $05d86], Time 1128.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3AF830', 1 ; ** single play                          ;// 0000 01 05 3AF830 01
    107 end                                                         ;// 006B 00
    end

;Track $0062 Channel 5
    playlist 98, 5 ,':' ; {    // Address $0005da5 [U2 $05da5], Time 983.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '42FB0C', 1 ; ** single play                          ;// 0000 01 05 42FB0C 01
    88 end                                                          ;// 0058 00
    end

;Track $0063 Channel 5
    playlist 99, 5 ,':' ; {    // Address $0005dc4 [U2 $05dc4], Time 814.08ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3E4C8A', 1 ; ** single play                          ;// 0000 01 05 3E4C8A 01
    106 end                                                         ;// 006A 00
    end

;Track $0064 Channel 5
    playlist 100, 5 ,':' ; {    // Address $0005dd6 [U2 $05dd6], Time 460.80ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4306E6', 1 ; ** single play                          ;// 0000 01 05 4306E6 01
    60 end                                                          ;// 003C 00
    end

;Track $0065 Channel 5
    playlist 101, 5 ,':' ; {    // Address $0005de8 [U2 $05de8], Time 806.40ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4335FE', 1 ; ** single play                          ;// 0000 01 05 4335FE 01
    105 end                                                         ;// 0069 00
    end

;Track $0066 Channel 5
    playlist 102, 5 ,':' ; {    // Address $0005dfa [U2 $05dfa], Time 606.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '43A89C', 1 ; ** single play                          ;// 0000 01 05 43A89C 01
    79 end                                                          ;// 004F 00
    end

;Track $0067 Channel 5
    playlist 103, 5 ,':' ; {    // Address $0005e0c [U2 $05e0c], Time 729.60ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '425056', 1 ; ** single play                          ;// 0000 01 05 425056 01
    95 end                                                          ;// 005F 00
    end

;Track $0068 Channel 5
    playlist 104, 5 ,':' ; {    // Address $0005e1e [U2 $05e1e], Time 706.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '42E34E', 1 ; ** single play                          ;// 0000 01 05 42E34E 01
    92 end                                                          ;// 005C 00
    end

;Track $0069 Channel 5
    playlist 105, 5 ,':' ; {    // Address $0005e30 [U2 $05e30], Time 568.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '437B80', 1 ; ** single play                          ;// 0000 01 05 437B80 01
    74 end                                                          ;// 004A 00
    end

;Track $006a Channel 5
    playlist 106, 5 ,':' ; {    // Address $0005e42 [U2 $05e42], Time 768.00ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '428234', 1 ; ** single play                          ;// 0000 01 05 428234 01
    100 end                                                         ;// 0064 00
    end

;Track $0080 Channel 1
    playlist 128, 1 ,':' ; {    // Address $0005e54 [U2 $05e54], Time 422.40ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, '44F01E', 1 ; ** single play                          ;// 0000 01 01 44F01E 01
    55 end                                                          ;// 0037 00
    end

;Track $0081 Channel 2
    playlist 129, 2 ,':' ; {    // Address $0005e66 [U2 $05e66], Time 422.40ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '44F566', 1 ; ** single play                          ;// 0000 01 02 44F566 01
    55 end                                                          ;// 0037 00
    end

;Track $0082 Channel 3
    playlist 130, 3 ,':' ; {    // Address $0005e78 [U2 $05e78], Time 422.40ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, '44FAA8', 1 ; ** single play                          ;// 0000 01 03 44FAA8 01
    55 end                                                          ;// 0037 00
    end

;Track $0083 Channel 4
    playlist 131, 4 ,':' ; {    // Address $0005e8a [U2 $05e8a], Time 422.40ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, '0FFA20', 1 ; ** single play                          ;// 0000 01 04 0FFA20 01
    55 end                                                          ;// 0037 00
    end

;Track $0084 Channel 1
    playlist 132, 1 ,':' ; {    // Address $0005e9c [U2 $05e9c], Time 921.60ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, '3ABC52', 1 ; ** single play                          ;// 0000 01 01 3ABC52 01
    120 end                                                         ;// 0078 00
    end

;Track $0085 Channel 2
    playlist 133, 2 ,':' ; {    // Address $0005eae [U2 $05eae], Time 921.60ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '3ABC52', 1 ; ** single play                          ;// 0000 01 02 3ABC52 01
    120 end                                                         ;// 0078 00
    end

;Track $0086 Channel 3
    playlist 134, 3 ,':' ; {    // Address $0005ec0 [U2 $05ec0], Time 921.60ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, '3ABC52', 1 ; ** single play                          ;// 0000 01 03 3ABC52 01
    120 end                                                         ;// 0078 00
    end

;Track $0087 Channel 4
    playlist 135, 4 ,':' ; {    // Address $0005ed2 [U2 $05ed2], Time 921.60ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, '3ABC52', 1 ; ** single play                          ;// 0000 01 04 3ABC52 01
    120 end                                                         ;// 0078 00
    end

;Track $0088 Channel 1
    playlist 136, 1 ,':' ; {    // Address $0005ee4 [U2 $05ee4], Time 1413.12ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, '3573A2', 1 ; ** single play                          ;// 0000 01 01 3573A2 01
    184 end                                                         ;// 00B8 00
    end

;Track $0089 Channel 2
    playlist 137, 2 ,':' ; {    // Address $0005ef6 [U2 $05ef6], Time 1413.12ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '3591BC', 1 ; ** single play                          ;// 0000 01 02 3591BC 01
    184 end                                                         ;// 00B8 00
    end

;Track $008a Channel 3
    playlist 138, 3 ,':' ; {    // Address $0005f08 [U2 $05f08], Time 1413.12ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, '34DA4C', 1 ; ** single play                          ;// 0000 01 03 34DA4C 01
    184 end                                                         ;// 00B8 00
    end

;Track $008b Channel 4
    playlist 139, 4 ,':' ; {    // Address $0005f1a [U2 $05f1a], Time 1413.12ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, '3626E2', 1 ; ** single play                          ;// 0000 01 04 3626E2 01
    184 end                                                         ;// 00B8 00
    end

;Track $008c Channel 2
    playlist 140, 2 ,':' ; {    // Address $0005f2c [U2 $05f2c], Time 238.08ms
    0	setvol 2, 25                                                  ;// 0000 07 02 19
    0	play	2, '44E3D4', 1 ; ** single play                          ;// 0000 01 02 44E3D4 01
    31 end                                                          ;// 001F 00
    end

;Track $0090 Channel 4
    playlist 144, 4 ,':' ; {    // Address $0005f3e [U2 $05f3e], Time 330.24ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, '44FFCE', 1 ; ** single play                          ;// 0000 01 04 44FFCE 01
    43 end                                                          ;// 002B 00
    end

;Track $0091 Channel 4
    playlist 145, 4 ,':' ; {    // Address $0005f50 [U2 $05f50], Time 337.92ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, '451B9A', 1 ; ** single play                          ;// 0000 01 04 451B9A 01
    44 end                                                          ;// 002C 00
    end

;Track $0092 Channel 4
    playlist 146, 4 ,':' ; {    // Address $0005f62 [U2 $05f62], Time 1052.16ms
    0	setvol 4, 95                                                  ;// 0000 07 04 5F
    0	play	4, '3A41D0', 1 ; ** single play                          ;// 0000 01 04 3A41D0 01
    137 end                                                         ;// 0089 00
    end

;Track $0093 Channel 3
    playlist 147, 3 ,':' ; {    // Address $0005f74 [U2 $05f74], Time 652.80ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, '400E70', 1 ; ** single play                          ;// 0000 01 03 400E70 01
    85 end                                                          ;// 0055 00
    end

;Track $0097 Channel 4
    playlist 151, 4 ,':' ; {    // Address $0005f86 [U2 $05f86], Time 591.36ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, '426952', 1 ; ** single play                          ;// 0000 01 04 426952 01
    77 end                                                          ;// 004D 00
    end

;Track $00a0 Channel 4
    playlist 160, 4 ,':' ; {    // Address $0005f98 [U2 $05f98], Time 560.64ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, '4358F0', 1 ; ** single play                          ;// 0000 01 04 4358F0 01
    73 end                                                          ;// 0049 00
    end

;Track $00a2 Channel 4
    playlist 162, 4 ,':' ; {    // Address $0005faa [U2 $05faa], Time 552.96ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, '3F309C', 1 ; ** single play                          ;// 0000 01 04 3F309C 01
    72 end                                                          ;// 0048 00
    end

;Track $00a3 Channel 4
    playlist 163, 4 ,':' ; {    // Address $0005fbc [U2 $05fbc], Time 552.96ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, '3F128C', 1 ; ** single play                          ;// 0000 01 04 3F128C 01
    72 end                                                          ;// 0048 00
    end

;Track $00a4 Channel 4
    playlist 164, 4 ,':' ; {    // Address $0005fce [U2 $05fce], Time 952.32ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, '3C6DE2', 1 ; ** single play                          ;// 0000 01 04 3C6DE2 01
    124 end                                                         ;// 007C 00
    end

;Track $00a5 Channel 1
    playlist 165, 1 ,':' ; {    // Address $0005fe0 [U2 $05fe0], Time 2250.24ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, '347562', 1 ; ** single play                          ;// 0000 01 01 347562 01
    293 end                                                         ;// 0125 00
    end

;Track $00a7 Channel 1
    playlist 167, 1 ,':' ; {    // Address $0005ff2 [U2 $05ff2], Time 261.12ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, '1FFC92', 1 ; ** single play                          ;// 0000 01 01 1FFC92 01
    34 end                                                          ;// 0022 00
    end

;Track $00a8 Channel 3
    playlist 168, 3 ,':' ; {    // Address $0006004 [U2 $06004], Time 115.20ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, '4517D2', 1 ; ** single play                          ;// 0000 01 03 4517D2 01
    15 end                                                          ;// 000F 00
    end

;Track $00a9 Channel 3
    playlist 169, 3 ,':' ; {    // Address $0006016 [U2 $06016], Time 345.60ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, '446D36', 1 ; ** single play                          ;// 0000 01 03 446D36 01
    45 end                                                          ;// 002D 00
    end

;Track $00ae Channel 3
    playlist 174, 3 ,':' ; {    // Address $0006028 [U2 $06028], Time 3809.28ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	downvol 0, 50                                                 ;// 0000 09 00 32
    0	play	3, '321C2E', 1 ; ** single play                          ;// 0000 01 03 321C2E 01
    496 rampupvol 0, 127, 58    ;                                   ;// 01F0 0B 00 7F 003A
    end                                                             ;// 0000 00
    end

;Track $00af Channel 3
    playlist 175, 3 ,':' ; {    // Address $0006046 [U2 $06046], Time 1973.76ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	downvol 0, 50                                                 ;// 0000 09 00 32
    0	play	3, '339B8A', 1 ; ** single play                          ;// 0000 01 03 339B8A 01
    257 rampupvol 0, 127, 58    ;                                   ;// 0101 0B 00 7F 003A
    end                                                             ;// 0000 00
    end

;Track $00b0 Channel 5
    playlist 176, 5 ,':' ; {    // Address $0006064 [U2 $06064], Time 514.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '44925A', 1 ; ** single play                          ;// 0000 01 05 44925A 01
    67 end                                                          ;// 0043 00
    end

;Track $00b1 Channel 5
    playlist 177, 5 ,':' ; {    // Address $0006076 [U2 $06076], Time 929.28ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3F037A', 1 ; ** single play                          ;// 0000 01 05 3F037A 01
    121 end                                                         ;// 0079 00
    end

;Track $00b2 Channel 5
    playlist 178, 5 ,':' ; {    // Address $0006088 [U2 $06088], Time 729.60ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '413FA2', 1 ; ** single play                          ;// 0000 01 05 413FA2 01
    95 end                                                          ;// 005F 00
    end

;Track $00b3 Channel 5
    playlist 179, 5 ,':' ; {    // Address $000609a [U2 $0609a], Time 660.48ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3D7C3C', 1 ; ** single play                          ;// 0000 01 05 3D7C3C 01
    86 end                                                          ;// 0056 00
    end

;Track $00b4 Channel 5
    playlist 180, 5 ,':' ; {    // Address $00060ac [U2 $060ac], Time 1013.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3C5C56', 1 ; ** single play                          ;// 0000 01 05 3C5C56 01
    132 end                                                         ;// 0084 00
    end

;Track $00b6 Channel 5
    playlist 182, 5 ,':' ; {    // Address $00060be [U2 $060be], Time 990.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3A6AEC', 1 ; ** single play                          ;// 0000 01 05 3A6AEC 01
    129 end                                                         ;// 0081 00
    end

;Track $00b7 Channel 5
    playlist 183, 5 ,':' ; {    // Address $00060d0 [U2 $060d0], Time 683.52ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '434D50', 1 ; ** single play                          ;// 0000 01 05 434D50 01
    89 end                                                          ;// 0059 00
    end

;Track $00b8 Channel 5
    playlist 184, 5 ,':' ; {    // Address $00060e2 [U2 $060e2], Time 721.92ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '41EACC', 1 ; ** single play                          ;// 0000 01 05 41EACC 01
    94 end                                                          ;// 005E 00
    end

;Track $00b9 Channel 5
    playlist 185, 5 ,':' ; {    // Address $00060f4 [U2 $060f4], Time 706.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3D4A9E', 1 ; ** single play                          ;// 0000 01 05 3D4A9E 01
    92 end                                                          ;// 005C 00
    end

;Track $00ba Channel 5
    playlist 186, 5 ,':' ; {    // Address $0006106 [U2 $06106], Time 775.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3C90AC', 1 ; ** single play                          ;// 0000 01 05 3C90AC 01
    101 end                                                         ;// 0065 00
    end

;Track $00bb Channel 5
    playlist 187, 5 ,':' ; {    // Address $0006118 [U2 $06118], Time 744.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3E3CFC', 1 ; ** single play                          ;// 0000 01 05 3E3CFC 01
    97 end                                                          ;// 0061 00
    end

;Track $00bc Channel 5
    playlist 188, 5 ,':' ; {    // Address $000612a [U2 $0612a], Time 637.44ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4109B2', 1 ; ** single play                          ;// 0000 01 05 4109B2 01
    83 end                                                          ;// 0053 00
    end

;Track $00bd Channel 5
    playlist 189, 5 ,':' ; {    // Address $000613c [U2 $0613c], Time 760.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '411734', 1 ; ** single play                          ;// 0000 01 05 411734 01
    99 end                                                          ;// 0063 00
    end

;Track $00be Channel 5
    playlist 190, 5 ,':' ; {    // Address $000614e [U2 $0614e], Time 583.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '445A08', 1 ; ** single play                          ;// 0000 01 05 445A08 01
    76 end                                                          ;// 004C 00
    end

;Track $00bf Channel 5
    playlist 191, 5 ,':' ; {    // Address $0006160 [U2 $06160], Time 929.28ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3D9CFC', 1 ; ** single play                          ;// 0000 01 05 3D9CFC 01
    121 end                                                         ;// 0079 00
    end

;Track $00c0 Channel 5
    playlist 192, 5 ,':' ; {    // Address $0006172 [U2 $06172], Time 660.48ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '429AEE', 1 ; ** single play                          ;// 0000 01 05 429AEE 01
    86 end                                                          ;// 0056 00
    end

;Track $00c1 Channel 5
    playlist 193, 5 ,':' ; {    // Address $0006184 [U2 $06184], Time 737.28ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3CC44A', 1 ; ** single play                          ;// 0000 01 05 3CC44A 01
    96 end                                                          ;// 0060 00
    end

;Track $00c2 Channel 5
    playlist 194, 5 ,':' ; {    // Address $0006196 [U2 $06196], Time 860.16ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3E8A1E', 1 ; ** single play                          ;// 0000 01 05 3E8A1E 01
    112 end                                                         ;// 0070 00
    end

;Track $00c3 Channel 5
    playlist 195, 5 ,':' ; {    // Address $00061a8 [U2 $061a8], Time 729.60ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3FA740', 1 ; ** single play                          ;// 0000 01 05 3FA740 01
    95 end                                                          ;// 005F 00
    end

;Track $00c4 Channel 5
    playlist 196, 5 ,':' ; {    // Address $00061ba [U2 $061ba], Time 837.12ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3B5A36', 1 ; ** single play                          ;// 0000 01 05 3B5A36 01
    109 end                                                         ;// 006D 00
    end

;Track $00c5 Channel 5
    playlist 197, 5 ,':' ; {    // Address $00061cc [U2 $061cc], Time 791.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '407220', 1 ; ** single play                          ;// 0000 01 05 407220 01
    103 end                                                         ;// 0067 00
    end

;Track $00c6 Channel 5
    playlist 198, 5 ,':' ; {    // Address $00061de [U2 $061de], Time 599.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '442834', 1 ; ** single play                          ;// 0000 01 05 442834 01
    78 end                                                          ;// 004E 00
    end

;Track $00c7 Channel 5
    playlist 199, 5 ,':' ; {    // Address $00061f0 [U2 $061f0], Time 599.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '40D358', 1 ; ** single play                          ;// 0000 01 05 40D358 01
    78 end                                                          ;// 004E 00
    end

;Track $00c8 Channel 5
    playlist 200, 5 ,':' ; {    // Address $0006202 [U2 $06202], Time 706.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '421DE8', 1 ; ** single play                          ;// 0000 01 05 421DE8 01
    92 end                                                          ;// 005C 00
    end

;Track $00c9 Channel 5
    playlist 201, 5 ,':' ; {    // Address $0006214 [U2 $06214], Time 829.44ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '39D8B8', 1 ; ** single play                          ;// 0000 01 05 39D8B8 01
    108 end                                                         ;// 006C 00
    end

;Track $00cb Channel 5
    playlist 203, 5 ,':' ; {    // Address $0006226 [U2 $06226], Time 1013.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3D07F2', 1 ; ** single play                          ;// 0000 01 05 3D07F2 01
    132 end                                                         ;// 0084 00
    end

;Track $00cc Channel 5
    playlist 204, 5 ,':' ; {    // Address $0006238 [U2 $06238], Time 990.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3CD564', 1 ; ** single play                          ;// 0000 01 05 3CD564 01
    129 end                                                         ;// 0081 00
    end

;Track $00cd Channel 5
    playlist 205, 5 ,':' ; {    // Address $000624a [U2 $0624a], Time 414.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4413F8', 1 ; ** single play                          ;// 0000 01 05 4413F8 01
    54 end                                                          ;// 0036 00
    end

;Track $00ce Channel 5
    playlist 206, 5 ,':' ; {    // Address $000625c [U2 $0625c], Time 499.20ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '44B568', 1 ; ** single play                          ;// 0000 01 05 44B568 01
    65 end                                                          ;// 0041 00
    end

;Track $00cf Channel 5
    playlist 207, 5 ,':' ; {    // Address $000626e [U2 $0626e], Time 967.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '39C332', 1 ; ** single play                          ;// 0000 01 05 39C332 01
    126 end                                                         ;// 007E 00
    end

;Track $00d0 Channel 5
    playlist 208, 5 ,':' ; {    // Address $0006280 [U2 $06280], Time 990.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3B1FC0', 1 ; ** single play                          ;// 0000 01 05 3B1FC0 01
    129 end                                                         ;// 0081 00
    end

;Track $00d1 Channel 5
    playlist 209, 5 ,':' ; {    // Address $0006292 [U2 $06292], Time 552.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '40E112', 1 ; ** single play                          ;// 0000 01 05 40E112 01
    72 end                                                          ;// 0048 00
    end

;Track $00d2 Channel 5
    playlist 210, 5 ,':' ; {    // Address $00062a4 [U2 $062a4], Time 668.16ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3EA8A2', 1 ; ** single play                          ;// 0000 01 05 3EA8A2 01
    87 end                                                          ;// 0057 00
    end

;Track $00d4 Channel 5
    playlist 212, 5 ,':' ; {    // Address $00062b6 [U2 $062b6], Time 506.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '44ACCE', 1 ; ** single play                          ;// 0000 01 05 44ACCE 01
    66 end                                                          ;// 0042 00
    end

;Track $00d5 Channel 5
    playlist 213, 5 ,':' ; {    // Address $00062c8 [U2 $062c8], Time 637.44ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '43FF50', 1 ; ** single play                          ;// 0000 01 05 43FF50 01
    83 end                                                          ;// 0053 00
    end

;Track $00d6 Channel 5
    playlist 214, 5 ,':' ; {    // Address $00062da [U2 $062da], Time 645.12ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3D2950', 1 ; ** single play                          ;// 0000 01 05 3D2950 01
    84 end                                                          ;// 0054 00
    end

;Track $00d7 Channel 5
    playlist 215, 5 ,':' ; {    // Address $00062ec [U2 $062ec], Time 629.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3DCDB0', 1 ; ** single play                          ;// 0000 01 05 3DCDB0 01
    82 end                                                          ;// 0052 00
    end

;Track $00d8 Channel 5
    playlist 216, 5 ,':' ; {    // Address $00062fe [U2 $062fe], Time 837.12ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '38A2F8', 1 ; ** single play                          ;// 0000 01 05 38A2F8 01
    109 end                                                         ;// 006D 00
    end

;Track $00d9 Channel 5
    playlist 217, 5 ,':' ; {    // Address $0006310 [U2 $06310], Time 460.80ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '44501E', 1 ; ** single play                          ;// 0000 01 05 44501E 01
    60 end                                                          ;// 003C 00
    end

;Track $00da Channel 5
    playlist 218, 5 ,':' ; {    // Address $0006322 [U2 $06322], Time 583.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '40EEA2', 1 ; ** single play                          ;// 0000 01 05 40EEA2 01
    76 end                                                          ;// 004C 00
    end

;Track $00db Channel 5
    playlist 219, 5 ,':' ; {    // Address $0006334 [U2 $06334], Time 890.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3A183C', 1 ; ** single play                          ;// 0000 01 05 3A183C 01
    116 end                                                         ;// 0074 00
    end

;Track $00dc Channel 5
    playlist 220, 5 ,':' ; {    // Address $0006346 [U2 $06346], Time 860.16ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4047A8', 1 ; ** single play                          ;// 0000 01 05 4047A8 01
    112 end                                                         ;// 0070 00
    end

;Track $00dd Channel 5
    playlist 221, 5 ,':' ; {    // Address $0006358 [U2 $06358], Time 814.08ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3FE198', 1 ; ** single play                          ;// 0000 01 05 3FE198 01
    106 end                                                         ;// 006A 00
    end

;Track $00de Channel 5
    playlist 222, 5 ,':' ; {    // Address $000636a [U2 $0636a], Time 706.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '425CD4', 1 ; ** single play                          ;// 0000 01 05 425CD4 01
    92 end                                                          ;// 005C 00
    end

;Track $00df Channel 5
    playlist 223, 5 ,':' ; {    // Address $000637c [U2 $0637c], Time 576.00ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '443C3E', 1 ; ** single play                          ;// 0000 01 05 443C3E 01
    75 end                                                          ;// 004B 00
    end

;Track $00e0 Channel 5
    playlist 224, 5 ,':' ; {    // Address $000638e [U2 $0638e], Time 583.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '441E16', 1 ; ** single play                          ;// 0000 01 05 441E16 01
    76 end                                                          ;// 004C 00
    end

;Track $00e1 Channel 5
    playlist 225, 5 ,':' ; {    // Address $00063a0 [U2 $063a0], Time 783.36ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4243D4', 1 ; ** single play                          ;// 0000 01 05 4243D4 01
    102 end                                                         ;// 0066 00
    end

;Track $00e2 Channel 5
    playlist 226, 5 ,':' ; {    // Address $00063b2 [U2 $063b2], Time 675.84ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '42FB0C', 1 ; ** single play                          ;// 0000 01 05 42FB0C 01
    88 end                                                          ;// 0058 00
    end

;Track $00e3 Channel 5
    playlist 227, 5 ,':' ; {    // Address $00063c4 [U2 $063c4], Time 821.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3AF830', 1 ; ** single play                          ;// 0000 01 05 3AF830 01
    107 end                                                         ;// 006B 00
    end

;Track $00e4 Channel 5
    playlist 228, 5 ,':' ; {    // Address $00063d6 [U2 $063d6], Time 1236.48ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3F037A', 1 ; ** single play                          ;// 0000 01 05 3F037A 01
    121 end                                                         ;// 0079 00
    end

;Track $00e5 Channel 5
    playlist 229, 5 ,':' ; {    // Address $00063f5 [U2 $063f5], Time 821.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '44925A', 1 ; ** single play                          ;// 0000 01 05 44925A 01
    67 end                                                          ;// 0043 00
    end

;Track $00e6 Channel 5
    playlist 230, 5 ,':' ; {    // Address $0006414 [U2 $06414], Time 967.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3D7C3C', 1 ; ** single play                          ;// 0000 01 05 3D7C3C 01
    86 end                                                          ;// 0056 00
    end

;Track $00e7 Channel 5
    playlist 231, 5 ,':' ; {    // Address $0006433 [U2 $06433], Time 1036.80ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '413FA2', 1 ; ** single play                          ;// 0000 01 05 413FA2 01
    95 end                                                          ;// 005F 00
    end

;Track $00e8 Channel 5
    playlist 232, 5 ,':' ; {    // Address $0006452 [U2 $06452], Time 1320.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3C5C56', 1 ; ** single play                          ;// 0000 01 05 3C5C56 01
    132 end                                                         ;// 0084 00
    end

;Track $00e9 Channel 5
    playlist 233, 5 ,':' ; {    // Address $0006471 [U2 $06471], Time 1297.92ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3A6AEC', 1 ; ** single play                          ;// 0000 01 05 3A6AEC 01
    129 end                                                         ;// 0081 00
    end

;Track $00ea Channel 5
    playlist 234, 5 ,':' ; {    // Address $0006490 [U2 $06490], Time 522.24ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '448928', 1 ; ** single play                          ;// 0000 01 05 448928 01
    68 end                                                          ;// 0044 00
    end

;Track $00eb Channel 5
    playlist 235, 5 ,':' ; {    // Address $00064a2 [U2 $064a2], Time 1029.12ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '41EACC', 1 ; ** single play                          ;// 0000 01 05 41EACC 01
    94 end                                                          ;// 005E 00
    end

;Track $00ec Channel 5
    playlist 236, 5 ,':' ; {    // Address $00064c1 [U2 $064c1], Time 990.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '434D50', 1 ; ** single play                          ;// 0000 01 05 434D50 01
    89 end                                                          ;// 0059 00
    end

;Track $00ed Channel 5
    playlist 237, 5 ,':' ; {    // Address $00064e0 [U2 $064e0], Time 1082.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3C90AC', 1 ; ** single play                          ;// 0000 01 05 3C90AC 01
    101 end                                                         ;// 0065 00
    end

;Track $00ee Channel 5
    playlist 238, 5 ,':' ; {    // Address $00064ff [U2 $064ff], Time 1013.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3D4A9E', 1 ; ** single play                          ;// 0000 01 05 3D4A9E 01
    92 end                                                          ;// 005C 00
    end

;Track $00ef Channel 5
    playlist 239, 5 ,':' ; {    // Address $000651e [U2 $0651e], Time 944.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '4109B2', 1 ; ** single play                          ;// 0000 01 05 4109B2 01
    83 end                                                          ;// 0053 00
    end

;Track $00f0 Channel 5
    playlist 240, 5 ,':' ; {    // Address $000653d [U2 $0653d], Time 1052.16ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3E3CFC', 1 ; ** single play                          ;// 0000 01 05 3E3CFC 01
    97 end                                                          ;// 0061 00
    end

;Track $00f1 Channel 5
    playlist 241, 5 ,':' ; {    // Address $000655c [U2 $0655c], Time 890.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '445A08', 1 ; ** single play                          ;// 0000 01 05 445A08 01
    76 end                                                          ;// 004C 00
    end

;Track $00f2 Channel 5
    playlist 242, 5 ,':' ; {    // Address $000657b [U2 $0657b], Time 1067.52ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '411734', 1 ; ** single play                          ;// 0000 01 05 411734 01
    99 end                                                          ;// 0063 00
    end

;Track $00f3 Channel 5
    playlist 243, 5 ,':' ; {    // Address $000659a [U2 $0659a], Time 967.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '429AEE', 1 ; ** single play                          ;// 0000 01 05 429AEE 01
    86 end                                                          ;// 0056 00
    end

;Track $00f4 Channel 5
    playlist 244, 5 ,':' ; {    // Address $00065b9 [U2 $065b9], Time 1236.48ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3D9CFC', 1 ; ** single play                          ;// 0000 01 05 3D9CFC 01
    121 end                                                         ;// 0079 00
    end

;Track $00f5 Channel 5
    playlist 245, 5 ,':' ; {    // Address $00065d8 [U2 $065d8], Time 1167.36ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3E8A1E', 1 ; ** single play                          ;// 0000 01 05 3E8A1E 01
    112 end                                                         ;// 0070 00
    end

;Track $00f6 Channel 5
    playlist 246, 5 ,':' ; {    // Address $00065f7 [U2 $065f7], Time 1044.48ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3CC44A', 1 ; ** single play                          ;// 0000 01 05 3CC44A 01
    96 end                                                          ;// 0060 00
    end

;Track $00f7 Channel 5
    playlist 247, 5 ,':' ; {    // Address $0006616 [U2 $06616], Time 1144.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3B5A36', 1 ; ** single play                          ;// 0000 01 05 3B5A36 01
    109 end                                                         ;// 006D 00
    end

;Track $00f8 Channel 5
    playlist 248, 5 ,':' ; {    // Address $0006635 [U2 $06635], Time 1036.80ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3FA740', 1 ; ** single play                          ;// 0000 01 05 3FA740 01
    95 end                                                          ;// 005F 00
    end

;Track $00f9 Channel 5
    playlist 249, 5 ,':' ; {    // Address $0006654 [U2 $06654], Time 906.24ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '442834', 1 ; ** single play                          ;// 0000 01 05 442834 01
    78 end                                                          ;// 004E 00
    end

;Track $00fa Channel 5
    playlist 250, 5 ,':' ; {    // Address $0006673 [U2 $06673], Time 1098.24ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '407220', 1 ; ** single play                          ;// 0000 01 05 407220 01
    103 end                                                         ;// 0067 00
    end

;Track $00fb Channel 5
    playlist 251, 5 ,':' ; {    // Address $0006692 [U2 $06692], Time 1013.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '421DE8', 1 ; ** single play                          ;// 0000 01 05 421DE8 01
    92 end                                                          ;// 005C 00
    end

;Track $00fc Channel 5
    playlist 252, 5 ,':' ; {    // Address $00066b1 [U2 $066b1], Time 906.24ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '40D358', 1 ; ** single play                          ;// 0000 01 05 40D358 01
    78 end                                                          ;// 004E 00
    end

;Track $00fe Channel 5
    playlist 254, 5 ,':' ; {    // Address $00066d0 [U2 $066d0], Time 1136.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '39D8B8', 1 ; ** single play                          ;// 0000 01 05 39D8B8 01
    108 end                                                         ;// 006C 00
    end

;Track $00ff Channel 5
    playlist 255, 5 ,':' ; {    // Address $00066ef [U2 $066ef], Time 1297.92ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3CD564', 1 ; ** single play                          ;// 0000 01 05 3CD564 01
    129 end                                                         ;// 0081 00
    end

;Track $0111 Channel 3
    playlist 273, 3 ,':' ; {    // Address $000670e [U2 $0670e], Time 2388.48ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, '33F884', 1 ; ** single play                          ;// 0000 01 03 33F884 01
    311 end                                                         ;// 0137 00
    end

;Track $0112 Channel 2
    playlist 274, 2 ,':' ; {    // Address $0006720 [U2 $06720], Time 668.16ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '43C9C4', 1 ; ** single play                          ;// 0000 01 02 43C9C4 01
    87 end                                                          ;// 0057 00
    end

;Track $0114 Channel 1
    playlist 276, 1 ,':' ; {    // Address $0006732 [U2 $06732], Time 529.92ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, '4463B2', 1 ; ** single play                          ;// 0000 01 01 4463B2 01
    69 end                                                          ;// 0045 00
    end

;Track $0115 Channel 1
    playlist 277, 1 ,':' ; {    // Address $0006744 [U2 $06744], Time 476.16ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, '44EA06', 1 ; ** single play                          ;// 0000 01 01 44EA06 01
    62 end                                                          ;// 003E 00
    end

;Track $0116 Channel 1
    playlist 278, 1 ,':' ; {    // Address $0006756 [U2 $06756], Time 499.20ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, '44A426', 1 ; ** single play                          ;// 0000 01 01 44A426 01
    65 end                                                          ;// 0041 00
    end

;Track $0117 Channel 1
    playlist 279, 1 ,':' ; {    // Address $0006768 [U2 $06768], Time 453.12ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, '44BDC4', 1 ; ** single play                          ;// 0000 01 01 44BDC4 01
    59 end                                                          ;// 003B 00
    end

;Track $0119 Channel 1
    playlist 281, 1 ,':' ; {    // Address $000677a [U2 $0677a], Time 360.96ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, '4509D0', 1 ; ** single play                          ;// 0000 01 01 4509D0 01
    47 end                                                          ;// 002F 00
    end

;Track $011c Channel 5
    playlist 284, 5 ,':' ; {    // Address $000678c [U2 $0678c], Time 1013.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '43BED6', 1 ; ** single play                          ;// 0000 01 05 43BED6 01
    92 end                                                          ;// 005C 00
    end

;Track $011d Channel 2
    playlist 285, 2 ,':' ; {    // Address $00067ab [U2 $067ab], Time 430.08ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '450E86', 1 ; ** single play                          ;// 0000 01 02 450E86 01
    56 end                                                          ;// 0038 00
    end

;Track $011e Channel 5
    playlist 286, 5 ,':' ; {    // Address $00067bd [U2 $067bd], Time 1021.44ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '4386E4', 1 ; ** single play                          ;// 0000 01 05 4386E4 01
    93 end                                                          ;// 005D 00
    end

;Track $0120 Channel 2
    playlist 288, 2 ,':' ; {    // Address $00067dc [U2 $067dc], Time 1090.56ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '3C3882', 1 ; ** single play                          ;// 0000 01 02 3C3882 01
    142 end                                                         ;// 008E 00
    end

;Track $0121 Channel 5
    playlist 289, 5 ,':' ; {    // Address $00067ee [U2 $067ee], Time 1059.84ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '42373A', 1 ; ** single play                          ;// 0000 01 05 42373A 01
    98 end                                                          ;// 0062 00
    end

;Track $0122 Channel 5
    playlist 290, 5 ,':' ; {    // Address $000680d [U2 $0680d], Time 975.36ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '419CD2', 1 ; ** single play                          ;// 0000 01 05 419CD2 01
    87 end                                                          ;// 0057 00
    end

;Track $0123 Channel 1
    playlist 291, 1 ,':' ; {    // Address $000682c [U2 $0682c], Time 883.20ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, '3FB5E0', 1 ; ** single play                          ;// 0000 01 01 3FB5E0 01
    115 end                                                         ;// 0073 00
    end

;Track $0125 Channel 5
    playlist 293, 5 ,':' ; {    // Address $000683e [U2 $0683e], Time 1029.12ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '40B7DA', 1 ; ** single play                          ;// 0000 01 05 40B7DA 01
    94 end                                                          ;// 005E 00
    end

;Track $0126 Channel 5
    playlist 294, 5 ,':' ; {    // Address $000685d [U2 $0685d], Time 1021.44ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '437016', 1 ; ** single play                          ;// 0000 01 05 437016 01
    93 end                                                          ;// 005D 00
    end

;Track $0127 Channel 5
    playlist 295, 5 ,':' ; {    // Address $000687c [U2 $0687c], Time 998.40ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '43D49C', 1 ; ** single play                          ;// 0000 01 05 43D49C 01
    90 end                                                          ;// 005A 00
    end

;Track $0128 Channel 2
    playlist 296, 2 ,':' ; {    // Address $000689b [U2 $0689b], Time 1052.16ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '3D8CA2', 1 ; ** single play                          ;// 0000 01 02 3D8CA2 01
    137 end                                                         ;// 0089 00
    end

;Track $0129 Channel 2
    playlist 297, 2 ,':' ; {    // Address $00068ad [U2 $068ad], Time 414.72ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '44DD10', 1 ; ** single play                          ;// 0000 01 02 44DD10 01
    54 end                                                          ;// 0036 00
    end

;Track $012a Channel 5
    playlist 298, 5 ,':' ; {    // Address $00068bf [U2 $068bf], Time 1013.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '43B3D4', 1 ; ** single play                          ;// 0000 01 05 43B3D4 01
    92 end                                                          ;// 005C 00
    end

;Track $012b Channel 5
    playlist 299, 5 ,':' ; {    // Address $00068de [U2 $068de], Time 1328.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '394108', 1 ; ** single play                          ;// 0000 01 05 394108 01
    173 end                                                         ;// 00AD 00
    end

;Track $012d Channel 5
    playlist 301, 5 ,':' ; {    // Address $00068f0 [U2 $068f0], Time 1374.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '38D0A6', 1 ; ** single play                          ;// 0000 01 05 38D0A6 01
    179 end                                                         ;// 00B3 00
    end

;Track $012e Channel 5
    playlist 302, 5 ,':' ; {    // Address $0006902 [U2 $06902], Time 929.28ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '402B2A', 1 ; ** single play                          ;// 0000 01 05 402B2A 01
    121 end                                                         ;// 0079 00
    end

;Track $012f Channel 5
    playlist 303, 5 ,':' ; {    // Address $0006914 [U2 $06914], Time 1436.16ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '38140E', 1 ; ** single play                          ;// 0000 01 05 38140E 01
    187 end                                                         ;// 00BB 00
    end

;Track $0130 Channel 5
    playlist 304, 5 ,':' ; {    // Address $0006926 [U2 $06926], Time 1274.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3A5678', 1 ; ** single play                          ;// 0000 01 05 3A5678 01
    126 end                                                         ;// 007E 00
    end

;Track $0131 Channel 5
    playlist 305, 5 ,':' ; {    // Address $0006945 [U2 $06945], Time 898.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '447FEA', 1 ; ** single play                          ;// 0000 01 05 447FEA 01
    77 end                                                          ;// 004D 00
    end

;Track $0132 Channel 5
    playlist 306, 5 ,':' ; {    // Address $0006964 [U2 $06964], Time 1006.08ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '431E86', 1 ; ** single play                          ;// 0000 01 05 431E86 01
    91 end                                                          ;// 005B 00
    end

;Track $0133 Channel 5
    playlist 307, 5 ,':' ; {    // Address $0006983 [U2 $06983], Time 1082.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '42B32E', 1 ; ** single play                          ;// 0000 01 05 42B32E 01
    101 end                                                         ;// 0065 00
    end

;Track $0135 Channel 5
    playlist 309, 5 ,':' ; {    // Address $00069a2 [U2 $069a2], Time 1152.00ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '40000C', 1 ; ** single play                          ;// 0000 01 05 40000C 01
    110 end                                                         ;// 006E 00
    end

;Track $0137 Channel 5
    playlist 311, 5 ,':' ; {    // Address $00069c1 [U2 $069c1], Time 1121.28ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3E4C8A', 1 ; ** single play                          ;// 0000 01 05 3E4C8A 01
    106 end                                                         ;// 006A 00
    end

;Track $0138 Channel 2
    playlist 312, 2 ,':' ; {    // Address $00069e0 [U2 $069e0], Time 491.52ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '44CDDA', 1 ; ** single play                          ;// 0000 01 02 44CDDA 01
    64 end                                                          ;// 0040 00
    end

;Track $0139 Channel 2
    playlist 313, 2 ,':' ; {    // Address $00069f2 [U2 $069f2], Time 583.68ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '447690', 1 ; ** single play                          ;// 0000 01 02 447690 01
    76 end                                                          ;// 004C 00
    end

;Track $013a Channel 2
    playlist 314, 2 ,':' ; {    // Address $0006a04 [U2 $06a04], Time 522.24ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '449B4E', 1 ; ** single play                          ;// 0000 01 02 449B4E 01
    68 end                                                          ;// 0044 00
    end

;Track $013b Channel 2
    playlist 315, 2 ,':' ; {    // Address $0006a16 [U2 $06a16], Time 460.80ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '44D5A4', 1 ; ** single play                          ;// 0000 01 02 44D5A4 01
    60 end                                                          ;// 003C 00
    end

;Track $013d Channel 2
    playlist 317, 2 ,':' ; {    // Address $0006a28 [U2 $06a28], Time 4416.00ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '32D1E4', 1 ; ** single play                          ;// 0000 01 02 32D1E4 01
    575 end                                                         ;// 023F 00
    end

;Track $013e Channel 5
    playlist 318, 5 ,':' ; {    // Address $0006a3a [U2 $06a3a], Time 1006.08ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '428E9C', 1 ; ** single play                          ;// 0000 01 05 428E9C 01
    91 end                                                          ;// 005B 00
    end

;Track $013f Channel 5
    playlist 319, 5 ,':' ; {    // Address $0006a59 [U2 $06a59], Time 1090.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3F98A0', 1 ; ** single play                          ;// 0000 01 05 3F98A0 01
    102 end                                                         ;// 0066 00
    end

;Track $0140 Channel 5
    playlist 320, 5 ,':' ; {    // Address $0006a78 [U2 $06a78], Time 852.48ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '443240', 1 ; ** single play                          ;// 0000 01 05 443240 01
    71 end                                                          ;// 0047 00
    end

;Track $0141 Channel 5
    playlist 321, 5 ,':' ; {    // Address $0006a97 [U2 $06a97], Time 1136.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3DDDCA', 1 ; ** single play                          ;// 0000 01 05 3DDDCA 01
    108 end                                                         ;// 006C 00
    end

;Track $0142 Channel 5
    playlist 322, 5 ,':' ; {    // Address $0006ab6 [U2 $06ab6], Time 983.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '4341B0', 1 ; ** single play                          ;// 0000 01 05 4341B0 01
    88 end                                                          ;// 0058 00
    end

;Track $0144 Channel 3
    playlist 324, 3 ,':' ; {    // Address $0006ad5 [U2 $06ad5], Time 2257.92ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, '34227E', 1 ; ** single play                          ;// 0000 01 03 34227E 01
    294 end                                                         ;// 0126 00
    end

;Track $0145 Channel 5
    playlist 325, 5 ,':' ; {    // Address $0006ae7 [U2 $06ae7], Time 1052.16ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3F6C52', 1 ; ** single play                          ;// 0000 01 05 3F6C52 01
    97 end                                                          ;// 0061 00
    end

;Track $0146 Channel 5
    playlist 326, 5 ,':' ; {    // Address $0006b06 [U2 $06b06], Time 890.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '418F9E', 1 ; ** single play                          ;// 0000 01 05 418F9E 01
    76 end                                                          ;// 004C 00
    end

;Track $0147 Channel 5
    playlist 327, 5 ,':' ; {    // Address $0006b25 [U2 $06b25], Time 1228.80ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3ED636', 1 ; ** single play                          ;// 0000 01 05 3ED636 01
    120 end                                                         ;// 0078 00
    end

;Track $0148 Channel 3
    playlist 328, 3 ,':' ; {    // Address $0006b44 [U2 $06b44], Time 476.16ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, '44C5E0', 1 ; ** single play                          ;// 0000 01 03 44C5E0 01
    62 end                                                          ;// 003E 00
    end

;Track $0149 Channel 5
    playlist 329, 5 ,':' ; {    // Address $0006b56 [U2 $06b56], Time 768.00ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '4306E6', 1 ; ** single play                          ;// 0000 01 05 4306E6 01
    60 end                                                          ;// 003C 00
    end

;Track $014a Channel 3
    playlist 330, 3 ,':' ; {    // Address $0006b75 [U2 $06b75], Time 4162.56ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, '313090', 1 ; ** single play                          ;// 0000 01 03 313090 01
    542 end                                                         ;// 021E 00
    end

;Track $014b Channel 2
    playlist 331, 2 ,':' ; {    // Address $0006b87 [U2 $06b87], Time 4416.00ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '32D1E4', 1 ; ** single play                          ;// 0000 01 02 32D1E4 01
    575 end                                                         ;// 023F 00
    end

;Track $014c Channel 5
    playlist 332, 5 ,':' ; {    // Address $0006b99 [U2 $06b99], Time 1113.60ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '4335FE', 1 ; ** single play                          ;// 0000 01 05 4335FE 01
    105 end                                                         ;// 0069 00
    end

;Track $014d Channel 3
    playlist 333, 3 ,':' ; {    // Address $0006bb8 [U2 $06bb8], Time 1474.56ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, '382C22', 1 ; ** single play                          ;// 0000 01 03 382C22 01
    192 end                                                         ;// 00C0 00
    end

;Track $014e Channel 3
    playlist 334, 3 ,':' ; {    // Address $0006bca [U2 $06bca], Time 4170.24ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, '331EC4', 1 ; ** single play                          ;// 0000 01 03 331EC4 01
    543 end                                                         ;// 021F 00
    end

;Track $014f Channel 5
    playlist 335, 5 ,':' ; {    // Address $0006bdc [U2 $06bdc], Time 913.92ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '43A89C', 1 ; ** single play                          ;// 0000 01 05 43A89C 01
    79 end                                                          ;// 004F 00
    end

;Track $0150 Channel 3
    playlist 336, 3 ,':' ; {    // Address $0006bfb [U2 $06bfb], Time 2757.12ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, '3281AA', 1 ; ** single play                          ;// 0000 01 03 3281AA 01
    359 end                                                         ;// 0167 00
    end

;Track $0151 Channel 5
    playlist 337, 5 ,':' ; {    // Address $0006c0d [U2 $06c0d], Time 1036.80ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '425056', 1 ; ** single play                          ;// 0000 01 05 425056 01
    95 end                                                          ;// 005F 00
    end

;Track $0152 Channel 5
    playlist 338, 5 ,':' ; {    // Address $0006c2c [U2 $06c2c], Time 1013.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '42E34E', 1 ; ** single play                          ;// 0000 01 05 42E34E 01
    92 end                                                          ;// 005C 00
    end

;Track $0153 Channel 3
    playlist 339, 3 ,':' ; {    // Address $0006c4b [U2 $06c4b], Time 3264.00ms
    0	setvol 3, 100                                                 ;// 0000 07 03 64
    0	play	3, '33651E', 1 ; ** single play                          ;// 0000 01 03 33651E 01
    425 end                                                         ;// 01A9 00
    end

;Track $0154 Channel 4
    playlist 340, 4 ,':' ; {    // Address $0006c5d [U2 $06c5d], Time 1059.84ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, '3BEFB6', 1 ; ** single play                          ;// 0000 01 04 3BEFB6 01
    138 end                                                         ;// 008A 00
    end

;Track $0157 Channel 2
    playlist 343, 2 ,':' ; {    // Address $0006c6f [U2 $06c6f], Time 268.80ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '451336', 1 ; ** single play                          ;// 0000 01 02 451336 01
    35 end                                                          ;// 0023 00
    end

;Track $0158 Channel 4
    playlist 344, 4 ,':' ; {    // Address $0006c81 [U2 $06c81], Time 2357.76ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, '344C52', 1 ; ** single play                          ;// 0000 01 04 344C52 01
    307 end                                                         ;// 0133 00
    end

;Track $0159 Channel 1
    playlist 345, 1 ,':' ; {    // Address $0006c93 [U2 $06c93], Time 883.20ms
    0	setvol 1, 100                                                 ;// 0000 07 01 64
    0	play	1, '3DAD52', 1 ; ** single play                          ;// 0000 01 01 3DAD52 01
    115 end                                                         ;// 0073 00
    end

;Track $015d Channel 5
    playlist 349, 5 ,':' ; {    // Address $0006ca5 [U2 $06ca5], Time 1635.84ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '369AB2', 1 ; ** single play                          ;// 0000 01 05 369AB2 01
    213 end                                                         ;// 00D5 00
    end

;Track $015e Channel 2
    playlist 350, 2 ,':' ; {    // Address $0006cb7 [U2 $06cb7], Time 4416.00ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '32D1E4', 1 ; ** single play                          ;// 0000 01 02 32D1E4 01
    575 end                                                         ;// 023F 00
    end

;Track $015f Channel 2
    playlist 351, 2 ,':' ; {    // Address $0006cc9 [U2 $06cc9], Time 4416.00ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '32D1E4', 1 ; ** single play                          ;// 0000 01 02 32D1E4 01
    575 end                                                         ;// 023F 00
    end

;Track $0160 Channel 2
    playlist 352, 2 ,':' ; {    // Address $0006cdb [U2 $06cdb], Time 583.68ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '444634', 1 ; ** single play                          ;// 0000 01 02 444634 01
    76 end                                                          ;// 004C 00
    end

;Track $0161 Channel 5
    playlist 353, 5 ,':' ; {    // Address $0006ced [U2 $06ced], Time 875.52ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '437B80', 1 ; ** single play                          ;// 0000 01 05 437B80 01
    74 end                                                          ;// 004A 00
    end

;Track $0162 Channel 5
    playlist 354, 5 ,':' ; {    // Address $0006d0c [U2 $06d0c], Time 1075.20ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '428234', 1 ; ** single play                          ;// 0000 01 05 428234 01
    100 end                                                         ;// 0064 00
    end

;Track $0164 Channel 2
    playlist 356, 2 ,':' ; {    // Address $0006d2b [U2 $06d2b], Time 875.52ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '3EC714', 1 ; ** single play                          ;// 0000 01 02 3EC714 01
    114 end                                                         ;// 0072 00
    end

;Track $0166 Channel 2
    playlist 358, 2 ,':' ; {    // Address $0006d3d [U2 $06d3d], Time 806.40ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '414D0A', 1 ; ** single play                          ;// 0000 01 02 414D0A 01
    105 end                                                         ;// 0069 00
    end

;Track $0167 Channel 5
    playlist 359, 5 ,':' ; {    // Address $0006d4f [U2 $06d4f], Time 1658.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '36D3D6', 1 ; ** single play                          ;// 0000 01 05 36D3D6 01
    216 end                                                         ;// 00D8 00
    end

;Track $0168 Channel 5
    playlist 360, 5 ,':' ; {    // Address $0006d61 [U2 $06d61], Time 1136.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3B8066', 1 ; ** single play                          ;// 0000 01 05 3B8066 01
    148 end                                                         ;// 0094 00
    end

;Track $0169 Channel 5
    playlist 361, 5 ,':' ; {    // Address $0006d73 [U2 $06d73], Time 1574.40ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '36F038', 1 ; ** single play                          ;// 0000 01 05 36F038 01
    205 end                                                         ;// 00CD 00
    end

;Track $016e Channel 5
    playlist 366, 5 ,':' ; {    // Address $0006d85 [U2 $06d85], Time 775.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '42A712', 1 ; ** single play                          ;// 0000 01 05 42A712 01
    101 end                                                         ;// 0065 00
    end

;Track $016f Channel 5
    playlist 367, 5 ,':' ; {    // Address $0006d97 [U2 $06d97], Time 1643.52ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '372858', 1 ; ** single play                          ;// 0000 01 05 372858 01
    214 end                                                         ;// 00D6 00
    end

;Track $0172 Channel 5
    playlist 370, 5 ,':' ; {    // Address $0006da9 [U2 $06da9], Time 1267.20ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '39980A', 1 ; ** single play                          ;// 0000 01 05 39980A 01
    165 end                                                         ;// 00A5 00
    end

;Track $0173 Channel 5
    playlist 371, 5 ,':' ; {    // Address $0006dbb [U2 $06dbb], Time 1374.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '388B90', 1 ; ** single play                          ;// 0000 01 05 388B90 01
    179 end                                                         ;// 00B3 00
    end

;Track $0175 Channel 5
    playlist 373, 5 ,':' ; {    // Address $0006dcd [U2 $06dcd], Time 1374.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '38B9EC', 1 ; ** single play                          ;// 0000 01 05 38B9EC 01
    179 end                                                         ;// 00B3 00
    end

;Track $0177 Channel 4
    playlist 375, 4 ,':' ; {    // Address $0006ddf [U2 $06ddf], Time 2457.60ms
    0	setvol 4, 100                                                 ;// 0000 07 04 64
    0	play	4, '33CBB4', 1 ; ** single play                          ;// 0000 01 04 33CBB4 01
    320 end                                                         ;// 0140 00
    end

;Track $0178 Channel 5
    playlist 376, 5 ,':' ; {    // Address $0006df1 [U2 $06df1], Time 952.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3F2194', 1 ; ** single play                          ;// 0000 01 05 3F2194 01
    124 end                                                         ;// 007C 00
    end

;Track $0179 Channel 2
    playlist 377, 2 ,':' ; {    // Address $0006e03 [U2 $06e03], Time 990.72ms
    0	setvol 2, 100                                                 ;// 0000 07 02 64
    0	play	2, '3BCAFE', 1 ; ** single play                          ;// 0000 01 02 3BCAFE 01
    129 end                                                         ;// 0081 00
    end

;Track $017a Channel 5
    playlist 378, 5 ,':' ; {    // Address $0006e15 [U2 $06e15], Time 1036.80ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '439D62', 1 ; ** single play                          ;// 0000 01 05 439D62 01
    95 end                                                          ;// 005F 00
    end

;Track $017b Channel 5
    playlist 379, 5 ,':' ; {    // Address $0006e34 [U2 $06e34], Time 1052.16ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3CB32C', 1 ; ** single play                          ;// 0000 01 05 3CB32C 01
    97 end                                                          ;// 0061 00
    end

;Track $017c Channel 5
    playlist 380, 5 ,':' ; {    // Address $0006e53 [U2 $06e53], Time 883.20ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '43F4C0', 1 ; ** single play                          ;// 0000 01 05 43F4C0 01
    75 end                                                          ;// 004B 00
    end

;Track $017d Channel 5
    playlist 381, 5 ,':' ; {    // Address $0006e72 [U2 $06e72], Time 1090.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3E2D4A', 1 ; ** single play                          ;// 0000 01 05 3E2D4A 01
    102 end                                                         ;// 0066 00
    end

;Track $017e Channel 5
    playlist 382, 5 ,':' ; {    // Address $0006e91 [U2 $06e91], Time 1105.92ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3F89E4', 1 ; ** single play                          ;// 0000 01 05 3F89E4 01
    104 end                                                         ;// 0068 00
    end

;Track $017f Channel 5
    playlist 383, 5 ,':' ; {    // Address $0006eb0 [U2 $06eb0], Time 1105.92ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3F7B1C', 1 ; ** single play                          ;// 0000 01 05 3F7B1C 01
    104 end                                                         ;// 0068 00
    end

;Track $0180 Channel 5
    playlist 384, 5 ,':' ; {    // Address $0006ecf [U2 $06ecf], Time 1313.28ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '392AAC', 1 ; ** single play                          ;// 0000 01 05 392AAC 01
    171 end                                                         ;// 00AB 00
    end

;Track $0182 Channel 5
    playlist 386, 5 ,':' ; {    // Address $0006ee1 [U2 $06ee1], Time 1182.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3B336C', 1 ; ** single play                          ;// 0000 01 05 3B336C 01
    154 end                                                         ;// 009A 00
    end

;Track $0183 Channel 5
    playlist 387, 5 ,':' ; {    // Address $0006ef3 [U2 $06ef3], Time 1328.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3A0354', 1 ; ** single play                          ;// 0000 01 05 3A0354 01
    173 end                                                         ;// 00AD 00
    end

;Track $0184 Channel 5
    playlist 388, 5 ,':' ; {    // Address $0006f05 [U2 $06f05], Time 1651.20ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '377A1C', 1 ; ** single play                          ;// 0000 01 05 377A1C 01
    215 end                                                         ;// 00D7 00
    end

;Track $0186 Channel 5
    playlist 390, 5 ,':' ; {    // Address $0006f17 [U2 $06f17], Time 1704.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '35EBBC', 1 ; ** single play                          ;// 0000 01 05 35EBBC 01
    222 end                                                         ;// 00DE 00
    end

;Track $0187 Channel 5
    playlist 391, 5 ,':' ; {    // Address $0006f29 [U2 $06f29], Time 683.52ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '43648A', 1 ; ** single play                          ;// 0000 01 05 43648A 01
    89 end                                                          ;// 0059 00
    end

;Track $0188 Channel 5
    playlist 392, 5 ,':' ; {    // Address $0006f3b [U2 $06f3b], Time 1336.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '39ADA4', 1 ; ** single play                          ;// 0000 01 05 39ADA4 01
    174 end                                                         ;// 00AE 00
    end

;Track $0189 Channel 5
    playlist 393, 5 ,':' ; {    // Address $0006f4d [U2 $06f4d], Time 867.84ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3FC47C', 1 ; ** single play                          ;// 0000 01 05 3FC47C 01
    113 end                                                         ;// 0071 00
    end

;Track $018a Channel 5
    playlist 394, 5 ,':' ; {    // Address $0006f5f [U2 $06f5f], Time 1774.08ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '360968', 1 ; ** single play                          ;// 0000 01 05 360968 01
    231 end                                                         ;// 00E7 00
    end

;Track $018b Channel 5
    playlist 395, 5 ,':' ; {    // Address $0006f71 [U2 $06f71], Time 1551.36ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '37AF50', 1 ; ** single play                          ;// 0000 01 05 37AF50 01
    202 end                                                         ;// 00CA 00
    end

;Track $018d Channel 5
    playlist 397, 5 ,':' ; {    // Address $0006f83 [U2 $06f83], Time 1167.36ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3C0206', 1 ; ** single play                          ;// 0000 01 05 3C0206 01
    152 end                                                         ;// 0098 00
    end

;Track $018e Channel 5
    playlist 398, 5 ,':' ; {    // Address $0006f95 [U2 $06f95], Time 1758.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '355570', 1 ; ** single play                          ;// 0000 01 05 355570 01
    229 end                                                         ;// 00E5 00
    end

;Track $0190 Channel 5
    playlist 400, 5 ,':' ; {    // Address $0006fa7 [U2 $06fa7], Time 1774.08ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '364442', 1 ; ** single play                          ;// 0000 01 05 364442 01
    231 end                                                         ;// 00E7 00
    end

;Track $0193 Channel 5
    playlist 403, 5 ,':' ; {    // Address $0006fb9 [U2 $06fb9], Time 1474.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '37E30C', 1 ; ** single play                          ;// 0000 01 05 37E30C 01
    192 end                                                         ;// 00C0 00
    end

;Track $0195 Channel 5
    playlist 405, 5 ,':' ; {    // Address $0006fcb [U2 $06fcb], Time 1351.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '396CB4', 1 ; ** single play                          ;// 0000 01 05 396CB4 01
    176 end                                                         ;// 00B0 00
    end

;Track $0196 Channel 5
    playlist 406, 5 ,':' ; {    // Address $0006fdd [U2 $06fdd], Time 1021.44ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3CF740', 1 ; ** single play                          ;// 0000 01 05 3CF740 01
    133 end                                                         ;// 0085 00
    end

;Track $0197 Channel 5
    playlist 407, 5 ,':' ; {    // Address $0006fef [U2 $06fef], Time 898.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '408E44', 1 ; ** single play                          ;// 0000 01 05 408E44 01
    117 end                                                         ;// 0075 00
    end

;Track $0198 Channel 5
    playlist 408, 5 ,':' ; {    // Address $0007001 [U2 $07001], Time 1205.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3B6D5C', 1 ; ** single play                          ;// 0000 01 05 3B6D5C 01
    157 end                                                         ;// 009D 00
    end

;Track $0199 Channel 5
    playlist 409, 5 ,':' ; {    // Address $0007013 [U2 $07013], Time 629.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '421134', 1 ; ** single play                          ;// 0000 01 05 421134 01
    82 end                                                          ;// 0052 00
    end

;Track $019a Channel 5
    playlist 410, 5 ,':' ; {    // Address $0007025 [U2 $07025], Time 936.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '421134', 1 ; ** single play                          ;// 0000 01 05 421134 01
    82 end                                                          ;// 0052 00
    end

;Track $019b Channel 5
    playlist 411, 5 ,':' ; {    // Address $0007044 [U2 $07044], Time 714.24ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '42BF42', 1 ; ** single play                          ;// 0000 01 05 42BF42 01
    93 end                                                          ;// 005D 00
    end

;Track $019c Channel 5
    playlist 412, 5 ,':' ; {    // Address $0007056 [U2 $07056], Time 1328.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '385C28', 1 ; ** single play                          ;// 0000 01 05 385C28 01
    173 end                                                         ;// 00AD 00
    end

;Track $019d Channel 5
    playlist 413, 5 ,':' ; {    // Address $0007068 [U2 $07068], Time 1144.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3C143E', 1 ; ** single play                          ;// 0000 01 05 3C143E 01
    149 end                                                         ;// 0095 00
    end

;Track $019f Channel 5
    playlist 415, 5 ,':' ; {    // Address $000707a [U2 $0707a], Time 1244.16ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3AA80A', 1 ; ** single play                          ;// 0000 01 05 3AA80A 01
    162 end                                                         ;// 00A2 00
    end

;Track $01a0 Channel 5
    playlist 416, 5 ,':' ; {    // Address $000708c [U2 $0708c], Time 1728.00ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '366128', 1 ; ** single play                          ;// 0000 01 05 366128 01
    225 end                                                         ;// 00E1 00
    end

;Track $01a1 Channel 5
    playlist 417, 5 ,':' ; {    // Address $000709e [U2 $0709e], Time 1328.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3CF740', 1 ; ** single play                          ;// 0000 01 05 3CF740 01
    133 end                                                         ;// 0085 00
    end

;Track $01a2 Channel 5
    playlist 418, 5 ,':' ; {    // Address $00070bd [U2 $070bd], Time 1205.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '408E44', 1 ; ** single play                          ;// 0000 01 05 408E44 01
    117 end                                                         ;// 0075 00
    end

;Track $01a3 Channel 5
    playlist 419, 5 ,':' ; {    // Address $00070dc [U2 $070dc], Time 1006.08ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3DFDEA', 1 ; ** single play                          ;// 0000 01 05 3DFDEA 01
    131 end                                                         ;// 0083 00
    end

;Track $01a4 Channel 5
    playlist 420, 5 ,':' ; {    // Address $00070ee [U2 $070ee], Time 1405.44ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '38442A', 1 ; ** single play                          ;// 0000 01 05 38442A 01
    183 end                                                         ;// 00B7 00
    end

;Track $01a5 Channel 5
    playlist 421, 5 ,':' ; {    // Address $0007100 [U2 $07100], Time 752.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '420478', 1 ; ** single play                          ;// 0000 01 05 420478 01
    98 end                                                          ;// 0062 00
    end

;Track $01a6 Channel 5
    playlist 422, 5 ,':' ; {    // Address $0007112 [U2 $07112], Time 1059.84ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '420478', 1 ; ** single play                          ;// 0000 01 05 420478 01
    98 end                                                          ;// 0062 00
    end

;Track $01a8 Channel 5
    playlist 424, 5 ,':' ; {    // Address $0007131 [U2 $07131], Time 1620.48ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '375F56', 1 ; ** single play                          ;// 0000 01 05 375F56 01
    211 end                                                         ;// 00D3 00
    end

;Track $01a9 Channel 5
    playlist 425, 5 ,':' ; {    // Address $0007143 [U2 $07143], Time 1121.28ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3BA60C', 1 ; ** single play                          ;// 0000 01 05 3BA60C 01
    146 end                                                         ;// 0092 00
    end

;Track $01ab Channel 5
    playlist 427, 5 ,':' ; {    // Address $0007155 [U2 $07155], Time 2119.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3536F4', 1 ; ** single play                          ;// 0000 01 05 3536F4 01
    276 end                                                         ;// 0114 00
    end

;Track $01ad Channel 5
    playlist 429, 5 ,':' ; {    // Address $0007167 [U2 $07167], Time 1128.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3B46E2', 1 ; ** single play                          ;// 0000 01 05 3B46E2 01
    147 end                                                         ;// 0093 00
    end

;Track $01ae Channel 5
    playlist 430, 5 ,':' ; {    // Address $0007179 [U2 $07179], Time 967.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3E7AC8', 1 ; ** single play                          ;// 0000 01 05 3E7AC8 01
    126 end                                                         ;// 007E 00
    end

;Track $01af Channel 5
    playlist 431, 5 ,':' ; {    // Address $000718b [U2 $0718b], Time 1029.12ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3C7F56', 1 ; ** single play                          ;// 0000 01 05 3C7F56 01
    134 end                                                         ;// 0086 00
    end

;Track $01b2 Channel 5
    playlist 434, 5 ,':' ; {    // Address $000719d [U2 $0719d], Time 1927.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '34997C', 1 ; ** single play                          ;// 0000 01 05 34997C 01
    251 end                                                         ;// 00FB 00
    end

;Track $01b4 Channel 5
    playlist 436, 5 ,':' ; {    // Address $00071af [U2 $071af], Time 1052.16ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3BDD5A', 1 ; ** single play                          ;// 0000 01 05 3BDD5A 01
    137 end                                                         ;// 0089 00
    end

;Track $01b6 Channel 5
    playlist 438, 5 ,':' ; {    // Address $00071c1 [U2 $071c1], Time 1482.24ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '37FBF8', 1 ; ** single play                          ;// 0000 01 05 37FBF8 01
    193 end                                                         ;// 00C1 00
    end

;Track $01b7 Channel 5
    playlist 439, 5 ,':' ; {    // Address $00071d3 [U2 $071d3], Time 952.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3D18A4', 1 ; ** single play                          ;// 0000 01 05 3D18A4 01
    124 end                                                         ;// 007C 00
    end

;Track $01b9 Channel 5
    playlist 441, 5 ,':' ; {    // Address $00071e5 [U2 $071e5], Time 929.28ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3E6B6E', 1 ; ** single play                          ;// 0000 01 05 3E6B6E 01
    121 end                                                         ;// 0079 00
    end

;Track $01ba Channel 5
    playlist 442, 5 ,':' ; {    // Address $00071f7 [U2 $071f7], Time 1574.40ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '374406', 1 ; ** single play                          ;// 0000 01 05 374406 01
    205 end                                                         ;// 00CD 00
    end

;Track $01bb Channel 5
    playlist 443, 5 ,':' ; {    // Address $0007209 [U2 $07209], Time 1297.92ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3A93B4', 1 ; ** single play                          ;// 0000 01 05 3A93B4 01
    169 end                                                         ;// 00A9 00
    end

;Track $01bc Channel 5
    playlist 444, 5 ,':' ; {    // Address $000721b [U2 $0721b], Time 1067.52ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3D39FA', 1 ; ** single play                          ;// 0000 01 05 3D39FA 01
    139 end                                                         ;// 008B 00
    end

;Track $01be Channel 5
    playlist 446, 5 ,':' ; {    // Address $000722d [U2 $0722d], Time 1236.48ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4504EC', 1 ; ** single play                          ;// 0000 01 05 4504EC 01
    40 0	setvol 5, 100                                              ;// 0028 07 05 64
    0	play	5, '3E6B6E', 1 ; ** single play                          ;// 0000 01 05 3E6B6E 01
    121 end                                                         ;// 0079 00
    end

;Track $01bf Channel 5
    playlist 447, 5 ,':' ; {    // Address $000724c [U2 $0724c], Time 1029.12ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3D5B3C', 1 ; ** single play                          ;// 0000 01 05 3D5B3C 01
    134 end                                                         ;// 0086 00
    end

;Track $01c0 Channel 5
    playlist 448, 5 ,':' ; {    // Address $000725e [U2 $0725e], Time 1075.20ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3BB896', 1 ; ** single play                          ;// 0000 01 05 3BB896 01
    140 end                                                         ;// 008C 00
    end

;Track $01c1 Channel 5
    playlist 449, 5 ,':' ; {    // Address $0007270 [U2 $07270], Time 1274.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3956E2', 1 ; ** single play                          ;// 0000 01 05 3956E2 01
    166 end                                                         ;// 00A6 00
    end

;Track $01c2 Channel 5
    playlist 450, 5 ,':' ; {    // Address $0007282 [U2 $07282], Time 875.52ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3F5D80', 1 ; ** single play                          ;// 0000 01 05 3F5D80 01
    114 end                                                         ;// 0072 00
    end

;Track $01c4 Channel 5
    playlist 452, 5 ,':' ; {    // Address $0007294 [U2 $07294], Time 898.56ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3F3FA0', 1 ; ** single play                          ;// 0000 01 05 3F3FA0 01
    117 end                                                         ;// 0075 00
    end

;Track $01c7 Channel 5
    playlist 455, 5 ,':' ; {    // Address $00072a6 [U2 $072a6], Time 1720.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '367DFE', 1 ; ** single play                          ;// 0000 01 05 367DFE 01
    224 end                                                         ;// 00E0 00
    end

;Track $01c8 Channel 5
    playlist 456, 5 ,':' ; {    // Address $00072b8 [U2 $072b8], Time 860.16ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4055DA', 1 ; ** single play                          ;// 0000 01 05 4055DA 01
    112 end                                                         ;// 0070 00
    end

;Track $01c9 Channel 5
    playlist 457, 5 ,':' ; {    // Address $00072ca [U2 $072ca], Time 2142.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '1FD6F8', 1 ; ** single play                          ;// 0000 01 05 1FD6F8 01
    279 end                                                         ;// 0117 00
    end

;Track $01ca Channel 5
    playlist 458, 5 ,':' ; {    // Address $00072dc [U2 $072dc], Time 852.48ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3FD316', 1 ; ** single play                          ;// 0000 01 05 3FD316 01
    111 end                                                         ;// 006F 00
    end

;Track $01cb Channel 5
    playlist 459, 5 ,':' ; {    // Address $00072ee [U2 $072ee], Time 1512.96ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3794CA', 1 ; ** single play                          ;// 0000 01 05 3794CA 01
    197 end                                                         ;// 00C5 00
    end

;Track $01cd Channel 5
    playlist 461, 5 ,':' ; {    // Address $0007300 [U2 $07300], Time 783.36ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '40FC2E', 1 ; ** single play                          ;// 0000 01 05 40FC2E 01
    102 end                                                         ;// 0066 00
    end

;Track $01ce Channel 5
    playlist 462, 5 ,':' ; {    // Address $0007312 [U2 $07312], Time 1528.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '37C9AA', 1 ; ** single play                          ;// 0000 01 05 37C9AA 01
    199 end                                                         ;// 00C7 00
    end

;Track $01cf Channel 5
    playlist 463, 5 ,':' ; {    // Address $0007324 [U2 $07324], Time 652.80ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '43EA18', 1 ; ** single play                          ;// 0000 01 05 43EA18 01
    85 end                                                          ;// 0055 00
    end

;Track $01d0 Channel 5
    playlist 464, 5 ,':' ; {    // Address $0007336 [U2 $07336], Time 844.80ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '417522', 1 ; ** single play                          ;// 0000 01 05 417522 01
    110 end                                                         ;// 006E 00
    end

;Track $01d1 Channel 5
    playlist 465, 5 ,':' ; {    // Address $0007348 [U2 $07348], Time 791.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '42EF30', 1 ; ** single play                          ;// 0000 01 05 42EF30 01
    103 end                                                         ;// 0067 00
    end

;Track $01d2 Channel 5
    playlist 466, 5 ,':' ; {    // Address $000735a [U2 $0735a], Time 860.16ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '418264', 1 ; ** single play                          ;// 0000 01 05 418264 01
    112 end                                                         ;// 0070 00
    end

;Track $01d3 Channel 5
    playlist 467, 5 ,':' ; {    // Address $000736c [U2 $0736c], Time 837.12ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '4167D2', 1 ; ** single play                          ;// 0000 01 05 4167D2 01
    109 end                                                         ;// 006D 00
    end

;Track $01d4 Channel 5
    playlist 468, 5 ,':' ; {    // Address $000737e [U2 $0737e], Time 775.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '41B6F6', 1 ; ** single play                          ;// 0000 01 05 41B6F6 01
    101 end                                                         ;// 0065 00
    end

;Track $01d5 Channel 5
    playlist 469, 5 ,':' ; {    // Address $0007390 [U2 $07390], Time 714.24ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '439228', 1 ; ** single play                          ;// 0000 01 05 439228 01
    93 end                                                          ;// 005D 00
    end

;Track $01d6 Channel 5
    playlist 470, 5 ,':' ; {    // Address $00073a2 [U2 $073a2], Time 1881.60ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '34BA84', 1 ; ** single play                          ;// 0000 01 05 34BA84 01
    245 end                                                         ;// 00F5 00
    end

;Track $01d8 Channel 5
    playlist 472, 5 ,':' ; {    // Address $00073b4 [U2 $073b4], Time 1175.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3A7F52', 1 ; ** single play                          ;// 0000 01 05 3A7F52 01
    153 end                                                         ;// 0099 00
    end

;Track $01d9 Channel 5
    playlist 473, 5 ,':' ; {    // Address $00073c6 [U2 $073c6], Time 1182.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3AE460', 1 ; ** single play                          ;// 0000 01 05 3AE460 01
    154 end                                                         ;// 009A 00
    end

;Track $01da Channel 5
    playlist 474, 5 ,':' ; {    // Address $00073d8 [U2 $073d8], Time 1305.60ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '38E744', 1 ; ** single play                          ;// 0000 01 05 38E744 01
    170 end                                                         ;// 00AA 00
    end

;Track $01dc Channel 5
    playlist 476, 5 ,':' ; {    // Address $00073ea [U2 $073ea], Time 1328.64ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '38FDCE', 1 ; ** single play                          ;// 0000 01 05 38FDCE 01
    173 end                                                         ;// 00AD 00
    end

;Track $01dd Channel 5
    playlist 477, 5 ,':' ; {    // Address $00073fc [U2 $073fc], Time 1251.84ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '398260', 1 ; ** single play                          ;// 0000 01 05 398260 01
    163 end                                                         ;// 00A3 00
    end

;Track $01de Channel 5
    playlist 478, 5 ,':' ; {    // Address $000740e [U2 $0740e], Time 1236.48ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3A2D0A', 1 ; ** single play                          ;// 0000 01 05 3A2D0A 01
    161 end                                                         ;// 00A1 00
    end

;Track $01df Channel 5
    playlist 479, 5 ,':' ; {    // Address $0007420 [U2 $07420], Time 990.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3D6BCA', 1 ; ** single play                          ;// 0000 01 05 3D6BCA 01
    129 end                                                         ;// 0081 00
    end

;Track $01e0 Channel 5
    playlist 480, 5 ,':' ; {    // Address $0007432 [U2 $07432], Time 1351.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '391446', 1 ; ** single play                          ;// 0000 01 05 391446 01
    176 end                                                         ;// 00B0 00
    end

;Track $01e1 Channel 5
    playlist 481, 5 ,':' ; {    // Address $0007444 [U2 $07444], Time 737.28ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '422A98', 1 ; ** single play                          ;// 0000 01 05 422A98 01
    96 end                                                          ;// 0060 00
    end

;Track $01e2 Channel 5
    playlist 482, 5 ,':' ; {    // Address $0007456 [U2 $07456], Time 960.00ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3E0DC0', 1 ; ** single play                          ;// 0000 01 05 3E0DC0 01
    125 end                                                         ;// 007D 00
    end

;Track $01e3 Channel 5
    playlist 483, 5 ,':' ; {    // Address $0007468 [U2 $07468], Time 1236.48ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '39EE0C', 1 ; ** single play                          ;// 0000 01 05 39EE0C 01
    161 end                                                         ;// 00A1 00
    end

;Track $01e6 Channel 5
    playlist 486, 5 ,':' ; {    // Address $000747a [U2 $0747a], Time 1006.08ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3CE652', 1 ; ** single play                          ;// 0000 01 05 3CE652 01
    131 end                                                         ;// 0083 00
    end

;Track $01e8 Channel 5
    playlist 488, 5 ,':' ; {    // Address $000748c [U2 $0748c], Time 821.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3CA1EE', 1 ; ** single play                          ;// 0000 01 05 3CA1EE 01
    107 end                                                         ;// 006B 00
    end

;Track $01e9 Channel 5
    playlist 489, 5 ,':' ; {    // Address $000749e [U2 $0749e], Time 1344.00ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '38740A', 1 ; ** single play                          ;// 0000 01 05 38740A 01
    175 end                                                         ;// 00AF 00
    end

;Track $01ea Channel 5
    playlist 490, 5 ,':' ; {    // Address $00074b0 [U2 $074b0], Time 1850.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '2FDC86', 1 ; ** single play                          ;// 0000 01 05 2FDC86 01
    241 end                                                         ;// 00F1 00
    end

;Track $01ee Channel 5
    playlist 494, 5 ,':' ; {    // Address $00074c2 [U2 $074c2], Time 1758.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '35CDD6', 1 ; ** single play                          ;// 0000 01 05 35CDD6 01
    229 end                                                         ;// 00E5 00
    end

;Track $01ef Channel 5
    playlist 495, 5 ,':' ; {    // Address $00074d4 [U2 $074d4], Time 1751.04ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '351870', 1 ; ** single play                          ;// 0000 01 05 351870 01
    228 end                                                         ;// 00E4 00
    end

;Track $01f0 Channel 5
    playlist 496, 5 ,':' ; {    // Address $00074e6 [U2 $074e6], Time 1635.84ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '370C7C', 1 ; ** single play                          ;// 0000 01 05 370C7C 01
    213 end                                                         ;// 00D5 00
    end

;Track $01f1 Channel 5
    playlist 497, 5 ,':' ; {    // Address $00074f8 [U2 $074f8], Time 1098.24ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3B933C', 1 ; ** single play                          ;// 0000 01 05 3B933C 01
    143 end                                                         ;// 008F 00
    end

;Track $01f2 Channel 5
    playlist 498, 5 ,':' ; {    // Address $000750a [U2 $0750a], Time 1766.40ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '36B744', 1 ; ** single play                          ;// 0000 01 05 36B744 01
    230 end                                                         ;// 00E6 00
    end

;Track $01f3 Channel 5
    playlist 499, 5 ,':' ; {    // Address $000751c [U2 $0751c], Time 821.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '41D0EC', 1 ; ** single play                          ;// 0000 01 05 41D0EC 01
    107 end                                                         ;// 006B 00
    end

;Track $01f4 Channel 1
    playlist 500, 1 ,':' ; {    // Address $000752e [U2 $0752e], Time 1075.20ms
    0	setvol 1, 110                                                 ;// 0000 07 01 6E
    0	downvol 0, 15                                                 ;// 0000 09 00 0F
    0	play	1, '4521D2', 1 ; ** single play                          ;// 0000 01 01 4521D2 01
    110 rampupvol 0, 15, 20    ;                                    ;// 006E 0B 00 0F 0014
    30 end                                                          ;// 001E 00
    end

;Track $01f5 Channel 5
    playlist 501, 5 ,':' ; {    // Address $000754c [U2 $0754c], Time 1789.44ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '35AFCE', 1 ; ** single play                          ;// 0000 01 05 35AFCE 01
    233 end                                                         ;// 00E9 00
    end

;Track $01f6 Channel 5
    playlist 502, 5 ,':' ; {    // Address $000755e [U2 $0755e], Time 1182.72ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3AD070', 1 ; ** single play                          ;// 0000 01 05 3AD070 01
    154 end                                                         ;// 009A 00
    end

;Track $01f7 Channel 5
    playlist 503, 5 ,':' ; {    // Address $0007570 [U2 $07570], Time 890.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '40396A', 1 ; ** single play                          ;// 0000 01 05 40396A 01
    116 end                                                         ;// 0074 00
    end

;Track $01f8 Channel 5
    playlist 504, 5 ,':' ; {    // Address $0007582 [U2 $07582], Time 714.24ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '43DF60', 1 ; ** single play                          ;// 0000 01 05 43DF60 01
    93 end                                                          ;// 005D 00
    end

;Track $01f9 Channel 5
    playlist 505, 5 ,':' ; {    // Address $0007594 [U2 $07594], Time 867.84ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3EF466', 1 ; ** single play                          ;// 0000 01 05 3EF466 01
    113 end                                                         ;// 0071 00
    end

;Track $01fa Channel 5
    playlist 506, 5 ,':' ; {    // Address $00075a6 [U2 $075a6], Time 821.76ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '41A9EA', 1 ; ** single play                          ;// 0000 01 05 41A9EA 01
    107 end                                                         ;// 006B 00
    end

;Track $01fb Channel 5
    playlist 507, 5 ,':' ; {    // Address $00075b8 [U2 $075b8], Time 1082.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3C4A82', 1 ; ** single play                          ;// 0000 01 05 3C4A82 01
    141 end                                                         ;// 008D 00
    end

;Track $01fc Channel 5
    playlist 508, 5 ,':' ; {    // Address $00075ca [U2 $075ca], Time 952.32ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '3DEDE0', 1 ; ** single play                          ;// 0000 01 05 3DEDE0 01
    124 end                                                         ;// 007C 00
    end

;Track $01fd Channel 5
    playlist 509, 5 ,':' ; {    // Address $00075dc [U2 $075dc], Time 1735.68ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '34F96C', 1 ; ** single play                          ;// 0000 01 05 34F96C 01
    226 end                                                         ;// 00E2 00
    end

;Track $01fe Channel 5
    playlist 510, 5 ,':' ; {    // Address $00075ee [U2 $075ee], Time 506.88ms
    0	setvol 5, 100                                                 ;// 0000 07 05 64
    0	play	5, '451F5C', 1 ; ** single play                          ;// 0000 01 05 451F5C 01
    66 end                                                          ;// 0042 00
    end

;Track $03e7 Channel 0
    playlist 999, 0 ,':' ; {    // Address $0007600 [U2 $07600], Time 38.40ms
    WriteDataPort(byte $01);                                        ;// 0000 04 01
    5 end                                                           ;// 0005 00
    end

;Track $03e8 Channel 0
    playlist 1000, 0 ,':' ; {    // Address $000760c [U2 $0760c], Time 7.68ms
    WriteDataPort(byte $FD);                                        ;// 0000 04 FD
    1 end                                                           ;// 0001 00
    end

;Track $03e9 Channel 1
    playlist 1001, 1 ,':' ; {    // Address $0007618 [U2 $07618], Time 7.68ms
    WriteDataPort(byte $FD);                                        ;// 0000 04 FD
    1 end                                                           ;// 0001 00
    end

;Track $03ea Channel 2
    playlist 1002, 2 ,':' ; {    // Address $0007624 [U2 $07624], Time 7.68ms
    WriteDataPort(byte $FD);                                        ;// 0000 04 FD
    1 end                                                           ;// 0001 00
    end

;Track $03eb Channel 3
    playlist 1003, 3 ,':' ; {    // Address $0007630 [U2 $07630], Time 7.68ms
    WriteDataPort(byte $FD);                                        ;// 0000 04 FD
    1 end                                                           ;// 0001 00
    end

;Track $03ec Channel 4
    playlist 1004, 4 ,':' ; {    // Address $000763c [U2 $0763c], Time 7.68ms
    WriteDataPort(byte $FD);                                        ;// 0000 04 FD
    1 end                                                           ;// 0001 00
    end

;Track $03ed Channel 5
    playlist 1005, 5 ,':' ; {    // Address $0007648 [U2 $07648], Time 7.68ms
    WriteDataPort(byte $FD);                                        ;// 0000 04 FD
    1 end                                                           ;// 0001 00
    end

;Track $0721 Channel 0
    playlist 1825, 0 ,':' ; {    // Address $0007654 [U2 $07654], Time 150804.48ms
    0	setvol 0, 120                                                 ;// 0000 07 00 78
    0	play	0, '31A8E0', 1 ; ** single play                          ;// 0000 01 00 31A8E0 01
    889 0	loopstart	3                                               ;// 0379 0E 03
      0	play	0, '1AD880', 1 ; ** single play                        ;// 0000 01 00 1AD880 01
      6249                                                          ;// 1869 0F
    0	loopend                                                       
    end                                                             ;// 0000 00
    end

;Track $0722 Channel 0
    playlist 1826, 0 ,':' ; {    // Address $0007675 [U2 $07675], Time 295188.47ms
    0	setvol 0, 120                                                 ;// 0000 07 00 78
    0	play	0, '0F69FE', 1 ; ** single play                          ;// 0000 01 00 0F69FE 01
    924 0	loopstart	8                                               ;// 039C 0E 08
      0	play	0, '2298F2', 1 ; ** single play                        ;// 0000 01 00 2298F2 01
      4689                                                          ;// 1251 0F
    0	loopend                                                       
    end                                                             ;// 0000 00
    end

;Track $0724 Channel 0
    playlist 1828, 0 ,':' ; {    // Address $0007696 [U2 $07696], Time 153676.80ms
    0	setvol 0, 120                                                 ;// 0000 07 00 78
    0	play	0, '007722', 1 ; ** single play                          ;// 0000 01 00 007722 01
    10005 0	play	0, '007722', 1 ; ** single play                    ;// 2715 01 00 007722 01
    8703 rampvol 0, 0, 1302    ;                                    ;// 21FF 0A 00 00 0516
    1302 end                                                        ;// 0516 00
    end

;Track $0726 Channel 0
    playlist 1830, 0 ,':' ; {    // Address $00076b7 [U2 $076b7], Time 616965.12ms
    0	setvol 0, 120                                                 ;// 0000 07 00 78
    0	play	0, '30000C', 1 ; ** single play                          ;// 0000 01 00 30000C 01
    1134 0	loopstart	8                                              ;// 046E 0E 08
      0	play	0, '0A90AC', 1 ; ** single play                        ;// 0000 01 00 0A90AC 01
      9900                                                          ;// 26AC 0F
    0	loopend                                                       
    end                                                             ;// 0000 00
    end

;Track $0727 Channel 0
    playlist 1831, 0 ,':' ; {    // Address $00076d8 [U2 $076d8], Time 235814.39ms
    0	setvol 0, 120                                                 ;// 0000 07 00 78
    0	play	0, '2D79EA', 1 ; ** single play                          ;// 0000 01 00 2D79EA 01
    1513 0	loopstart	8                                              ;// 05E9 0E 08
      0	play	0, '1DFBA6', 1 ; ** single play                        ;// 0000 01 00 1DFBA6 01
      3649                                                          ;// 0E41 0F
    0	loopend                                                       
    end                                                             ;// 0000 00
    end

;Track $072a Channel 0
    playlist 1834, 0 ,':' ; {    // Address $00076f9 [U2 $076f9], Time 61647.36ms
    0	setvol 0, 120                                                 ;// 0000 07 00 78
    0	play	0, '28F8AA', 1 ; ** single play                          ;// 0000 01 00 28F8AA 01
    2475 0	play	0, '275D7A', 1 ; ** single play                     ;// 09AB 01 00 275D7A 01
    2776 0	play	0, '275D7A', 1 ; ** single play                     ;// 0AD8 01 00 275D7A 01
    1474 rampvol 0, 0, 1302    ;                                    ;// 05C2 0A 00 00 0516
    1302 end                                                        ;// 0516 00
    end

