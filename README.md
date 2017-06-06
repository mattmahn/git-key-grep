# git-key-grep

Search your git repo for any mistakenly tracked API keys.


## Usage

Inside a git repository, simply run `git key-grep` to find any API keys that
are in the repository (i.e. in any file that is tracked or staged to be
tracked). Matched patterns can be ignored by adding `git-key-grep-ignore`
anywhere on the line (a comment would be a good place).

### pre-commit

git-key-grep is compatible with [pre-commit][] with something like the
following in your `.pre-commit-config.yaml`:
```yaml
- repo: https://github.com/mattmahn/git-key-grep.git
  sha: HEAD
  hooks:
  - id: git-key-grep
```


## Installation

### Unix

```sh
git clone https://github.com/mattmahn/git-key-grep.git
cd git-key-grep
make
sudo make install
cd ..
rm -rf git-key-grep
```


## Contributing

If you have any additions or improvements for the regular expressions, I'd
really appreciate a pull request! Of course, feel free to submit a pull request
for anything else that needs improvement too.

The [man page][] is written in [AsciiDoc][], so you may need to install the
`asciidoc` package to get the `a2x` command used to generate the man page.
Also, be sure to follow the Style Guide in **man-pages**(7) when editing the
man page.

### Dev Environment

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
[pre-commit]: http://pre-commit.com
