del audit.equ
del disp.equ
del link.equ
del sys.equ
del gsp.equ
copy auditw.equ	audit.equ
copy dispw.equ disp.equ
copy sysw.equ sys.equ
copy gspw.equ gsp.equ
copy linkw.equ link.equ
c:\dosbox-x\dosbox-x.exe -conf .\dosbox-x\dosbox-x.conf
del mc*.*
attrib -r
del *.lck
cd ROM
merge-wunit.cmd

	
