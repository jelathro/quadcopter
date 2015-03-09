NAME    = test
OBJECTS = main.o
CPU     = msp430f2274
CFLAGS  = -mmcu=${CPU}
CC      = msp430-gcc

.PHONY: all clean

all: ${NAME}.elf

${NAME}.elf: ${OBJECTS}
	${CC} ${CFLAGS} -o $@ ${OBJECTS}

clean:
	rm ${NAME}.elf main.o

# Dependencies
main.o: main.c

