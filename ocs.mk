OCSPKG = $(PKGNAME).tar.xz

pkg_ocs: $(OCSPKG)
$(OCSPKG):
	tar cJf $(PKGNAME).tar.xz retrosmart-xcursor-*

clean_ocs:
	rm -rf $(OCSPKG)
