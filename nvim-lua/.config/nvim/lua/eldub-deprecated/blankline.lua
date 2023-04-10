M = {}
function M.init(use)
	use({
		"lukas-reineke/indent-blankline.nvim",
		event = "BufRead",
		config = function()
			vim.opt.list = true
			--vim.opt.listchars:append "space:⋅"
			--vim.opt.listchars:append "eol:↴"
			require("indent_blankline").setup({
				char = "┊",
				use_treesitter = true,
				show_end_of_line = true,
				show_current_context = true,
				show_current_context_start = true,
				show_first_indent_level = false,
				show_trailing_blankline_indent = true,
				filetype_exclude = { "help", "dashboard" },
			})
		end,
	})
end

return M
