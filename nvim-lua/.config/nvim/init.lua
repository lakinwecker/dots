require("general").Config()

-- TODO: figure this out/configure dap (Goes with the rust thingy)

require('packer').startup(function(use)
  -- Go Packers. Except for anti-vaxer Aaron Rodgers. Fuck him.
  use { 'wbthomason/packer.nvim' }

  -- These files are all located in lua/{name}.lua
  local plugins = {
    -- Plugin management / Utils
    "plenary",
    -- Colors / Style
    "mydracula", "devicons", "treesitter", "blankline",
    -- Statuses / side bar info
    "mylualine", "mycokeline", "mygitsigns", "diffview",
    -- Collaboration
    "editorconfig", "toggleterm_and_lazygit"
    -- Language Servers/Support
    "lspconfig", "dap", "rust"
    -- Completion stuff
    "completion",
    -- Searching / Browsing etc.
    "tree", "telescope",
    -- Random Features
    "autopairs", "myundotree", "projectionist", "todotxt", "gitlinker"
    -- Writing
    "writing"
  }

  for _, plugin in ipairs(plugins) do
    require(plugin).init(use)
  end
end)

vim.o.guicursor = 'n-v-c-i-ci-sm-ve:block,r-cr-o:hor20'
vim.o.completeopt = 'menuone,preview,noinsert,noselect'
vim.o.clipboard = 'unnamedplus'
vim.o.hlsearch = true
vim.o.cursorline = true
vim.o.mouse = ''
vim.o.breakindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.showmode = false
vim.o.updatetime = 250
vim.bo.undofile = true
vim.wo.signcolumn = 'yes:1'
vim.wo.number = true
vim.opt.fillchars = vim.opt.fillchars + 'diff:╱'
-- }}}
-- {{{ autocommands
-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

vim.cmd [[
  augroup VertHelp
    autocmd!
    autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | nnoremap <buffer> q :q<cr> | endif
  augroup end
]]
--Remap for dealing with word wrap
vim.api.nvim_set_keymap('', 'j', 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
vim.api.nvim_set_keymap('', 'k', 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })
vim.api.nvim_set_keymap('', '<Down>', 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
vim.api.nvim_set_keymap('', '<Up>', 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })

vim.api.nvim_set_keymap('n', '<Tab>', '<Plug>(cokeline-focus-next)', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<Plug>(cokeline-focus-prev)', {})


-- Below this are icp's keybindings
--map('n', '<Esc>', ':noh <CR>', noReSilent)
--map('n', '<C-s>', ':w<CR>', noReSilent)
--map('n', '<C-h>', '<C-w>h', noReSilent)
--map('n', '<C-j>', '<C-w>j', noReSilent)
--map('n', '<C-k>', '<C-w>k', noReSilent)
--map('n', '<C-l>', '<C-w>l', noReSilent)
--map('n', '<C-x>', ':bdelete<CR>', noReSilent)
--map('n', '<M-k>', '<Esc>:m .-2<CR>', noReSilent)
--map('n', '<M-j>', '<Esc>:m .+1<CR>', noReSilent)
--map('n', '<C-Left>', ':vertical resize -2<CR>', noReSilent)
--map('n', '<C-Right>', ':vertical resize +2<CR>', noReSilent)

--map('i', '<C-s>', '<ESC>:w<CR>', noReSilent)
--map('i', '<M-j>', '<Esc>:m .+1<CR>==gi', noReSilent)
--map('i', '<M-k>', '<Esc>:m .-2<CR>==gi', noReSilent)

--map('x', '<M-j>', ":m '>+1<CR>gv-gv", noReSilent)
--map('x', '<M-k>', ":m '<-2<CR>gv-gv", noReSilent)

--map('v', '<', '<gv', noReSilent)
--map('v', '>', '>gv', noReSilent)

--local Terminal  = require('toggleterm.terminal').Terminal
--local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction='float' })

--local _lazygit_toggle = function()
  --lazygit:toggle()
--end
--map('n', '<leader>ti', [[ <cmd>lua _lazygit_toggle()<CR> ]], noReSilent)
