CURSORSNAMES := alias all-scroll bottom_left_corner bottom_right_corner bottom_side cell center_ptr closedhand color-picker col-resize context-menu copy crosshair default dnd-move dnd-no-drop down-arrow draft fleur help left-arrow left_side no-drop not-allowed openhand pencil pirate pointer progress right-arrow right_ptr right_side row-resize size_bdiag size_fdiag size_hor size_ver text top_left_corner top_right_corner top_side up-arrow vertical-text wait wayland-cursor x-cursor zoom-in zoom-out

LINKSNAMES := 3085a0e285430894940527032f8b26df 640fb0e74195791501fd1ed57b41487f a2a266d0498c3104214a47bd64ab0fc8 link plus 03b6e0fcb3499374a867c041f52298f0 move split_h 1081e37283d90000800003c07f3ef6bf 6407b0e94181790501fd1e167b474872 b66166c04f8c3109214a4fbd64a50fc8 dnd-copy cross left_ptr size-bdiag size-fdiag size-hor size-ver top_left_arrow 4498f0e0c1937ffe01fd06f973665830 9081237383d90e509aa00f00170e968f dnd-none fcf21c00b30f7e3f83fe0dfd12e71cff size_all 5c6cd98b3f3ebcb1f9c7f1c204630408 d9ce0ab605698f320427677b458ad60b left_ptr_help question_arrow whats_this arrow forbidden circle crossed_circle 9d800788f1b08800ae810202380a0822 e29285e634086352946a0e7090d73106 hand1 hand2 pointing_hand 00000000000000020006000e7e9ffc3f 08e8e1c95fe2fc01f976f1e063a24ccd 3ecb610c1bf2410f44200f48c40d3599 half-busy left_ptr_watch split_v ne-resize sw-resize nw-resize se-resize e-resize h_double_arrow sb_h_double_arrow w-resize 00008160000006810000408080010102 n-resize sb_v_double_arrow s-resize v_double_arrow ibeam xterm watch

# Deja un pixel
#SHADOWARG := \( +clone -background black -shadow 80x3+5+5 \) +swap -background none -layers merge +repage
SHADOWARG := \( +clone -background black -shadow 60x2+5+5 \) +swap -background none -layers merge +repage

xpm/retrosmart-xcursor-white/%.xpm: src/base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-xcursor-white-shadow/%.xpm: src/base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-xcursor-white-color/%.xpm: src/base-color/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-xcursor-white-color/%.xpm: src/base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-xcursor-white-color-shadow/%.xpm: src/base-color/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-xcursor-white-color-shadow/%.xpm: src/base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@

xpm/retrosmart-xcursor-black/%.xpm: src/base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-xcursor-black-shadow/%.xpm: src/base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-xcursor-black-color/%.xpm: src/base-color/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-xcursor-black-color/%.xpm: src/base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-xcursor-black-color-shadow/%.xpm: src/base-color/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-xcursor-black-color-shadow/%.xpm: src/base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@


png/retrosmart-xcursor-white/%.png: xpm/retrosmart-xcursor-white/%.xpm
	mkdir -p $(dir $@)
	convert $^ $@
png/retrosmart-xcursor-white-shadow/%.png: xpm/retrosmart-xcursor-white-shadow/%.xpm
	mkdir -p $(dir $@)
	convert $^ $(SHADOWARG) $@
png/retrosmart-xcursor-white-color/%.png: xpm/retrosmart-xcursor-white-color/%.xpm
	mkdir -p $(dir $@)
	convert $^ $@
png/retrosmart-xcursor-white-color-shadow/%.png: xpm/retrosmart-xcursor-white-color-shadow/%.xpm
	mkdir -p $(dir $@)
	convert $^ $(SHADOWARG) $@

png/retrosmart-xcursor-black/%.png: xpm/retrosmart-xcursor-black/%.xpm
	mkdir -p $(dir $@)
	convert $^ $@
png/retrosmart-xcursor-black-shadow/%.png: xpm/retrosmart-xcursor-black-shadow/%.xpm
	mkdir -p $(dir $@)
	convert $^ $(SHADOWARG) $@
png/retrosmart-xcursor-black-color/%.png: xpm/retrosmart-xcursor-black-color/%.xpm
	mkdir -p $(dir $@)
	convert $^ $@
png/retrosmart-xcursor-black-color-shadow/%.png: xpm/retrosmart-xcursor-black-color-shadow/%.xpm
	mkdir -p $(dir $@)
	convert $^ $(SHADOWARG) $@


retrosmart-xcursor-white/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix png/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-xcursor-white-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix png/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-xcursor-white-color/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix png/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-xcursor-white-color-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix png/,$(subst /cursors/,,$(dir $@))) $^ $@

retrosmart-xcursor-black/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix png/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-xcursor-black-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix png/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-xcursor-black-color/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix png/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-xcursor-black-color-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix png/,$(subst /cursors/,,$(dir $@))) $^ $@


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


%/index.theme: src/%.theme
	cp $< $@
