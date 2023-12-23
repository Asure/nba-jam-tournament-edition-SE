: This file will split the Total Carnage Program files
: into the appropriate ROM files.  It will then concantenate the files
: into 2 MBit eprom files.
:
:	P Cox	08 Nov. 1991	Initial Creation
:	P Cox	26 Nov. 1991	Deleted path spec for SREC
:
:	Split the Program file
echo "Beginning Program File Build Process..."
bigsrec <ff8.lrn
