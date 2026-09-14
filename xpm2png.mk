xpmpng/retrosmart-bitmap-xcursor-white/%.png: xpm/retrosmart-bitmap-xcursor-white/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $@
xpmpng/retrosmart-bitmap-xcursor-white-shadow/%.png: xpm/retrosmart-bitmap-xcursor-white-shadow/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $(XPM2PNGARGSHADOW) $@
xpmpng/retrosmart-bitmap-xcursor-white-color/%.png: xpm/retrosmart-bitmap-xcursor-white-color/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $@
xpmpng/retrosmart-bitmap-xcursor-white-color-shadow/%.png: xpm/retrosmart-bitmap-xcursor-white-color-shadow/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $(XPM2PNGARGSHADOW) $@

xpmpng/retrosmart-bitmap-xcursor-black/%.png: xpm/retrosmart-bitmap-xcursor-black/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $@
xpmpng/retrosmart-bitmap-xcursor-black-shadow/%.png: xpm/retrosmart-bitmap-xcursor-black-shadow/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $(XPM2PNGARGSHADOW) $@
xpmpng/retrosmart-bitmap-xcursor-black-color/%.png: xpm/retrosmart-bitmap-xcursor-black-color/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $@
xpmpng/retrosmart-bitmap-xcursor-black-color-shadow/%.png: xpm/retrosmart-bitmap-xcursor-black-color-shadow/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $(XPM2PNGARGSHADOW) $@
