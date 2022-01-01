M = {}
function M.init(use)
  vim.cmd("autocmd Filetype javascript setlocal ts=2 sts=2 sw=2")
  vim.cmd("autocmd Filetype typescript setlocal ts=2 sts=2 sw=2")
end
return M
