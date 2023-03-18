M = {}
function M.init(use)
  use {
    'renerocksai/telekasten.nvim',
    event = 'InsertEnter',
    config = function()
      require('telekasten').setup({
        home = vim.fn.expand("~/school/obsidian-vault"), -- Put the name of your notes directory here
      })
    end,
  }
end

return M
