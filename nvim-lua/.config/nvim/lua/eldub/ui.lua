M = {}
function M.init()
  --
  vim.wo.signcolumn = "yes:1"

  -- Ok, let' try this
  vim.o.mouse = "a"

  -- line-numbers :pandalove:
  vim.wo.number = true

  -- disable startup message
  vim.opt.shortmess:append({ I = true })
  -- don't give |ins-completion-menu| messages.
  vim.opt_global.shortmess:append({ c = true })
  vim.opt_global.shortmess:remove("F")

  -- hide mode display
  vim.o.showmode = false

  -- Always use clipboard.
  vim.o.clipboard = "unnamedplus"

  -- no line wrapping
  vim.wo.wrap = false

  -- highlight cursor
  vim.o.cursorline = true

  -- show invisibles
  vim.o.list = true
  vim.wo.listchars = "tab:>-,trail:⎵,extends:»,precedes:«,nbsp:⣿"

  -- tree style file explorer
  vim.g.netrw_liststyle = 3
  -- let g:netrw_browse_split=4
  vim.g.netrw_winsize = 25

  local map = require("eldub.keys")
  -- Clear search
  map.n("<Esc>", ":noh <CR>")
  map.n("<leader>n", ":nohlsearch<CR>")

  -- Kill current buffer
  map.n("<C-x>", ":bdelete<CR>")

  -- Allow alt+j/k to move lines up and down
  map.n("<M-k>", "<Esc>:m .-2<CR>")
  map.n("<M-j>", "<Esc>:m .+1<CR>")
  map.i("<M-j>", "<Esc>:m .+1<CR>==gi")
  map.i("<M-k>", "<Esc>:m .-2<CR>==gi")
  map.x("<M-j>", ":m '>+1<CR>gv-gv")
  map.x("<M-k>", ":m '<-2<CR>gv-gv")

  -- Meh
  map.v("<", "<gv")
  map.v(">", ">gv")
  -- Allow clipboard copy paste in neovim
  vim.g.neovide_input_use_logo = 1
  vim.api.nvim_set_keymap("", "<C-v>", "+p<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("!", "<C-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("t", "<C-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("v", "<C-v>", "<C-R>+", { noremap = true, silent = true })

  vim.opt.guifont = { "FiraCode Nerd Font", ":h10" }
  vim.g.neovide_cursor_vfx_mode = "railgun"
end

return M
