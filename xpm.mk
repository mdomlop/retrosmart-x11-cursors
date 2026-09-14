xpm/retrosmart-bitmap-xcursor-white/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-bitmap-xcursor-white-shadow/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-bitmap-xcursor-white-color/%.xpm: src/base-color.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-bitmap-xcursor-white-color/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-bitmap-xcursor-white-color-shadow/%.xpm: src/base-color.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-bitmap-xcursor-white-color-shadow/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@

xpm/retrosmart-bitmap-xcursor-black/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-bitmap-xcursor-black-shadow/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-bitmap-xcursor-black-color/%.xpm: src/base-color.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-bitmap-xcursor-black-color/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-bitmap-xcursor-black-color-shadow/%.xpm: src/base-color.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-bitmap-xcursor-black-color-shadow/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@