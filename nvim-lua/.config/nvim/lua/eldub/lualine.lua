M = {}
function M.init (use)
  use {
    'nvim-lualine/lualine.nvim',
    config = function()
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
      local function metals()
        return vim.g['metals_status'] or ""
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
            { 'mode' },
            { 'filetype', icon_only = true, colored = false },
            { 'filename', file_status = false },
            { filestatus, padding = 0 },
          },
          lualine_b = { { 'b:gitsigns_head', icon = '' } },
          lualine_c = { { 'diff', source = diff_source, icon = '', color = { fg = '#f1502f' } } },
          lualine_x = {
            {
              'diagnostics',
              sources = { 'nvim_diagnostic' },
              symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
            },
            { metals },
            { lsp, icon = ' ' },
          },
          lualine_y = { 'encoding' },
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
