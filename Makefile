XENO_CONFIG := /usr/xenomai/bin/xeno-config

CFLAGS := $(shell $(XENO_CONFIG) --posix --alchemy --cflags)
LDFLAGS := $(shell $(XENO_CONFIG) --posix --alchemy --ldflags)

CC := gcc
EXECUTABLE := Deber3

all: $(EXECUTABLE)

%: %.c
		$(CC) -o $@ $< $(CFLAGS) $(LDFLAGS)

clean:
		rm -f $(EXECUTABLE)
