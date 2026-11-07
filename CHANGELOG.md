# Changelog

Each section is a version of the mod, the `version` in `mod.json`. The release workflow copies the
section of a tagged version into the release notes.

## 1.0.1

- Only the engine's SDL hook stops the boxes. The three `rq.ain.skip_msgbox` patches are gone: on
  the current game files they took out 0 calls. The log line at start is now
  `[skip-network-popup] SDL hook on`.

## 1.0.0

First version.

- Skips the TADA and HTTP failure message boxes (`getserverversion`, `TADA`, `HTTPDownloader`) and
  the engine's native message box for them.
- Uses the `rq.ain` calls and needs loader 1.0.0.
