###################################################
##       .(@@@@@@@@@@@@@@@@@@@@@@@@@@@@(.        ##
##     *@.                              .@(      ##
##     @#                      *%(       *@      ##
##     @#                     &.  &.     *@      ##
##     @#       ,@&@.           @*       *@      ##
##     @#       *@  @%          @*       *@      ##
##     @#       *@   *@.        @*       *@      ##
##     @#       *@     @(       @*       *@      ##
##     @#       *@      #@      @*      #( &.    ##
##     @#       *@        @/    @*       ,(      ##
##     #&       *@         %&   @*               ##
##       #@@@@@@@*    #@.   ,@, @*               ##
##             #&       *@#   %@&     .@%        ##
##       *@    #&         .@%           *@*      ##
##      %&     #&           ,@#           &@     ##
##     @/      #&                   #@     (@.   ##
##   @&        #&                   &%      ,@(  ##
##  ,          (@,                 #@.           ##
##                @@@@@@@@@@@@@@@@@              ##
###################################################
# WiriingNT PHP extension
#
# Made by YeaCreate WWX<wwx@yeacreate.com> & Simon<simon@yeacreate.com>
###################################################


ifneq ($V,1)
Q ?= @
endif

CC	= gcc
DEBUG	= -O3

LIB = wiringpi
WRAP = wiringpi_wrap

INCLUDE	= -I/usr/local/include
CFLAGS = $(DEBUG) -c -fpic `php-config --includes` -I${INCLUDE} -Winline -pipe

LDFLAGS	= -L/usr/local/lib
LDLIBS    = -lwiringPi -lwiringPiDev -lpthread -lm

SRC	= $(WRAP).c

OBJ	=	$(SRC:.c=.o)

all: $(LIB)

$(LIB): $(OBJ)
	$(CC) -shared $(WRAP).o -o $(LIB).so $(LDFLAGS) $(LDLIBS)

.c.o:
	$(CC) $(CFLAGS) $(SRC)

install:
	cp $(LIB).so `php-config --extension-dir`
	cp $(LIB).php `php-config --extension-dir`

clean:
	rm -f $(LIB).so
	rm -f $(WRAP).o

.PHONY: clean
