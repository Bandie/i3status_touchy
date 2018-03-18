# Makefile for i3status_touchy
# Author: Bandie Canis 
# Licence: GNU-GPLv3

all: 
	mkdir -p bin
	cc src/i3status_touchy.c -o bin/i3status_touchy

install:
	mkdir -p /usr/local/bin
	cp ./bin/i3status_touchy /usr/local/bin/
	cp ./systemd/i3status_touchy.service /etc/systemd/system
	chown root:root /usr/local/bin/i3status_touchy
	chmod 740 /usr/local/bin/i3status_touchy
	@printf "Done.\n"
	@printf "You may want to enable and start the service: \"systemctl enable i3status_touchy ; systemctl start i3status_touchy\"\n"	@printf "The file will be called /verified"

uninstall:
	rm /usr/sbin/local/i3status_touchy
	@printf "Done.\n"

clean:
	rm bin/i3status_touchy
	rmdir bin

