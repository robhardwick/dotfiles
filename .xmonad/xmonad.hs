import XMonad
import XMonad.Actions.SpawnOn

main = do xmonad defaultConfig {
	borderWidth = 0,
	terminal = "urxvt",
	workspaces = ["1:term", "2:web", "3:media", "4", "5", "6"],
	startupHook = do
		spawnOn "1:term" "urxvt -e ~/bin/tmux-init.sh"
		spawnOn "2:web" "chromium"
		spawnOn "3:media" "clementine",
	manageHook = manageSpawn <+> manageHook defaultConfig
}
