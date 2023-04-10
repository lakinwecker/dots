M = {}

function M.init(n)
  -- vim.lsp.buf.format = { async = true }
  -- n("[c", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
  -- n("]c", "<cmd>lua vim.diagnostic.goto_next()<CR>")

  -- n("[c", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
  -- n("]c", "<cmd>Lspsaga diagnostic_jump_next<CR>")

  --n("K", "<cmd>lua vim.lsp.buf.hover()<CR>")
  -- n("<leader>br", "<cmd>lua vim.lsp.buf.references()<CR>")
  -- n("<space>?", "<cmd>lua vim.diagnostic.open_float()<CR>")
  -- n("<leader>bD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
  -- n("<leader>bd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  -- n("<leader>bi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  -- n("<leader>bt", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
  -- n("<leader>bk", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
  -- n("<leader>ba", "<cmd>lua vim.lsp.buf.code_action()<CR>")
  --n("<leader>bR", "<cmd>lua vim.lsp.buf.rename()<CR>")
  -- Rename
  -- n("<leader>bR", "<cmd>Lspsaga rename<CR>")
  -- n("<leader>F", "<cmd>lua vim.lsp.buf.format()<CR>")

  -- Lsp finder find the symbol definition implement reference
  -- if there is no implement it will hide
  -- when you use action in finder like open vsplit then you can
  -- use <C-t> to jump back
  -- n("gh", "<cmd>Lspsaga lsp_finder<CR>")
  -- Peek Definition
  -- you can edit the definition file in this flaotwindow
  -- also support open/vsplit/etc operation check definition_action_keys
  -- support tagstack C-t jump back
  -- n("gd", "<cmd>Lspsaga peek_definition<CR>")

  -- Code action
  -- keymap({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
  -- n("<leader>ca", "<cmd>Lspsaga code_action<CR>")

  -- Hover Doc
  -- n("K", "<cmd>Lspsaga hover_doc<CR>")
  -- n("<leader>o", "<cmd>Lspsaga outline<CR>")

  -- Only jump to error
  --n("[E", function()
  --require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
  --end)
  --n("]E", function()
  --require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
  --end)
  --n('<leader>F', '<cmd>FormatWrite<CR>')

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  --n('<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
  --n('<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
  --n('<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
  --n('<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>')
  --n('<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>')
end

return M
