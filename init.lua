return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin", -- remote to use
    channel = "stable", -- "stable" or "nightly"
    version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false, -- automatically quit the current session after a successful update
    remotes = { -- easily add new remotes to track
      --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
      --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
      --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    },
  },

  -- Set colorscheme to use
  colorscheme = "kanagawa",

  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },
  lsp = {
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
          -- "tex"
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },

    -- enable servers that you already have installed without mason
    servers = {
      -- "latexindent"
      -- "pyright"
      "ltex",
    },
    plugins = {
      "jhofscheier/ltex-utils.nvim",
    },

    config = {
      ltex = {
        -- on_attach = function(client, bufnr)
        --   -- your other on_attach code
        --   -- for example, set keymaps here, like
        --   -- vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
        --   -- (see below code block for more details)
        --   require("ltex-utils").on_attach(bufnr)
        -- end,
        settings = {
          ltex = {
            language = "en-GB",
            diagnosticSeverity = "information",
            disabledRules = { ["en-GB"] = { "OXFORD_SPELLING_Z_NOT_S" } },
            setenceCacheSize = 2000,
            additionalRules = {
              enablePickyRules = false,
              motherTongue = "en-GB",
            },
            trace = { server = "verbose" },
            -- dictionary = "~/.config/lvim/dict/", -- added global dictionary path
            completionEnabled = "true",
            checkFrequency = "edit",
            statusBarItem = "true",
            dictionary = {
              ["en-GB"] = { ":" .. vim.fn.stdpath "config" .. "/spell/en.utf-8.add" },
            },
          },
        },
      },
      -- texlab = {
      --   settings = {
      --     texlab = {
      --       auxDirectory = ".",
      --       bibtexFormatter = "texlab",
      --       build = {
      --         executable = "latexmk",
      --         args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
      --         forwardSearchAfter = true,
      --         onSave = true,
      --       },
      --       chktex = {
      --         onEdit = false,
      --         onOpenAndSave = true,
      --       },
      --       diagnosticsDelay = 300,
      --       formatterLineLength = 80,
      --       forwardSearch = {
      --         args = { "--synctex-forward", "%l:1:%f", "%p" },
      --         executable = "zathura",
      --         onSave = true,
      --       },
      --       latexFormatter = "latexindent",
      --       latexindent = {
      --         modifyLineBreaks = true,
      --       },
      --     },
      --   },
      -- },
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              extraEnv = { CARGO_PROFILE_RUST_ANALYZER_INHERITS = "dev" },
              extraArgs = { "--profile", "rust-analyzer" },
            },
          },
        },
      },
    },
  },

  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },

  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
  end,
}
