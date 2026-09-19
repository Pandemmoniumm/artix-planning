-- Define modifiers and default applications
local mainMod = "SUPER"
local terminal = "ghostty"
local fileManager = "yazi"
local ipc = "noctalia msg "

-- APPS
  -- Super + T to open Terminal
    hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
  -- Super + F to open File Manager
    hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(fileManager))
	-- Super to open app launcher
    hl.bind(mainMod, hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
  --Super + Tab to open window view
    hl.bind(mainMod .. " + Tab", hl.dsp.exec_cmd(ipc .. "window-switcher"))

-- MINIMIZING
  -- Super + M to minimize focused window
    hl.bind(mainMod .. " + M", hl.dsp.window.move_to_workspace("special"))
  -- Super + Shift + M to view minimized windows
    hl.bind(mainMod .. " + SHIFT + M", hl.dsp.workspace("toggle_special"))
	
--MEDIA KEYS
  -- Audio Controls (l = runs when locked, r = repeats when held)
    hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"), { flags = "lr" })
    hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"), { flags = "lr" })
    hl.bind("XF86AudioMute",        hl.dsp.exec_cmd(ipc .. "volume-mute"), { flags = "l" })
  -- Screen Brightness Controls (r = repeats when held)
    hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd(ipc .. "brightness-up"), { flags = "r" })
    hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down"), { flags = "r" })

-- WINDOW ACTIONS
  -- Super + C to close window
    hl.bind(mainMod .. " + C", hl.dsp.window.close())
  -- Super + K to kill the window/process
    hl.bind(mainMod .. " + K", hl.dsp.window.kill())
  -- Super + V to toggle the focused window between floating and tiling
    hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))

  -- focus
    hl.bind(mainMod .. " + H", hl.dsp.window.move_focus("l")) -- Left
    hl.bind(mainMod .. " + J", hl.dsp.window.move_focus("d")) -- Down
    hl.bind(mainMod .. " + K", hl.dsp.window.move_focus("u")) -- Up
    hl.bind(mainMod .. " + L", hl.dsp.window.move_focus("r")) -- Right
--DWINDLE 
  -- Super + Return to toggle Fullscreen mode on the active window
    hl.bind(mainMod .. " + Return", hl.dsp.window.fullscreen(0))
  -- Super + S to change the split direction manually for the next window
    hl.bind(mainMod .. " + S", hl.dsp.dwindle.toggle_split())
  -- Super + P to toggle Pseudotiling
    hl.bind(mainMod .. " + P", hl.dsp.dwindle.toggle_pseudo())
  --Swap a window with its neighbor with H/J/K/L
    hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.swap_with_neighbor("l"))
    hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.swap_with_neighbor("d"))
    hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.swap_with_neighbor("u"))
    hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.swap_with_neighbor("r"))

-- MONITORS
  -- focus switch
    hl.bind(mainMod .. " + CONTROL + 1", hl.dsp.monitor.focus("0"))
    hl.bind(mainMod .. " + CONTROL + 2", hl.dsp.monitor.focus("1"))
  -- send window
    hl.bind(mainMod .. " + CONTROL + SHIFT + 1", hl.dsp.window.move_to_monitor_silent("0"))
    hl.bind(mainMod .. " + CONTROL + SHIFT + 2", hl.dsp.window.move_to_monitor_silent("1"))


-- WORKSPACES
for i = 1, 9 do
    local ws = tostring(i)
    
      -- Super + [1-9] to switch workspaces
        hl.bind(mainMod .. " + " .. ws, hl.dsp.workspace(ws))
    
      -- Super + Shift + [1-9] to send focused window to workspace
        hl.bind(mainMod .. " + SHIFT + " .. ws, hl.dsp.window.move_to_workspace(ws))
end


-- FLOATING
  -- Add apps that i want to float by default below:
    hl.windowrule("float", "class:^pavucontrol$") -- Example: Volume Control


