
M = {}
function M.init(use)
  use {
    'rakr/vim-one',
    config = function()
      vim.o.termguicolors = true
      vim.cmd('colorscheme one')
      vim.cmd('set background=light')
    end
  }
end
return M
