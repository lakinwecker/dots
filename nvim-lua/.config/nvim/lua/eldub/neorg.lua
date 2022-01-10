M = {}
function M.init(use)
  use {
    "nvim-neorg/neorg",
    config = function()
    end,
    requires = "nvim-lua/plenary.nvim"
  }
end
return M
