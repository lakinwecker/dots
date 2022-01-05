M = {}

function M.init(use)
  use {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
      local map = require("eldub.keys")
      map.n("<leader>xx", "<cmd>TroubleToggle<CR>")
      map.n("<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>")
      map.n("<leader>xd", "<cmd>TroubleToggle document_diagnositics<CR>")
      map.n("<leader>x1", "<cmd>TroubleToggle quickfix<CR>")
      map.n("<leader>xl", "<cmd>TroubleToggle loclist<CR>")
      map.n("<leader>xr", "<cmd>TroubleToggle lsp_references<CR>")
    end
  }
end

return M
