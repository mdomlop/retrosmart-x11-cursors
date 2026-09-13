xpm_theme/retrosmart-xcursor-white/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(subst xpm_theme/,,$(dir $@)))) $^ $@
xpm_theme/retrosmart-xcursor-white-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(subst xpm_theme/,,$(dir $@)))) $^ $@
xpm_theme/retrosmart-xcursor-white-color/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(subst xpm_theme/,,$(dir $@)))) $^ $@
xpm_theme/retrosmart-xcursor-white-color-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(subst xpm_theme/,,$(dir $@)))) $^ $@

xpm_theme/retrosmart-xcursor-black/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(subst xpm_theme/,,$(dir $@)))) $^ $@
xpm_theme/retrosmart-xcursor-black-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(subst xpm_theme/,,$(dir $@)))) $^ $@
xpm_theme/retrosmart-xcursor-black-color/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(subst xpm_theme/,,$(dir $@)))) $^ $@
xpm_theme/retrosmart-xcursor-black-color-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(subst xpm_theme/,,$(dir $@)))) $^ $@


svg_theme/retrosmart-vector-xcursor-white/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(subst svg_theme/,,$(dir $@)))) $^ $@
svg_theme/retrosmart-vector-xcursor-white-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(subst svg_theme/,,$(dir $@)))) $^ $@
svg_theme/retrosmart-vector-xcursor-white-color/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(subst svg_theme/,,$(dir $@)))) $^ $@
svg_theme/retrosmart-vector-xcursor-white-color-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(subst svg_theme/,,$(dir $@)))) $^ $@

svg_theme/retrosmart-vector-xcursor-black/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(subst svg_theme/,,$(dir $@)))) $^ $@
svg_theme/retrosmart-vector-xcursor-black-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(subst svg_theme/,,$(dir $@)))) $^ $@
svg_theme/retrosmart-vector-xcursor-black-color/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(subst svg_theme/,,$(dir $@)))) $^ $@
svg_theme/retrosmart-vector-xcursor-black-color-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(subst svg_theme/,,$(dir $@)))) $^ $@