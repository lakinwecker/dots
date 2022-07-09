M = {}
function M.init(use)
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      local map = require("eldub.keys")
      map.n('<leader>h1', "<cmd>HopChar1<cr>")
      map.n('<leader>h2', "<cmd>HopChar2<cr>")
    end
  }
end


return M
