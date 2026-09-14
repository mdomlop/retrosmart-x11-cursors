xpm/retrosmart-bitmap-xcursor-white/%.xpm: src/bitmap.base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-bitmap-xcursor-white-shadow/%.xpm: src/bitmap.base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-bitmap-xcursor-white-color/%.xpm: src/bitmap.base-color/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-bitmap-xcursor-white-color/%.xpm: src/bitmap.base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-bitmap-xcursor-white-color-shadow/%.xpm: src/bitmap.base-color/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-bitmap-xcursor-white-color-shadow/%.xpm: src/bitmap.base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@

xpm/retrosmart-bitmap-xcursor-black/%.xpm: src/bitmap.base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-bitmap-xcursor-black-shadow/%.xpm: src/bitmap.base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-bitmap-xcursor-black-color/%.xpm: src/bitmap.base-color/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-bitmap-xcursor-black-color/%.xpm: src/bitmap.base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-bitmap-xcursor-black-color-shadow/%.xpm: src/bitmap.base-color/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-bitmap-xcursor-black-color-shadow/%.xpm: src/bitmap.base/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@