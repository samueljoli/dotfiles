return require('user.plugins.packer.setup').startup(function(use)

  use 'wbthomason/packer.nvim' -- Have packer manage itself
  use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
  use 'nvim-lua/plenary.nvim' -- Useful lua functions used in lots of plugins
  use 'ellisonleao/gruvbox.nvim' -- gruvbox color scheme
  use 'thedenisnikulin/vim-cyberpunk' -- cyberpunk theme
  use { 'kartikp10/noctis.nvim', requires = { 'rktjmp/lush.nvim' } }
  use 'nvim-tree/nvim-web-devicons'
  use { 'ibhagwan/fzf-lua', -- Fuzzy finder
    -- optional for icon support
    requires = { 'nvim-tree/nvim-web-devicons' }
  }
  use {
    'nvim-lualine/lualine.nvim', -- statusline
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'akinsho/bufferline.nvim', -- bufferline
    tag = "v3.*",
    requires = 'nvim-tree/nvim-web-devicons'
  }
  use 'moll/vim-bbye' -- better buffer delete
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-buffer' }, -- Optional
      { 'hrsh7th/cmp-path' }, -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' }, -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' }, -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }
  use 'natecraddock/workspaces.nvim' --  workspaces
  use 'windwp/nvim-projectconfig' -- project specific config files
  use 'tpope/vim-fugitive' -- git
  use 'tpope/vim-surround'
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
    'nvim-tree/nvim-tree.lua', -- File Explorer
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'MunifTanjim/nui.nvim' -- UI component lib for neovim
  use 'rcarriga/nvim-notify'
  use({
    "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  })
  use 'stevearc/dressing.nvim'
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use 'natecraddock/sessions.nvim'
  use 'folke/todo-comments.nvim'
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
  }
  use 'goolord/alpha-nvim'
  use 'airblade/vim-gitgutter'
  use {
    'knubie/vim-kitty-navigator',
    run = 'cp ./*.py ~/.config/kitty/'
  }
  use "lukas-reineke/indent-blankline.nvim"
  use "samueljoli/vim-test"

  if PACKER_BOOTSTRAP then -- Automatically set up your configuration after cloning packer.nvim
    require("packer").sync()
  end
end)
