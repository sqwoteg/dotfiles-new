PREFIX ?= /usr/local
CC ?= gcc
LDFLAGS = -O2 -s -lpthread -lxcb -lxcb-xkb -lasound -lm

output: dwmbar.c
	${CC} dwmbar.c $(LDFLAGS) -o dwmbar


clean:
	rm -f *.o *.gch dwmbar
install: output
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 dwmbar $(DESTDIR)$(PREFIX)/bin/dwmbar
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmbar
