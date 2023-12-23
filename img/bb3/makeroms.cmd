@echo off
rem quick and dirty..
rem cut off the header that comes from the load2.exe tool used to build these IRW files
rem actual load2.exe tool should be run from dosbox.
rem bb  ***> 4673800 (court etc)
rem bb2 ***> 2000000 (
rem bb3 ***> 58c3000 
rem bbm ***> 3e0a000
dd if=bb.irw of=bb.bin bs=0x44 skip=1 
dd if=bb2.irw of=bb2.bin bs=0x44 skip=1
dd if=bb3.irw of=bb3.bin bs=0x44 skip=1
dd if=bbmug.irw of=bbmug.bin bs=0x44 skip=1
rem MAME debug commands to load these from the mame folder:
rem loadr bb2.bin,0,0,:gfxrom  (0-3bf10f)
rem loadr bbmug.bin,3C1400,0,:gfxrom  - lod = 3e0a000 3C14000   = -1f6000
rem loadr bb.bin,4CE7BD,0,:gfxrom  
rem loadr bb3.bin,718600,0,:gfxrom  
rem loadr bb2.bin,0,0,:gfxrom; loadr bbmug.bin,3C1400,0,:gfxrom ; loadr bb.bin,4CE7BD,0,:gfxrom ;loadr bb3.bin,718600,0,:gfxrom  
rem extra stuff free at 7fe940 = 5fe9400?
loadr grif.bin,7fe940,0m:gfxrom
loadr grif.bin,608940,0m:gfxrom


rem extend the files to 2MByte size:
rem on unix use trunc command..  (truncate -s 5MB 0.bin and so on.)
rem
rem fsutil file seteof 0.bin 2097152
rem fsutil file seteof 1.bin 2097152
rem fsutil file seteof 2.bin 2097152
rem fsutil file seteof 3.bin 2097152

