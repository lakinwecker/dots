-- TODO: let's get some better elm settings
M = {}
function M.init(use)
  vim.cmd "autocmd Filetype elm setlocal ts=4 sts=4 sw=4"
end
return M
