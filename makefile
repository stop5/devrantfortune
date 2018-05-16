#!/usr/bin/make -f

%.dat: %
	strfile $< $<.dat

build: devRant.dat

install: build
	cp -t /usr/share/games/fortunes devRant.dat devRant

clean:
	rm -f devRant.dat

.PHONY: install build clean
