## Introduction

Thanks for considering contributing to git-key-grep.

If you're looking for something to contribute, here are some ideas:
- additional regular expressions
- writing tests
- improving documentation
- writing tutorials
- submitting bug reports
- feature requests
- submitting a pull request for any of the above


## Ground Rules

- Ensure cross-platform compatibility for every change that's accepted. Right
  now that means macOS and Linux, since there are no explicit instll
  instructions for Windows.
- Create issues for any major changes and enhancements that you wish to make.
  Discuss things transparently and get community feedback.
- Keep feature versions as small as possible, preferably one new feature per
  version.
- If you are submitting an issue or pull request, please be as detailed as
  possible&mdash;particularly for bug reports and feature requests.


## Getting Started

1. [Fork](https://help.github.com/articles/fork-a-repo/) the repository.
1. Ensure you have the [dependencies][deps] installed. If you need to make
   changes to the man page, you will also need the `scdoc` command, which can be
   compiled from the included `scdoc` Git submodule.
1. Make your changes.
1. [Create a pull request](https://help.github.com/articles/creating-a-pull-request-from-a-fork/).

The [man page][] is written in [scdoc][], so you will need to clone the scdoc
submodule to generate the man page.  Also, be sure to follow the Style Guide in
**man-pages**(7) when editing the man page.

Please stay consistent with the existing code style/formatting. This basically
means wrap lines at 79 characters and use 4-space indents (except for the
Makefile, of course). This should be handled for you by the `.editorconfig`
file, but your editor may need a plugin to support it.


## Suggest a Feature or Enhancement

If you're wishing for a feature that you wish git-key-grep had, open an issue.
Think about what the feature will do, why you need it, and how it should work.


[deps]: ./README.md#Installation
[man page]: ./git-key-grep.1.txt
[scdoc]: https://git.sr.ht/~sircmpwn/scdoc/
