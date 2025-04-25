@echo off
rem this CMD file will do everything and create bb3.bin.
rem adjust paths as needed.
c:\dosbox-x\dosbox-x.exe -fastlaunch -conf .\dosbox-x\dosbox-x.conf exit -c "c:\myjamse\img\goro\imgt.bat"
del goro.old
ren ren goro.bin goro.old
dd if=goro.irw of=goro.bin bs=0x44 skip=1
rem MAME debug commands to load these from the mame folder:
rem loadr bb3.bin,718600,0,:gfxrom  
copy goro.bin D:\mame

