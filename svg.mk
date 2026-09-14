svg/retrosmart-vector-xcursor-white/%.svg: src/vector.base/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
svg/retrosmart-vector-xcursor-white-shadow/%.svg: src/vector.base/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
svg/retrosmart-vector-xcursor-white-color/%.svg: src/vector.base-color/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
svg/retrosmart-vector-xcursor-white-color/%.svg: src/vector.base/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
svg/retrosmart-vector-xcursor-white-color-shadow/%.svg: src/vector.base-color/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@
svg/retrosmart-vector-xcursor-white-color-shadow/%.svg: src/vector.base/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/white/g' | sed 's/coral/black/g' > $@

svg/retrosmart-vector-xcursor-black/%.svg: src/vector.base/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
svg/retrosmart-vector-xcursor-black-shadow/%.svg: src/vector.base/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
svg/retrosmart-vector-xcursor-black-color/%.svg: src/vector.base-color/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
svg/retrosmart-vector-xcursor-black-color/%.svg: src/vector.base/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
svg/retrosmart-vector-xcursor-black-color-shadow/%.svg: src/vector.base-color/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@
svg/retrosmart-vector-xcursor-black-color-shadow/%.svg: src/vector.base/%.svg
	mkdir -p $(dir $@)
	cat $< | sed 's/cyan/black/g' | sed 's/coral/white/g' > $@