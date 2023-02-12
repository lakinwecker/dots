M = {}
function M.init(use)
  use({
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({})
    end,
  })
  local map = require("eldub.keys")
  local Terminal = require("toggleterm.terminal").Terminal
  local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
  local genterm = Terminal:new({ cmd = "fish", hidden = true, size = 40, direction = "horizontal" })
  local btopterm = Terminal:new({ cmd = "btop", hidden = true, direction = "float" })

  _lazygit_toggle = function()
    lazygit:toggle()
  end
  _genterm_toggle = function()
    genterm:toggle()
  end
  _btop_toggle = function()
    btopterm:toggle()
  end
  map.n("<leader>ti", "<cmd>lua _lazygit_toggle()<CR>")
  map.n("<leader>tg", "<cmd>lua _genterm_toggle()<CR>")
  map.n("<leader>tb", "<cmd>lua _btop_toggle()<CR>")
  map.n("<C-h>", "<cmd>wincmd h<CR>")
  map.n("<C-j>", "<cmd>wincmd j<CR>")
  map.n("<C-k>", "<cmd>wincmd k<CR>")
  map.n("<C-l>", "<cmd>wincmd l<CR>")

  function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
    vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  end

  vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
end

return M
