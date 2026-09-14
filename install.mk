PREFIX = 'usr/local'
DESTDIR = ''

DOCS = ChangeLog AUTHORS

INSTALL_DIR := $(DESTDIR)/$(PREFIX)
INSTALLED_CURSORS := $(addprefix $(INSTALL_DIR)/share/icons/,$(CURSORS) $(INDICES) $(LINKS))

showin:
	@echo $(INSTALLED_CURSORS)

install: $(INSTALLED_CURSORS) $(DOCS)
	install -dm 755 $(INSTALL_DIR)/share/doc/$(PKGNAME)
	install -dm 755 $(INSTALL_DIR)/share/licenses/$(PKGNAME)
	install -Dm 644 $(DOCS) $(INSTALL_DIR)/share/doc/$(PKGNAME)
	install -Dm 644 README.md $(INSTALL_DIR)/share/doc/$(PKGNAME)/README
	install -Dm 644 ChangeLog $(INSTALL_DIR)/share/doc/$(PKGNAME)/
	install -Dm 644 AUTHORS $(INSTALL_DIR)/share/doc/$(PKGNAME)/
	install -Dm 644 LICENSE $(INSTALL_DIR)/share/licenses/$(PKGNAME)/COPYING

$(INSTALL_DIR)/share/icons/%: %
	install -dm 755 $(INSTALL_DIR)/share/icons/
	install -Dm 644 $^ $@

uninstall:
	rm -Rf $(INSTALLED_CURSORS)
	rm -rf $(INSTALL_DIR)/share/doc/$(PKGNAME)
	rm -rf $(INSTALL_DIR)/share/licenses/$(PKGNAME)
	rm -rf $(INSTALL_DIR)/share/doc/$(PKGNAME)
	rm -rf $(INSTALL_DIR)/share/icons/retrosmart-bitmap-xcursor-*
	rm -rf $(INSTALL_DIR)/share/icons/retrosmart-vector-xcursor-*