local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font {
  family = "JetBrains Mono",
  harfbuzz_features = { "cv14=1", "cv15=1" }
}

config.font_size = 7.25

config.default_prog = { "bash" }

config.color_scheme = "GruvboxDark"

config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.warn_about_missing_glyphs = false
config.colors = {
  tab_bar = {
    background = "#282828",
    active_tab = {
      bg_color = "#282828", fg_color = "#b8bb26", intensity = "Bold"
    },
    inactive_tab = {
      bg_color = "#282828", fg_color = "#ebdbb2"
    },
    new_tab = {
      bg_color = "#282828", fg_color = "#b8bb26", intensity = "Bold"
    },
  },
}

return config
