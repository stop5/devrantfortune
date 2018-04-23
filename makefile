#!/usr/bin/make -f

%.dat: %
	strfile $< $<.dat

build: devRant.dat devRant.stories.dat

install: build
	cp -t /usr/share/games/fortunes devRant.dat devRant
	cp -t /usr/share/games/fortunes devRant.stories.dat devRant.stories

clean:
	rm -f devRant.dat devRant.stories.dat

.PHONY: install build clean
