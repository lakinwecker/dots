require("eldub.general").init()
require("eldub.uiconf").init()
require("eldub.lazy").init()
require("eldub.config").setup()

vim.cmd([[set backupcopy=yes]])

require("lazy").setup({
  spec = {
    { import = "eldub/util" },
    { import = "eldub/colors" },
    { "folke/neoconf.nvim",   cmd = "Neoconf" },
    "folke/neodev.nvim",
    { import = "eldub/ui" },
    { import = "eldub/treesitter" },
    { import = "eldub/editor" },
    { import = "eldub/coding" },
    { import = "eldub/lsp" },
    { import = "eldub/undotree" },
    { import = "eldub/headlines" },
    { import = "eldub/todos" },
    { import = "eldub/hover" }, -- Nicer hover panes
    { import = "eldub/neorg" },
    { import = "eldub/writing" },
    { import = "eldub/fs" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
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
