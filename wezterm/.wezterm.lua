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

-- For example, changing the color scheme:
config.color_scheme = "Hacktober"

-- Start zsh and attach to tmux session
config.default_prog = { "/bin/zsh", "-l", "-c", "tmux attach || tmux" }

-- Maximize wezterm
-- Workaround: setting them beyond max will use the available space
config.initial_cols = 300
config.initial_rows = 200

-- Hide tabs
config.hide_tab_bar_if_only_one_tab = true

-- Remove window title
config.window_decorations = "RESIZE"

-- Make window opaque
config.window_background_opacity = 0.9
config.macos_window_background_blur = 100

-- Create the Font
config.font = wezterm.font("Hack Nerd Font")

-- Disable audible bell
config.audible_bell = "Disabled"

-- and finally, return the configuration to wezterm
return config
