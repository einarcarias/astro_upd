return{
  "jhofscheier/ltex-utils.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim",
      "nvim-telescope/telescope-fzf-native.nvim", -- optional
    },
    opts = {
      dictionary = {
        use_vim_dict = true,
      },
      ...-- what you have should be fine -> leave it unchanged
    },

}
  
