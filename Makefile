DEFAULT = default
PHONY = $(DEFAULT) install uninstall not_implemented

.PHONY: $(PHONY)

$(DEFAULT): install

install: not_implemented

uninstall: not_implemented

not_implemented:
	@echo 'Not implemented yet. Symlinks, symlinks errywhere.'
