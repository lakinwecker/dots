M = {}
function M.init_scala()
  local metals = require("metals")
  local ide = require("eldub.ide")
  local map = require("eldub.keys")

  local config = metals.bare_config()
  config.init_options.statusBarProvider = "on"
  metals.initialize_or_attach(config)
  ide.init(map.n)
end

function M.init(use)
  use {
    'scalameta/nvim-metals',
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      vim.cmd [[augroup metals]]
      vim.cmd [[au!]]
      vim.cmd [[au FileType java,scala,sbt lua require("eldub.metals").init_scala()]]
      vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
      vim.cmd [[augroup end]]
    end
  }
end

return M
