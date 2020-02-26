%module wiringpi

%{
//from wiringpi/
#include "drcSerial.h"
#include "max31855.h"
#include "max5322.h"
#include "mcp23008.h"
#include "mcp23016.h"
//#include "mcp23016reg.h"
#include "mcp23017.h"
#include "mcp23s08.h"
#include "mcp23s17.h"
//#include "mcp23x0817.h"
//#include "mcp23x08.h"
#include "mcp3002.h"
#include "mcp3004.h"
#include "mcp3422.h"
#include "mcp4802.h"
#include "pcf8574.h"
#include "pcf8591.h"
#include "RKIO.h"
#include "sn3218.h"
#include "softPwm.h"
//#include "softServo.h"
//#include "softTone.h"
#include "sr595.h"
#include "wiringNT.h"
#include "wiringPi.h"
#include "wiringPiI2C.h"
#include "wiringPiSPI.h"
#include "wiringSerial.h"
#include "wiringShift.h"
#include "wpiExtensions.h"
//from devLib
#include "ds1302.h"
//#include "font.h"
#include "gertboard.h"
#include "lcd128x64.h"
#include "lcd.h"
#include "maxdetect.h"
#include "piFace.h"
#include "piGlow.h"
#include "piNes.h"
%}

%apply unsigned char { uint8_t };

%include "bindings.i"
