PREFIX = '/usr'
DESTDIR = ''
NAME := retrosmart-xcursors

CURSORSNAMES := alias all-scroll bottom_left_corner bottom_right_corner bottom_side cell center_ptr closedhand color-picker col-resize context-menu copy crosshair default dnd-move dnd-no-drop down-arrow draft fleur help left-arrow left_side no-drop not-allowed openhand pencil pirate pointer progress right-arrow right_ptr right_side row-resize size_bdiag size_fdiag size_hor size_ver text top_left_corner top_right_corner top_side up-arrow vertical-text wait wayland-cursor x-cursor zoom-in zoom-out

LINKSNAMES := 3085a0e285430894940527032f8b26df 640fb0e74195791501fd1ed57b41487f a2a266d0498c3104214a47bd64ab0fc8 link plus 03b6e0fcb3499374a867c041f52298f0 move split_h 1081e37283d90000800003c07f3ef6bf 6407b0e94181790501fd1e167b474872 b66166c04f8c3109214a4fbd64a50fc8 dnd-copy cross left_ptr size-bdiag size-fdiag size-hor size-ver top_left_arrow 4498f0e0c1937ffe01fd06f973665830 9081237383d90e509aa00f00170e968f dnd-none fcf21c00b30f7e3f83fe0dfd12e71cff size_all 5c6cd98b3f3ebcb1f9c7f1c204630408 d9ce0ab605698f320427677b458ad60b left_ptr_help question_arrow whats_this arrow forbidden circle crossed_circle 9d800788f1b08800ae810202380a0822 e29285e634086352946a0e7090d73106 hand1 hand2 pointing_hand 00000000000000020006000e7e9ffc3f 08e8e1c95fe2fc01f976f1e063a24ccd 3ecb610c1bf2410f44200f48c40d3599 half-busy left_ptr_watch split_v ne-resize sw-resize nw-resize se-resize e-resize h_double_arrow sb_h_double_arrow w-resize 00008160000006810000408080010102 n-resize sb_v_double_arrow s-resize v_double_arrow ibeam xterm watch

### SOURCE: ###

CONFIGS := $(wildcard src/*.in)

THEMES := $(wildcard src/retrosmart-xcursor-*)
BASES := $(wildcard src/base-*)

DIRS := $(notdir $(basename $(THEMES)))
CURSORDIRS := $(DIRS:=/cursors)
INDICES := $(DIRS:=/index.theme)
CURSORS := $(foreach dir,$(DIRS),$(addprefix $(dir)/cursors/,$(CURSORSNAMES)))
LINKS := $(foreach dir,$(DIRS),$(addprefix $(dir)/cursors/,$(LINKSNAMES)))
XPMS := $(wildcard src/*/*.xpm)
PNGS := $(subst src/,png/,$(XPMS:.xpm=.png))
BUILDDIRS := $(sort $(CURSORDIRS))
PNGDIRS := $(sort $(dir $(PNGS)))


shadowthemes: $(THEMES:=-shadow) $(BASES:=-shadow)
	make -j1 build

build: dirs indices pngs copypngs cursors linkcursors

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

retrosmart-x11-cursors.tar.xz: default
	tar cJf $@ $(DIRS)

clean_opendesktop:
	rm -f retrosmart-x11-cursors.tar.xz

clean_pngs:
	rm -rf png

clean_cursors:
	rm -f $(CURSORS)

clean_dirs:
	rm -rf $(DIRS)

clean_arch:
	rm -f xcursor-retrosmart-*.pkg.tar.xz

clean_preview:
	rm -f preview-*.png

clean_shadow:
	rm -rf src/*-shadow

clean_build: clean_pngs clean_dirs clean_shadow

clean: clean_build clean_arch clean_preview clean_opendesktop

purge: clean
	rm -f preview.gif

install:
	install -d -m 755 $(DESTDIR)/$(PREFIX)/share/icons
	chmod -R u+rwX,go+rX $(DIRS)
	cp -r $(DIRS) $(DESTDIR)/$(PREFIX)/share/icons/

uninstall:
	echo rm -rf $(addprefix $(DESTDIR)/$(PREFIX)/share/icons/,$(DIRS))

user_install:
	mkdir -p ~/.icons/
	cp -r $(DIRS) ~/.icons/

user_uninstall:
	rm -rf $(addprefix ~/.icons/,$(DIRS))

arch_pkg:
	makepkg -d

preview-%.png: src/%
	montage -geometry +8+8 $(shell \
	find $^/24/ -type f -name "*.xpm" | grep -v '[2-8].xpm' | sort) $@

preview.gif: $(addsuffix .png,$(subst src/,preview-,$(wildcard src/*)))
	convert -loop 0 -delay 400 $^ $@

.PHONY: default dirs package pngs cursors github \
clean_pngs clean_cursors clean_themes clean_arch clean_preview \
install uninstall user_install user_uninstall arch_pkg opendesktop clean_opendesktop
