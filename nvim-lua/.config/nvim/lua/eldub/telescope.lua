return {
  {
    "nvim-telescope/telescope.nvim",
    module = "telescope",
    cmd = "Telescope",
    config = function()
      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<C-u>"] = false,
              ["<C-d>"] = false,
            },
          },
        },
        zoxide = {
          prompt_title = "[ Where to? ]",
          mappings = {
            default = {
              after_action = function(selection)
                print("Update to (" .. selection.z_score .. ") " .. selection.path)
              end,
            },
            ["<C-s>"] = {
              before_action = function(selection)
                print("before C-s")
              end,
              action = function(selection)
                vim.cmd("edit " .. selection.path)
              end,
            },
            -- Opens the selected entry in a new split
            ["<C-q>"] = { action = require("telescope._extensions.zoxide.utils").create_basic_command("split") },
          },
        },
        pickers = {
          buffers = {
            ignore_current_buffer = true,
            sort_mru = true,
          },
        },
      })
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("project")

      local map = require("eldub.keys")
      local builtin = require("telescope.builtin")

      -- Search within open buffers
      -- map.n("<leader>'", "<cmd>lua require('telescope.builtin').buffers({ sort_mru=true })<CR>")
      map.n("<leader>'", "<cmd>lua require('telescope.builtin').buffers()<CR>")

      -- Find files relative to CWD
      map.n("<leader>;", "<cmd>lua require('telescope.builtin').git_files()<CR>")

      -- Search within the open buffer to find a piece of text
      map.n("<leader>.", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>")

      -- Search for a given string using ripgrep relative to CWD
      map.n("<leader>*", "<cmd>lua require('telescope.builtin').grep_string()<CR>")

      -- Run an interactive grepping session using ripgrep
      map.n("<leader>/", "<cmd>lua require('telescope.builtin').live_grep()<CR>")

      --  These are from icp and I"m not sure if I'll use these
      map.n("<leader>sh", "<cmd>lua require('telescope.builtin').help_tags()<CR>")
      map.n("<leader>st", "<cmd>lua require('telescope.builtin').tags()<CR>")
      map.n("<leader>so", "<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>")
      map.n("<leader>?", "<cmd>lua require('telescope.builtin').oldfiles()<CR>")
      map.n("<leader>P", "<cmd>lua require('telescope').extensions.project.project()<CR>")
      -- map.n("<leader>z", "<cmd>lua require('telescope').extensions.zoxide.list()<CR>")
    end,
  },
}
