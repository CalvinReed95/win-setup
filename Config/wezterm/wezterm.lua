local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()
local theme = 'WildCherry'
--local theme = 'Windows 95 (base16)'
--local theme = 'Ayu Dark (Gogh)'
--local theme = 'Banana Blueberry'
--local theme = 'Blue Matrix'
------------------------- Cursor --------------------------------
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'
config.cursor_blink_rate = 500
config.default_cursor_style = "BlinkingBlock"
------------------------- Terminal ------------------------------
config.animation_fps = 1
config.front_end = "OpenGL"
config.max_fps = 144
config.term = "xterm-256color" -- Set the terminal type
config.enable_scroll_bar = true
config.prefer_egl = true
config.cell_width = 1
config.default_prog = { "powershell.exe", "-NoLogo" }
config.initial_cols = 80
------------------------- Font & Colour Theme ------------------
--config.font = wezterm.font("JetBrains Mono Regular")
config.font = wezterm.font("Ubuntu Mono")
config.font_size = 16.0
config.color_scheme = theme
------------------------- Window & Tabs -------------------------
config.window_decorations = "NONE | RESIZE"
config.window_background_opacity = 0.95
config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 5,
}
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true
------------------------- Key Bindings --------------------------
config.keys = {
  {
  	key = "t",
  	mods = "CTRL|SHIFT",
  	action = act.SpawnTab 'DefaultDomain'
  },
  {
   	key = "e",
   	mods = "CTRL|SHIFT",
   	action = act.CloseCurrentPane { confirm = true }
  },
  {
	key = "h",
	mods = "CTRL|ALT",
	action = act.SplitPane({ 
	  direction = "Right",
	  size = { Percent = 50 }
	}),
  },
  {
    key = "v",
	mods = "CTRL|ALT",
	action = act.SplitPane({
	  direction = "Down",
	  size = { Percent = 50 },
	}),
  }
}
for i = 1, 8 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'CTRL|ALT',
    action = act.ActivateTab(i - 1),
  })
end
return config
