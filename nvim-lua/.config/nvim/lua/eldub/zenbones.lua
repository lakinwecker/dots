M = {}
function M.init(use)
  use {
    "mcchrish/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    requires = "rktjmp/lush.nvim",
    config = function()
      vim.o.termguicolors = true
      vim.o.background = "dark"
      vim.cmd('colorscheme neobones')
    end
  }
end

return M
