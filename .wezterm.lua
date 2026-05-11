local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 15

config.unix_domains = {
  {
    name = "main",
  },
}
config.default_gui_startup_args = { "connect", "main" }

config.leader = { key = "s", mods = "CTRL", timeout_milliseconds = 1000 }
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.tab_bar_at_bottom = true
config.window_decorations = "TITLE | RESIZE"
config.term = "xterm-256color"
config.enable_wayland = true
config.status_update_interval = 1000

config.window_background_opacity = 0.8
config.macos_window_background_blur = 50
config.win32_system_backdrop = 'Acrylic'  -- wayland/x11 may vary

config.keys = {
  {
    key = "Delete",
    mods = "SHIFT",
    action = wezterm.action.SendString "\x1b[3~"
  },
  {
    key = "s",
    mods = "LEADER|CTRL",
    action = act.SendKey { key = "s", mods = "CTRL" },
  },
  {
    key = "r",
    mods = "LEADER",
    action = act.ReloadConfiguration,
  },
  {
    key = "h",
    mods = "LEADER",
    action = act.ActivatePaneDirection("Left"),
  },
  {
    key = "j",
    mods = "LEADER",
    action = act.ActivatePaneDirection("Down"),
  },
  {
    key = "k",
    mods = "LEADER",
    action = act.ActivatePaneDirection("Up"),
  },
  {
    key = "l",
    mods = "LEADER",
    action = act.ActivatePaneDirection("Right"),
  },
  {
    key = "%",
    mods = "LEADER|SHIFT",
    action = act.SplitHorizontal { domain = "CurrentPaneDomain" },
  },
  {
    key = '"',
    mods = "LEADER|SHIFT",
    action = act.SplitVertical { domain = "CurrentPaneDomain" },
  },
  {
    key = "c",
    mods = "LEADER",
    action = act.SpawnTab("CurrentPaneDomain"),
  },
  {
    key = "x",
    mods = "LEADER",
    action = act.CloseCurrentPane { confirm = true },
  },
  {
    key = "z",
    mods = "LEADER",
    action = act.TogglePaneZoomState,
  },
  {
    key = "n",
    mods = "LEADER",
    action = act.ActivateTabRelative(1),
  },
  {
    key = "p",
    mods = "LEADER",
    action = act.ActivateTabRelative(-1),
  },
  {
    key = "[",
    mods = "LEADER",
    action = act.ActivateCopyMode,
  },
  {
    key = ",",
    mods = "LEADER",
    action = act.PromptInputLine {
      description = "Rename tab",
      action = wezterm.action_callback(function(window, pane, line)
        if line then
          window:active_tab():set_title(line)
        end
      end),
    },
  },
}

wezterm.on("update-right-status", function(window)
  window:set_right_status(wezterm.format({
    { Background = { Color = "#414868" } },
    { Foreground = { Color = "#cfc9c2" } },
    { Text = " " .. wezterm.strftime("%b %d") .. " " },
  }))
end)

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
  },

  split = "#CAFFD3",

  tab_bar = {
    background = "#1a1b26",

    active_tab = {
      bg_color = "#414868",
      fg_color = "#cfc9c2",
    },

    inactive_tab = {
      bg_color = "#1a1b26",
      fg_color = "#a9b1d6",
    },

    inactive_tab_hover = {
      bg_color = "#33467c",
      fg_color = "#cfc9c2",
    },

    new_tab = {
      bg_color = "#1a1b26",
      fg_color = "#a9b1d6",
    },

    new_tab_hover = {
      bg_color = "#414868",
      fg_color = "#cfc9c2",
    },
  },
}

return config
