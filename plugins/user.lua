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
  event = "BufRead"
  config = function ()
    require('neoscroll').setup {}
  end
  },
--   {
--   "lervag/vimtex",
--   lazy = false, -- lazy-loading will disable inverse search
--   config = function()
--     vim.api.nvim_create_autocmd({ "FileType" }, {
--       group = vim.api.nvim_create_augroup("lazyvim_vimtex_conceal", { clear = true }),
--       pattern = { "bib", "tex" },
--       callback = function()
--         vim.wo.conceallevel = 2
--       end,
--     })
--
--     vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
--     vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
--   end,
-- },
}

