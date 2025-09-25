@echo off
del l*.u*
copy /b mht100f8.0 + mht100fc.0  l1.03_maximum_hangtime_u54_l_version.u54
copy /b mht100f8.1 + mht100fc.1  l1.03_maximum_hangtime_u63_l_version.u63
del *.0 *.1
rem uncomment and add orig roms to build flat merged bin.
rem c:\bin\far\srec_cat -o ROM_MINE.bin -binary l1.03_maximum_hangtime_u54_l_version.u54 -binary -unsplit 2 0 l1.03_maximum_hangtime_u63_l_version.u63 -binary -unsplit 2 1
zip d:\mame\roms\nbamht.zip .\l1.03_*.u*
