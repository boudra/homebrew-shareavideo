# homebrew-shareavideo

Homebrew tap for ShareAVideo.

## Install

```bash
brew install boudra/shareavideo/shareavideo
brew install --cask boudra/shareavideo/shareavideo-app
```

## Notes

- The CLI formula currently builds from source.
- The app cask downloads `ShareAVideo.dmg` from the latest GitHub Release.
- The `shareavideo` release workflow in `boudra/shareavideo` rewrites this tap on each `v*` tag with pinned version + SHA256 values.
