return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    -- nice scrolling
  "karb94/neoscroll.nvim",
  event = "BufRead",
  config = function ()
    require('neoscroll').setup {}
  end
  },
  -- latex stuff
  {
    "jhofscheier/ltex-utils.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "nvim-telescope/telescope.nvim",
        "nvim-telescope/telescope-fzf-native.nvim", -- optional
    },
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        dictionary = {
            -- use vim internal dictionary to add unkown words
            use_vim_dict = true,
            -- show/suppress vim command output such as `spellgood` or `mkspell`
            vim_cmd_output = false,
        },

    },
config = function(opts)
      require("ltex-utils").setup(opts)
      require("lspconfig").ltex.setup({
        capabilities = require("lvim.lsp").common_capabilities(),
        on_init = require("lvim.lsp").common_on_init,
        on_attach = function(client, bufnr)
            require("ltex-utils").on_attach(bufnr)
            require("lvim.lsp").common_on_attach(client, bufnr)
        end,
        settings = {
            ltex = {
                language = "en-GB",
                diagnosticSeverity = "information",
                setenceCacheSize = 2000,
                additionalRules = {
                    enablePickyRules = true,
                    motherTongue = "en-GB",
                },
                trace = { server = "verbose" },
                -- dictionary = "~/.config/lvim/dict/", -- added global dictionary path
                completionEnabled = "true",
                checkFrequency = "edit",
                statusBarItem = "true",
            },
        },
      })
    end,
  },
}

