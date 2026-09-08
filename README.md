# dnncha Homebrew tap

This third-party tap installs the portable CPU command-line engine for
[DotMatch](https://github.com/dnncha/dotmatch), a known-target short-DNA assignment
tool. It is maintained separately from Homebrew's official repositories.

## Install

```sh
brew tap dnncha/tap
brew install dnncha/tap/dotmatch
dotmatch --version
```

The [formula](Formula/d/dotmatch.rb) currently builds DotMatch **0.4.0** from a
release archive with a pinned SHA-256. It installs the native `dotmatch` command,
not the Python extension or optional Metal backend.

## Check the version before following a tutorial

The core project has newer releases than this formula. In particular, examples
requiring DotMatch 0.5.0 should use that release through the core project's
[installation guide](https://dotmatch.readthedocs.io/en/latest/getting-started.html).
Check `dotmatch --version` and `command -v dotmatch` if multiple installations
are present.

To refresh this tap's available formula and upgrade when it has changed:

```sh
brew update
brew upgrade dnncha/tap/dotmatch
```

Refreshing Homebrew does not make this formula newer than the version recorded
in its source.

## Formula maintenance

Update the release URL and verified checksum together. Build and exercise the
formula after changing it:

```sh
brew install --build-from-source dnncha/tap/dotmatch
brew test dnncha/tap/dotmatch
```

The formula test checks the executable version and a small distance calculation;
it is not a validation of a biological assay. See the core
[methods and citation guide](https://dotmatch.readthedocs.io/en/latest/methods-and-citation.html)
and [Cheerful Duck Research](https://cheerfulduck.com/research) for methods,
software investigations, and reproducible examples.
