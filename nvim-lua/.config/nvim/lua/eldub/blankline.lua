M = {}
function M.init(use)
  use {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufRead',
    config = function()
      require('indent_blankline').setup {
        char = '┊',
        use_treesitter = true,
        show_current_context = true,
        show_first_indent_level = false,
        show_trailing_blankline_indent = false,
        filetype_exclude = { 'help' },
      }
    end
  }
end
return M
