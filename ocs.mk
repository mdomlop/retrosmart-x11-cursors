XPMOCSPKGS = $(PKGNAME).tar.xz
SVGOCSPKGS = $(PKGNAME)-vector.tar.xz
OCSPKGS = $(XPMOCSPKGS) $(SVGOCSPKGS)

pkg_ocs: $(OCSPKGS)

$(XPMOCSPKGS):
	cd xpm_theme; tar cJf ../$(OCSPKG).tar.xz retrosmart-xcursor-*
$(SVGOCSPKGS):
	cd svg_theme; tar cJf ../$(OCSPKG)-vector.tar.xz retrosmart-vector-xcursor-*

clean_ocs:
	rm -rf $(OCSPKGS)
