local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 15

config.enable_tab_bar = false
config.window_decorations = "TITLE | RESIZE"
config.term = "wezterm"
config.enable_wayland = true

config.window_background_opacity = 0.8
config.macos_window_background_blur = 50
config.win32_system_backdrop = 'Acrylic'  -- wayland/x11 may vary

config.keys = {
  {
    key = "Delete",
    mods = "SHIFT",
    action = wezterm.action.SendString "\x1b[3~"
  }
}

config.colors = {
  foreground = "#F0F0F0",
  background = "#090622",

  cursor_bg = "#ADFFBE",
  cursor_fg = "#040119",
  cursor_border = "#ADFFBE",

  selection_fg = "#9DA5FB",
  selection_bg = "#453E4C",

  ansi = {
    "#452A63",  -- black
    "#E06C8A",  -- red
    "#89FFEB",  -- green
    "#F4D792",  -- yellow
    "#524C7B",  -- blue
    "#A77FE3",  -- magenta
    "#CAFFD3",  -- cyan
    "#D4FFC1",  -- white
  },

  brights = {
    "#80BCE3",  -- bright black
    "#C4547A",  -- bright red
    "#69908A",  -- bright green
    "#B18F4B",  -- bright yellow
    "#B5B1FC",  -- bright blue
    "#B68EE5",  -- bright magenta
    "#65F1F5",  -- bright cyan
    "#555EC0",  -- bright white
  }
}

return config
