PREFIX = '/usr'
DESTDIR = ''
PKGNAME := retrosmart-xcursors

VERSION = 2.3.1
URL = https://github.com/mdomlop/retrosmart-x11-cursors
DESCRIPTION = A retrosmart look collection of cursors for X.
LICENSE = GPL3
MAIL=zqbzybc@tznvy.pbz

CURSORSNAMES := alias all-scroll bottom_left_corner bottom_right_corner bottom_side cell center_ptr closedhand color-picker col-resize context-menu copy crosshair default dnd-move dnd-no-drop down-arrow draft fleur help left-arrow left_side no-drop not-allowed openhand pencil pirate pointer progress right-arrow right_ptr right_side row-resize size_bdiag size_fdiag size_hor size_ver text top_left_corner top_right_corner top_side up-arrow vertical-text wait wayland-cursor x-cursor zoom-in zoom-out

LINKSNAMES := 3085a0e285430894940527032f8b26df 640fb0e74195791501fd1ed57b41487f a2a266d0498c3104214a47bd64ab0fc8 link plus 03b6e0fcb3499374a867c041f52298f0 move split_h 1081e37283d90000800003c07f3ef6bf 6407b0e94181790501fd1e167b474872 b66166c04f8c3109214a4fbd64a50fc8 dnd-copy cross left_ptr size-bdiag size-fdiag size-hor size-ver top_left_arrow 4498f0e0c1937ffe01fd06f973665830 9081237383d90e509aa00f00170e968f dnd-none fcf21c00b30f7e3f83fe0dfd12e71cff size_all 5c6cd98b3f3ebcb1f9c7f1c204630408 d9ce0ab605698f320427677b458ad60b left_ptr_help question_arrow whats_this arrow forbidden circle crossed_circle 9d800788f1b08800ae810202380a0822 e29285e634086352946a0e7090d73106 hand1 hand2 pointing_hand 00000000000000020006000e7e9ffc3f 08e8e1c95fe2fc01f976f1e063a24ccd 3ecb610c1bf2410f44200f48c40d3599 half-busy left_ptr_watch split_v ne-resize sw-resize nw-resize se-resize e-resize h_double_arrow sb_h_double_arrow w-resize 00008160000006810000408080010102 n-resize sb_v_double_arrow s-resize v_double_arrow ibeam xterm watch

CONFIGS := $(wildcard src/*.in)

SRCTHEMES := $(wildcard src/retrosmart-xcursor-*)
SRCBASES := $(wildcard src/base-*)

THEMES := $(notdir $(basename $(SRCTHEMES)))
CURSORDIRS := $(THEMES:=/cursors)
INDICES := $(THEMES:=/index.theme)
CURSORS := $(foreach dir,$(THEMES),$(addprefix $(dir)/cursors/,$(CURSORSNAMES)))
LINKS := $(foreach dir,$(THEMES),$(addprefix $(dir)/cursors/,$(LINKSNAMES)))
XPMS := $(wildcard src/*/*.xpm)
PNGS := $(subst src/,png/,$(XPMS:.xpm=.png))
BUILDDIRS := $(sort $(CURSORDIRS))
PNGDIRS := $(sort $(dir $(PNGS)))


PKGEXT=.pkg.tar.zst
ARCHPKG = $(PKGNAME)-$(VERSION)-1-$(shell uname -m)$(PKGEXT)

DEBIANDIR = $(PKGNAME)-$(VERSION)_all
DEBIANPKG = $(DEBIANDIR).deb

default: shadowthemes

build: dirs indices pngs copypngs cursors linkcursors

shadowthemes: $(SRCTHEMES:=-shadow) $(SRCBASES:=-shadow)
	make -j1 build
src/%-shadow: src/%
	cd src; cp -a $(notdir $^) $(notdir $@)
	test -f $@/shadow.theme && mv $@/shadow.theme $@/index.theme || true

dirs: $(BUILDDIRS)
$(BUILDDIRS):
	mkdir -p $@

indices: $(INDICES)
%/index.theme: src/%/index.theme
	cp $^ $@

pngdirs: $(PNGDIRS)
$(PNGDIRS):
	mkdir -p $@

pngs: pngdirs $(PNGS)
copypngs:
	for dir in png/retrosmart-xcursor-*-color;\
	do for file in `echo $$dir | cut -d- -f-3`;\
	do cp -nv $$file/*.png $$dir;\
	done;\
	done
	for dir in `ls -d png/retrosmart-xcursor-* | grep -v shadow`;\
	do for file in png/base-common/*.png;\
	do cp -v $$file $$dir;\
	done;\
	done
	for dir in `ls -d png/retrosmart-xcursor-*-color | grep -v shadow`;\
	do for file in png/base-common-color/*.png;\
	do cp -v $$file $$dir;\
	done;\
	done
	for dir in png/retrosmart-xcursor-*-color-shadow;\
	do for file in `echo $$dir | cut -d- -f-3`-shadow;\
	do cp -nv $$file/*.png $$dir;\
	done;\
	done
	for dir in png/retrosmart-xcursor-*-shadow;\
	do for file in png/base-common-shadow/*.png;\
	do cp -v $$file $$dir;\
	done;\
	done
	for dir in png/retrosmart-xcursor-*color-shadow;\
	do for file in png/base-common-color-shadow/*.png;\
	do cp -v $$file $$dir;\
	done;\
	done

png/%.png: src/%.xpm
	@echo Generating $@
	@echo $@ | grep '\-shadow' > /dev/null && montage $^ -background none -shadow -geometry -0-0 -background none $@ || convert $^ $@

cursors: $(CURSORS)
$(CURSORS): $(addsuffix .in,$(addprefix src/,$(notdir $(basename $@))))
	xcursorgen -p $(addprefix png/,$(subst /cursors/,,$(dir $@))) $(addsuffix .in,$(addprefix src/,$(notdir $(basename $@)))) $@

linkcursors: $(LINKS)
%/00000000000000020006000e7e9ffc3f: %/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/00008160000006810000408080010102: %/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/03b6e0fcb3499374a867c041f52298f0: %/circle
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/08e8e1c95fe2fc01f976f1e063a24ccd: %/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/1081e37283d90000800003c07f3ef6bf: %/copy
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/3085a0e285430894940527032f8b26df: %/alias
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/3ecb610c1bf2410f44200f48c40d3599: %/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/4498f0e0c1937ffe01fd06f973665830: %/dnd-move
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/5c6cd98b3f3ebcb1f9c7f1c204630408: %/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/6407b0e94181790501fd1e167b474872: %/copy
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/640fb0e74195791501fd1ed57b41487f: %/alias
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/9081237383d90e509aa00f00170e968f: %/dnd-move
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/9d800788f1b08800ae810202380a0822: %/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/a2a266d0498c3104214a47bd64ab0fc8: %/alias
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/arrow: %/left_ptr
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/b66166c04f8c3109214a4fbd64a50fc8: %/copy
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/circle: %/not-allowed
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/cross: %/crosshair
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/crossed_circle: %/not-allowed
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/d9ce0ab605698f320427677b458ad60b: %/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/dnd-copy: %/copy
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/dnd-none: %/dnd-move
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/e29285e634086352946a0e7090d73106: %/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/e-resize: %/size_hor
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/fcf21c00b30f7e3f83fe0dfd12e71cff: %/dnd-move
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/forbidden: %/no-drop
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/half-busy: %/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/hand1: %/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/hand2: %/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/h_double_arrow: %/size_hor
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/ibeam: %/text
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/left_ptr: %/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/left_ptr_help: %/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/left_ptr_watch: %/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/link: %/alias
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/move: %/closedhand
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/ne-resize: %/size_bdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/n-resize: %/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/nw-resize: %/size_fdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/plus: %/cell
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/pointing_hand: %/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/question_arrow: %/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/sb_h_double_arrow: %/size_hor
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/sb_v_double_arrow: %/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/se-resize: %/size_fdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/size_all: %/fleur
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/size-bdiag: %/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/size-fdiag: %/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/size-hor: %/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/size-ver: %/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/split_h: %/col-resize
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/split_v: %/row-resize
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/s-resize: %/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/sw-resize: %/size_bdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/top_left_arrow: %/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/v_double_arrow: %/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/watch: %/wait
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/whats_this: %/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/w-resize: %/size_hor
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
%/xterm: %/text
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)


github: preview.gif clean

opendesktop: retrosmart-x11-cursors.tar.xz

retrosmart-x11-cursors.tar.xz: clean default
	tar cJf $@ $(THEMES) $(THEMES:=-shadow)

clean_opendesktop:
	rm -f retrosmart-x11-cursors.tar.xz

clean_pngs:
	rm -rf png *.png

clean_cursors:
	rm -f $(CURSORS)

clean_dirs:
	rm -rf $(THEMES)

clean_arch:
	rm -f pkg $(ARCHPKG)

clean_preview:
	rm -f preview-*.png

clean_shadow:
	rm -rf src/*-shadow/

clean_build: clean_pngs clean_dirs clean_shadow

clean: clean_build clean_arch clean_debian clean_preview clean_opendesktop

purge: clean
	rm -f preview.gif

install:
	install -d -m 755 $(DESTDIR)/$(PREFIX)/share/icons
	chmod -R u+rwX,go+rX $(THEMES)
	cp -r $(THEMES) $(DESTDIR)/$(PREFIX)/share/icons/

uninstall:
	echo rm -rf $(addprefix $(DESTDIR)/$(PREFIX)/share/icons/,$(THEMES))

user_install:
	mkdir -p ~/.icons/
	cp -r $(THEMES) ~/.icons/

user_uninstall:
	rm -rf $(addprefix ~/.icons/,$(THEMES))

arch_pkg: $(ARCHPKG)
$(ARCHPKG): PKGBUILD makefile LICENSE README.md
	sed -i "s|pkgname=.*|pkgname=$(PKGNAME)|" PKGBUILD
	sed -i "s|pkgver=.*|pkgver=$(VERSION)|" PKGBUILD
	sed -i "s|pkgdesc=.*|pkgdesc='$(DESCRIPTION)'|" PKGBUILD
	sed -i "s|url=.*|url='$(URL)'|" PKGBUILD
	sed -i "s|license=.*|license=('$(LICENSE)')|" PKGBUILD
	makepkg -df PKGDEST=./ BUILDDIR=./ PKGEXT='$(PKGEXT)'
	@echo
	@echo Package done!
	@echo You can install it as root with:
	@echo pacman -U $@

pkg_debian: $(DEBIANPKG)
$(DEBIANPKG): $(DEBIANDIR)
$(DEBIANDIR): default ChangeLog AUTHORS LICENSE README.md
	install -d -m 755 DEBIANTEMP/$(PREFIX)/share/icons
	chmod -R u+rwX,go+rX $(THEMES)
	cp -r $(THEMES) DEBIANTEMP/$(PREFIX)/share/icons/
	install -Dm644 LICENSE DEBIANTEMP/$(PREFIX)/share/licenses/$(PKGNAME)/LICENSE
	install -Dm644 AUTHORS DEBIANTEMP/$(PREFIX)/share/doc/$(PKGNAME)/AUTHORS
	install -Dm644 ChangeLog DEBIANTEMP/$(PREFIX)/share/doc/$(PKGNAME)/ChangeLog
	install -Dm644 README.md DEBIANTEMP/$(PREFIX)/share/doc/$(PKGNAME)/README
	sed -i "s/Installed-Size:.*/Installed-Size:\ $$(du -ks DEBIANTEMP | cut -f1)/" control
	mv DEBIANTEMP $@
	mkdir -p -m 0775 $@/DEBIAN
	@sed s/@mail@/$(MAIL)/g control > $@/DEBIAN/control
	cp ChangeLog $@/DEBIAN
	cp README.md $@/DEBIAN/README
	dpkg-deb --build --root-owner-group $@

clean_debian:
	rm -rf DEBIAN $(DEBIANDIR) $(DEBIANPKG).deb

preview-%.png: src/%
	montage -geometry +8+8 $(shell \
	find src -type f -name "*.xpm" | grep -v '[2-9].xpm' | sort -u) $@

#preview.gif: $(addsuffix .png,$(subst src/,preview-,$(wildcard src/*)))
#	convert -loop 0 -delay 400 $^ $@

preview.gif:
	montage -geometry +8+8 src/retrosmart-xcursor-white/32-default.xpm src/retrosmart-xcursor-white/32-progress1.xpm  src/retrosmart-xcursor-white/32-help.xpm src/base-common/32-wait01.xpm src/base-common/32-text.xpm src/base-common/32-pirate.xpm src/base-common/32-pointer.xpm src/base-common/32-copy.xpm preview.gif
