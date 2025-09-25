rem In mame debug:
rem saver se1.bin,600000,200000,:gfxrom
rem saver se2.bin,200000,200000,:gfxrom
rem saver se3.bin,400000,200000,:gfxrom
rem saver se4.bin,600000,200000,:gfxrom
rem bin should be 2097152
rem all: saver se1.bin,0,200000,:gfxrom;saver se2.bin,200000,200000,:gfxrom;saver se3.bin,400000,200000,:gfxrom;saver se4.bin,600000,200000,:gfxrom
rem make em
rem loading on Wolf: 
rem loadr se1.bin,400000,200000,:gfxrom;
rem loadr se2.bin,600000,200000,:gfxrom;
rem loadr se3.bin,800000,200000,:gfxrom;
rem loadr se4.bin,a00000,200000,:gfxrom;g
del l1*.u*
rem SE1 should end up at 0x400000 - 0x5FFFFF  (DB B6 6D DB)

c:\bin\far\srec_cat se1.bin -binary -split 4 0 -o 129.bin -binary
c:\bin\far\srec_cat se2.bin -binary -split 4 0 -o 129_2.bin -binary
copy /b 129.bin + 129_2.bin l1.0_nba_hangtime_u_129_image_rom.u129
c:\bin\far\srec_cat se1.bin -binary -split 4 1 -o 128.bin -binary
c:\bin\far\srec_cat se2.bin -binary -split 4 1 -o 128_2.bin -binary
copy /b 128.bin + 128_2.bin l1.0_nba_hangtime_u_128_image_rom.u128
c:\bin\far\srec_cat se1.bin -binary -split 4 2 -o 127.bin -binary
c:\bin\far\srec_cat se2.bin -binary -split 4 2 -o 127_2.bin -binary
copy /b 127.bin + 127_2.bin l1.0_nba_hangtime_u_127_image_rom.u127
c:\bin\far\srec_cat se1.bin -binary -split 4 3 -o 126.bin -binary
c:\bin\far\srec_cat se2.bin -binary -split 4 3 -o 126_2.bin -binary
copy /b 126.bin + 126_2.bin l1.0_nba_hangtime_u_126_image_rom.u126

c:\bin\far\srec_cat se3.bin -binary -split 4 0 -o 125.bin -binary
c:\bin\far\srec_cat se4.bin -binary -split 4 0 -o 125_2.bin -binary
copy /b 125.bin + 125_2.bin l1.0_nba_hangtime_u_125_image_rom.u125
c:\bin\far\srec_cat se3.bin -binary -split 4 1 -o 124.bin -binary
c:\bin\far\srec_cat se4.bin -binary -split 4 1 -o 124_2.bin -binary
copy /b 124.bin + 124_2.bin l1.0_nba_hangtime_u_124_image_rom.u124
c:\bin\far\srec_cat se3.bin -binary -split 4 2 -o 123.bin -binary
c:\bin\far\srec_cat se4.bin -binary -split 4 2 -o 123_2.bin -binary
copy /b 123.bin + 123_2.bin l1.0_nba_hangtime_u_123_image_rom.u123
c:\bin\far\srec_cat se3.bin -binary -split 4 3 -o 122.bin -binary
c:\bin\far\srec_cat se4.bin -binary -split 4 3 -o 122_2.bin -binary
copy /b 122.bin + 122_2.bin l1.0_nba_hangtime_u_122_image_rom.u122

del 1*.bin
