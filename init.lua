-- Silence TADA / HTTP failure popups that block agent testing.
-- xsystem4's HTTPDownloader.Get stub returns false; the AIN then shows
-- system.MsgBox ("データ送信に失敗しました[getserverversion]") via SDL.

rq.ain.skip_sdl_msgbox()

local n = 0
n = n + rq.ain.skip_msgbox("getserverversion")
n = n + rq.ain.skip_msgbox("TADA")
n = n + rq.ain.skip_msgbox("HTTPDownloader")

rq.log(string.format("skip-network-popup: patched %d AIN msgbox site(s); SDL hook on", n))
