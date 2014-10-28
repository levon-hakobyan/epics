## Example vxWorks startup file

## The following is needed if your board support package doesn't at boot time
## automatically cd to the directory containing its startup script
cd "/home/levon/github/epics/apps/iocBoot/iocmoeller_target"

< cdCommands
#< ../nfsCommands
< ../network
#< ../users

cd topbin

## You may have to change moeller_target to something else
## everywhere it appears in this file
ld 0,0, "moeller_target.munch"

## Register all support components
cd top
dbLoadDatabase "dbd/moeller_target.dbd"
moeller_target_registerRecordDeviceDriver pdbbase




## Set this to see messages from mySub
#mySubDebug = 1

## Run this to trace the stages of iocInit
#traceIocInit

cd startup
iocInit

## Start any sequence programs
#seq &sncExample, "user=levon"
