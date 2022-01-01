-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/lakin/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/lakin/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/lakin/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/lakin/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/lakin/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    after = { "nvim-cmp" },
    config = { "\27LJ\1\2÷\1\0\0\4\0\n\0\0164\0\0\0%\1\1\0>\0\2\0027\1\2\0007\1\3\0013\2\4\0>\1\2\0014\1\0\0%\2\5\0>\1\2\0027\1\6\0013\2\b\0003\3\a\0:\3\t\2>\1\2\1G\0\1\0\finclude\1\0\0\1\3\0\0\blua\vpython\tload luasnip/loaders/from_vscode\1\0\2\fhistory\2\17updateevents\29TextChanged,TextChangedI\15set_config\vconfig\fluasnip\frequire\0" },
    load_after = {
      ["friendly-snippets"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    after = { "cmp-path" },
    after_files = { "/home/lakin/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["cmp-nvim-lua"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    after = { "nvim-lspconfig" },
    after_files = { "/home/lakin/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after = { "cmp-buffer" },
    after_files = { "/home/lakin/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      cmp_luasnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/lakin/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["cmp-buffer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-rg"] = {
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/cmp-rg",
    url = "https://github.com/lukas-reineke/cmp-rg"
  },
  cmp_luasnip = {
    after = { "cmp-nvim-lua" },
    after_files = { "/home/lakin/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["crates.nvim"] = {
    config = { "\27LJ\1\0024\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\vcrates\frequire\0" },
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/crates.nvim",
    url = "https://github.com/saecki/crates.nvim"
  },
  ["diffview.nvim"] = {
    commands = { "DiffviewOpen" },
    config = { "\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rdiffview\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["dracula.nvim"] = {
    config = { "\27LJ\1\2‹\1\0\0\2\0\n\0\0214\0\0\0007\0\1\0)\1\2\0:\1\2\0004\0\0\0007\0\3\0)\1\2\0:\1\4\0004\0\0\0007\0\3\0)\1\2\0:\1\5\0004\0\0\0007\0\3\0%\1\a\0:\1\6\0004\0\0\0007\0\b\0%\1\t\0>\0\2\1G\0\1\0\24colorscheme dracula\bcmd\f#44475a\29dracula_lualine_bg_color\27dracula_transparent_bg\31dracula_show_end_of_buffer\6g\18termguicolors\6o\bvim\0" },
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["friendly-snippets"] = {
    after = { "LuaSnip" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitlinker.nvim"] = {
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/gitlinker.nvim",
    url = "https://github.com/ruifm/gitlinker.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\1\2œ\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\21filetype_exclude\1\2\0\0\thelp\1\0\5\25show_current_context\2\28show_first_indent_level\1\19use_treesitter\2\tchar\b‚îä#show_trailing_blankline_indent\1\nsetup\21indent_blankline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    after = { "nvim-cokeline" },
    config = { "\27LJ\1\2K\0\0\1\0\4\1\n4\0\0\0007\0\1\0007\0\2\0007\0\3\0\t\0\0\0T\0\2Ä)\0\1\0T\1\1Ä)\0\2\0H\0\2\0\v_value\16showtabline\bopt\bvim\0K\0\0\1\0\4\1\n4\0\0\0007\0\1\0007\0\2\0007\0\3\0\b\0\0\0T\0\2Ä)\0\1\0T\1\1Ä)\0\2\0H\0\2\0\v_value\16showtabline\bopt\bvim\0~\0\0\1\0\a\0\0194\0\0\0007\0\1\0007\0\2\0\15\0\0\0T\1\3Ä%\0\3\0H\0\2\0T\0\nÄ4\0\0\0007\0\1\0007\0\4\0\v\0\2\0T\0\3Ä%\0\5\0H\0\2\0T\0\2Ä%\0\6\0H\0\2\0G\0\1\0\n Ôò´ \n ÔÄ£ \rreadonly\n ÔëÑ \rmodified\abo\bvim|\0\0\3\0\b\0\0144\0\0\0007\0\1\0007\0\2\0\15\0\0\0T\1\bÄ3\1\4\0007\2\3\0:\2\3\0017\2\5\0:\2\6\0017\2\a\0:\2\a\1H\1\2\0G\0\1\0\fremoved\rmodified\fchanged\1\0\0\nadded\25gitsigns_status_dict\6b\bvimï\1\0\0\t\0\t\0\0212\0\0\0004\1\0\0004\2\1\0007\2\2\0027\2\3\2'\3\0\0>\2\2\0=\1\0\4D\4\5Ä4\6\4\0007\6\5\6\16\a\0\0007\b\6\5>\6\3\1B\4\3\3N\4˘4\1\4\0007\1\a\1\16\2\0\0%\3\b\0@\1\3\0\a, \vconcat\tname\vinsert\ntable\20buf_get_clients\blsp\bvim\npairs‰\a\1\0\v\0003\0U1\0\0\0001\1\1\0001\2\2\0001\3\3\0001\4\4\0004\5\5\0%\6\6\0>\5\2\0027\5\a\0053\6\15\0003\a\b\0003\b\t\0:\b\n\a3\b\v\0:\b\f\a3\b\r\0:\b\14\a:\a\16\0063\a\22\0002\b\5\0003\t\17\0:\0\18\t;\t\1\b3\t\19\0:\1\18\t;\t\2\b3\t\20\0:\1\18\t;\t\3\b3\t\21\0;\2\1\t:\1\18\t;\t\4\b:\b\23\a2\b\3\0003\t\24\0;\t\1\b:\b\25\a2\b\3\0003\t\26\0:\3\27\t3\n\28\0:\n\29\t;\t\1\b:\b\30\a2\b\3\0003\t\31\0003\n \0:\n!\t3\n\"\0:\n#\t;\t\1\b3\t$\0;\4\1\t;\t\2\b:\b%\a3\b&\0003\t'\0003\n(\0:\n#\t;\t\2\b:\b)\a3\b*\0:\b+\a:\a,\0063\a-\0002\b\0\0:\b\23\a2\b\0\0:\b\25\a3\b.\0:\b\30\a3\b/\0:\b%\a2\b\0\0:\b)\a2\b\0\0:\b+\a:\a0\0062\a\0\0:\a1\0062\a\0\0:\a2\6>\5\2\1G\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\0\3\bmac\aCR\bdos\tCRLF\tunix\aLF\1\2\0\0\15fileformat\1\2\0\0\rencoding\14lualine_x\1\0\1\ticon\tÔÇÖ \fsymbols\1\0\4\thint\tÔüª \tinfo\tÔÅö \twarn\tÔîß \nerror\tÔôò \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\14lualine_c\ncolor\1\0\1\afg\f#f1502f\vsource\1\2\1\0\tdiff\ticon\bÔû°\14lualine_b\1\2\1\0\20b:gitsigns_head\ticon\bÓú•\14lualine_a\1\0\0\1\0\1\fpadding\3\0\1\2\1\0\rfilename\16file_status\1\1\2\2\0\rfiletype\14icon_only\2\fcolored\1\tcond\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\2\0\0\rNvimTree\23section_separators\1\0\2\tleft\5\nright\5\25component_separators\1\0\2\tleft\5\nright\5\1\0\2\ntheme\fdracula\18icons_enabled\2\nsetup\flualine\frequire\0\0\0\0\0\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2<\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp_luasnip" },
    config = { "\27LJ\1\2-\0\1\3\1\2\0\5+\1\0\0007\1\0\0017\2\1\0>\1\2\1G\0\1\0\0¿\tbody\15lsp_expandí\2\0\1\a\1\f\0!+\1\0\0007\1\0\1>\1\1\2\15\0\1\0T\2\4Ä+\1\0\0007\1\1\1>\1\1\1T\1\23Ä4\1\2\0%\2\3\0>\1\2\0027\1\4\1>\1\1\2\15\0\1\0T\2\14Ä4\1\5\0007\1\6\0017\1\a\0014\2\5\0007\2\b\0027\2\t\2%\3\n\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\v\0>\1\3\1T\1\2Ä\16\1\0\0>\1\1\1G\0\1\0\1¿\5!<Plug>luasnip-expand-or-jump\27nvim_replace_termcodes\bapi\rfeedkeys\afn\bvim\23expand_or_jumpable\fluasnip\frequire\21select_next_item\fvisibleá\2\0\1\a\1\f\0\"+\1\0\0007\1\0\1>\1\1\2\15\0\1\0T\2\4Ä+\1\0\0007\1\1\1>\1\1\1T\1\24Ä4\1\2\0%\2\3\0>\1\2\0027\1\4\1'\2ˇˇ>\1\2\2\15\0\1\0T\2\14Ä4\1\5\0007\1\6\0017\1\a\0014\2\5\0007\2\b\0027\2\t\2%\3\n\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\v\0>\1\3\1T\1\2Ä\16\1\0\0>\1\1\1G\0\1\0\1¿\5\28<Plug>luasnip-jump-prev\27nvim_replace_termcodes\bapi\rfeedkeys\afn\bvim\rjumpable\fluasnip\frequire\21select_prev_item\fvisibleÕ\2\1\0\a\0\23\0)4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\0013\3\a\0003\4\5\0001\5\4\0:\5\6\4:\4\b\0033\4\v\0007\5\t\0017\5\n\5'\6¸ˇ>\5\2\2:\5\f\0047\5\t\0017\5\n\5'\6\4\0>\5\2\2:\5\r\0041\5\14\0:\5\15\0041\5\16\0:\5\17\4:\4\t\0032\4\5\0003\5\18\0;\5\1\0043\5\19\0;\5\2\0043\5\20\0;\5\3\0043\5\21\0;\5\4\4:\4\22\3>\2\2\0010\0\0ÄG\0\1\0\fsources\1\0\1\tname\arg\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\f<S-Tab>\0\n<Tab>\0\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\frequire\0" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cokeline"] = {
    config = { '\27LJ\1\2.\0\1\4\0\3\0\6%\1\0\0007\2\1\0007\2\2\2%\3\0\0$\1\3\1H\1\2\0\ticon\fdevicon\6 \29\0\1\2\0\1\0\0027\1\0\0H\1\2\0\18unique_prefix"\0\1\3\0\2\0\0047\1\0\0%\2\1\0$\1\2\1H\1\2\0\6 \rfilenamem\0\1\2\0\5\0\0157\1\0\0\15\0\1\0T\2\3Ä%\1\1\0H\1\2\0T\1\bÄ7\1\2\0\v\1\2\0T\1\3Ä%\1\3\0H\1\2\0T\1\2Ä%\1\4\0H\1\2\0G\0\1\0\n Ôò´ \n ÔÄ£ \16is_readonly\n ÔëÑ \16is_modifiedÙ\2\1\0\5\0\24\0#4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0013\2\a\0003\3\6\0:\3\b\0023\3\t\0:\3\n\2:\2\v\0012\2\5\0003\3\r\0001\4\f\0:\4\14\3;\3\1\0023\3\16\0001\4\15\0:\4\14\0033\4\17\0:\4\18\3;\3\2\0023\3\20\0001\4\19\0:\4\14\3;\3\3\0023\3\22\0001\4\21\0:\4\14\3;\3\4\2:\2\23\1>\0\2\1G\0\1\0\15components\1\0\0\0\1\0\0\0\ahl\1\0\1\nstyle\tbold\1\0\0\0\ttext\1\0\0\0\15default_hl\14unfocused\1\0\2\abg\f#2a273f\afg\f#817c9c\ffocused\1\0\0\1\0\2\abg\f#393552\afg\f#e0def4\fbuffers\1\0\1\25new_buffers_position\tnext\1\0\1!show_if_buffers_are_at_least\3\2\nsetup\rcokeline\frequire\0' },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/nvim-cokeline",
    url = "https://github.com/noib3/nvim-cokeline"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-fzf"] = {
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/nvim-fzf",
    url = "https://github.com/vijaymarupudi/nvim-fzf"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\2ˇ\1\0\0\a\2\v\0\0312\0\0\0+\1\0\0\a\1\0\0T\1\21Ä4\1\1\0%\2\2\0>\1\2\0027\1\3\0013\2\b\0004\3\4\0007\3\5\3%\4\6\0+\5\1\0\16\6\5\0007\5\a\5>\5\2\2\16\6\0\0>\3\4\2:\3\t\2>\1\2\1+\1\1\0\16\2\1\0007\1\n\1>\1\2\1T\1\5Ä+\1\1\0\16\2\1\0007\1\3\1\16\3\0\0>\1\3\1G\0\1\0\a¿\t¿\19attach_buffers\21requested_server\1\0\0\24get_default_options\nforce\20tbl_deep_extend\bvim\nsetup\15rust-tools\frequire\18rust_analyzer∞\4\1\0\r\0\27\0A3\0\0\0004\1\1\0\16\2\0\0>\1\2\4D\4\fÄ%\6\2\0\16\a\4\0$\6\a\0064\a\3\0007\a\4\a7\a\5\a\16\b\6\0003\t\6\0:\5\a\t:\6\b\t:\6\t\t>\a\3\1B\4\3\3N\4Ú4\1\n\0%\2\v\0>\1\2\0023\2\f\0004\3\r\0\16\4\2\0>\3\2\4T\6\19Ä7\b\14\1\16\t\a\0>\b\2\3\15\0\b\0T\n\fÄ\16\v\t\0007\n\15\t1\f\16\0>\n\3\1\16\v\t\0007\n\17\t>\n\2\2\14\0\n\0T\n\3Ä\16\v\t\0007\n\18\t>\n\2\0010\b\0Ä0\6\0ÄA\6\3\3N\6Î4\3\3\0007\3\19\0034\4\20\0007\4\21\4%\5\22\0>\3\3\0024\4\23\0007\4\24\4\16\5\3\0%\6\25\0>\4\3\0014\4\23\0007\4\24\4\16\5\3\0%\6\26\0>\4\3\1G\0\1\0\19lua/?/init.lua\14lua/?.lua\vinsert\ntable\6;\tpath\fpackage\nsplit\finstall\17is_installed\0\ron_ready\15get_server\vipairs\1\5\0\0\18rust_analyzer\fpyright\16sumneko_lua\vclangd\31nvim-lsp-installer.servers\frequire\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\bvim\19DiagnosticSign\npairs\1\0\4\tHint\tÔüª \tInfo\tÔÅö \nError\tÔôò \tWarn\tÔîß \0" },
    load_after = {
      ["cmp-nvim-lsp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFocus" },
    config = { "\27LJ\1\2}\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\tview\1\0\2\16auto_resize\2\tside\nright\bgit\1\0\0\1\0\1\venable\1\nsetup\14nvim-tree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2ı\1\0\0\4\0\16\0\0194\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\0013\2\b\0:\2\t\0013\2\v\0003\3\n\0:\3\f\0023\3\r\0:\3\14\2:\2\15\1>\0\2\1G\0\1\0\16textobjects\tmove\1\0\1\venable\1\vselect\1\0\0\1\0\1\venable\1\vindent\1\0\1\venable\2\26incremental_selection\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    after = { "lualine.nvim" },
    loaded = true,
    only_config = true
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\1\2¨\1\0\0\5\0\f\0\0194\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\b\0003\2\6\0003\3\4\0003\4\3\0:\4\5\3:\3\a\2:\2\t\1>\0\2\0014\0\0\0%\1\1\0>\0\2\0027\0\n\0%\1\v\0>\0\2\1G\0\1\0\bfzf\19load_extension\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\1\0\2\n<C-u>\1\n<C-d>\1\nsetup\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo.txt-vim"] = {
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/todo.txt-vim",
    url = "https://github.com/freitass/todo.txt-vim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\1\2<\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-projectionist"] = {
    loaded = true,
    path = "/home/lakin/.local/share/nvim/site/pack/packer/start/vim-projectionist",
    url = "https://github.com/tpope/vim-projectionist"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^telescope"] = "telescope.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\1\2ı\1\0\0\4\0\f\0\0154\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\n\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\0023\3\b\0:\3\t\2:\2\v\1>\0\2\1G\0\1\0\roverride\1\0\1\fdefault\2\17default_icon\1\0\3\ncolor\f#6d8086\ticon\bÔúô\tname\fDefault\vpacker\1\0\2\tname\vPacker\ticon\bÔë™\bnim\1\0\0\1\0\3\ncolor\f#ffe953\ticon\bÔö§\tname\bNim\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: dracula.nvim
time([[Config for dracula.nvim]], true)
try_loadstring("\27LJ\1\2‹\1\0\0\2\0\n\0\0214\0\0\0007\0\1\0)\1\2\0:\1\2\0004\0\0\0007\0\3\0)\1\2\0:\1\4\0004\0\0\0007\0\3\0)\1\2\0:\1\5\0004\0\0\0007\0\3\0%\1\a\0:\1\6\0004\0\0\0007\0\b\0%\1\t\0>\0\2\1G\0\1\0\24colorscheme dracula\bcmd\f#44475a\29dracula_lualine_bg_color\27dracula_transparent_bg\31dracula_show_end_of_buffer\6g\18termguicolors\6o\bvim\0", "config", "dracula.nvim")
time([[Config for dracula.nvim]], false)
-- Config for: crates.nvim
time([[Config for crates.nvim]], true)
try_loadstring("\27LJ\1\0024\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\vcrates\frequire\0", "config", "crates.nvim")
time([[Config for crates.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\1\2<\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd lualine.nvim ]]

-- Config for: lualine.nvim
try_loadstring("\27LJ\1\2K\0\0\1\0\4\1\n4\0\0\0007\0\1\0007\0\2\0007\0\3\0\t\0\0\0T\0\2Ä)\0\1\0T\1\1Ä)\0\2\0H\0\2\0\v_value\16showtabline\bopt\bvim\0K\0\0\1\0\4\1\n4\0\0\0007\0\1\0007\0\2\0007\0\3\0\b\0\0\0T\0\2Ä)\0\1\0T\1\1Ä)\0\2\0H\0\2\0\v_value\16showtabline\bopt\bvim\0~\0\0\1\0\a\0\0194\0\0\0007\0\1\0007\0\2\0\15\0\0\0T\1\3Ä%\0\3\0H\0\2\0T\0\nÄ4\0\0\0007\0\1\0007\0\4\0\v\0\2\0T\0\3Ä%\0\5\0H\0\2\0T\0\2Ä%\0\6\0H\0\2\0G\0\1\0\n Ôò´ \n ÔÄ£ \rreadonly\n ÔëÑ \rmodified\abo\bvim|\0\0\3\0\b\0\0144\0\0\0007\0\1\0007\0\2\0\15\0\0\0T\1\bÄ3\1\4\0007\2\3\0:\2\3\0017\2\5\0:\2\6\0017\2\a\0:\2\a\1H\1\2\0G\0\1\0\fremoved\rmodified\fchanged\1\0\0\nadded\25gitsigns_status_dict\6b\bvimï\1\0\0\t\0\t\0\0212\0\0\0004\1\0\0004\2\1\0007\2\2\0027\2\3\2'\3\0\0>\2\2\0=\1\0\4D\4\5Ä4\6\4\0007\6\5\6\16\a\0\0007\b\6\5>\6\3\1B\4\3\3N\4˘4\1\4\0007\1\a\1\16\2\0\0%\3\b\0@\1\3\0\a, \vconcat\tname\vinsert\ntable\20buf_get_clients\blsp\bvim\npairs‰\a\1\0\v\0003\0U1\0\0\0001\1\1\0001\2\2\0001\3\3\0001\4\4\0004\5\5\0%\6\6\0>\5\2\0027\5\a\0053\6\15\0003\a\b\0003\b\t\0:\b\n\a3\b\v\0:\b\f\a3\b\r\0:\b\14\a:\a\16\0063\a\22\0002\b\5\0003\t\17\0:\0\18\t;\t\1\b3\t\19\0:\1\18\t;\t\2\b3\t\20\0:\1\18\t;\t\3\b3\t\21\0;\2\1\t:\1\18\t;\t\4\b:\b\23\a2\b\3\0003\t\24\0;\t\1\b:\b\25\a2\b\3\0003\t\26\0:\3\27\t3\n\28\0:\n\29\t;\t\1\b:\b\30\a2\b\3\0003\t\31\0003\n \0:\n!\t3\n\"\0:\n#\t;\t\1\b3\t$\0;\4\1\t;\t\2\b:\b%\a3\b&\0003\t'\0003\n(\0:\n#\t;\t\2\b:\b)\a3\b*\0:\b+\a:\a,\0063\a-\0002\b\0\0:\b\23\a2\b\0\0:\b\25\a3\b.\0:\b\30\a3\b/\0:\b%\a2\b\0\0:\b)\a2\b\0\0:\b+\a:\a0\0062\a\0\0:\a1\0062\a\0\0:\a2\6>\5\2\1G\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\0\3\bmac\aCR\bdos\tCRLF\tunix\aLF\1\2\0\0\15fileformat\1\2\0\0\rencoding\14lualine_x\1\0\1\ticon\tÔÇÖ \fsymbols\1\0\4\thint\tÔüª \tinfo\tÔÅö \twarn\tÔîß \nerror\tÔôò \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\14lualine_c\ncolor\1\0\1\afg\f#f1502f\vsource\1\2\1\0\tdiff\ticon\bÔû°\14lualine_b\1\2\1\0\20b:gitsigns_head\ticon\bÓú•\14lualine_a\1\0\0\1\0\1\fpadding\3\0\1\2\1\0\rfilename\16file_status\1\1\2\2\0\rfiletype\14icon_only\2\fcolored\1\tcond\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\2\0\0\rNvimTree\23section_separators\1\0\2\tleft\5\nright\5\25component_separators\1\0\2\tleft\5\nright\5\1\0\2\ntheme\fdracula\18icons_enabled\2\nsetup\flualine\frequire\0\0\0\0\0\0", "config", "lualine.nvim")

vim.cmd [[ packadd nvim-cokeline ]]

-- Config for: nvim-cokeline
try_loadstring('\27LJ\1\2.\0\1\4\0\3\0\6%\1\0\0007\2\1\0007\2\2\2%\3\0\0$\1\3\1H\1\2\0\ticon\fdevicon\6 \29\0\1\2\0\1\0\0027\1\0\0H\1\2\0\18unique_prefix"\0\1\3\0\2\0\0047\1\0\0%\2\1\0$\1\2\1H\1\2\0\6 \rfilenamem\0\1\2\0\5\0\0157\1\0\0\15\0\1\0T\2\3Ä%\1\1\0H\1\2\0T\1\bÄ7\1\2\0\v\1\2\0T\1\3Ä%\1\3\0H\1\2\0T\1\2Ä%\1\4\0H\1\2\0G\0\1\0\n Ôò´ \n ÔÄ£ \16is_readonly\n ÔëÑ \16is_modifiedÙ\2\1\0\5\0\24\0#4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0013\2\a\0003\3\6\0:\3\b\0023\3\t\0:\3\n\2:\2\v\0012\2\5\0003\3\r\0001\4\f\0:\4\14\3;\3\1\0023\3\16\0001\4\15\0:\4\14\0033\4\17\0:\4\18\3;\3\2\0023\3\20\0001\4\19\0:\4\14\3;\3\3\0023\3\22\0001\4\21\0:\4\14\3;\3\4\2:\2\23\1>\0\2\1G\0\1\0\15components\1\0\0\0\1\0\0\0\ahl\1\0\1\nstyle\tbold\1\0\0\0\ttext\1\0\0\0\15default_hl\14unfocused\1\0\2\abg\f#2a273f\afg\f#817c9c\ffocused\1\0\0\1\0\2\abg\f#393552\afg\f#e0def4\fbuffers\1\0\1\25new_buffers_position\tnext\1\0\1!show_if_buffers_are_at_least\3\2\nsetup\rcokeline\frequire\0', "config", "nvim-cokeline")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewOpen lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'cmp-nvim-lsp'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'friendly-snippets', 'nvim-autopairs'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-treesitter', 'indent-blankline.nvim', 'gitsigns.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
