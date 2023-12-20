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



}

