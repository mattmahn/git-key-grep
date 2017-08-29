MAN_DIR       ?= /usr/share/man
MAN1_DIR      := $(MAN_DIR)/man1
PREFIX        := /usr/local
BIN_DIR       := $(PREFIX)/bin
ROOT_DATA_DIR := $(PREFIX)/share
DATA_DIR      := $(ROOT_DATA_DIR)/git-key-grep
EXEC_FILES     = git-key-grep

.PHONY: clean install man uninstall

all: man

clean:
	rm git-key-grep.1.gz

install: git-key-grep.1.gz
	install -d $(BIN_DIR) $(DATA_DIR)
	install -m 0755 -t $(BIN_DIR) $(EXEC_FILES)
	install -m 0644 "git-key-grep.1.gz" $(MAN1_DIR)
	install -m 0644 -t "$(DATA_DIR)" "regexps"
	@echo
	@echo -e "\e[0;32m✔ Finished installing to $(BIN_DIR)\e[0m"
	@echo

git-key-grep.1: git-key-grep.1.txt
	a2x -f manpage $<

git-key-grep.1.gz: git-key-grep.1
	gzip -kf $<

man: git-key-grep.1.gz

uninstall:
	rm -f $(addprefix $(BIN_DIR)/,$(EXEC_FILES))
	rm -f "$(BIN_DIR)/git-key-grep" "$(MAN1_DIR)/git-key-grep.1"
	rm -rf "$(DATA_DIR)"
	@echo
	@echo -e "\e[0;32m✔ Finished uninstalling from $(BIN_DIR)\e[0m"
	@echo
