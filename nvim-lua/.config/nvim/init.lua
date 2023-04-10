require("eldub.general").init()
require("eldub.uiconf").init()
require("eldub.lazy").init()

require("lazy").setup({
  { import = "eldub/util" },
  { import = "eldub/colors" },
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  { import = "eldub/ui" },
  { import = "eldub/treesitter" },
  { import = "eldub/editor" },
  { import = "eldub/coding" },
  -- TODO: get the lsp stuff working
  -- TODO: unify keymaps, put them into a common directory.
  { import = "eldub/lsp" },
  { import = "eldub/telescope" },
  { import = "eldub/undotree" },
  { import = "eldub/headlines" },
  { import = "eldub/todos" },
  { import = "eldub/hover" }, -- Nicer hover panes
})

-- TODO: figure this out/configure dap (Goes with the rust thingy)

--require("packer").startup(function(use)
--  local plugins = {
--    -- Collaboration
--
--    -- Language Servers/Support
--    "dap",
--    "python",
--    "yuck",
--    "metals",
--    "formatting",
--    "rust",
--    "elm",
--    "jsts",
--    "troubles",
--    "hover",
--    "zig",
--    "colorhighlight",
--    "glsl",
--
--    -- Searching / Browsing etc.
--    "hop",
--
--    -- Life org
--    -- "neorg",
--
--    -- Random Features
--    -- "autopairs",
--    "gitlinker",
--    "gist",
--
--    -- Writing
--    "writing",
--  }
--
--  for _, plugin in ipairs(plugins) do
--    require(string.format("eldub.%s", plugin)).init(use)
--  end
--end)
