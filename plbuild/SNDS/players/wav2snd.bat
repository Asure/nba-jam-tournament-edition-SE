@echo off
for %%f in (*.wav) do (
  echo Converting %%f ...
  sox %%f -r 31250 -c 1 -w -s %%~nf.snd
  ffmpeg -i %%f -ar 31250 -ac 1 -f s16le %%~nf.SND
  move %%f .\done
)

rem renames files into .SND format
powershell .\rename.ps1 

(for %%F in (*.SND) do @echo HENRY c -v3.75 -vb95 -vi7 -vr79 -vt0 %%~nF) > go.bat

echo Done!
rem MK3 Graveyard                3.75 -vb95 -vi7 -vr79 -vt0
rem MK3 most music: -v4 -vb111 -vi7 -vr95