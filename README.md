# git-key-grep

Search your git repo for any mistakenly tracked API keys.


## Usage

Inside a git repository, simply run `git key-grep` to find any API keys that
are in the repository (i.e. in any file that is tracked or staged to be
tracked).


## Installation

### Unix

```sh
git clone https://github.com/mattmahn/git-key-grep.git
cd git-key-grep
make
sudo make install
```

### Windows

1. Download `git-key-grep` and `regexps` into a convenient directory.
1. Add `git-key-grep` to your `%PATH%`.


## Contributing

If you have any additions or improvements for the regular expressions, I'd
really appreciate a pull request! Of course, feel free to submit a pull request
for anything else that needs improvement too.

The [man page][] is written in [AsciiDoc][], so you may need to install the
`asciidoc` package to get the `a2x` command used to generate the man page.

### Dev Envrionment

A Dockerfile is available to test git-key-grep, so you don't have to mess up
your own system. Build it with
```sh
docker build -t 'git-key-grep' .
```
Then start it with
```sh
docker run -it 'git-key-grep'
```


[AsciiDoc]: http://asciidoc.org/
[man page]: git-key-grep.1.txt
