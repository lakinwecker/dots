return {

  -- snippets
  {
    "L3MON4D3/LuaSnip",
    build = (not jit.os:find("Windows"))
        and "echo -e 'NOTE: jsregexp is optional, so not a big deal if it fails to build\n'; make install_jsregexp"
      or nil,
    dependencies = {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
    opts = {
      history = true,
      delete_check_events = "TextChanged",
    },
    -- stylua: ignore
    keys = {
      {
        "<tab>",
        function()
          return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
        end,
        expr = true,
        silent = true,
        mode = "i",
      },
      { "<tab>",   function() require("luasnip").jump(1) end,  mode = "s" },
      { "<s-tab>", function() require("luasnip").jump(-1) end, mode = { "i", "s" } },
    },
  },

  -- auto completion
  { "ms-jpq/coq-nvim" },
  { "ms-jpq/coq.artifacts" },
  {
    "ms-jpq/coq.thirdparty",
    config = function(_) end,
  },

  -- auto pairs
  {
    "echasnovski/mini.pairs",
    event = "VeryLazy",
    config = function(_, opts)
      require("mini.pairs").setup(opts)
    end,
  },

  -- surround
  {
    "echasnovski/mini.surround",
    keys = function(_, keys)
      -- Populate the keys based on the user's options
      local plugin = require("lazy.core.config").spec.plugins["mini.surround"]
      local opts = require("lazy.core.plugin").values(plugin, "opts", false)
      local mappings = {
        { opts.mappings.add, desc = "Add surrounding", mode = { "n", "v" } },
        { opts.mappings.delete, desc = "Delete surrounding" },
        { opts.mappings.find, desc = "Find right surrounding" },
        { opts.mappings.find_left, desc = "Find left surrounding" },
        { opts.mappings.highlight, desc = "Highlight surrounding" },
        { opts.mappings.replace, desc = "Replace surrounding" },
        { opts.mappings.update_n_lines, desc = "Update `MiniSurround.config.n_lines`" },
      }
      mappings = vim.tbl_filter(function(m)
        return m[1] and #m[1] > 0
      end, mappings)
      return vim.list_extend(mappings, keys)
    end,
    opts = {
      mappings = {
        add = "gza", -- Add surrounding in Normal and Visual modes
        delete = "gzd", -- Delete surrounding
        find = "gzf", -- Find surrounding (to the right)
        find_left = "gzF", -- Find surrounding (to the left)
        highlight = "gzh", -- Highlight surrounding
        replace = "gzr", -- Replace surrounding
        update_n_lines = "gzn", -- Update `n_lines`
      },
    },
    config = function(_, opts)
      -- use gz mappings instead of s to prevent conflict with leap
      require("mini.surround").setup(opts)
    end,
  },

  -- comments
  { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true },
  {
    "echasnovski/mini.comment",
    event = "VeryLazy",
    opts = {
      hooks = {
        pre = function()
          require("ts_context_commentstring.internal").update_commentstring({})
        end,
      },
    },
    config = function(_, opts)
      require("mini.comment").setup(opts)
    end,
  },

  -- better text-objects
  {
    "echasnovski/mini.ai",
    -- keys = {
    --   { "a", mode = { "x", "o" } },
    --   { "i", mode = { "x", "o" } },
    -- },
    event = "VeryLazy",
    dependencies = { "nvim-treesitter-textobjects" },
    opts = function()
      local ai = require("mini.ai")
      return {
        n_lines = 500,
        custom_textobjects = {
          o = ai.gen_spec.treesitter({
            a = { "@block.outer", "@conditional.outer", "@loop.outer" },
            i = { "@block.inner", "@conditional.inner", "@loop.inner" },
          }, {}),
          f = ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }, {}),
          c = ai.gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }, {}),
        },
      }
    end,
    config = function(_, opts)
      require("mini.ai").setup(opts)
      -- register all text objects with which-key
      if require("eldub.lazyutil").has("which-key.nvim") then
        ---@type table<string, string|table>
        local i = {
          [" "] = "Whitespace",
          ['"'] = 'Balanced "',
          ["'"] = "Balanced '",
          ["`"] = "Balanced `",
          ["("] = "Balanced (",
          [")"] = "Balanced ) including white-space",
          [">"] = "Balanced > including white-space",
          ["<lt>"] = "Balanced <",
          ["]"] = "Balanced ] including white-space",
          ["["] = "Balanced [",
          ["}"] = "Balanced } including white-space",
          ["{"] = "Balanced {",
          ["?"] = "User Prompt",
          _ = "Underscore",
          a = "Argument",
          b = "Balanced ), ], }",
          c = "Class",
          f = "Function",
          o = "Block, conditional, loop",
          q = "Quote `, \", '",
          t = "Tag",
        }
        local a = vim.deepcopy(i)
        for k, v in pairs(a) do
          a[k] = v:gsub(" including.*", "")
        end

        local ic = vim.deepcopy(i)
        local ac = vim.deepcopy(a)
        for key, name in pairs({ n = "Next", l = "Last" }) do
          i[key] = vim.tbl_extend("force", { name = "Inside " .. name .. " textobject" }, ic)
          a[key] = vim.tbl_extend("force", { name = "Around " .. name .. " textobject" }, ac)
        end
        require("which-key").register({
          mode = { "o", "x" },
          i = i,
          a = a,
        })
      end
    end,
  },
  { "tikhomirov/vim-glsl" },
  { "gleam-lang/gleam.vim" },
  {
    "scalameta/nvim-metals",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "mfussenegger/nvim-dap",
        config = function(self, opts)
          -- Debug settings if you're using nvim-dap
          local dap = require("dap")

          dap.configurations.scala = {
            {
              type = "scala",
              request = "launch",
              name = "RunOrTest",
              metals = {
                runType = "runOrTestFile",
                --args = { "firstArg", "secondArg", "thirdArg" }, -- here just as an example
              },
            },
            {
              type = "scala",
              request = "launch",
              name = "Test Target",
              metals = {
                runType = "testTarget",
              },
            },
          }
        end,
      },
    },
    ft = { "scala", "sbt", "java" },
    opts = function()
      local metals_config = require("metals").bare_config()

      -- Example of settings
      metals_config.settings = {
        showImplicitArguments = true,
        excludedPackages = { "akka.actor.typed.javadsl", "com.github.swagger.akka.javadsl" },
      }

      -- *READ THIS*
      -- I *highly* recommend setting statusBarProvider to true, however if you do,
      -- you *have* to have a setting to display this in your statusline or else
      -- you'll not see any messages from metals. There is more info in the help
      -- docs about this
      -- metals_config.init_options.statusBarProvider = "on"

      -- Example if you are using cmp how to make sure the correct capabilities for snippets are set
      -- metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()

      metals_config.on_attach = function(client, bufnr)
        require("eldub.metals").init_scala()
        -- vim.cmd([[augroup metals]])
        -- vim.cmd([[au!]])
        -- vim.cmd([[au FileType java,scala,sbt lua ]])
        -- vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
        -- vim.cmd([[augroup end]])
        -- vim.keymap.set("n", "<Leader>f", function()
        -- vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
        -- end, { desc = "[lsp] format" })
        require("metals").setup_dap()

        -- LSP mappings
        -- map("n", "gD", vim.lsp.buf.definition)
        -- map("n", "K", vim.lsp.buf.hover)
        -- map("n", "gi", vim.lsp.buf.implementation)
        -- map("n", "gr", vim.lsp.buf.references)
        -- map("n", "gds", vim.lsp.buf.document_symbol)
        -- map("n", "gws", vim.lsp.buf.workspace_symbol)
        -- map("n", "<leader>cl", vim.lsp.codelens.run)
        -- map("n", "<leader>sh", vim.lsp.buf.signature_help)
        -- map("n", "<leader>rn", vim.lsp.buf.rename)
        -- map("n", "<leader>f", vim.lsp.buf.format)
        -- map("n", "<leader>ca", vim.lsp.buf.code_action)

        -- map("n", "<leader>ws", function()
        -- require("metals").hover_worksheet()
        -- end)

        -- all workspace diagnostics
        -- map("n", "<leader>aa", vim.diagnostic.setqflist)

        -- all workspace errors
        -- map("n", "<leader>ae", function()
        -- vim.diagnostic.setqflist({ severity = "E" })
        -- end)

        -- all workspace warnings
        -- map("n", "<leader>aw", function()
        -- vim.diagnostic.setqflist({ severity = "W" })
        -- end)

        -- buffer diagnostics only
        -- map("n", "<leader>d", vim.diagnostic.setloclist)

        -- map("n", "[c", function()
        -- vim.diagnostic.goto_prev({ wrap = false })
        -- end)

        -- map("n", "]c", function()
        -- vim.diagnostic.goto_next({ wrap = false })
        -- end)

        -- Example mappings for usage with nvim-dap. If you don't use that, you can
        -- skip these
        -- map("n", "<leader>dc", function()
        -- require("dap").continue()
        -- end)

        -- map("n", "<leader>dr", function()
        -- require("dap").repl.toggle()
        -- end)

        -- map("n", "<leader>dK", function()
        -- require("dap.ui.widgets").hover()
        -- end)

        -- map("n", "<leader>dt", function()
        -- require("dap").toggle_breakpoint()
        -- end)

        -- map("n", "<leader>dso", function()
        -- require("dap").step_over()
        -- end)

        -- map("n", "<leader>dsi", function()
        -- require("dap").step_into()
        -- end)

        -- map("n", "<leader>dl", function()
        -- require("dap").run_last()
        -- end)
      end

      return metals_config
    end,
    config = function(self, metals_config)
      local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = self.ft,
        callback = function()
          require("metals").initialize_or_attach(metals_config)
        end,
        group = nvim_metals_group,
      })
    end,
  },
  {
    "mhartington/formatter.nvim",
    config = function()
      local defaults = require("formatter.defaults")
      local util = require("formatter.util")

      -- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
      require("formatter").setup({
        -- Enable or disable logging
        logging = true,
        -- Set the log level
        log_level = vim.log.levels.WARN,
        -- All formatter configurations are opt-in
        filetype = {
          lua = { require("formatter.filetypes.lua").stylua },
          typescript = { require("formatter.filetypes.typescript").prettier },
          -- html = { require("formatter.filetypes.html").prettier },
          css = { require("formatter.filetypes.css").prettier },
          typescriptreact = { require("formatter.filetypes.typescriptreact").prettier },
          cpp = { require("formatter.filetypes.cpp").clangformat },
          python = { require("formatter.filetypes.python").black },
          -- scala = {
          -- You can also define your own configuration
          -- function()
          -- Full specification of configurations is down below and in Vim help
          -- files
          -- return {
          -- exe = "sbt scalafmt",
          -- args = {
          -- util.escape_path(util.get_current_buffer_file_path()),
          -- },
          -- }
          -- end,
          -- },
          -- Use the special "*" filetype for defining formatter configurations on
          -- any filetype
          ["*"] = {
            -- "formatter.filetypes.any" defines default configurations for any
            -- filetype
            require("formatter.filetypes.any").remove_trailing_whitespace,
          },
        },
      })
      vim.cmd([[augroup FormatAutogroup]])
      vim.cmd([[autocmd!]])
      vim.cmd([[autocmd BufWritePost * FormatWrite]])
      vim.cmd([[augroup end]])
    end,
  },
}
