PREFIX = 'usr'
DESTDIR = ''

DOCS = ChangeLog AUTHORS

INSTALL_DIR := $(DESTDIR)/$(PREFIX)/share/icons
INSTALLED_CURSORS := $(addprefix $(INSTALL_DIR)/,$(CURSORS) $(INDICES) $(LINKS))

showin:
	@echo $(INSTALLED_CURSORS)

install: $(INSTALLED_CURSORS) $(DOCS)
	install -dm 755 $(INSTALL_DIR)/share/doc/$(PKGNAME)
	install -dm 755 $(INSTALL_DIR)/share/licenses/$(PKGNAME)
	install -Dm 644 $(DOCS) $(INSTALL_DIR)/share/doc/$(PKGNAME)
	install -Dm 644 README.md $(INSTALL_DIR)/share/doc/$(PKGNAME)/README
	install -Dm 644 LICENSE $(INSTALL_DIR)/share/licenses/$(PKGNAME)/COPYING

$(INSTALL_DIR)/%: %
	install -dm 755 $(INSTALL_DIR)
	install -Dm 644 $^ $@
