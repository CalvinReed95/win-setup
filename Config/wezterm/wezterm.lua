local wezterm = require("wezterm")

local config = {}

config.animation_fps = 1
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'
config.cursor_blink_rate = 500

config.color_scheme = 'Classic Dark (base16)'
config.front_end = "OpenGL"
config.max_fps = 144
config.default_cursor_style = "BlinkingBlock"

config.term = "xterm-256color" -- Set the terminal type
config.enable_scroll_bar = true
config.font = wezterm.font("JetBrains Mono Regular")
config.cell_width = 0.9
config.window_background_opacity = 0.9
config.prefer_egl = true
config.font_size = 16.0

config.window_padding = {
	left = 5,
	right = 5,
	top = 5,
	bottom = 5,
}

-- Tabs
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true

config.window_decorations = "TITLE | RESIZE"
config.default_prog = { "powershell.exe", "-NoLogo" }
config.initial_cols = 80

return config
