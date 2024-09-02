-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = {
	use_fancy_tab_bar = false,
	enable_tab_bar = false,
	window_background_opacity = 1,
	default_cursor_style = "SteadyUnderline",
	font_size = 14,
	font = wezterm.font("FiraCode Nerd Font Mono", { weight = "Regular" }),
	color_scheme = "Catppuccin Macchiato",
}

-- wezterm.gui is not available to the mux server, so take care to
-- do something reasonable when this config is evaluated by the mux
-- Set the color scheme depending on the system setting
-- function get_appearance()
-- 	if wezterm.gui then
-- 		return wezterm.gui.get_appearance()
-- 	end
-- 	return "Dark"
-- end

-- function scheme_for_appearance(appearance)
-- 	if appearance:find("Dark") then
-- 		return "iTerm2 Default"
-- 	else
-- 		return "Atelier Seaside Light (base16)"
-- 	end
-- end
function scheme_for_appearance()
	if wezterm.color_scheme == "Catppuccin Macchiato" then
		print(wezterm.color_scheme)
		config.color_scheme = "Catppuccin Latte"
	else
		config.color_scheme = "Catppuccin Macchiato"
	end
end

--
-- config.color_scheme = scheme_for_appearance(get_appearance())

config.keys = {
	{
		key = "?",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "|",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "p",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateCommandPalette,
	},
	{
		key = "b",
		mods = "CTRL|SHIFT",
		action = wezterm.action_callback(function()
			scheme_for_appearance()
		end),
	},
}

return config
