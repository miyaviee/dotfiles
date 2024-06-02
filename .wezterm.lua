local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

config.audible_bell = 'Disabled'
config.color_scheme = 'Everforest Dark (Gogh)'
config.font = wezterm.font 'Menlo'
config.font_size = 14.0
config.freetype_load_target = 'Light'
config.keys = {
  {
    key = 'Enter',
    mods = 'SUPER',
    action = wezterm.action.ToggleFullScreen,
  },
}
config.mouse_bindings = {
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'SUPER',
    action = act.OpenLinkAtMouseCursor,
  },
  {
    event = { Down = { streak = 1, button = 'Left' } },
    mods = 'SUPER',
    action = act.Nop,
  },
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'NONE',
    action = wezterm.action.CompleteSelection 'Clipboard',
  },
}
config.native_macos_fullscreen_mode = false
config.window_background_opacity = 0.945
config.window_close_confirmation = 'NeverPrompt'

return config
