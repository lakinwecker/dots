M = {}
function M.init(use)
  use {
    'kyazdani42/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons').setup {
        override = {
          nim = { icon = '', color = '#ffe953', name = 'Nim', },
          packer = { icon = '', name = 'Packer', },
          default_icon = { icon = '', color = '#6d8086', name = 'Default', },
        },
        default = true,
      }
    end
  }
end
return M
