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

  _lazygit_toggle = function()
    lazygit:toggle()
  end
  map.n('<leader>ti', "<cmd>lua _lazygit_toggle()<CR>")
end
return M
