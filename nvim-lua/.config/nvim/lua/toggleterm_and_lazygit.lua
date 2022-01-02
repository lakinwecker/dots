M = {}
function M.init(use)
  use {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup{}
    end,
  }
  local map = require("keys")
  local Terminal  = require('toggleterm.terminal').Terminal
  local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction='float' })

  map.n('<leader>ti', "<cmd>lua lazygit:toggle()<CR>")
end
return M
