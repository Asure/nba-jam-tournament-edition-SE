@echo off
del romz.bin
rem the u12* files must be created in dosbox by the ff8.bat command.
c:\bin\far\srec_cat -o ROMz1.bin -binary bbzf8.0 -binary -unsplit 2 0 bbzf8.1 -binary -unsplit 2 1
c:\bin\far\srec_cat -o ROMz2.bin -binary bbzfc.0 -binary -unsplit 2 0 bbzfc.1 -binary -unsplit 2 1
copy /b ROMz1.bin + ROMz2.bin ROMz.bin
del romz1.bin romz2.bin
rem uncomment this to create an original bin to compare with if you need
rem c:\bin\far\srec_cat -o ROM_ORIG.bin -binary uj12.l3 -binary -unsplit 2 0 ug12.l3 -binary -unsplit 2 1
rem Add the revx ad into rom.bin (overwrites the data at a0000).
rem dd conv=notrunc bs=1 seek=655360 if=revx.bin of=rom.bin
rem split odd/even
rem UJ12 
c:\bin\far\srec_cat romz.bin -binary -split 2 0 -o l4_nba_jam_tournament_game_rom_uj12.uj12 -bin
rem UG12
c:\bin\far\srec_cat romz.bin -binary -split 2 1 -o l4_nba_jam_tournament_game_rom_ug12.ug12 -bin
zip d:\mame\roms\nbajamte.zip .\l4_*.u*
