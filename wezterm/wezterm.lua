local wezterm = require 'wezterm'

return {
	color_scheme = 'Dracula (Official)',
	enable_tab_bar = true,
	font_size = 14.0,
	font = wezterm.font('JetBrains Mono'),
	-- macos_window_background_blur = 40,
	macos_window_background_blur = 30,

 -- window_background_gradient = {
 --   colors = {
 --     '#0f0c29',
 --   '#302b63',
 --   '#24243e',
 --   }
 -- },
	-- window_background_image_hsb = {
	-- 	brightness = 0.01,
	-- 	hue = 1.0,
	-- 	saturation =  0.5,
	-- },
	-- window_background_opacity = 0.92,
	window_background_opacity = 0.95,
	-- window_background_opacity = 0.78,
	-- window_background_opacity = 0.20,
	window_decorations = 'RESIZE',
	keys = {
		-- {
		-- 	key = 'f',
		-- 	mods = 'ctrl',
		-- 	action = wezterm.action.togglefullscreen,
		-- },
		{
			key = 'k',
			mods = 'SUPER',
			action = wezterm.action.ClearScrollback 'ScrollbackAndViewport',
		},
	},
	mouse_bindings = {
	  -- Ctrl-click will open the link under the mouse cursor
	  {
	    event = { Up = { streak = 1, button = 'Left' } },
	    mods = 'CTRL',
	    action = wezterm.action.OpenLinkAtMouseCursor,
	  },
	},
}
