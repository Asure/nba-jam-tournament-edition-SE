@echo off
rem this CMD file will do everything and create bb3.bin.
rem adjust paths as needed.
c:\dosbox-x\dosbox-x.exe -fastlaunch -conf .\dosbox-x\dosbox-x.conf exit -c "c:\myjamse\img\bb3\imgt.bat"
dd if=bb3.irw of=bb3.bin bs=0x44 skip=1
rem MAME debug commands to load these from the mame folder:
rem loadr bb3.bin,718600,0,:gfxrom  
copy bb3.bin D:\mame

