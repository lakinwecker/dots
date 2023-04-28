return {
  "mbbill/undotree",
  config = function()
    local map = require("eldub.keys")
    map.n("<leader>ut", ":UndotreeToggle<CR>")
    map.n("<leader>Ut", ":UndotreeFocus<CR>")
  end,
}
