PREFIX='/usr'
DESTDIR=''
NAME := retrosmart-xcursors
CONFIGS := $(wildcard src/*/*.in)
XPMS := $(wildcard src/*/*/*.xpm)
PNGS := $(subst .xpm,.png,$(XPMS))
THEMES := $(subst src/,$(NAME)-,$(wildcard src/*))
INDICES := $(subst src/,$(NAME)-,$(wildcard src/*/index.theme))
CURSORS := $(join $(subst src/,$(NAME)-,$(dir $(CONFIGS))),\
$(addprefix cursors/,$(notdir $(basename $(CONFIGS)))))

default: pngs themes indices cursors

github: preview.gif clean

pngs: $(PNGS)
%.png: %.xpm
	convert $^ $@

cursors: $(CURSORS)
$(CURSORS):
	xcursorgen -p $(subst cursors,,$(subst $(NAME)-,src/,$(@D))) \
	$(subst cursors,,$(subst $(NAME)-,src/,$(@D)))$(notdir $@).in $@

indices: $(INDICES)
$(NAME)-%/index.theme: src/%/index.theme
	cp $^ $@

themes: $(THEMES)
$(NAME)-%: src/%
	mkdir -p $@/cursors
	cd $@/cursors; sh ../../makelinks.sh

clean_pngs:
	rm -f $(PNGS)

clean_cursors:
	rm -f $(CURSORS)

clean_themes:
	rm -rf $(THEMES)

clean_arch:
	rm -f xcursor-retrosmart-*.pkg.tar.xz

clean_preview:
	rm -f preview-*.png

clean: clean_pngs clean_cursors clean_themes clean_arch clean_preview

purge: clean
	rm -f preview.gif

install:
	install -d -m 755 $(DESTDIR)/$(PREFIX)/share/icons
	chmod -R u+rwX,go+rX $(NAME)-*/
	cp -r $(NAME)-*/ $(DESTDIR)/$(PREFIX)/share/icons/

uninstall:
	rm -rf $(DESTDIR)/$(PREFIX)/share/icons/$(NAME)-*/

user_install:
	mkdir -p ~/.icons/
	cp -r $(NAME)-*/ ~/.icons/

user_uninstall:
	rm -rf ~/.icons/$(NAME)-*/

arch_pkg:
	makepkg -d

preview-%.png: src/%
	montage -geometry +8+8 $(shell \
	find $^/24/ -type f -name "*.xpm" | grep -v '[2-8].xpm' | sort) $@

preview.gif: $(addsuffix .png,$(subst src/,preview-,$(wildcard src/*)))
	convert -loop 0 -delay 400 $^ $@

.PHONY: default themes package pngs cursors github \
clean_pngs clean_cursors clean_themes clean_arch clean_preview \
install uninstall user_install user_uninstall arch_pkg
