return {
  -- Lazy manages itself
  { "folke/lazy.nvim" },

  -- Themes
  { "dracula/vim" },
  { "haishanh/night-owl.vim" },

  -- Files and trees
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- Fuzzy Finders
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- Git
  { "tpope/vim-fugitive" },
  { "sindrets/diffview.nvim" },

  -- LSP + Autocomplete
  { "stevearc/aerial.nvim" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "neovim/nvim-lspconfig" },

  -- { "nvimdev/lspsaga.nvim" },

  -- Terminal
  { "akinsho/toggleterm.nvim", version = "*" },

  -- Notes
  { "zk-org/zk-nvim" },

  -- UI
  { "Saghen/blink.nvim" },
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'}
}

