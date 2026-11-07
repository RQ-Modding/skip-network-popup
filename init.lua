-- Stops the network failure popups that block the game under RQ MOD.
-- xsystem4's HTTPDownloader.Get stub returns false, and the game then shows a native message box
-- ("データ送信に失敗しました[getserverversion]") that waits for a click. The engine's SDL hook
-- swallows those boxes (texts with getserverversion, TADA, HTTPDownloader or データ送信).
--
-- rq.ain.skip_msgbox is not used: on the current game files no system.MsgBox call shows these
-- texts, so it patched 0 sites.

rq.ain.skip_sdl_msgbox()
rq.log("SDL hook on")
