M = {}
function M.init(use)
  use {
    'vijaymarupudi/nvim-fzf',
    before = 'nvim-telescope/telescope-fzf-native.nvim',
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
  }
  use {
    'nvim-telescope/telescope.nvim',
    module = 'telescope',
    cmd = 'Telescope',
    config = function()
      require('telescope').setup {
        defaults = {
          mappings = {
            i = {
              ['<C-u>'] = false,
              ['<C-d>'] = false,
            },
          },
        },
      }
      require('telescope').load_extension('fzf')
    end,
  }

  local map = require("keys")
  -- Search within open buffers
  map.n('<leader>\'', "<cmd>lua require('telescope.builtin').buffers()<CR>")

  -- Find files relative to CWD
  map.n('<leader>;', "<cmd>lua require('telescope.builtin').git_files()<CR>")

  -- Search within the open buffer to find a piece of text
  map.n('<leader>.', "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>")

  -- Search for a given string using ripgrep relative to CWD
  map.n('<leader>*', "<cmd>lua require('telescope.builtin').grep_string()<CR>")

  -- Run an interactive grepping session using ripgrep
  map.n('<leader>/', "<cmd>lua require('telescope.builtin').live_grep()<CR>")

  --  These are from icp and I"m not sure if I'll use these
  map.n('<leader>sh', "<cmd>lua require('telescope.builtin').help_tags()<CR>")
  map.n('<leader>st', "<cmd>lua require('telescope.builtin').tags()<CR>")
  map.n('<leader>so', "<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>")
  map.n('<leader>?', "<cmd>lua require('telescope.builtin').oldfiles()<CR>")
end
return M
