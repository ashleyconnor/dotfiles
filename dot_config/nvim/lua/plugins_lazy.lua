return {
  { "nvim-lua/plenary.nvim" },
  { "folke/which-key.nvim" },
  { "vim-airline/vim-airline" },
  { "nvim-telescope/telescope.nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  { "neovim/nvim-lspconfig",
    
    dependencies = {
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
  },
  { "folke/trouble.nvim" },
  { "nvim-treesitter/nvim-treesitter" },
  { "fatih/vim-go" },
}
