return {
    'lewis6991/hover.nvim',
    config = function()
      require('hover').setup{
        init = function()
          -- Require providers
          require('hover.providers.lsp')
          -- require('hover.providers.gh')
          -- require('hover.providers.man')
          -- require('hover.providers.dictionary')
        end,
        preview_opts = {
          border = 'single'
        },
        title = true
      }

      -- Setup keymaps
      --vim.keymap.set('n', 'lK', require('hover').hover, { desc='hover.nvim'         })
      --vim.keymap.set('n', 'gK', require('hover').hover_select, { desc='hover.nvim (select)' })
    end
  }
