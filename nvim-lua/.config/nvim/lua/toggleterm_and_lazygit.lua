M = {}
function M.init(use)
  use {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup{}
    end,
  }
end
return M
