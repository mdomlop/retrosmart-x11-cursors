PKGNAME := xcursor-retrosmart

VERSION = 3.1a
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

clean: clean_xpm clean_png clean_themes clean_pkg clean_arch clean_debian clean_ocs

clean_xpm:
	rm -rf xpm
clean_png:
	rm -rf png
clean_themes:
	rm -rf $(THEMES)
clean_pkg:
	rm -f *.zst
	rm -f *.deb

purge: clean
	rm -f preview.gif

#preview.gif: $(addsuffix .png,$(subst src/,preview-,$(wildcard src/*)))
#	convert -loop 0 -delay 400 $^ $@

#PREVIEW := default progress1 help wait01 text pirate pointer copy
PREVIEW := default alias progress1 context-menu help wait01 text pirate pointer copy color-picker crosshair cell dnd-move dnd-no-drop no-drop not-allowed pencil zoom-in zoom-out
PREVIEW_W32 := $(addprefix png/retrosmart-xcursor-white/32-,$(PREVIEW))
PREVIEW_W36 := $(addprefix png/retrosmart-xcursor-white/36-,$(PREVIEW))
PREVIEW_B32 := $(addprefix png/retrosmart-xcursor-black/32-,$(PREVIEW))
PREVIEW_B36 := $(addprefix png/retrosmart-xcursor-black/36-,$(PREVIEW))
PREVIEW_W32CS := $(addprefix png/retrosmart-xcursor-white-color-shadow/32-,$(PREVIEW))
PREVIEW_W36CS := $(addprefix png/retrosmart-xcursor-white-color-shadow/36-,$(PREVIEW))
PREVIEW_B32CS := $(addprefix png/retrosmart-xcursor-black-color-shadow/32-,$(PREVIEW))
PREVIEW_B36CS := $(addprefix png/retrosmart-xcursor-black-color-shadow/36-,$(PREVIEW))
PREVIEW := $(PREVIEW_W32) $(PREVIEW_W36) $(PREVIEW_B32) $(PREVIEW_B36)  $(PREVIEW_W32CS) $(PREVIEW_W36CS) $(PREVIEW_B32CS) $(PREVIEW_B36CS)
PREVIEW := $(PREVIEW:=.png)

preview.gif: $(PREVIEW)
	montage -geometry +9+8 -tile 20x0 $^ preview.gif


include install.mk
include arch.mk
include debian.mk
include ocs.mk
