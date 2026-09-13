XPMOCSPKGS = $(PKGNAME).tar.xz
SVGOCSPKGS = $(PKGNAME)-vector.tar.xz
OCSPKGS = $(XPMOCSPKGS) $(SVGOCSPKGS)

pkg_ocs: $(OCSPKGS)

$(XPMOCSPKGS):
	cd xpm_theme; tar cJf ../$@ retrosmart-xcursor-*
$(SVGOCSPKGS):
	cd svg_theme; tar cJf ../$@ retrosmart-vector-xcursor-*

clean_ocs:
	rm -rf $(OCSPKGS)
