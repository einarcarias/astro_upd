return {
  "Bryley/neoai.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  event = {
    "BufRead",
  },
  cmd = {
    "NeoAI",
    "NeoAIOpen",
    "NeoAIClose",
    "NeoAIToggle",
    "NeoAIContext",
    "NeoAIContextOpen",
    "NeoAIContextClose",
    "NeoAIInject",
    "NeoAIInjectCode",
    "NeoAIInjectContext",
    "NeoAIInjectContextCode",
  },
  keys = {
    { "<leader>as", desc = "summarize text" },
    { "<leader>ag", desc = "generate git message" },
  },
  config = function()
    require("neoai").setup {
      -- Options go here
      models = {
        {
          name = "openai",
          model = "gpt-4-1106-preview",
          param = nil,
        },
      },
      open_ai = {
        api_key = {
          env = "OPENAI_API_KEY",
          value = "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",
          -- `get` is is a function that retrieves an API key, can be used to override the default method.
          -- get = function() ... end

          -- Here is some code for a function that retrieves an API key. You can use it with
          -- the Linux 'pass' application.
          -- get = function()
          --     local key = vim.fn.system("pass show openai/mytestkey")
          --     key = string.gsub(key, "\n", "")
          --     return key
          -- end,
        },
      },
      inject = {
        cutoff_width = 1000,
      },
      shortcuts = {
        {
          name = "textify",
          key = "<leader>as",
          desc = "fix text with AI",
          use_context = true,
          prompt = [[
                  Please rewrite the text to make it more readable, clear,
                  concise, and fix any grammatical, punctuation, or spelling
                  errors in en_GB. Write it in post-doctorate style but dont use uncommon words. 
                  Also, it must be in 3rd person. Preserve the latex notations used.
              ]],
          modes = { "v" },
          strip_function = nil,
        },
        {
          name = "gitcommit",
          key = "<leader>ag",
          desc = "generate git commit message",
          use_context = false,
          prompt = function()
            return [[
                      Using the following git diff generate a consise and
                      clear git commit message, with a short title summary
                      that is 75 characters or less:
                  ]] .. vim.fn.system "git diff --cached"
          end,
          modes = { "n" },
          strip_function = nil,
        },
      },
    }
  end,
}
