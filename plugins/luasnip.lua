return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets", "evesdropper/luasnip-latex-snippets.nvim" },
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    config = function(plugin, opts)
      -- include the default astronvim config that calls the setup call
      require "plugins.configs.luasnip"(plugin, opts)
      -- load snippets paths
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      --     -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      --     luasnip.filetype_extend("javascript", { "javascriptreact" })
      luasnip.config =
        {
          set_configs = {
            enable_autosnippets = true,
            store_selection_keys = "<Tab>",
          },
        }, require("luasnip.loaders.from_lua").lazy_load {
          -- this can be used if your configuration lives in ~/.config/nvim
          -- if your configuration lives in ~/.config/astronvim, the full path
          -- must be specified in the next line
          paths = { "~/.config/nvim/lua/user/snippets/" },
        }
    end,
  },
}
