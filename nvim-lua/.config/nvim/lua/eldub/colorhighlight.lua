M = {}
function M.init(use)
  use({
    "norcalli/nvim-colorizer.lua",
    config = function()
      vim.o.termguicolors = true
      require("colorizer").setup()
    end,
  })
end

return M
