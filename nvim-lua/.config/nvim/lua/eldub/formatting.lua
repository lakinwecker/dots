M = {}
function M.init(use)
  use {
    'mhartington/formatter.nvim',
    config = function()
      -- Utilities for creating configurations
      local util = require "formatter.util"

      -- Provides the Format and FormatWrite commands
      require("formatter").setup {
        -- Enable or disable logging
        logging = true,
        -- Set the log level
        log_level = vim.log.levels.DEBUG,
        -- All formatter configurations are opt-in
        filetype = {
          -- Formatter configurations for filetype "lua" go here
          -- and will be executed in order
          scala = {
            -- You can also define your own configuration
            function()
              -- Full specification of configurations is down below and in Vim help
              -- files
              return {
                exe = "scalafmt",
                args = {
                  util.escape_path(util.get_current_buffer_file_path()),
                },
              }
            end
          },
          typescript = {
            require("formatter.defaults").prettier
          },
          -- Use the special "*" filetype for defining formatter configurations on
          -- any filetype
          ["*"] = {
            -- "formatter.filetypes.any" defines default configurations for any
            -- filetype
            require("formatter.filetypes.any").remove_trailing_whitespace
          }
        }
      }
    end
  }
end
return M
