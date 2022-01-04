M = {}
function M.init(use)
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

  local map = require("eldub.keys")
  map.n('<C-n>', ':NvimTreeToggle<CR>')
  map.n('<C-b>', ':NvimTreeFocus<CR>')

  map.i('<C-n>', ':NvimTreeToggle<CR>')
  map.i('<C-b>', ':NvimTreeFocus<CR>')
end


return M
