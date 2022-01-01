M = {}
function M.init() 
  use {
    'simrat39/rust-tools.nvim'
  }
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
end
return M
