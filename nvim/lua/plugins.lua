local status, packer = pcall(require, "packer")
if not status then
  print("packer is not installed")
  return
end

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'onsails/lspkind-nvim'
  use {
    'dundalek/lazy-lsp.nvim',
    requires = { 'neovim/nvim-lspconfig' }
  }

  -- first we need to install the markown dependencies
  use({
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  })

  -- use 'glepnir/lspsaga.nvim' -- LSP UI
  use({
    'nvimdev/lspsaga.nvim',
    after = 'nvim-lspconfig',
  })

  -- autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'jose-elias-alvarez/null-ls.nvim'

  -- snippets
  use 'L3MON4D3/LuaSnip'

  -- colorizer the code like this #000000
  use 'norcalli/nvim-colorizer.lua'

  -- syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-ts-autotag'

  -- state line
  use 'nvim-lualine/lualine.nvim'

  -- buffer line
  use 'akinsho/nvim-bufferline.lua'

  -- file explorer
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- git
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'

  -- productivy
  use 'folke/zen-mode.nvim'
  use 'tpope/vim-commentary'
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
  }

  -- utilities
  use 'vim-utils/vim-man'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'MunifTanjim/prettier.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use({ "goolord/alpha-nvim" })
  use 'windwp/nvim-autopairs'

  -- themes
  use {
    'sainnhe/everforest',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
end)
