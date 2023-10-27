-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = wezterm.config_builder()

local color = {
  [0] = '#0d1117',
  [1] = '#161b22',
  [2] = '#21262d',
  [3] = '#30363d',
  [4] = '#484f58',
  [5] = '#6e7681',
  [6] = '#8b949e',
  [7] = '#b1bac4',
  [8] = '#c9d1d9',
  [9] = '#f0f6fc'
}

local select = '#29384b'

config.colors = {
  cursor_bg = color[7],
  cursor_fg = color[0],
  cursor_border = color[7],
  selection_bg = select,

  tab_bar = {
    inactive_tab_edge  = color[3],
    inactive_tab       = { bg_color = color[0], fg_color = color[8] },
    active_tab         = { bg_color = color[2], fg_color = color[7] },
    inactive_tab_hover = { bg_color = color[3], fg_color = color[7] },
    new_tab            = { bg_color = color[0], fg_color = color[6] },
    new_tab_hover      = { bg_color = color[3], fg_color = color[7] }
  }
}

-- window styling
config.window_frame = {
  font_size = 13,
  active_titlebar_bg = color[0],
  inactive_titlebar_bg = color[0],
}

config.window_padding = {
  left = 8,
  right = 8,
  top = 8,
  bottom = 0,
}
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

config.initial_cols = 120
config.initial_rows = 30

-- default program
config.default_prog = { '/bin/zsh', '-l' }

-- font configuration
config.font = wezterm.font("Monaco", { weight = "Regular" })
config.font_size = 13.0
config.freetype_load_target = "Light"
config.bold_brightens_ansi_colors = false

-- For example, changing the color scheme:
config.color_scheme = 'Vs Code Dark+ (Gogh)'

-- and finally, return the configuration to wezterm
return config
