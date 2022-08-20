M = {}
function M.init(use)
  use {
    'catppuccin/nvim',
    config = function()
      vim.o.termguicolors = true
      -- show the '~' characters after the end of buffers
      -- vim.g.dracula_show_end_of_buffer = true
      -- use transparent background
      -- vim.g.dracula_transparent_bg = true
      -- set custom lualine background color
      -- vim.g.dracula_lualine_bg_color = "#44475a"
      vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
      vim.cmd('colorscheme catppuccin')

      --local map = require("eldub.keys")
      --map.n("<leader>cl", '<cmd>lua vim.g.catpuccin_flavour = "latte"<CR><cmd>lua vim.cmd("colorscheme catppuccin")<CR>')
      --map.n("<leader>cm", '<cmd>lua vim.g.catpuccin_flavour = "macchiato"<CR><cmd>lua vim.cmd("colorscheme catppuccin")<CR>')
    end
  }
end

return M
