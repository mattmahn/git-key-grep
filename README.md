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

Dependencies:
- Git
- Make

### Unix

```sh
git clone https://github.com/mattmahn/git-key-grep.git
cd git-key-grep
sudo make install
cd ..
rm -rf git-key-grep
```


## Related Works

If you do find something in a repo you want removed, you can try [BFG
Repo-Cleaner][bfg].


## Contributing

Thanks for your interest in contributing. Checkout
[CONTRIBUTING.md](./CONTRIBUTING.md) to get started.


[bfg]: https://rtyley.github.io/bfg-repo-cleaner/
[pre-commit]: http://pre-commit.com
