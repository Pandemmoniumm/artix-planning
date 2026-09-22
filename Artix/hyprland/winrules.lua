-- aesthetics & window rules
hl.config({
	general = {
		gaps_in = 0,
		gaps_out = 0,

		border_size = 2,

		col = {
			active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
			inactive_border = "rgba(595959aa)",
		},

		resize_on_border = true,

		allow_tearing = false,

		layout = "dwindle",
	},

	decoration = {
		rounding = 0,
		rounding_power = 2,

		active_opacity = 0.93,
		inactive_opacity = 0.85,
		
		dim_inactive = true,
		dim_strength = 0.15,

		shadow = {
			enabled = false,   
			range = 4, 
			render_power = 3,
			color = 0xee1a1a1a,
		},

		blur = {
			enabled = true,
			size = 4,           
			passes = 1,       
			vibrancy = 0.2,   
			new_optimizations = true, 
			
			--eye comfort
			noise = 0.0,       
			contrast = 1.0,     
			brightness = 1.0,   
		},
	},
})

hl.config({
	dwindle = {
		preserve_split = true,
	},
})

--layer rules
hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
  },
  no_anim = true,
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})

-- useful rules
suppressMaximizeRule = hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*"},
	suppress_event = "maximize",
})

hl.window_rule({
	-- fix some dragging issues with xwayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true, 
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move  = "20 monitor_h-120",
    float = true,
})
--aesthetics
hl.config({
	general = {
		gaps_in = 0,
		gaps_out = 0,

		border_size = 2,

		col = {
			active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
			inactive_border = "rgba(595959aa)",
		},

		resize_on_border = true,

		allow_tearing = false,

		layout = "dwindle",
	},

	decoration = {
		rounding = 0,
		rounding_power = 2,

		active_opacity = 0.93,
		inactive_opacity = 0.85,
		
	
		dim_inactive = true,
		dim_strength = 0.15,

		shadow = {
			enabled = true,
			range = 4, 
			render_power = 3,
			color = 0xee1a1a1a,
		},

		blur = {
			enabled = true,
			size = 8,        
			passes = 3,        
			vibrancy = 0.2,   
			new_optimizations = true, 
		},
	},

})
	hl.config({
	dwindle = {
		preserve_split = true,
	},
})

hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
  },
  no_anim = true,
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})

--useful rules
suppressMaximizeRule = hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*"},
	
	suppress_event = "maximize",
})
--suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	--fix some dragging issues with xwayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true, 
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

