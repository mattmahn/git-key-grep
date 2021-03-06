git-key-grep(1)

# NAME

git-key-grep - search for tracked API keys

# SYNOPSIS

*git key-grep* [*--*] [_pathspec_...]

*git-key-grep* *--help* | *-h*

*git-key-grep* *--version* | *-V*

# DESCRIPTION

Search the git working tree for anything that looks like it may be an API key
that was accidentally added to the repository. Any line that matches a regular
expression key pattern can be ignored by adding "git-key-grep-ignore" anywhere
on that line.

You may want to include this in your pre-commit hook to warn you automatically.

# OPTIONS

*-h*, *--help*
	Prints a short usage message.

*-V*, *--version*
	Prints the version number of this *git*(1) plugin.

*--*
	Signals the end of options; the remaining arguments are pathspec limiters.

_pathspec_...
	If given, limit the search to paths matching at least one pattern. *glob*(7)
	patterns are supported.

	Defaults to "*.*" if not specified.

# EXIT STATUS

0	Success

1	Error with *getopt*(1)

2	Bad arguments

3	Found possible API key


# BUGS

Please submit an issue at http://github.com/mattmahn/git-key-grep/issues

# RESOURCES

Main web site: https://github.com/mattmahn/git-key-grep

# SEE ALSO

*git-grep*(1)

; vim:noexpandtab:ft=text:wrap:tw=80:
