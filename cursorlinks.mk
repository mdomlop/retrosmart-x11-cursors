CURSORSNAMES := alias all-scroll bottom_left_corner bottom_right_corner bottom_side cell center_ptr closedhand color-picker col-resize context-menu copy crosshair default dnd-move dnd-no-drop down-arrow draft fleur help left-arrow left_side no-drop not-allowed openhand pencil pirate pointer progress right-arrow right_ptr right_side row-resize size_bdiag size_fdiag size_hor size_ver text top_left_corner top_right_corner top_side up-arrow vertical-text wait wayland-cursor x-cursor zoom-in zoom-out

LINKSNAMES := 3085a0e285430894940527032f8b26df 640fb0e74195791501fd1ed57b41487f a2a266d0498c3104214a47bd64ab0fc8 link plus 03b6e0fcb3499374a867c041f52298f0 move split_h 1081e37283d90000800003c07f3ef6bf 6407b0e94181790501fd1e167b474872 b66166c04f8c3109214a4fbd64a50fc8 dnd-copy cross left_ptr size-bdiag size-fdiag size-hor size-ver top_left_arrow 4498f0e0c1937ffe01fd06f973665830 9081237383d90e509aa00f00170e968f dnd-none fcf21c00b30f7e3f83fe0dfd12e71cff size_all 5c6cd98b3f3ebcb1f9c7f1c204630408 d9ce0ab605698f320427677b458ad60b left_ptr_help question_arrow whats_this arrow forbidden circle crossed_circle 9d800788f1b08800ae810202380a0822 e29285e634086352946a0e7090d73106 hand1 hand2 pointing_hand 00000000000000020006000e7e9ffc3f 08e8e1c95fe2fc01f976f1e063a24ccd 3ecb610c1bf2410f44200f48c40d3599 half-busy left_ptr_watch split_v ne-resize sw-resize nw-resize se-resize e-resize h_double_arrow sb_h_double_arrow w-resize 00008160000006810000408080010102 n-resize sb_v_double_arrow s-resize v_double_arrow ibeam xterm watch ew-resize grab grabbing nesw-resize ns-resize nwse-resize tcross


xpm_theme/%/00000000000000020006000e7e9ffc3f: xpm_theme/%/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/00008160000006810000408080010102: xpm_theme/%/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/03b6e0fcb3499374a867c041f52298f0: xpm_theme/%/circle
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/08e8e1c95fe2fc01f976f1e063a24ccd: xpm_theme/%/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/1081e37283d90000800003c07f3ef6bf: xpm_theme/%/copy
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/3085a0e285430894940527032f8b26df: xpm_theme/%/alias
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/3ecb610c1bf2410f44200f48c40d3599: xpm_theme/%/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/4498f0e0c1937ffe01fd06f973665830: xpm_theme/%/dnd-move
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/5c6cd98b3f3ebcb1f9c7f1c204630408: xpm_theme/%/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/6407b0e94181790501fd1e167b474872: xpm_theme/%/copy
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/640fb0e74195791501fd1ed57b41487f: xpm_theme/%/alias
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/9081237383d90e509aa00f00170e968f: xpm_theme/%/dnd-move
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/9d800788f1b08800ae810202380a0822: xpm_theme/%/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/a2a266d0498c3104214a47bd64ab0fc8: xpm_theme/%/alias
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/arrow: xpm_theme/%/left_ptr
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/b66166c04f8c3109214a4fbd64a50fc8: xpm_theme/%/copy
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/circle: xpm_theme/%/not-allowed
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/cross: xpm_theme/%/crosshair
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/crossed_circle: xpm_theme/%/not-allowed
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/d9ce0ab605698f320427677b458ad60b: xpm_theme/%/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/dnd-copy: xpm_theme/%/copy
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/dnd-none: xpm_theme/%/dnd-move
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/e29285e634086352946a0e7090d73106: xpm_theme/%/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/e-resize: xpm_theme/%/size_hor
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/fcf21c00b30f7e3f83fe0dfd12e71cff: xpm_theme/%/dnd-move
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/forbidden: xpm_theme/%/no-drop
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/half-busy: xpm_theme/%/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/hand1: xpm_theme/%/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/hand2: xpm_theme/%/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/h_double_arrow: xpm_theme/%/size_hor
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/ibeam: xpm_theme/%/text
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/left_ptr: xpm_theme/%/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/left_ptr_help: xpm_theme/%/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/left_ptr_watch: xpm_theme/%/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/link: xpm_theme/%/alias
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/move: xpm_theme/%/closedhand
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/ne-resize: xpm_theme/%/size_bdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/n-resize: xpm_theme/%/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/nw-resize: xpm_theme/%/size_fdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/plus: xpm_theme/%/cell
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/pointing_hand: xpm_theme/%/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/question_arrow: xpm_theme/%/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/sb_h_double_arrow: xpm_theme/%/size_hor
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/sb_v_double_arrow: xpm_theme/%/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/se-resize: xpm_theme/%/size_fdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/size_all: xpm_theme/%/fleur
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/size-bdiag: xpm_theme/%/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/size-fdiag: xpm_theme/%/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/size-hor: xpm_theme/%/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/size-ver: xpm_theme/%/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/split_h: xpm_theme/%/col-resize
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/split_v: xpm_theme/%/row-resize
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/s-resize: xpm_theme/%/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/sw-resize: xpm_theme/%/size_bdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/top_left_arrow: xpm_theme/%/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/v_double_arrow: xpm_theme/%/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/watch: xpm_theme/%/wait
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/whats_this: xpm_theme/%/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/w-resize: xpm_theme/%/size_hor
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/xterm: xpm_theme/%/text
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/ew-resize: xpm_theme/%/size_hor
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/grab: xpm_theme/%/openhand
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/grabbing: xpm_theme/%/closedhand
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/nesw-resize: xpm_theme/%/size_bdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/ns-resize: xpm_theme/%/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/nwse-resize: xpm_theme/%/size_fdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
xpm_theme/%/tcross: xpm_theme/%/crosshair
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)

xpm_theme/%/index.theme: src/%.theme
	cp $< $@
xpm_theme/%/cursor.theme: src/%.theme
	cp $< $@



svg_theme/%/00000000000000020006000e7e9ffc3f: svg_theme/%/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/00008160000006810000408080010102: svg_theme/%/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/03b6e0fcb3499374a867c041f52298f0: svg_theme/%/circle
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/08e8e1c95fe2fc01f976f1e063a24ccd: svg_theme/%/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/1081e37283d90000800003c07f3ef6bf: svg_theme/%/copy
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/3085a0e285430894940527032f8b26df: svg_theme/%/alias
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/3ecb610c1bf2410f44200f48c40d3599: svg_theme/%/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/4498f0e0c1937ffe01fd06f973665830: svg_theme/%/dnd-move
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/5c6cd98b3f3ebcb1f9c7f1c204630408: svg_theme/%/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/6407b0e94181790501fd1e167b474872: svg_theme/%/copy
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/640fb0e74195791501fd1ed57b41487f: svg_theme/%/alias
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/9081237383d90e509aa00f00170e968f: svg_theme/%/dnd-move
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/9d800788f1b08800ae810202380a0822: svg_theme/%/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/a2a266d0498c3104214a47bd64ab0fc8: svg_theme/%/alias
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/arrow: svg_theme/%/left_ptr
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/b66166c04f8c3109214a4fbd64a50fc8: svg_theme/%/copy
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/circle: svg_theme/%/not-allowed
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/cross: svg_theme/%/crosshair
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/crossed_circle: svg_theme/%/not-allowed
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/d9ce0ab605698f320427677b458ad60b: svg_theme/%/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/dnd-copy: svg_theme/%/copy
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/dnd-none: svg_theme/%/dnd-move
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/e29285e634086352946a0e7090d73106: svg_theme/%/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/e-resize: svg_theme/%/size_hor
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/fcf21c00b30f7e3f83fe0dfd12e71cff: svg_theme/%/dnd-move
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/forbidden: svg_theme/%/no-drop
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/half-busy: svg_theme/%/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/hand1: svg_theme/%/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/hand2: svg_theme/%/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/h_double_arrow: svg_theme/%/size_hor
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/ibeam: svg_theme/%/text
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/left_ptr: svg_theme/%/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/left_ptr_help: svg_theme/%/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/left_ptr_watch: svg_theme/%/progress
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/link: svg_theme/%/alias
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/move: svg_theme/%/closedhand
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/ne-resize: svg_theme/%/size_bdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/n-resize: svg_theme/%/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/nw-resize: svg_theme/%/size_fdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/plus: svg_theme/%/cell
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/pointing_hand: svg_theme/%/pointer
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/question_arrow: svg_theme/%/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/sb_h_double_arrow: svg_theme/%/size_hor
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/sb_v_double_arrow: svg_theme/%/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/se-resize: svg_theme/%/size_fdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/size_all: svg_theme/%/fleur
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/size-bdiag: svg_theme/%/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/size-fdiag: svg_theme/%/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/size-hor: svg_theme/%/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/size-ver: svg_theme/%/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/split_h: svg_theme/%/col-resize
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/split_v: svg_theme/%/row-resize
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/s-resize: svg_theme/%/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/sw-resize: svg_theme/%/size_bdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/top_left_arrow: svg_theme/%/default
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/v_double_arrow: svg_theme/%/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/watch: svg_theme/%/wait
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/whats_this: svg_theme/%/help
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/w-resize: svg_theme/%/size_hor
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/xterm: svg_theme/%/text
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/ew-resize: svg_theme/%/size_hor
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/grab: svg_theme/%/openhand
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/grabbing: svg_theme/%/closedhand
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/nesw-resize: svg_theme/%/size_bdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/ns-resize: svg_theme/%/size_ver
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/nwse-resize: svg_theme/%/size_fdiag
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)
svg_theme/%/tcross: svg_theme/%/crosshair
	cd $(dir $@); ln -s $(notdir $^) $(notdir $@)

svg_theme/%/index.theme: src/%.theme
	cp $< $@
svg_theme/%/cursor.theme: src/%.theme
	cp $< $@
