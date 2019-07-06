PREFIX=/usr/local
NAME=satysfi-zrsatz

SGROOT_DIR=$(PREFIX)/share/satysfi
PACKAGE_DIR=$(SGROOT_DIR)/$(NAME)

.PHONY: all install uninstall

all:
	true

install:
	install -d "$(PACKAGE_DIR)/packages"
	install -m 644 *.saty* $(PACKAGE_DIR)/packages

uninstall:
	rm -rf "$(PACKAGE_DIR)"
