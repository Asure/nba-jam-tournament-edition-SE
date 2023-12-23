mkdir c:\tmp\jamse
mkdir c:\tmp\jamse\bb
mkdir c:\tmp\jamse\bb2
mkdir c:\tmp\jamse\bb3
mkdir c:\tmp\jamse\bbpal
mkdir c:\tmp\jamse\bbmug

load2 BB /di /fi /t=c:\tmp\jamse\bb /x /v
rem BB2- this provides imgtbl2.glo
rem this provides imgtbl2.asm but it's not copied together into imgtbl.asm from BB
rem so we link it later. TODO FIX
load2 BB2 /di /fi /t=c:\tmp\jamse\bb2 /x /v
rem BB3- this provides imgpal3.asm
rem BB3- this provides imgtbl4.glo (yes, confusing..)
load2 BB3 /di /fi /t=c:\tmp\jamse\bb3 /x /v
rem BBMUG - this provides 
load2 BBPAL /di /fi /t=c:\tmp\jamse\bbpal /x /v
rem BBPAL - this provides imgpalp.asm
load2 BBMUG /di /fi /t=c:\tmp\jamse\bbmug /x /v