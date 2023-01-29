M = {}
function M.init(use)
  -- Lua
  use({
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup({
        window = {
          backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
          -- height and width can be:
          -- * an absolute number of cells when > 1
          -- * a percentage of the width / height of the editor when <= 1
          -- * a function that returns the width or the height
          width = 100, -- width of the Zen window
          height = 1, -- height of the Zen window
          -- by default, no options are changed for the Zen window
          -- uncomment any of the options below, or add other vim.wo options you want to apply
          options = {
            -- signcolumn = "no", -- disable signcolumn
            -- number = false, -- disable number column
            -- relativenumber = false, -- disable relative numbers
            -- cursorline = false, -- disable cursorline
            -- cursorcolumn = false, -- disable cursor column
            -- foldcolumn = "0", -- disable fold column
            -- list = false, -- disable whitespace characters
          },
        },
        plugins = {
          -- disable some global vim options (vim.o...)
          -- comment the lines to not apply the options
          options = {
            enabled = true,
            ruler = false, -- disables the ruler text in the cmd line area
            showcmd = false, -- disables the command in the last line of the screen
          },
          twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
          gitsigns = { enabled = false }, -- disables git signs
          tmux = { enabled = false }, -- disables the tmux statusline
          -- this will change the font size on kitty when in zen mode
          -- to make this work, you need to set the following kitty options:
          -- - allow_remote_control socket-only
          -- - listen_on unix:/tmp/kitty
          kitty = {
            enabled = false,
            font = "+4", -- font size increment
          },
        },
      })
    end,
  })

  -- vim.g.limelight_conceal_ctermfg = 240
  -- function! s:goyo_enter()
  -- Limelight
  -- silent !tmux set status off
  -- silent !tmux list-panes -F '\#F' | grep -q Z | tmux resize-pane -Z
  -- set noshowmode
  -- set noshowcmd
  -- set wrap
  -- set scrolloff=999
  -- endfunction
  -- let g:goyo_width = 90
  --
  -- function! s:goyo_leave()
  -- Limelight!
  -- silent !tmux set status on
  -- silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  -- set showmode
  -- set showcmd
  -- set nowrap
  -- set scrolloff=0
  -- endfunction

  -- augroup goyoactions
  -- au!
  -- autocmd! User GoyoEnter nested call <SID>goyo_enter()
  -- autocmd! User GoyoLeave nested call <SID>goyo_leave()
  -- augroup end
end

return M
