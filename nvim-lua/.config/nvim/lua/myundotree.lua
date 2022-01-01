M = {}
function M.init(use)
  use { 'mbbill/undotree' }
  local map = require("keys")
  map.n('<leader>u', ':UndotreeToggle<CR>')
  map.n('<leader>U', ':UndotreeFocus<CR>')
end
return M
