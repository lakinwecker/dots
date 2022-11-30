M = {}
function M.init(use)
  use({
    "NTBBloodbath/zig-tools.nvim",
    -- Load zig-tools.nvim only in Zig buffers
    ft = "zig",
    config = function()
      -- Initialize with default config
      require("zig-tools").setup()
    end,
    requires = {
      {
        "akinsho/toggleterm.nvim",
        config = function()
          require("toggleterm").setup()
        end,
      },
      {
        "nvim-lua/plenary.nvim",
        module_pattern = "plenary.*"
      }
    },
  })
end

return M
