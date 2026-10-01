MAKEFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
DIR := $(patsubst %/,%,$(dir $(MAKEFILE_PATH)))
BIN := /usr/local/bin

.PHONY: install
install:
	@fresh=0; \
	for f in $(DIR)/git-*; do \
		name=$$(basename $$f); \
		if [ -L "$(BIN)/$$name" ] && [ "$$(readlink $(BIN)/$$name)" = "$$f" ]; then \
			echo "$$name already installed at $(BIN)/$$name"; \
		else \
			sudo ln -sf $$f $(BIN)/$$name; \
			echo "Linked $(BIN)/$$name -> $$f"; \
			fresh=1; \
		fi; \
	done; \
	if [ "$$fresh" = "1" ]; then \
		echo; \
		echo "IDE integration (IntelliJ/PhpStorm/any JetBrains IDE) needs manual setup - opening the README:"; \
		open "https://github.com/dubhunter/git-commands#intellij-integration-or-any-jetbrains-ide" 2>/dev/null || echo "  https://github.com/dubhunter/git-commands#intellij-integration-or-any-jetbrains-ide"; \
	fi
