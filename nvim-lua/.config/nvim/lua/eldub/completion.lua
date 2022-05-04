-- This is a bunch of stuff I'm keeping from icp because
-- I have no idea how it all works.
-- I don't want snippets, so I'd like to remove them if I can,
-- but I need to figure that all out
-- TODO: remove snippets
M = {}
function M.init(use)
  use {
    'L3MON4D3/LuaSnip',
    config = function()
      local ls = require('luasnip')
      ls.config.set_config {
        history = true,
        updateevents = 'TextChanged,TextChangedI',
      }
      require('luasnip/loaders/from_vscode').load {
        include = { 'lua', 'python' },
      }
    end,
  }
  use { 'saadparwaiz1/cmp_luasnip' }
  use { 'rafamadriz/friendly-snippets', event = 'InsertEnter' }
  use { 'hrsh7th/cmp-nvim-lsp', event = 'BufReadPre' }
  use { 'kdheepak/cmp-latex-symbols' }
  --use { 'hrsh7th/cmp-buffer' }
  --use { 'hrsh7th/cmp-path' }
  --use { 'hrsh7th/cmp-cmdline' }
  --use { 'hrsh7th/nvim-cmp' }
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      local luasnip = require('luasnip')
      local cmp = require('cmp')
      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = {
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif require('luasnip').expand_or_jumpable() then
              vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
            else
              fallback()
            end
          end,
          ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif require('luasnip').jumpable(-1) then
              vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
            else
              fallback()
            end
          end,
          ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
          ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
          ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
          }),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        },
        sources = {
          { name = 'nvim_lsp' },
          { name = 'latex_symbols' },
        },
      }
    end,
  }
  use { 'hrsh7th/cmp-nvim-lua' }
end
return M
