local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.font = wezterm.font("JetBrains Mono")
config.font_size = 8

config.default_prog = { "bash" }

config.color_scheme = "Gruvbox Dark (Gogh)"

config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.warn_about_missing_glyphs = false
config.window_frame = {
  font_size = 8
}
config.colors = {
  tab_bar = {
    background = "#282828",
    active_tab = {
      bg_color = "#282828", fg_color = "#b8bb26", italic = true
    },
    inactive_tab = {
      bg_color = "#282828", fg_color = "#ebdbb2"
    },
    new_tab = {
      bg_color = "#282828", fg_color = "#ebdbb2"
    },
  },
}

config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

return config
