@echo off
del rom.bin
rem the u12* files must be created in dosbox by the ff8.bat command.
c:\bin\far\srec_cat -o ROM1.bin -binary u12f8.0 -binary -unsplit 2 0 u12f8.1 -binary -unsplit 2 1
c:\bin\far\srec_cat -o ROM2.bin -binary u12fc.0 -binary -unsplit 2 0 u12fc.1 -binary -unsplit 2 1
copy /b ROM1.bin + ROM2.bin ROM.bin
del rom1.bin rom2.bin
rem uncomment this to create an original bin to compare with if you need
rem c:\bin\far\srec_cat -o ROM_ORIG.bin -binary uj12.l3 -binary -unsplit 2 0 ug12.l3 -binary -unsplit 2 1
rem Add the revx ad into rom.bin (overwrites the data at a0000).
rem dd conv=notrunc bs=1 seek=655360 if=revx.bin of=rom.bin
rem split odd/even
rem UJ12 
c:\bin\far\srec_cat rom.bin -binary -split 2 0 -o l4_nba_jam_tournament_game_rom_uj12.uj12 -bin
rem UG12
c:\bin\far\srec_cat rom.bin -binary -split 2 1 -o l4_nba_jam_tournament_game_rom_ug12.ug12 -bin
zip d:\mame\roms\nbajamte.zip .\l4_*.u*
