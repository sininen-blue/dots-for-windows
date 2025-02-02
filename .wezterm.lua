-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.default_prog = { "nu" }

-- For example, changing the color scheme:
config.font = wezterm.font("FantasqueSansM Nerd Font")
config.font_size = 14.0
config.color_scheme = "Catppuccin Mocha"
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- and finally, return the configuration to wezterm
return config
