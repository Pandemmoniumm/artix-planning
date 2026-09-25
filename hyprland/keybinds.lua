-- Define modifiers and default applications
mainMod = "SUPER"
terminal = "ghostty"
fileManager = "yazi"
browser = "firefox"

--more precise resizing with use of submaps
	-- Switch to a submap called `resize`.
		hl.bind(mainMod .. "+ R", hl.dsp.submap("resize"))
	-- Start a submap called "resize".
		hl.define_submap("resize", function()
    	-- Set repeating binds for resizing the active window.
    		hl.bind("L", hl.dsp.window.resize({ x = 10, y = 0, relative = true}), { repeating = true })
    		hl.bind("H", hl.dsp.window.resize({ x = -10, y = 0, relative = true}), { repeating = true })
    		hl.bind("K", hl.dsp.window.resize({ x = 0, y = 10, relative = true}), { repeating = true })
    		hl.bind("J", hl.dsp.window.resize({ x = 0, y = -10, relative = true}), { repeating = true })
	-- Use `reset` to go back to the global submap
   		 hl.bind("escape", hl.dsp.submap("reset"))

end)
-- APPS
  -- Super + T to open Terminal
    hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
  -- Super + F to open File Manager
    hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(fileManager))
  --Super + W to open browser
    hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(browser)) 
-- minimizing
  -- Super + M to minimize focused window
    hl.bind(mainMod .. " + M", hl.dsp.window.move({ workspace = "special" }))
  -- Super + Shift + M to view minimized windows
    hl.bind(mainMod .. " + SHIFT + M", hl.dsp.workspace.toggle_special())
	

-- WINDOW ACTIONS
  -- Super + C to close window
    hl.bind(mainMod .. " + C", hl.dsp.window.close())
  -- Super + Q to kill the window/process (Changed from 'K' to avoid conflict)
    hl.bind(mainMod .. " + Q", hl.dsp.window.kill())
  -- Super + V to toggle the focused window between floating and tiling
    hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))

  -- Focus Navigation
    hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
    hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))
    hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))  
    hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))

-- DWINDLE LAYOUT
  -- Super + Return to toggle Fullscreen mode on the active window
    hl.bind(mainMod .. " + Return", hl.dsp.window.fullscreen(0))
  -- Super + S to change the split direction manually for the next window
    hl.bind(mainMod .. " + S", hl.dsp.layout("togglesplit"))
  -- Super + P to toggle Pseudotiling
    hl.bind(mainMod .. " + P", hl.dsp.layout("pseudo"))
  -- Swap a window with its neighbor
    hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" })) 
    hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" })) 
    hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))   
    hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))

-- MONITORS
  -- Focus switch
    hl.bind(mainMod .. " + CONTROL + 1", hl.dsp.focus({ monitor = "0" }))
    hl.bind(mainMod .. " + CONTROL + 2", hl.dsp.focus({ monitor = "1" }))
  -- Send window silently
    hl.bind(mainMod .. " + CONTROL + SHIFT + 1", hl.dsp.window.move({ monitor = "0", silent = true }))
    hl.bind(mainMod .. " + CONTROL + SHIFT + 2", hl.dsp.window.move({ monitor = "1", silent = true }))

-- WORKSPACES
for i = 1, 9 do
    local ws = tostring(i)
    
      -- Super + [1-9] to switch workspaces
        hl.bind(mainMod .. " + " .. ws, hl.dsp.focus({ workspace = ws }))
    
      -- Super + Shift + [1-9] to send focused window to workspace
        hl.bind(mainMod .. " + SHIFT + " .. ws, hl.dsp.window.move({ workspace = ws }))
end

-- FLOATING RULES4
    hl.window_rule({
        float = true,
        match = { class = "^pavucontrol$" }
    })

--Media Keys
	-- Audio Control
		hl.bind("", "XF86AudioRaiseVolume", "exec", "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+")
		hl.bind("", "XF86AudioLowerVolume", "exec", "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-")		
		hl.bind("", "XF86AudioMute", "exec", "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle")
		hl.bind("", "XF86AudioMicMute", "exec", "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle")
	-- Screen Brightness Control(make sure to install brightnessctl)
		hl.bind("", "XF86MonBrightnessUp", "exec", "brightnessctl set +5%")
		hl.bind("", "XF86MonBrightnessDown", "exec", "brightnessctl set 5%-")

