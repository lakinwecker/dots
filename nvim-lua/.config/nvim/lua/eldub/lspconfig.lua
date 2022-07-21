M = {}

function M.init(use)

  use { 'simrat39/rust-tools.nvim' }
  use {
    'neovim/nvim-lspconfig',
    config = function()
      vim.lsp.set_log_level("debug")

      local signs = { Error = ' ', Warn = ' ', Info = ' ', Hint = ' ' }
      for type, icon in pairs(signs) do
        local hl = 'DiagnosticSign' .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
      end

      local lsp_installer_servers = require('nvim-lsp-installer.servers')
      local wanted_language_servers = {'rust_analyzer', 'pyright', 'sumneko_lua', 'clangd', 'tsserver'}
      for _, name in ipairs(wanted_language_servers) do
        local server_available, requested_server = lsp_installer_servers.get_server(name)
        if server_available then
            requested_server:on_ready(function ()
              local on_attach = function(_, bufnr)
                local map = require("eldub.keys")
                local ide = require("eldub.ide")
                local n = function(...)
                  map.buf_n(bufnr, ...)
                end
                -- Enable completion triggered by <c-x><c-o>
                vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
                ide.init(n)
              end
              local opts = {
                on_attach = on_attach,
                flags = {
                  debounce_text_changes = 150,
                },
                settings = {
                  ["rust-analyzer"] = {
                    completion = {
                      postfix = {
                        enable = false
                      }
                    },
                    checkOnSave = {
                      command = "clippy"
                    },
                  },
                  Lua = {
                    diagnostics = {
                      globals = {'vim'} -- allows vim settings
                    }
                  }
                },
              }
              if requested_server.name == 'rust_analyzer' then
                -- Initialize the LSP via rust-tools instead
                require('rust-tools').setup {
                  -- The "server" property provided in rust-tools setup function are the
                  -- settings rust-tools will provide to lspconfig during init.
                  --
                  -- We merge the necessary settings from nvim-lsp-installer (server:get_default_options())
                  -- with the user's own settings (opts).
                  server = vim.tbl_deep_extend(
                    "force",
                    requested_server:get_default_options(),
                    opts
                  ),
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
  use { 'williamboman/nvim-lsp-installer' }

-- TODO: Old commands I had that I haven't ported yet.
-- Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
-- inoremap <silent><expr> <TAB>
-- inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
-- inoremap <silent><expr> <c-space> coc#refresh()
-- inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
-- Remap keys for gotos
-- nmap <leader>ws <Plug>(coc-metals-expand-decoration)
-- nnoremap <silent> K :call <SID>show_documentation()<CR>
-- " Remap for rename current word
-- nmap <silent> <TAB> <Plug>(coc-range-select)
-- xmap <silent> <TAB> <Plug>(coc-range-select)
-- xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)
-- nnoremap <leader>cl :<C-u>call CocActionAsync('codeLensAction')<CR>
-- nnoremap <silent> <space>a  :<C-u>CocFzfList diagnostics<cr>
-- emap <silent> <space>e  :<C-u>CocFzfList extensions<cr>
-- nnoremap <silent> <space>c  :<C-u>CocFzfList commands<cr>
-- nnoremap <silent> <space>o  :<C-u>CocFzfList outline<cr>
-- nnoremap <silent> <space>s  :<C-u>CocFzfList -I symbols<cr>
-- -- nnoremap <silent> <space>j  :<C-u>CocNext<CR>
-- nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
-- nnoremap <silent> <space>p  :<C-u>CocListFzfResume<CR><Paste>
-- nnoremap <silent> <space>t :<C-u>CocCommand metals.tvp<CR>
-- nnoremap <silent> <space>tp :<C-u>CocCommand metals.tvp metalsPackages<CR>
-- nnoremap <silent> <space>tc :<C-u>CocCommand metals.tvp metalsCompile<CR>
-- nnoremap <silent> <space>tb :<C-u>CocCommand metals.tvp metalsBuild<CR>
-- nnoremap <silent> <space>tf :<C-u>CocCommand metals.revealInTreeView metalsPackages<CR>
end
return M
