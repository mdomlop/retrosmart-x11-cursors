XPMOCSPKGS = $(PKGNAME)-bitmap.tar.xz
SVGOCSPKGS = $(PKGNAME)-vector.tar.xz
OCSPKGS = $(XPMOCSPKGS) $(SVGOCSPKGS)

pkg_ocs: $(OCSPKGS)

$(XPMOCSPKGS):
	tar cJf $@ retrosmart-bitmap-xcursor-*
$(SVGOCSPKGS):
	tar cJf $@ retrosmart-vector-xcursor-*

clean_ocs:
	rm -rf $(OCSPKGS)
