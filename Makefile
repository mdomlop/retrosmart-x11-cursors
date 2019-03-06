PREFIX='/usr'
DESTDIR=''
NAME := retrosmart
CONFIGS := $(wildcard src/*/*.in)
THEMESSRC := $(wildcard src/*)
XPM := $(wildcard src/*/*/*.xpm)
PNG := $(subst .xpm,.png,$(XPM))
THEMES := $(subst src/,$(NAME)-,$(wildcard src/*))
INDEX := $(subst src/,$(NAME)-,$(wildcard src/*/index.theme))
CURSORS := $(join $(subst src/,$(NAME)-,$(dir $(CONFIGS))),\
$(addprefix cursors/,$(notdir $(basename $(CONFIGS)))))

default: pngs themes index cursors

github: preview.gif clean

pngs: $(PNG)
%.png: %.xpm
	convert $^ $@

cursors: $(CURSORS)


$(CURSORS):
	xcursorgen -p $(subst cursors,,$(subst $(NAME)-,src/,$(@D))) \
	$(subst cursors,,$(subst $(NAME)-,src/,$(@D)))$(notdir $@).in $@

index: $(INDEX)
$(NAME)-%/index.theme: src/%/index.theme
	cp $^ $@

themes: $(THEMES)
$(NAME)-%: src/%
	mkdir -p $@/cursors
	cd $@/cursors; sh ../../makelinks.sh

preview: preview.gif

clean_pngs:
	rm -f $(PNG)

clean_cursors:
	rm -f $(CURSORS)

clean_themes:
	rm -rf $(THEMES)

clean_arch:
	rm -f xcursors-*

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

user_install:
	mkdir -p ~/.icons/
	cp -r $(NAME)-*/ ~/.icons/

user_uninstall:
	rm -rf ~/.icons/$(NAME)-*/

preview-%.png: src/%
	montage -geometry +8+8 $(shell \
	find $^/24/ -type f -name "*.xpm" | grep -v '[2-8].xpm' | sort) $@

preview.gif: $(addsuffix .png,$(subst src/,preview-,$(wildcard src/*)))
	convert -loop 0 -delay 400 $^ $@

.PHONY: default themes package pngs cursors preview github \
clean_pngs clean_cursors clean_themes clean_arch clean_preview
