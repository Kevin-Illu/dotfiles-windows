local status, packer = pcall(require, "packer")
if not status then
  print("packer is not installed")
  return
end

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'jose-elias-alvarez/null-ls.nvim'
  use {
    'glepnir/lspsaga.nvim',
    opt = true,
    branch = 'main',
    event = 'LspAttach',
    requires = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
    }
  }

  -- autocomplete and snippets
  use 'L3MON4D3/LuaSnip'
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
  use 'voldikss/vim-floaterm'

  -- utilities
  use 'vim-utils/vim-man'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'onsails/lspkind-nvim'
  use 'MunifTanjim/prettier.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use({"goolord/alpha-nvim"})
  use 'windwp/nvim-autopairs'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- themes
  use {
    'sainnhe/everforest',
    requires = {'tjdevries/colorbuddy.nvim'}
  }

end)

