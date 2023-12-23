rem In mame debug:
rem saver se1.bin,600000,200000,:gfxrom
rem saver se2.bin,200000,200000,:gfxrom
rem saver se3.bin,400000,200000,:gfxrom
rem saver se4.bin,600000,200000,:gfxrom
rem bin should be 2097152
rem all: saver se1.bin,0,200000,:gfxrom;saver se2.bin,200000,200000,:gfxrom;saver se3.bin,400000,200000,:gfxrom;saver se4.bin,600000,200000,:gfxrom
rem make em
rem 0-200000
c:\bin\far\srec_cat se1.bin -binary -split 4 0 -o l1_nba_jam_tournament_game_rom_ug14.ug14 -binary
c:\bin\far\srec_cat se1.bin -binary -split 4 1 -o l1_nba_jam_tournament_game_rom_uj14.uj14 -binary
c:\bin\far\srec_cat se1.bin -binary -split 4 2 -o l1_nba_jam_tournament_game_rom_ug19.ug19 -binary
c:\bin\far\srec_cat se1.bin -binary -split 4 3 -o l1_nba_jam_tournament_game_rom_uj19.uj19 -binary
rem 200000-400000
c:\bin\far\srec_cat se2.bin -binary -split 4 0 -o l1_nba_jam_tournament_game_rom_ug16.ug16 -binary
c:\bin\far\srec_cat se2.bin -binary -split 4 1 -o l1_nba_jam_tournament_game_rom_uj16.uj16 -binary
c:\bin\far\srec_cat se2.bin -binary -split 4 2 -o l1_nba_jam_tournament_game_rom_ug20.ug20 -binary
c:\bin\far\srec_cat se2.bin -binary -split 4 3 -o l1_nba_jam_tournament_game_rom_uj20.uj20 -binary
rem 400000-600000
c:\bin\far\srec_cat se3.bin -binary -split 4 0 -o l1_nba_jam_tournament_game_rom_ug17.ug17 -binary
c:\bin\far\srec_cat se3.bin -binary -split 4 1 -o l1_nba_jam_tournament_game_rom_uj17.uj17 -binary
c:\bin\far\srec_cat se3.bin -binary -split 4 2 -o l1_nba_jam_tournament_game_rom_ug22.ug22 -binary
c:\bin\far\srec_cat se3.bin -binary -split 4 3 -o l1_nba_jam_tournament_game_rom_uj22.uj22 -binary
rem 600000-800000
c:\bin\far\srec_cat se4.bin -binary -split 4 0 -o l1_nba_jam_tournament_game_rom_ug18.ug18 -binary
c:\bin\far\srec_cat se4.bin -binary -split 4 1 -o l1_nba_jam_tournament_game_rom_uj18.uj18 -binary
c:\bin\far\srec_cat se4.bin -binary -split 4 2 -o l1_nba_jam_tournament_game_rom_ug23.ug23 -binary
c:\bin\far\srec_cat se4.bin -binary -split 4 3 -o l1_nba_jam_tournament_game_rom_uj23.uj23 -binary

