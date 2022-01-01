M = {}
function M.init(use)
  use {
    'sindrets/diffview.nvim',
    cmd = 'DiffviewOpen',
    config = function()
      require('diffview').setup()
    end,
  }
end
return M
