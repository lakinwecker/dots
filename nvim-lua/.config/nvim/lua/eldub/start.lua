M = {}
function M.init(use)
	use({
		"glepnir/dashboard-nvim",
		config = function()
			local home = os.getenv("HOME")
			local db = require("dashboard")
			-- linux
			--db.preview_command = "viu-dashboard"
			--
			--db.preview_file_path = home .. "/personal/avatar/avatar_128.png"
			--db.preview_file_height = 40
			--db.preview_file_width = 40
			db.custom_center = {
				{
					icon = "  ",
					desc = "Last Session                             ",
					shortcut = "s",
					action = "SessionLoad",
				},
				{
					icon = "  ",
					desc = "Recents                                 ",
					action = "Telescope oldfiles",
					shortcut = "r",
				},
				{
					icon = "  ",
					desc = "Find  File                              ",
					action = "Telescope find_files find_command=rg,--hidden,--files",
					shortcut = "f",
				},
				{
					icon = "  ",
					desc = "File Browser                            ",
					action = "Telescope file_browser",
					shortcut = "b",
				},
				{
					icon = "  ",
					desc = "Find  word                              ",
					action = "Telescope live_grep",
					shortcut = "w",
				},
				{
					icon = "  ",
					desc = "Settings                                ",
					action = "Telescope find_files hidden=true path=" .. home .. "/dots",
					shortcut = "d",
				},
			}
		end,
	})
end

return M
