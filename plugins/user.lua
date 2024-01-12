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
    config = function() require("neoscroll").setup {} end,
  },

  {
    "benfowler/telescope-luasnip.nvim",
    module = "telescope._extensions.luasnip", -- if you wish to lazy-load
  },
  {
    "jhofscheier/ltex-utils.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "nvim-telescope/telescope.nvim",
      -- "nvim-telescope/telescope-fzf-native.nvim", -- optional
    },
    opts = {
      dictionary = {
        use_vim_dict = true,
      },
    },
  },
}
