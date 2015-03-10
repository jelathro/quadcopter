NAME    = test
OBJECTS = src/flight_controller.o
CPU     = msp430f2274
CFLAGS  = -mmcu=${CPU}
CC      = msp430-gcc

.PHONY: all clean

all: bin/${NAME}.elf

bin/${NAME}.elf: ${OBJECTS}
	[ -d bin ] || mkdir bin
	${CC} ${CFLAGS} -o $@ ${OBJECTS}

clean:
	rm -r bin src/*.o

# Dependencies
main.o: src/flight_controller.c

