M = {}
function M.init (use)
  use {
    'nvim-lualine/lualine.nvim',
    after = 'nvim-web-devicons',
    config = function()
      local function cokeline_visible()
        return (vim.opt.showtabline._value ~= 0)
      end
      local function cokeline_hidden()
        return (vim.opt.showtabline._value == 0)
      end
      local function filestatus()
        if vim.bo.modified then
          return '  '
        elseif vim.bo.readonly == true then
          return '  '
        else
          return '  '
        end
      end
      local function diff_source()
        local gitsigns = vim.b.gitsigns_status_dict
        if gitsigns then
          return {
            added = gitsigns.added,
            modified = gitsigns.changed,
            removed = gitsigns.removed,
          }
        end
      end
      local function lsp()
        local buf_client_names = {}
        for _, client in pairs(vim.lsp.buf_get_clients(0)) do
          table.insert(buf_client_names, client.name)
        end
        return table.concat(buf_client_names, ', ')
      end
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'dracula',
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
          disabled_filetypes = { 'NvimTree' },
        },
        sections = {
          lualine_a = {
            { 'mode', cond = cokeline_visible },
            { 'filetype', icon_only = true, colored = false, cond = cokeline_hidden },
            { 'filename', file_status = false, cond = cokeline_hidden },
            { filestatus, padding = 0, cond = cokeline_hidden },
          },
          lualine_b = { { 'b:gitsigns_head', icon = '' } },
          lualine_c = { { 'diff', source = diff_source, icon = '', color = { fg = '#f1502f' } } },
          lualine_x = {
            {
              'diagnostics',
              sources = { 'nvim_diagnostic' },
              symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
            },
            { lsp, icon = ' ' },
          },
          lualine_y = {
            'encoding',
            { 'fileformat', symbols = { unix = 'LF', dos = 'CRLF', mac = 'CR' } },
          },
          lualine_z = { 'location' },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        extensions = {},
      }
    end,
  }
end
return M
