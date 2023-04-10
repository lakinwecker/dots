return {
  "mbbill/undotree",
  config = function()
    local map = require("eldub.keys")
    map.n("<leader>u", ":UndotreeToggle<CR>")
    map.n("<leader>U", ":UndotreeFocus<CR>")
  end,
}
