M = {}
function M.init(use)
  use {
    "mfussenegger/nvim-dap-python",
    config = function()
      local dap = require('dap')
      print(dap)
      dap.adapters.python = {
        type = 'executable';
        command = os.getenv('HOME') .. '/.virtualenvs/debugpy/bin/python';
        args = { '-m', 'debugpy.adapter' };
      }
      require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
    end
  }
end
return M
