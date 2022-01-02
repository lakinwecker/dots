M = {}

function map(mode, pattern, command, noremap, silent)
  if noremap == nil then
    noremap = true
  end

  if silent == nil then
    silent = true
  end
  vim.api.nvim_set_keymap(mode, pattern, command, { noremap=noremap, silent=silent })
end


function M.n(pattern, command, noremap, silent)
  map('n', pattern, command, noremap, silent)
end

function M.i(pattern, command, noremap, silent)
  map('i', pattern, command, noremap, silent)
end

function M.x(pattern, command, noremap, silent)
  map('x', pattern, command, noremap, silent)
end

function M.v(pattern, command, noremap, silent)
  map('v', pattern, command, noremap, silent)
end

return M


