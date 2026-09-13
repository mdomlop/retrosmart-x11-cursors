xpm/retrosmart-xcursor-white/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-xcursor-white-shadow/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-xcursor-white-color/%.xpm: src/base-color.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-xcursor-white-color/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-xcursor-white-color-shadow/%.xpm: src/base-color.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
xpm/retrosmart-xcursor-white-color-shadow/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@

xpm/retrosmart-xcursor-black/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-xcursor-black-shadow/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-xcursor-black-color/%.xpm: src/base-color.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-xcursor-black-color/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-xcursor-black-color-shadow/%.xpm: src/base-color.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
xpm/retrosmart-xcursor-black-color-shadow/%.xpm: src/base.xpm/%.xpm
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@