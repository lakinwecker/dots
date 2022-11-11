M = {}
function M.init(use)
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
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
  use { 'nvim-treesitter/nvim-treesitter-context' }
  use { 'nvim-treesitter/playground',
    config = function()
      require('nvim-treesitter.configs').setup {
        playground = {
          enable = true,
          disable = {},
          updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
          persist_queries = false, -- Whether the query persists across vim sessions
          keybindings = {
            toggle_query_editor = 'o',
            toggle_hl_groups = 'i',
            toggle_injected_languages = 't',
            toggle_anonymous_nodes = 'a',
            toggle_language_display = 'I',
            focus_language = 'f',
            unfocus_language = 'F',
            update = 'R',
            goto_node = '<cr>',
            show_help = '?',
          },
        }
      }

    end
  }
end

return M
