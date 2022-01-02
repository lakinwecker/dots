require("general").init()
require("ui").init()

-- TODO: figure this out/configure dap (Goes with the rust thingy)

require('packer').startup(function(use)
  -- Go Packers. Except for anti-vaxer Aaron Rodgers. Fuck him.
  use { 'wbthomason/packer.nvim' }

  -- These files are all located in lua/{name}.lua
  -- NOTE: be careful to anem them differently than the
  --       plugins they install
  local plugins = {
    -- Plugin management / Utils
    "plenary",
    -- Colors / Style
    "mydracula", "devicons", "treesitter", "blankline",
    -- Statuses / side bar info
    "mylualine", "mycokeline", "mygitsigns", "diffview",
    -- Collaboration
    "editorconfig", "toggleterm_and_lazygit",
    -- Language Servers/Support
    "mylspconfig", "dap", "rust", "elm", "jsts",
    -- Completion stuff
    "completion",
    -- Searching / Browsing etc.
    "tree", "telescope",
    -- Random Features
    "autopairs", "myundotree", "projectionist", "todotxt", "gitlinker",
    "gist", "vimvinegar",
    -- Writing
    "writing"
  }

  for _, plugin in ipairs(plugins) do
    require(plugin).init(use)
  end
end)

vim.o.guicursor = 'n-v-c-i-ci-sm-ve:block,r-cr-o:hor20'
vim.o.completeopt = 'menuone,preview,noinsert,noselect'

-- Below this are icp's keybindings
