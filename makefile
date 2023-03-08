PKGNAME := xcursor-retrosmart

VERSION = 3.0a
URL = https://github.com/mdomlop/retrosmart-x11-cursors
DESCRIPTION = A retrosmart look collection of cursors for X.
LICENSE = GPL3
MAIL=zqbzybc@tznvy.pbz
YEAR = 2023

include cursors.mk

SRCTHEMES := $(wildcard src/*.theme)
SRCXPMS := $(wildcard src/base/*.xpm)

THEMES := $(notdir $(basename $(SRCTHEMES)))

INDICES := $(THEMES:=/index.theme)

XPMS := $(foreach dir,$(THEMES),$(addprefix xpm/$(dir)/,$(notdir $(SRCXPMS))))
PNGS := $(foreach dir,$(THEMES),$(addprefix png/$(dir)/,$(notdir $(SRCXPMS))))
PNGS := $(PNGS:.xpm=.png)

CURSORS := $(foreach dir,$(THEMES),$(addprefix $(dir)/cursors/,$(CURSORSNAMES)))
LINKS := $(foreach dir,$(THEMES),$(addprefix $(dir)/cursors/,$(LINKSNAMES)))

all: xpm png cursor index link

xpm: $(XPMS)
png: $(PNGS)
cursor: $(CURSORS)
index: $(INDICES)
link: $(LINKS)

clean: clean_xpm clean_png clean_themes clean_pkg clean_arch

clean_xpm:
	rm -rf xpm
clean_png:
	rm -rf png
clean_themes:
	rm -rf $(THEMES)
clean_pkg:
	rm -f *.zst
	rm -f *.deb

include install.mk
include arch.mk
include debian.mk
