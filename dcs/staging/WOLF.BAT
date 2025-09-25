rem this builds NBA sound roms for WOLF Unit
del *.rom
plbuild.exe -e nba >errlog.txt
plbuild.exe -m nba >errlogm.txt