-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = true, -- sets vim.opt.spell
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = true, -- sets vim.opt.wrap
    -- textwidth = 80, -- sets vim.opt.textwidth
    linebreak = true,
    breakindent = true,
    spellfile = vim.api.nvim_call_function("stdpath", { "config" }) .. "/spell/en.utf-8.add",
    spelllang = "en_gb",
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    maplocalleader = ",", -- set localleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    resession_enabled = false, -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
    -- vimtex settings
    vimtex_compiler_silent = true,
    vimtex_compiler_method = "latexmk",
    vimtex_compiler_latexmk = { options = { "-pdf", "-synctex=1", "-interaction=nonstopmode", "-shell-escape" } },
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
