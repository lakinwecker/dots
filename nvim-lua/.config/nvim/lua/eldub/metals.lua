M = {}
function M.init_scala()
  local metals_config = require("metals").bare_config()
  metals_config.init_options.statusBarProvider = "on"
  require("metals").initialize_or_attach(metals_config)
  local ide = require("eldub.ide")
  local map = require("eldub.keys")
  local n = function(...)
    map.n( ...)
  end

  ide.init(n)
end
function M.init(use)
  use {
    'scalameta/nvim-metals',
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      vim.cmd [[augroup metals]]
      vim.cmd [[au!]]
      vim.cmd [[au FileType java,scala,sbt lua require("eldub.metals").init_scala()]]
      vim.cmd [[augroup end]]
    end
  }
end
return M
