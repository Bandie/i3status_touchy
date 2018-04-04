# Makefile for i3status_touchy
# Author: Bandie Canis 
# Licence: GNU-GPLv3

all: 
	mkdir -p bin
	cc --std=c99 src/i3status_touchy.c -o bin/i3status_touchy

install:
	mkdir -p /usr/local/bin
	cp ./bin/i3status_touchy /usr/local/bin/
	chown root:root /usr/local/bin/i3status_touchy
	chmod 740 /usr/local/bin/i3status_touchy
	@printf "Done.\n"
	@printf "You may want to configure a service for this program. Look into the systemd directory for a systemd example.\n"

uninstall:
	rm /usr/sbin/local/i3status_touchy
	@printf "Done.\n"

clean:
	rm bin/i3status_touchy
	rmdir bin

test:
	@printf "What to test?\n"
