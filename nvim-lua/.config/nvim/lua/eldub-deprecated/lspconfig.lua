M = {}

function M.init(use)
  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls = require("null-ls")

      local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
      local event = "BufWritePre" -- or "BufWritePost"
      local async = eOrderingNamvent == "BufWritePost"

      local notify = vim.notify
      vim.notify = function(msg, ...)
        if msg:match("warning: multiple different client offset_encodings") then
          return
        end

        notify(msg, ...)
      end

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.diagnostics.eslint,
          -- null_ls.builtins.completion.spell,
        },
        on_init = function(new_client, _)
          new_client.offset_encoding = "utf-32"
        end,
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            vim.keymap.set("n", "<Leader>f", function()
              vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
            end, { buffer = bufnr, desc = "[lsp] format" })

            -- format on save
            vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
            vim.api.nvim_create_autocmd(event, {
              buffer = bufnr,
              group = group,
              callback = function()
                vim.lsp.buf.format({ bufnr = bufnr, async = async })
              end,
              desc = "[lsp] format on save",
            })
          end

          if client.supports_method("textDocument/rangeFormatting") then
            vim.keymap.set("x", "<Leader>f", function()
              vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
            end, { buffer = bufnr, desc = "[lsp] format" })
          end
        end,
      })
    end,
  })

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
