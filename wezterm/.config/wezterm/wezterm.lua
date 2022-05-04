local wezterm = require('wezterm');
return {
  enable_tab_bar = false,
  font = wezterm.font_with_fallback({
    "Fira Code",
    "PowerlineExtraSymbols",
    "Noto Color Emoji",
  }),
  font_size = 11.0,
  window_padding = {
    left = 20,
    right = 20,
    top = 20,
    bottom = 20,
  },
  colors = {
    foreground = "#f8f8f2",
    background = "#282a36",
    cursor_bg = "#bbbbbb",
    cursor_border = "#bbbbbb",
    cursor_fg = "#ffffff",
    selection_bg = "#44475a",
    selection_fg = "#ffffff",

    ansi = {'#21222c', '#ff5555', '#50fa7b', '#f1fa8c', '#bd93f9', '#ff79c6', '#8be9fd', '#f8f8f2'},
    brights = {'#6272a4', '#ff6e6e', '#69ff94', '#ffffa5', '#d6acff', '#ff92df', '#a4ffff', '#ffffff'},
  },
}
