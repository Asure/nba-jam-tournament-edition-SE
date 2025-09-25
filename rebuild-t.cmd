del audit.equ
del disp.equ
del link.equ
del sys.equ
del gsp.equ
copy auditT.equ	audit.equ
copy dispT.equ disp.equ
copy sysT.equ sys.equ
copy gspT.equ gsp.equ
copy linkT.equ link.equ
c:\dosbox-x\dosbox-x.exe -conf .\dosbox-x\dosbox-x.conf
del mc*.*
del *.lck
cd ROM
merge-tunit.cmd

	
