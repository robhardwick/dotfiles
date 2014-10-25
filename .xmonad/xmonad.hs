import XMonad
import XMonad.Actions.SpawnOn
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Util.EZConfig
import XMonad.Util.Run
import System.IO

main = do
    xmproc <- spawnPipe "/usr/bin/xmobar ~/.xmonad/xmobar.config"
    xmonad $ defaultConfig
        { manageHook = composeAll
            [ manageDocks
            , manageSpawn
            , isFullscreen --> doFullFloat
            , manageHook defaultConfig
            ]
        , layoutHook = avoidStruts $ layoutHook defaultConfig
        , logHook = dynamicLogWithPP xmobarPP
            { ppOutput = hPutStrLn xmproc
            , ppTitle = xmobarColor "blue" "" . shorten 50
            , ppLayout = const ""
            }
        , workspaces = ["1:term", "2:web", "3:video", "4", "5", "6"]
        , startupHook = do
            spawnOn "1:term" "urxvt -title tmux -e ~/bin/tmux-init.sh"
            spawnOn "2:web" "firefox"
            spawnOn "3:video" "vlc"
        , borderWidth = 0
        , terminal = "urxvt"
        }
