M = {}
function M.init_scala()
  print("---------------------------")
  local metals_config = require("metals").bare_config()
  metals_config.init_options.statusBarProvider = "on"
  require("metals").initialize_or_attach(metals_config)
end
function M.init(use)
  use {
    'scalameta/nvim-metals',
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      print("--------------------------------------------")
      vim.cmd [[augroup metals]]
      vim.cmd [[au!]]
      vim.cmd [[au FileType java,scala,sbt lua require("eldub.scala").init_scala()]]
      vim.cmd [[augroup end]]
    end
  }
end
return M
