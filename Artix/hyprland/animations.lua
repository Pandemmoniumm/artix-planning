animations = {
	enabled = true,
},

hl.curve("fluid_bounce", { type = "bezier", points = { {0.15, 0.95}, {0.25, 1.12} } })
hl.curve("smooth_decel", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.0} } })
hl.curve("linear",       { type = "bezier", points = { {1, 1}, {1, 1} } })

hl.animation({ leaf = "windowsIn", enabled = true, speed = 6.4, bezier = "fluid_bounce", style = "popin 70%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 6.4, bezier = "fluid_bounce", style = "popin 70%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4.5, bezier = "fluid_bounce" })

hl.animation({ leaf = "layersIn", enabled = true, speed = 4.5, bezier = "fluid_bounce", style = "popin 75%" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 4.0, bezier = "smooth_decel", style = "popin 80%" })

hl.animation({ leaf = "fade", enabled = true, speed = 3.5, bezier = "linear" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3.0, bezier = "smooth_decel" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 3.0, bezier = "smooth_decel" })
hl.animation({ leaf = "fadeSwitch", enabled = true, speed = 3.5, bezier = "smooth_decel" })
hl.animation({ leaf = "fadeLayers", enabled = true, speed = 3.0, bezier = "linear" })

hl.animation({ leaf = "border", enabled = true, speed = 5.0, bezier = "fluid_bounce" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 30.0, bezier = "linear" })

hl.animation({ leaf = "workspaces", enabled = true, speed = 5.0, bezier = "fluid_bounce", style = "slidefade 20%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4.5, bezier = "fluid_bounce", style = "slidevert" })
