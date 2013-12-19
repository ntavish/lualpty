# simple Makefile for lpty. Works for Linux, MacOS X, probably other unixen
#
# Gunnar Zötl <gz@tset.de>, 2011.
# Released under MIT/X11 license. See file LICENSE for details.

# Defaults
TARGET = lpty.so
CFLAGS=-O2 -fPIC
INCDIRS=-I$(STAGING_DIR)/usr/include
LIBDIRS=-L$(STAGING_DIR)/usr/lib
LDFLAGS=-shared


all: $(TARGET)

$(TARGET): lpty.o
	$(CC) $(LDFLAGS) -o $@ $(LIBDIRS) $<

lpty.o: lpty.c
	$(CC) $(CFLAGS) $(INCDIRS) -c $< -o $@

clean:
	rm -f *.o *.so core
