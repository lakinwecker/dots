M = {}
-- My General config
function M.init ()
  vim.g.mapleader = ","

  -- Security
  vim.o.modelines = 0

  -- Maintain undo history between sessions
  vim.o.undofile = true
  vim.o.undodir = "/home/lakin/nvim/undo"

  -- Better display for messages
  vim.o.cmdheight = 2

  -- the \g flag on :s substituions by default
  vim.o.gdefault = true

  -- sane backspace
  vim.backspace = "indent,eol,start"

  -- Searching
  vim.o.hlsearch = true
  vim.o.incsearch = true
  vim.o.ignorecase = true

  -- Default indentation
  vim.o.shiftwidth = 4
  vim.o.tabstop = 4
  vim.o.softtabstop = 4
  vim.o.smarttab = true
  vim.o.expandtab = true

end
return M
