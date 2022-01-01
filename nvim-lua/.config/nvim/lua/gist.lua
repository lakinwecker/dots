M = {}
function M.init(use)
  use { "mattn/webapi-vim" }
  use { "mattn/gist-vim" }
  vim.g.gist_post_private = 1
end
return M
