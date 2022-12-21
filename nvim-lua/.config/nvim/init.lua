require("eldub.general").init()
require("eldub.ui").init()

-- TODO: figure this out/configure dap (Goes with the rust thingy)

require('packer').startup(function(use)
  use { 'wbthomason/packer.nvim' }

  -- These files are all located in lua/{name}.lua
  -- NOTE: be careful to anem them differently than the
  --       plugins they install
  local plugins = {
    -- Plugin management / Utils
    "plenary",
    -- Colors / Style
    -- "dracula",
    "catppuccin",
    -- "zenbones",
    -- "one",
    -- "gruvbox",
    "devicons",
    "treesitter",
    "blankline",

    -- Statuses / side bar info
    "lualine",
    "gitsigns",
    "diffview",

    -- Collaboration
    "editorconfig",
    "toggleterm_and_lazygit",

    -- Language Servers/Support
    "dap",
    "python",
    "yuck",
    "metals",
    "lspconfig",
    "formatting",
    "rust",
    "elm",
    "jsts",
    "troubles",
    "hover",
    "zig",

    -- Completion stuff
    -- "completion",
    "coq", -- Fast completion

    -- Searching / Browsing etc.
    "tree",
    "telescope",
    "hop",

    -- Life org
    "neorg",

    -- Random Features
    -- "autopairs",
    "undotree",
    "projectionist",
    "headlines",
    "gitlinker",
    "gist",
    "vimvinegar",

    -- Writing
    "writing"
  }

  for _, plugin in ipairs(plugins) do
    require(string.format("eldub.%s", plugin)).init(use)
  end
end)

local map = require("eldub.keys")
map.n("<leader>pc", ":PackerCompile<CR>")
map.n("<leader>ps", ":PackerSync<CR>")
map.n("<leader>pr", ":PackerClean<CR>")

-- TODO: figure out what these are for and then see if I want to use them or not.
vim.o.guicursor = 'n-v-c-i-ci-sm-ve:block,r-cr-o:hor20'
vim.o.completeopt = 'menuone,preview,noinsert,noselect'
