## Example vxWorks startup file

## The following is needed if your board support package doesn't at boot time
## automatically cd to the directory containing its startup script
cd "/home/levon/github/epics/apps/iocBoot/iocmoller_setup"

< cdCommands
#< ../nfsCommands
< ../network
#< ../users

cd topbin

## You may have to change moller_setup to something else
## everywhere it appears in this file
ld 0,0, "moller_setup.munch"

## Register all support components
cd top
dbLoadDatabase "dbd/moller_setup.dbd"
moller_setup_registerRecordDeviceDriver pdbbase




## Set this to see messages from mySub
#mySubDebug = 1

## Run this to trace the stages of iocInit
#traceIocInit

cd startup
iocInit

## Start any sequence programs
#seq &sncExample, "user=levon"
