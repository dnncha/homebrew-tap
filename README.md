# dnncha Homebrew tap

This is a third-party Homebrew tap for [DotMatch](https://github.com/dnncha/dotmatch).
It is not an official Homebrew repository or endorsement.

Install the portable CPU command-line engine with:

```sh
brew tap dnncha/tap
brew install dnncha/tap/dotmatch
dotmatch --version
```

The formula builds the immutable DotMatch release source archive and installs
the native `dotmatch` command. Python bindings and the optional Metal backend
remain available through the upstream PyPI and Bioconda packages.
