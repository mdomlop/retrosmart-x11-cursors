svg/retrosmart-vector-xcursor-white/%.svg: src/base.svg/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
svg/retrosmart-vector-xcursor-white-shadow/%.svg: src/base.svg/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
svg/retrosmart-vector-xcursor-white-color/%.svg: src/base-color.svg/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
svg/retrosmart-vector-xcursor-white-color/%.svg: src/base.svg/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
svg/retrosmart-vector-xcursor-white-color-shadow/%.svg: src/base-color.svg/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
svg/retrosmart-vector-xcursor-white-color-shadow/%.svg: src/base.svg/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@

svg/retrosmart-vector-xcursor-black/%.svg: src/base.svg/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
svg/retrosmart-vector-xcursor-black-shadow/%.svg: src/base.svg/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
svg/retrosmart-vector-xcursor-black-color/%.svg: src/base-color.svg/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
svg/retrosmart-vector-xcursor-black-color/%.svg: src/base.svg/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
svg/retrosmart-vector-xcursor-black-color-shadow/%.svg: src/base-color.svg/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
svg/retrosmart-vector-xcursor-black-color-shadow/%.svg: src/base.svg/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@