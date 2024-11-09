M = {}

function M.init(use)
  use({ "simrat39/rust-tools.nvim" })
  use({ "williamboman/mason.nvim" })
  use({ "williamboman/mason-lspconfig.nvim" })
  use({
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.set_log_level("debug")
      require("mason").setup()
      require("mason-lspconfig").setup()

      local signs = { Error = " ", Warn = " ", Info = " ", Hint = " " }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
      end

      local on_attach = function(_, bufnr)
        local map = require("eldub.keys")
        local ide = require("eldub.ide")
        local n = function(...)
          map.buf_n(bufnr, ...)
        end
        -- Enable completion triggered by <c-x><c-o>
        vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
        ide.init(n)
      end

      --local lsp_installer_servers = require('nvim-lsp-installer.servers')
      local wanted_language_servers = {
        "rust_analyzer",
        "pyright",
        "lua_ls",
        "clangd",
        "tsserver",
        "elmls",
        "zls",
        "gopls",
        "taplo",
        "prismals",
      }
      for _, name in ipairs(wanted_language_servers) do
        require("lspconfig")[name].setup({
          on_attach = on_attach,
        })
      end

      local runtime_path = vim.split(package.path, ";")
      table.insert(runtime_path, "lua/?.lua")
      table.insert(runtime_path, "lua/?/init.lua")
    end,
  })

  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      require("lspsaga").setup({})
    end,
  })

  use({
    "ray-x/lsp_signature.nvim",
    config = function()
      local cfg = {
        bind = true, -- This is mandatory, otherwise border config won't get registered.
        handler_opts = {
          border = "rounded",
        },
      } -- add your config here
      require("lsp_signature").setup(cfg)
    end,
  })
  use({
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup({})
    end,
  })
end

return M
