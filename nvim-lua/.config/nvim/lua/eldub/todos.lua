return {
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
				--
			})
			local map = require("eldub.keys")
			map.n("<leader>xt", ":TodoTelescope keywords=TODO,FIX<CR>")
		end,
	}
