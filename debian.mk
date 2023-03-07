DARCHI = all
#DARCHI = $(shell dpkg --print-architecture)
DEBIANDIR = $(PKGNAME)-$(VERSION)_$(DARCHI)
DEBIANPKG = $(DEBIANDIR).deb

DEBIANDEPS = libbtrfsutil1

$(DEBIANDIR)/DEBIAN:
	mkdir -p -m 0775 $@

$(DEBIANDIR)/DEBIAN/copyright: copyright $(DEBIANDIR)/DEBIAN
	@echo Format: https://www.debian.org/doc/packaging-manuals/copyright-format/1.0/ > $@
	@echo Upstream-Name: $(PKGNAME) >> $@
	@echo "Upstream-Contact: Manuel Domínguez López <$(MAIL)>" >> $@
	@echo Source: $(URL) >> $@
	@echo License: $(LICENSE) >> $@
	@echo >> $@
	@echo 'Files: *' >> $@
	@echo "Copyright: $(YEAR) $(AUTHOR) <$(MAIL)>" >> $@
	@echo License: $(LICENSE) >> $@
	cat $< >> $@


$(DEBIANDIR)/DEBIAN/control: $(DEBIANDIR)/DEBIAN
	echo 'Package: $(PKGNAME)' > $@
	echo 'Version: $(VERSION)' >> $@
	echo 'Architecture: $(DARCHI)' >> $@
	echo 'Depends: $(DEBIANDEPS)' >> $@
	echo 'Description: $(DESCRIPTION)' >> $@
	echo 'Section: main' >> $@
	echo 'Priority: optional' >> $@
	echo 'Maintainer: $(AUTHOR) <$(MAIL)>' >> $@
	echo 'Homepage: $(URL)' >> $@
	echo 'Installed-Size: 1' >> $@

$(DEBIANDIR)/DEBIAN/conffiles: $(DEBIANDIR)/DEBIAN
	echo '/etc/sstab' > $@

pkg_debian: $(DEBIANPKG)
$(DEBIANPKG): $(DEBIANDIR)
	cp README.md $(DEBIANDIR)/DEBIAN/README
	dpkg-deb --build --root-owner-group $(DEBIANDIR)

$(DEBIANDIR): makefile $(DEBIANDIR)/DEBIAN/control $(DEBIANDIR)/DEBIAN/copyright $(DEBIANDIR)/DEBIAN/conffiles
	make install DESTDIR=$(DEBIANDIR)
	sed -i "s/Installed-Size:.*/Installed-Size:\ $$(du -ks $(DEBIANDIR) | cut -f1)/" $<

clean_debian:
	rm -rf control DEBIAN DEBIANTEMP $(DEBIANDIR) $(DEBIANPKG)
