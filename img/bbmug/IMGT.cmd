@echo off
rem this CMD file will do everything and create bbmug.bin.
rem adjust paths as needed.
c:\dosbox-x\dosbox-x.exe -fastlaunch -conf .\dosbox-x\dosbox-x.conf exit -c "c:\myjamse\img\bbmug\imgt.bat"
dd if=bbmug.irw of=bbmug.bin bs=0x44 skip=1
rem MAME debug commands to load these from the mame folder:
rem loadr bbmug.bin,3C1400,0,:gfxrom  - lod = 3e0a000 3C14000   = -1f6000
copy bbmug.bin D:\mame

