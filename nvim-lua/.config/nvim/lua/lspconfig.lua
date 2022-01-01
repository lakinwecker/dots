M = {}


function M.init(use)
  use {
    'neovim/nvim-lspconfig',
    after = 'cmp-nvim-lsp',
    config = function()
      local signs = { Error = ' ', Warn = ' ', Info = ' ', Hint = ' ' }
      for type, icon in pairs(signs) do
        local hl = 'DiagnosticSign' .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
      end

      local lsp_installer_servers = require('nvim-lsp-installer.servers')
      local wanted_language_servers = {'rust_analyzer', 'pyright', 'sumneko_lua', 'clangd'}
      for _, name in ipairs(wanted_language_servers) do
        local server_available, requested_server = lsp_installer_servers.get_server(name)
        if server_available then
            requested_server:on_ready(function ()
              local opts = {}
              if name == 'rust_analyzer' then
                -- Initialize the LSP via rust-tools instead
                require('rust-tools').setup {
                    -- The "server" property provided in rust-tools setup function are the
                    -- settings rust-tools will provide to lspconfig during init.            -- 
                    -- We merge the necessary settings from nvim-lsp-installer (server:get_default_options())
                    -- with the user's own settings (opts).
                    requested_server = vim.tbl_deep_extend("force", requested_server:get_default_options(), opts),
                }
                requested_server:attach_buffers()
              else
                requested_server:setup(opts)
              end
            end)
            if not requested_server:is_installed() then
              -- Queue the server to be installed
              requested_server:install()
            end
        end
      end

      local runtime_path = vim.split(package.path, ';')
      table.insert(runtime_path, 'lua/?.lua')
      table.insert(runtime_path, 'lua/?/init.lua')
    end,
  }
end
return M
