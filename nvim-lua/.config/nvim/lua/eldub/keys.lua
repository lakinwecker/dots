M = {}

local opts = function(noremap, silent)
  if noremap == nil then
    noremap = true
  end

  if silent == nil then
    silent = true
  end
  return { noremap = noremap, silent = silent }
end

local keymap = function(mode, pattern, command, noremap, silent)
  vim.api.nvim_set_keymap(mode, pattern, command, opts(noremap, silent))
end

local buf_keymap = function(bufnr, mode, pattern, command, noremap, silent)
  vim.api.nvim_buf_set_keymap(bufnr, mode, pattern, command, opts(noremap, silent))
end

function M.n(...)
  keymap("n", ...)
end

function M.i(...)
  keymap("i", ...)
end

function M.x(...)
  keymap("x", ...)
end

function M.v(...)
  keymap("v", ...)
end

function M.t(...)
  keymap("t", ...)
end

function M.buf_n(bufnr, ...)
  buf_keymap(bufnr, "n", ...)
end

function M.buf_i(bufnr, ...)
  buf_keymap(bufnr, "i", ...)
end

function M.buf_x(bufnr, ...)
  buf_keymap(bufnr, "x", ...)
end

function M.buf_v(bufnr, ...)
  buf_keymap(bufnr, "v", ...)
end

function M.buf_t(bufnr, ...)
  buf_keymap(bufnr, "t", ...)
end

return M
