DCSEncoder.exe -o nbatest10.zip --stream-dir=.\input --stream-dir=.\enhanced --patch base.zip rework.prg >rebuild.txt
DCSexplorer.exe -p nbatest10.zip >new_prog.txt
DCSexplorer.exe -s nbatest10.zip >new_streams.txt
mkdir work
cd work
del U*.*
del l1*.*
del NBA*.*
unzip ..\nbatest10.zip
rem copy u5.rom l1.0_nba_hangtime_u_6_music_spch.u6
rem copy u5.rom l1.0_nba_hangtime_u_7_music_spch.u7
ren u2.rom l1.0_nba_hangtime_u_2_music_spch.u2
ren u3.rom l1.0_nba_hangtime_u_3_music_spch.u3
ren u4.rom l1.0_nba_hangtime_u_4_music_spch.u4
ren u5.rom l1.0_nba_hangtime_u_5_music_spch.u5
ren u6.rom l1.0_nba_hangtime_u_6_music_spch.u6
zip d:\mame\roms\nbamht.zip .\l1.0_*.u*
rem cd \mame
rem mamewolf3 nbamht -debug



