TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#=============================
# Build the IOC support library

##LIBRARY_IOC += moeller_targetSupport
LIBRARY_IOC_vxWorks += moeller_targetSupport
# xxxRecord.h will be created from xxxRecord.dbd
##DBDINC += xxxRecord
# Install devXxxSoft.dbd into <top>/dbd
##DBD += xxxSupport.dbd
DBD += moeller_targetSupport.dbd
moeller_targetSupport_DBD += base.dbd
moeller_targetSupport_DBD += asyn.dbd
moeller_targetSupport_DBD += drvAsynIPPort.dbd
moeller_targetSupport_DBD += stdSupport.dbd
moeller_targetSupport_DBD += calcSupport.dbd
moeller_targetSupport_DBD += busySupport.dbd 
moeller_targetSupport_DBD += sscanSupport.dbd 
moeller_targetSupport_DBD += asSupport.dbd
moeller_targetSupport_DBD += devSequencer.dbd
moeller_targetSupport_DBD += stream.dbd
moeller_targetSupport_DBD += streamSynApps.dbd
moeller_targetSupport_DBD += std.dbd

moeller_targetSupport_DBD += motorSupport.dbd
moeller_targetSupport_DBD += devAcsMotor.dbd
moeller_targetSupport_DBD += devImsMotor.dbd
moeller_targetSupport_DBD += devMclennanMotor.dbd
moeller_targetSupport_DBD += devMicos.dbd
moeller_targetSupport_DBD += devMicroMo.dbd
moeller_targetSupport_DBD += devNewport.dbd
moeller_targetSupport_DBD += devPIMotor.dbd   
moeller_targetSupport_DBD += devOms.dbd
moeller_targetSupport_DBD += devSoftMotor.dbd
moeller_targetSupport_DBD += motorSimSupport.dbd
moeller_targetSupport_DBD += devSmartMotorMotor.dbd
moeller_targetSupport_DBD += devKohzuMotor.dbd
moeller_targetSupport_DBD += devAttocube.dbd
moeller_targetSupport_DBD += devAerotech.dbd
moeller_targetSupport_DBD += drvAsynSerialPort.dbd

moeller_targetSupport_LIBS += $(EPICS_BASE_IOC_LIBS)


#=============================
# Build the IOC application

##PROD_IOC = moeller_target
PROD_IOC_vxWorks = moeller_target
# moeller_target.dbd will be created and installed
DBD += moeller_target.dbd

# moeller_target.dbd will be made up from these files:
moeller_target_DBD += moeller_targetSupport.dbd

# moeller_target_registerRecordDeviceDriver.cpp derives from moeller_target.dbd

# Build the main IOC entry point on workstation OSs.
moeller_target_SRCS_DEFAULT += moeller_targetMain.cpp
##moeller_target_SRCS_vxWorks += -nil-
moeller_target_SRCS_vxWorks += moeller_target_registerRecordDeviceDriver.cpp

# Add support from base/src/vxWorks if needed
moeller_target_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Link in the code from the support library
moeller_target_LIBS += moeller_targetSupport

moeller_target_LIBS += asyn
moeller_target_LIBS += mca
moeller_target_LIBS += calc
moeller_target_LIBS += busy
moeller_target_LIBS += sscan
moeller_target_LIBS += autosave
moeller_target_LIBS += std
moeller_target_LIBS += stream streamSynApps
moeller_target_LIBS += asyn
moeller_target_LIBS += seqDev seq pv 
moeller_target_LIBS += Aerotech
moeller_target_LIBS += Attocube
moeller_target_LIBS += oms
moeller_target_LIBS += Mclennan
moeller_target_LIBS += Micos
moeller_target_LIBS += MicroMo
moeller_target_LIBS += PI
moeller_target_LIBS += Acs
moeller_target_LIBS += Ims
moeller_target_LIBS += Newport
moeller_target_LIBS += softMotor
moeller_target_LIBS += motorSimSupport
moeller_target_LIBS += SmartMotor
moeller_target_LIBS += KohzuMotor
moeller_target_LIBS += motor

# NOTE: To build SNL programs, SNCSEQ must be defined
# in the <top>/configure/RELEASE file

ifneq ($(SNCSEQ),)
    # Build sncExample into moeller_targetSupport
##    sncExample_SNCFLAGS += +r
##    moeller_target_DBD += sncExample.dbd
    moeller_targetSupport_DBD += moeller_targetSNC.dbd
    moeller_targetSupport_SRCS += moeller_target.st
    moeller_targetSupport_LIBS += seq pv
    # Build sncProgram as a standalone program
##    PROD_HOST += sncProgram
##    sncProgram_SNCFLAGS += +m
##    sncProgram_SRCS += sncProgram.st
##    sncProgram_LIBS += seq pv
##    sncProgram_LIBS += $(EPICS_BASE_HOST_LIBS)
endif

# Finally link to the EPICS Base libraries
moeller_target_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

