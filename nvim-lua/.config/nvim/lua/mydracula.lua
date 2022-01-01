
M = {}
function M.init(use)
  use {
    'Mofiqul/dracula.nvim',
    config = function()
      vim.o.termguicolors = true
      -- show the '~' characters after the end of buffers
      vim.g.dracula_show_end_of_buffer = true
      -- use transparent background
      vim.g.dracula_transparent_bg = true
      -- set custom lualine background color
      vim.g.dracula_lualine_bg_color = "#44475a"
      vim.cmd('colorscheme dracula')
    end
  }
end
return M
