-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = {
	use_fancy_tab_bar = false,
	enable_tab_bar = false,
	window_background_opacity = 0.95,
	default_cursor_style = "SteadyUnderline",
}

config.font = wezterm.font("FiraCode Nerd Font Mono", { weight = "Regular" })
config.font_size = 14

-- wezterm.gui is not available to the mux server, so take care to
-- do something reasonable when this config is evaluated by the mux
-- Set the color scheme depending on the system setting
-- function get_appearance()
-- 	if wezterm.gui then
-- 		return wezterm.gui.get_appearance()
-- 	end
-- 	return "Dark"
-- end
--
-- function scheme_for_appearance(appearance)
-- 	if appearance:find("Dark") then
-- 		return "iTerm2 Default"
-- 	else
-- 		return "Atelier Seaside Light (base16)"
-- 	end
-- end
--
-- config.color_scheme = scheme_for_appearance(get_appearance())
-- and finally, return the configuration to wezterm

-- function scheme_for_appearance()
-- 	if config.color_scheme == "iTerm2 Default" then
-- 		config.color_scheme = "Atelier Seaside Light (base16)"
-- 	else
-- 		config.color_scheme = "iTerm2 Default"
-- 	end
-- end

config.color_scheme = "Tokyo Night Moon"
config.keys = {
	-- This will create a new split and run your default program inside it
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
}

return config
