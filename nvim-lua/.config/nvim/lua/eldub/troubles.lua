M = {}

function M.init(use)
  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
      local map = require("eldub.keys")
      map.n("<leader>xx", "<cmd>Trouble diagnostics toggle<CR>")
      map.n("<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>")
      map.n("<leader>xs", "<cmd>Trouble symbols toggle focus=false<cr>")
      map.n("<leader>xl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>")
      map.n("<leader>xL", "<cmd>Trouble loclist toggle<cr>")
      map.n("<leader>xQ", "<cmd>Trouble qflist toggle<cr>")
    end,
  })
end

return M
