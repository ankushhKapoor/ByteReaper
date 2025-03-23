flags=-O2 -Wall -std=c2x
ldflags=-lbu

.PHONY: all clean

all: clean ByteReaper

ByteReaper: ByteReaper.o
	cc $(flags) $^ -o $@ $(ldflags)

ByteReaper.o: ByteReaper.c ByteReaper.h
	cc $(flags) -c $<

clean:
	rm -f *.o ByteReaper