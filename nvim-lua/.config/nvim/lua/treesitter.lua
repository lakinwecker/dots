M = {}
function M.init(use)
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    event = 'BufRead',
    config = function()
      require('nvim-treesitter.configs').setup {
        highlight = { enable = true },
        incremental_selection = { enable = true },
        indent = { enable = true },
        textobjects = {
          select = { enable = false },
          move = { enable = false },
        },
      }
    end
  }
end
return M
