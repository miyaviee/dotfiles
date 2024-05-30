local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.audible_bell = 'Disabled'
config.color_scheme = 'Everforest Dark (Gogh)'
config.font = wezterm.font 'Menlo'
config.font_size = 14.0
config.freetype_load_target = 'Light'
config.keys = {
  {
    key = 'Enter',
    mods = 'CMD',
    action = wezterm.action.ToggleFullScreen,
  },
}
config.native_macos_fullscreen_mode = false
config.window_background_opacity = 0.945
config.window_close_confirmation = 'NeverPrompt'

return config
