# Skip Network Popup

Stops the "data transfer failed" popups that block the game under RQ MOD.

## What it changes

The game tries to reach AliceSoft's server (for the TADA mode server version and other online
checks). RQ MOD has no network for it, so the game shows a message box such as
`データ送信に失敗しました[getserverversion]` and waits for a click. This mod skips those message
boxes. Nothing else changes: the game was not getting an answer anyway.

## Keys and settings

None.

## Saves

Nothing.

## Install

Needs [RQ MOD](https://github.com/RQ-Modding/RQ-Mod) with loader **1.0.0** or newer. Extract the
release zip into the game's `mods` folder, so that you have `mods/skip-network-popup/mod.json`.

## How it works

`rq.ain.skip_sdl_msgbox()` turns on the engine's hook that swallows its native message boxes for
the network checks: those whose text holds `getserverversion`, `TADA`, `HTTPDownloader` or
`データ送信`. Each one it swallows is written to `logs/rqmod.log`.

## License

MIT, see [LICENSE](LICENSE).
