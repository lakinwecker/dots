M = {}
function M.init(use)
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    event = 'BufRead',
    config = function()
      local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

      parser_configs.norg = {
          install_info = {
              url = "https://github.com/nvim-neorg/tree-sitter-norg",
              files = { "src/parser.c", "src/scanner.cc" },
              branch = "main"
          },
      }

      parser_configs.norg_meta = {
          install_info = {
              url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
              files = { "src/parser.c" },
              branch = "main"
          },
      }

      parser_configs.norg_table = {
          install_info = {
              url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
              files = { "src/parser.c" },
              branch = "main"
          },
      }
      require('nvim-treesitter.configs').setup {
        highlight = { enable = true },
        incremental_selection = { enable = true },
        indent = { enable = true },
        textobjects = {
          select = { enable = false },
          move = { enable = false },
        },
      }
      require('neorg').setup {
          -- Tell Neorg what modules to load
          load = {
              ["core.defaults"] = {}, -- Load all the default modules
              ["core.norg.concealer"] = {}, -- Allows for use of icons
              ["core.norg.dirman"] = { -- Manage your directories with Neorg
                  config = {
                      workspaces = {
                          my_workspace = "~/orgs"
                      }
                  }
              }
          },
      }
    end
  }
end
return M
