M = {}
function M.init(use)
  use {
    'renerocksai/telekasten.nvim',
    event = 'InsertEnter',
    config = function()
      require('telekasten').setup({
        home = vim.fn.expand("~/school/obsidian-vault"), -- Put the name of your notes directory here
      })
      local map = require("eldub.keys")
      -- Launch panel if nothing is typed after <leader>z
      map.n("<leader>z", "<cmd>Telekasten panel<CR>")

      -- Most used functions
      map.n("<leader>zf", "<cmd>Telekasten find_notes<CR>")
      map.n("<leader>zg", "<cmd>Telekasten search_notes<CR>")
      map.n("<leader>zd", "<cmd>Telekasten goto_today<CR>")
      map.n("<leader>zz", "<cmd>Telekasten follow_link<CR>")
      map.n("<leader>zn", "<cmd>Telekasten new_note<CR>")
      map.n("<leader>zc", "<cmd>Telekasten show_calendar<CR>")
      map.n("<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
      map.n("<leader>zI", "<cmd>Telekasten insert_img_link<CR>")
      map.n("<leader>zi", "<cmd>Telekasten insert_link<CR>")
      map.n("<leader>zt", "<cmd>Telekasten show_tags<CR>")

      -- Call insert link automatically when we start typing a link
      map.i("i", "[[", "<cmd>Telekasten insert_link<CR>")
    end,
  }
end

return M
