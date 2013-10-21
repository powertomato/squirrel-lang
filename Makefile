.PHONY: sq32 sqprof sq64

export CPP=g++
export CC=gcc
export AR=ar
export DEFS=-DSQUTF8 #-DSQ64
export MAKE=make
export RM=rm

SQUIRREL=.

sq32:
	cd squirrel; $(MAKE) 
	cd sqstdlib; $(MAKE) 
	cd sq; $(MAKE) 

sqprof:
	cd squirrel; $(MAKE) sqprof
	cd sqstdlib; $(MAKE) sqprof
	cd sq; $(MAKE) sqprof

sq64:
	cd squirrel; $(MAKE) sq64
	cd sqstdlib; $(MAKE) sq64
	cd sq; $(MAKE) sq64
