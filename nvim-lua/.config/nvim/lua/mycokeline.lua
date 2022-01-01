M = {}
function M.init(use) 
  use {
    'noib3/nvim-cokeline',
    after = 'lualine.nvim',
    config = function()
      require('cokeline').setup {
        show_if_buffers_are_at_least = 2,
        buffers = {
          new_buffers_position = 'next',
        },
        default_hl = {
          focused = { fg = '#e0def4', bg = '#393552' },
          unfocused = { fg = '#817c9c', bg = '#2a273f' },
        },
        components = {
          {
            text = function(buffer)
              return ' ' .. buffer.devicon.icon .. ' '
            end,
          },
          {
            text = function(buffer)
              return buffer.unique_prefix
            end,
            hl = { style = 'bold' },
          },
          {
            text = function(buffer)
              return buffer.filename .. ' '
            end,
          },
          {
            text = function(buffer)
              if buffer.is_modified then
                return '  '
              elseif buffer.is_readonly == true then
                return '  '
              else
                return '  '
              end
            end,
          },
        },
      }
    end,
  }
end
return M
