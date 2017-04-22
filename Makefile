MANDIR ?= "/usr/share/man"
PREFIX ?= "/usr/local/bin"

.PHONY: install man uninstall

all: man

install: git-key-grep.1 regexp
	install -vm 0755 "git-key-grep" "$(PREFIX)"
	install -vm 0644 "git-key-grep.1" "$(MANDIR)/man1"
	install -vm 0644 "regexp" "$(PREFIX)"

git-key-grep.1: git-key-grep.1.txt
	a2x -d manpage -f manpage $<

man: git-key-grep.1

uninstall:
	rm -v "$(PREFIX)/git-key-grep"
