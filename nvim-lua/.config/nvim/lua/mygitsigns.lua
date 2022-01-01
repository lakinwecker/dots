M = {}
function M.init(use)
  use {
    'lewis6991/gitsigns.nvim',
    event = 'BufRead',
    config = function()
      require('gitsigns').setup()
    end,
  }
end
return M
