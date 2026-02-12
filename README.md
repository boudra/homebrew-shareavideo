# homebrew-shareavideo

Homebrew tap for ShareAVideo.

## Install

```bash
brew install --cask boudra/shareavideo/shareavideo
```

This cask installs both:
- the macOS app (`Share a Video.app`)
- the CLI formula (`shareavideo-cli`, command: `shareavideo`)

## Notes

- The app cask downloads `ShareAVideo.dmg` from GitHub Releases.
- The `shareavideo` release workflow in `boudra/shareavideo` rewrites this tap on each `v*` tag with pinned version + SHA256 values.
