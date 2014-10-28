TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#=============================
# Build the IOC support library

##LIBRARY_IOC += moller_setupSupport
LIBRARY_IOC_vxWorks += moller_setupSupport
# xxxRecord.h will be created from xxxRecord.dbd
##DBDINC += xxxRecord
# Install devXxxSoft.dbd into <top>/dbd
##DBD += xxxSupport.dbd
DBD += moller_setupSupport.dbd
moller_setupSupport_DBD += base.dbd
moller_setupSupport_DBD += asyn.dbd
moller_setupSupport_DBD += drvAsynIPPort.dbd
moller_setupSupport_DBD += stdSupport.dbd
moller_setupSupport_DBD += calcSupport.dbd
moller_setupSupport_DBD += busySupport.dbd 
moller_setupSupport_DBD += sscanSupport.dbd 
moller_setupSupport_DBD += asSupport.dbd
moller_setupSupport_DBD += devSequencer.dbd
moller_setupSupport_DBD += stream.dbd
moller_setupSupport_DBD += streamSynApps.dbd
moller_setupSupport_DBD += std.dbd

moller_setupSupport_DBD += motorSupport.dbd
moller_setupSupport_DBD += devAcsMotor.dbd
moller_setupSupport_DBD += devImsMotor.dbd
moller_setupSupport_DBD += devMclennanMotor.dbd
moller_setupSupport_DBD += devMicos.dbd
moller_setupSupport_DBD += devMicroMo.dbd
moller_setupSupport_DBD += devNewport.dbd
moller_setupSupport_DBD += devPIMotor.dbd   
moller_setupSupport_DBD += devOms.dbd
moller_setupSupport_DBD += devSoftMotor.dbd
moller_setupSupport_DBD += motorSimSupport.dbd
moller_setupSupport_DBD += devSmartMotorMotor.dbd
moller_setupSupport_DBD += devKohzuMotor.dbd
moller_setupSupport_DBD += devAttocube.dbd
moller_setupSupport_DBD += devAerotech.dbd
moller_setupSupport_DBD += drvAsynSerialPort.dbd

moller_setupSupport_SRCS += moller_oplog_remote.c

moller_setupSupport_LIBS += $(EPICS_BASE_IOC_LIBS)


#=============================
# Build the IOC application

##PROD_IOC = moller_setup
PROD_IOC_vxWorks = moller_setup
# moller_setup.dbd will be created and installed
DBD += moller_setup.dbd

# moller_setup.dbd will be made up from these files:
moller_setup_DBD += moller_setupSupport.dbd

# moller_setup_registerRecordDeviceDriver.cpp derives from moller_setup.dbd

# Build the main IOC entry point on workstation OSs.
moller_setup_SRCS_DEFAULT += moller_setupMain.cpp
##moller_setup_SRCS_vxWorks += -nil-
moller_setup_SRCS_vxWorks += moller_setup_registerRecordDeviceDriver.cpp

# Add support from base/src/vxWorks if needed
moller_setup_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Link in the code from the support library
moller_setup_LIBS += moller_setupSupport

moller_setup_LIBS += asyn
moller_setup_LIBS += mca
moller_setup_LIBS += calc
moller_setup_LIBS += busy
moller_setup_LIBS += sscan
moller_setup_LIBS += autosave
moller_setup_LIBS += std
moller_setup_LIBS += stream streamSynApps
moller_setup_LIBS += asyn
moller_setup_LIBS += seqDev seq pv 
moller_setup_LIBS += Aerotech
moller_setup_LIBS += Attocube
moller_setup_LIBS += oms
moller_setup_LIBS += Mclennan
moller_setup_LIBS += Micos
moller_setup_LIBS += MicroMo
moller_setup_LIBS += PI
moller_setup_LIBS += Acs
moller_setup_LIBS += Ims
moller_setup_LIBS += Newport
moller_setup_LIBS += softMotor
moller_setup_LIBS += motorSimSupport
moller_setup_LIBS += SmartMotor
moller_setup_LIBS += KohzuMotor
moller_setup_LIBS += motor

# NOTE: To build SNL programs, SNCSEQ must be defined
# in the <top>/configure/RELEASE file

ifneq ($(SNCSEQ),)
    # Build sncExample into moller_setupSupport
##    sncExample_SNCFLAGS += +r
##    moller_setup_DBD += sncExample.dbd
    moller_setupSupport_DBD += moller_setupSNC.dbd
    moller_setupSupport_SRCS += moller_setup.st
    moller_setupSupport_LIBS += seq pv
    # Build sncProgram as a standalone program
##    PROD_HOST += sncProgram
##    sncProgram_SNCFLAGS += +m
##    sncProgram_SRCS += sncProgram.st
##    sncProgram_LIBS += seq pv
##    sncProgram_LIBS += $(EPICS_BASE_HOST_LIBS)
endif

# Finally link to the EPICS Base libraries
moller_setup_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

