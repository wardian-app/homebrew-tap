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

After a stable Wardian release is published, generate the cask from the Wardian
repository:

```bash
mkdir -p dist/package-managers/v0.3.6
gh release view v0.3.6 --json tagName,assets > dist/package-managers/v0.3.6/assets.json
npm run release:package-manifests -- --release-assets dist/package-managers/v0.3.6/assets.json --out dist/package-managers/v0.3.6
```

Then copy `dist/package-managers/v0.3.6/homebrew/wardian.rb` to
`Casks/wardian.rb` in this tap and validate on macOS:

```bash
brew audit --cask ./Casks/wardian.rb
brew install --cask --verbose ./Casks/wardian.rb
```
