retrosmart-bitmap-xcursor-white/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-bitmap-xcursor-white-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-bitmap-xcursor-white-color/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-bitmap-xcursor-white-color-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(dir $@))) $^ $@

retrosmart-bitmap-xcursor-black/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-bitmap-xcursor-black-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-bitmap-xcursor-black-color/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-bitmap-xcursor-black-color-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix xpmpng/,$(subst /cursors/,,$(dir $@))) $^ $@


retrosmart-vector-xcursor-white/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-vector-xcursor-white-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-vector-xcursor-white-color/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-vector-xcursor-white-color-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(dir $@))) $^ $@

retrosmart-vector-xcursor-black/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-vector-xcursor-black-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-vector-xcursor-black-color/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(dir $@))) $^ $@
retrosmart-vector-xcursor-black-color-shadow/cursors/%: src/%.in
	mkdir -p $(dir $@)
	xcursorgen -p $(addprefix svgpng/,$(subst /cursors/,,$(dir $@))) $^ $@