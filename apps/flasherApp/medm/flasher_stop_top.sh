#!/bin/sh

caput B_HPS_ECAL_FLASHER_TOP:SEQ_START STOP
caput B_HPS_ECAL_FLASHER_TOP:GET_LEDS.SCAN "Passive"
caput GET_SEQUENCE.SCAN OFF

exit
