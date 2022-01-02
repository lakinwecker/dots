M = {}
function M.init(use) 
  use {
    'saecki/crates.nvim',
    tag = 'v0.1.0',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('crates').setup()
    end,
  }
  vim.cmd("autocmd FileType rust setlocal et sw=4 ts=4 sts=4")
end
return M
