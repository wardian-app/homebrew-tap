# Wardian Homebrew Tap

Homebrew Cask distribution metadata for Wardian.

## Install

```bash
brew install --cask wardian-app/tap/wardian
```

Alternatively:

```bash
brew tap wardian-app/tap
brew install --cask wardian
```

Wardian's GitHub Releases remain the canonical release source. This tap reuses
the SHA-256 checksums published with each stable release artifact.

## Maintainers

After a stable Wardian release is published, run the **Update Wardian Cask**
workflow with the release tag, for example `v0.4.0`. The workflow reads the
published GitHub Release assets, rewrites `Casks/wardian.rb`, runs Homebrew
audit, and opens a pull request.

The workflow also accepts `repository_dispatch` events of type
`wardian-release-published` so the main Wardian release workflow can trigger tap
updates automatically after publishing stable releases.

Validate a local cask change on macOS from a tapped checkout:

```bash
brew audit --cask wardian
brew install --cask --verbose wardian
```
