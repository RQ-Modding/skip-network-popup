# Testing Skip Network Popup

For people and agents who test the mod in the game. Check `logs\rqmod.log` for
`Loading skip-network-popup` first.

## What it adds

No buttons and no `rq.agent.control` ids. Do not invent controls for it. Agents rely on it: without
it, a native message box can stop the game's thread, and no pipe command answers it.

## How to check it

1. At start the log says `skip-network-popup: patched N AIN msgbox site(s); SDL hook on`. N is 0
   on the current game files (the texts are there, but no message box call shows them); the SDL
   hook is what stops the boxes.
2. Play to the title screen and into the game: no `データ送信に失敗しました` box appears.
