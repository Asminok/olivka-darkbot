# ------------------------------------------------ #
# Darkbot Makefile (c) Jason Hamilton 07.06.98     #
# ------------------------------------------------ #
# To compile Darkbot, just type 'make'             #
# To compile for Win32 (95/98/NT) 'make win'       #
# To compile for Win32 with no console, type       #
# 'make win2'                                      #
#                                                  #
# To compile in debug mode, type 'make debug'      #
# To compile and have all data be logged to        #
# ..darkbot_debug.log, 'make debug2'               #
# ------------------------------------------------ #

CC = g++

CFLAGS = -DFORK -O2 -march=nocona -mtune=nocona -msse2 -mfpmath=sse -ftracer -m32 -pthread -L /usr/lib32/gcc/i686-linux-gnu/4.5
DFLAGS = -dm -pg -g -DDEBUG

D2FLAG = -DDEBUG2 -DFORK

EXE_NAME = olivka

ALL_SRC = darkbot.c translate.c dates.c color.c dbtools.cpp bc.c bc1.c smail/sendmail.c seen.cpp tg.c

all: ; ${CC} ${CFLAGS} ${ALL_SRC} -o ${EXE_NAME};

# ./.Stripdb; cat ./.info; ./.Launch;

win: ; ${CC} ${CFLAGS} -DWIN32 ${ALL_SRC} -o ${EXE_NAME};

win2: ; ${CC} ${CFLAGS} -DWIN32 -DNOCONSOLE -Wl,--subsystem,windows ${ALL_SRC} -o darkbot-noconsole -luser32; 

debug: ; ${CC} ${DFLAGS} ${ALL_SRC} -o ${EXE_NAME}; cat .debug ; gdb ${EXE_NAME}

debug2: ; ${CC} ${D2FLAG} ${ALL_SRC} -o ${EXE_NAME}; cat .debug2

indent: ; indent -br -nfca --line-length70 darkbot.c;
	indent -br -nfca --line-length70 defines.h
