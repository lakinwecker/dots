M = {}
function M.init(use)
	use({
		"rmagatti/auto-session",
		config = function()
			require("auto-session").setup({
				log_level = "error",
				auto_session_suppress_dirs = { "~/", "~/work-repos", "~/school-repos", "~/personal-repos", "/" },
			})
		end,
	})
end

return M
