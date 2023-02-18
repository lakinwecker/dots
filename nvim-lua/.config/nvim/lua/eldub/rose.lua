M = {}
function M.init(use)
  use({
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      require("rose-pine").setup()
      vim.cmd("colorscheme rose-pine")
    end,
  })
end

return M
