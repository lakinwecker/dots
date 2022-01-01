M = {}
local map = require("keys")

function M.init(use, map)
  use {
    'kyazdani42/nvim-tree.lua',
    cmd = { 'NvimTreeToggle', 'NvimTreeFocus' },
    config = function()
      require('nvim-tree').setup {
        git = {
          enable = false,
        },
        view = {
          side = 'right',
          auto_resize = true,
        },
      }
    end,
  }

  local map = require("keys")
  map.n('<C-n>', ':NvimTreeToggle<CR>')
  map.n('<C-b>', ':NvimTreeFocus<CR>')

  map.i('<C-n>', ':NvimTreeToggle<CR>')
  map.i('<C-b>', ':NvimTreeFocus<CR>')
end


return M
