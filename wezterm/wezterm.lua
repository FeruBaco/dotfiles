local wezterm = require 'wezterm'
local act = wezterm.action

return {
	color_scheme = 'Dracula (Official)',
	enable_tab_bar = true,
	font_size = 14.0,
	font = wezterm.font('JetBrains Mono'),
	macos_window_background_blur = 30,
	window_background_opacity = 0.95,
	window_decorations = 'RESIZE',
	keys = {
		{
			key = 'k',
			mods = 'SUPER',
			action = wezterm.action.ClearScrollback 'ScrollbackAndViewport',
		},
		{
			key = 'LeftArrow',
			mods = 'OPT',
			action = act.SendKey {
				key = 'b',
				mods = 'ALT',
			},
		},
		{
			key = 'RightArrow',
			mods = 'OPT',
			action = act.SendKey { key = 'f', mods = 'ALT' },
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
