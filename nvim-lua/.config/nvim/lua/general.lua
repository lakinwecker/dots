M = {}
-- My General config
function M.Config ()
  --vim.o.runtimepath = "~/.config/nvim/"
  vim.o.modelines = 0
  vim.g.mapleader = ","
  -- TODO: vim.o.nowrap = true
end
return M
