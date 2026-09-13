NAME := retrosmart
PKGNAME := xcursor-$(NAME)

VERSION = 4.0a
URL = https://github.com/mdomlop/retrosmart-x11-cursors
DESCRIPTION = A retrosmart look collection of cursors for X.
LICENSE = GPL3
MAIL=zqbzybc@tznvy.pbz
YEAR = 2026

include cursorlinks.mk
include xpm.mk
include xpm2png.mk
include svg.mk
include svg2png.mk
include png2cursor.mk

XPM2PNGCOM := magick
XPM2PNGARG := -density 1200 -background none -resize 32x32
XPM2PNGARGSHADOW := \( +clone -background black -shadow 60x2+5+5 \) +swap -background none -layers merge +repage

#SVG2PNGCOM := inkscape
#SVG2PNGARG := --export-background-opacity=0 --export-area-page --export-type=png --export-filename=
#SVG2PNGARGSHADOW := --batch-process --actions="select-all;org.inkscape.effect.filter.ColorDropShadow.noprefs;export-type:png;export-filename:$@;export-width:48;export-height:48;export-background-opacity:0;export-do"

SVG2PNGCOM := $(XPM2PNGCOM)
SVG2PNGARG := $(XPM2PNGARG)
SVG2PNGARGSHADOW := $(XPM2PNGARGSHADOW)


# Configuración de tamaños
#SIZES := 32 36 48 60
SIZES := 32 36

SRCXPMTHEMES := $(wildcard src/$(NAME)-xcursor-*.theme)
SRCSVGTHEMES := $(wildcard src/$(NAME)-vector-xcursor-*.theme)

SRCXPMS := $(wildcard src/base.xpm/*.xpm)
SRCSVGS := $(wildcard src/base.svg/*.svg)

XPMTHEMES := $(notdir $(basename $(SRCXPMTHEMES)))
SVGTHEMES := $(notdir $(basename $(SRCSVGTHEMES)))

XPMINDICES := $(addprefix xpm_theme/,$(XPMTHEMES:=/index.theme)) $(addprefix xpm_theme/,$(XPMTHEMES:=/cursor.theme))
SVGINDICES := $(addprefix svg_theme/,$(SVGTHEMES:=/index.theme)) $(addprefix svg_theme/,$(SVGTHEMES:=/cursor.theme))
INDICES := $(XPMINDICES) $(SVGINDICES)

XPMS := $(foreach dir,$(XPMTHEMES),$(addprefix xpm/$(dir)/,$(notdir $(SRCXPMS))))
SVGS := $(foreach dir,$(SVGTHEMES),$(addprefix svg/$(dir)/,$(notdir $(SRCSVGS))))

XPMPNGS := $(foreach dir,$(XPMTHEMES),$(addprefix xpmpng/$(dir)/,$(notdir $(SRCXPMS))))
XPMPNGS := $(XPMPNGS:.xpm=.png)

SVGPNGS := $(foreach size,$(SIZES),$(addprefix $(size)-,$(notdir $(SRCSVGS))))
SVGPNGS := $(foreach dir,$(SVGTHEMES),$(addprefix svgpng/$(dir)/,$(SVGPNGS)))
SVGPNGS := $(SVGPNGS:.svg=.png)
PNGS := $(XPMPNGS) $(SVGPNGS)

XPMCURSORS := $(foreach dir,$(XPMTHEMES),$(addprefix xpm_theme/$(dir)/cursors/,$(CURSORSNAMES)))
SVGCURSORS := $(foreach dir,$(SVGTHEMES),$(addprefix svg_theme/$(dir)/cursors/,$(CURSORSNAMES)))
CURSORS := $(XPMCURSORS) $(SVGCURSORS)

XPMLINKS := $(foreach dir,$(XPMTHEMES),$(addprefix xpm_theme/$(dir)/cursors/,$(LINKSNAMES)))
SVGLINKS := $(foreach dir,$(SVGTHEMES),$(addprefix svg_theme/$(dir)/cursors/,$(LINKSNAMES)))
LINKS := $(XPMLINKS) $(SVGLINKS)

all: xpmtheme svgtheme pkg_ocs

xpmtheme: xpm xpmpng xpmcursor xpmindex xpmlink
svgtheme: svg svgpng svgcursor svgindex svglink

xpm: $(XPMS)
svg: $(SVGS)
xpmpng: $(XPMPNGS)
svgpng: $(SVGPNGS)
xpmcursor: $(XPMCURSORS)
svgcursor: $(SVGCURSORS)
xpmindex: $(XPMINDICES)
svgindex: $(SVGINDICES)
xpmlink: $(XPMLINKS)
svglink: $(SVGLINKS)

png: $(PNGS)
cursor: $(CURSORS)
index: $(INDICES)
link: $(LINKS)

clean: clean_xpm clean_svg clean_png clean_themes clean_ocs

clean_xpm:
	rm -rf xpm
clean_svg:
	rm -rf svg
clean_png:
	rm -rf xpmpng svgpng
clean_themes:
	rm -rf xpm_theme svg_theme

include install.mk
include arch.mk
include debian.mk
include ocs.mk