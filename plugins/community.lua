return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  { import = "astrocommunity.editing-support.suda-vim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.vim-move" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.mini-surround" },
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.programming-language-support.csv-vim" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
  {
    "gbprod/yanky.nvim",
    keys = {
      {
        "<leader>py",
        function() require("telescope").extensions.yank_history.yank_history {} end,
        desc = "Open Yank History",
      },
    },
  },
  { --vimtex settings
    "lervag/vimtex",
    lazy = false, -- lazy-loading will disable inverse search
    config = function()
      vim.api.nvim_create_autocmd({ "FileType" }, {
        group = vim.api.nvim_create_augroup("lazyvim_vimtex_conceal", { clear = true }),
        pattern = { "bib", "tex" },
        callback = function() vim.wo.conceallevel = 2 end,
      })

      -- vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
      vim.g.vimtex_quickfix_method = vim.fn.executable "pplatex" == 1 and "pplatex" or "latexlog"
    end,
  },

  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { --copilot settings
    "zbirenbaum/copilot.lua",
    config = function()
      require("copilot").setup {

        filetypes = {
          tex = false,
        },
        -- suggestion = {
        --   enabled = true,
        --   auto_trigger = true,
        --   debounce = 75,
        -- },
      }
    end,
  },
}
