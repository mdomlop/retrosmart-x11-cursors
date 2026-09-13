xpmpng/retrosmart-xcursor-white/%.png: xpm/retrosmart-xcursor-white/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $@
xpmpng/retrosmart-xcursor-white-shadow/%.png: xpm/retrosmart-xcursor-white-shadow/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $(XPM2PNGARGSHADOW) $@
xpmpng/retrosmart-xcursor-white-color/%.png: xpm/retrosmart-xcursor-white-color/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $@
xpmpng/retrosmart-xcursor-white-color-shadow/%.png: xpm/retrosmart-xcursor-white-color-shadow/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $(XPM2PNGARGSHADOW) $@

xpmpng/retrosmart-xcursor-black/%.png: xpm/retrosmart-xcursor-black/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $@
xpmpng/retrosmart-xcursor-black-shadow/%.png: xpm/retrosmart-xcursor-black-shadow/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $(XPM2PNGARGSHADOW) $@
xpmpng/retrosmart-xcursor-black-color/%.png: xpm/retrosmart-xcursor-black-color/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $@
xpmpng/retrosmart-xcursor-black-color-shadow/%.png: xpm/retrosmart-xcursor-black-color-shadow/%.xpm
	mkdir -p $(dir $@)
	$(XPM2PNGCOM) $^ $(XPM2PNGARGSHADOW) $@
