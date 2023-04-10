return {
    {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      -- require("rose-pine").setup()
      -- vim.cmd("colorscheme rose-pine")
    end
  },
  {
    'Mofiqul/dracula.nvim',
    lazy = true,
    config = function()
      --vim.o.termguicolors = true
      -- show the '~' characters after the end of buffers
      --vim.g.dracula_show_end_of_buffer = true
      -- use transparent background
      --vim.g.dracula_transparent_bg = true
      -- set custom lualine background color
      --vim.g.dracula_lualine_bg_color = "#44475a"
      --vim.cmd('colorscheme dracula')
    end
  },
  {
    "mcchrish/zenbones.nvim",
    dependencies = { "rktjmp/lush.nvim", },
    config = function()
      vim.o.termguicolors = true
      -- vim.o.background = "dark"
      -- vim.cmd('colorscheme zenbones')
      vim.cmd('colorscheme rosebones')
    end
  },
  {
    'rakr/vim-one',
    lazy=true,
    config = function()
      --vim.o.termguicolors = true
      --vim.cmd('colorscheme one')
      --vim.cmd('set background=light')
    end
  },
  { "ellisonleao/gruvbox.nvim" },
  {
		"catppuccin/nvim",
        lazy=true,
		-- config = function()
		-- 	require("catppuccin").setup({
		-- 		dim_inactive = {
		-- 			enabled = true,
		-- 			shade = "dark",
		-- 			percentage = 0.05,
		-- 		},
		-- 		transparent_background = false,
		-- 		term_colors = true,
		-- 		compile = {
		-- 			enabled = false,
		-- 			path = vim.fn.stdpath("cache") .. "/catppuccin",
		-- 		},
		-- 		styles = {
		-- 			comments = { "italic", "bold" },
		-- 			conditionals = {},
		-- 			loops = {},
		-- 			functions = {},
		-- 			keywords = {},
		-- 			strings = {},
		-- 			variables = {},
		-- 			numbers = {},
		-- 			booleans = {},
		-- 			properties = {},
		-- 			types = {},
		-- 			operators = {},
		-- 		},
		-- 		integrations = {
		-- 			treesitter = true,
		-- 			native_lsp = {
		-- 				enabled = true,
		-- 				virtual_text = {
		-- 					errors = { "italic" },
		-- 					hints = { "italic" },
		-- 					warnings = { "italic" },
		-- 					information = { "italic" },
		-- 				},
		-- 				underlines = {
		-- 					errors = { "underline" },
		-- 					hints = { "underline" },
		-- 					warnings = { "underline" },
		-- 					information = { "underline" },
		-- 				},
		-- 			},
		-- 			coc_nvim = false,
		-- 			lsp_trouble = false,
		-- 			cmp = false,
		-- 			lsp_saga = false,
		-- 			gitgutter = false,
		-- 			gitsigns = true,
		-- 			leap = false,
		-- 			telescope = true,
		-- 			nvimtree = true,
		-- 			neotree = {
		-- 				enabled = false,
		-- 				show_root = true,
		-- 				transparent_panel = false,
		-- 			},
		-- 			dap = {
		-- 				enabled = false,
		-- 				enable_ui = false,
		-- 			},
		-- 			which_key = false,
		-- 			indent_blankline = {
		-- 				enabled = true,
		-- 				colored_indent_levels = true,
		-- 			},
		-- 			dashboard = true,
		-- 			neogit = false,
		-- 			vim_sneak = false,
		-- 			fern = false,
		-- 			barbar = false,
		-- 			bufferline = {
		-- 				enabled = true,
		-- 				italics = true,
		-- 				bolds = true,
		-- 			},
		-- 			markdown = true,
		-- 			lightspeed = false,
		-- 			ts_rainbow = false,
		-- 			hop = true,
		-- 			notify = true,
		-- 			telekasten = true,
		-- 			symbols_outline = true,
		-- 			mini = false,
		-- 			aerial = false,
		-- 			vimwiki = true,
		-- 			beacon = true,
		-- 			navic = {
		-- 				enabled = false,
		-- 				custom_bg = "NONE",
		-- 			},
		-- 			overseer = false,
		-- 		},
		-- 		color_overrides = {},
		-- 		highlight_overrides = {},
		-- 	})

		-- 	vim.o.termguicolors = true
		-- 	-- show the '~' characters after the end of buffers
		-- 	-- vim.g.dracula_show_end_of_buffer = true
		-- 	-- use transparent background
		-- 	-- vim.g.dracula_transparent_bg = true
		-- 	-- set custom lualine background color
		-- 	-- vim.g.dracula_lualine_bg_color = "#44475a"
		-- 	vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
		-- 	if os.getenv("theme") == "light" then
		-- 		vim.g.catppuccin_flavour = "latte" -- latte, frappe, macchiato, mocha
		-- 	end

		-- 	vim.cmd("colorscheme catppuccin")
		-- 	vim.cmd("Catppuccin mocha")

		-- 	local map = require("eldub.keys")
		-- 	map.n("<leader>cl", "<cmd>Catppuccin latte<CR>")
		-- 	map.n("<leader>cf", "<cmd>Catppuccin frappe<CR>")
		-- 	map.n("<leader>cc", "<cmd>Catppuccin macchiato<CR>")
		-- 	map.n("<leader>cm", "<cmd>Catppuccin mocha<CR>")
		-- end,
	}
}
