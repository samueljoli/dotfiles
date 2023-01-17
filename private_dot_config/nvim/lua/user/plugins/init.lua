require('user.plugins.gruvbox.setup')

require('user.plugins.fzf.setup')

require('user.plugins.lualine.setup')

require('user.plugins.bufferline.setup')

require('user.plugins.bbye.setup')

require('user.plugins.workspaces.setup')

require('user.plugins.projectconfig.setup')

require('user.plugins.lsp_zero.setup')

return require('user.plugins.packer.setup').startup(function(use)

  use 'wbthomason/packer.nvim'       -- Have packer manage itself
  use 'nvim-lua/popup.nvim'          -- An implementation of the Popup API from vim in Neovim
  use 'nvim-lua/plenary.nvim'        -- Useful lua functions used in lots of plugins
  use 'ellisonleao/gruvbox.nvim'     -- gruvebox color scheme
  use { 'ibhagwan/fzf-lua',          -- Fuzzy finder
      -- optional for icon support
      requires = { 'nvim-tree/nvim-web-devicons' }
  }
  use {
      'nvim-lualine/lualine.nvim',   -- statusline
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
      'akinsho/bufferline.nvim',     -- bufferline
      tag = "v3.*",
      requires = 'nvim-tree/nvim-web-devicons'
  }
  use 'moll/vim-bbye'                -- better buffer delete
  use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},         -- Required
        {'hrsh7th/cmp-nvim-lsp'},     -- Required
        {'hrsh7th/cmp-buffer'},       -- Optional
        {'hrsh7th/cmp-path'},         -- Optional
        {'saadparwaiz1/cmp_luasnip'}, -- Optional
        {'hrsh7th/cmp-nvim-lua'},     -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},             -- Required
        {'rafamadriz/friendly-snippets'}, -- Optional
      }
  }
  use 'natecraddock/workspaces.nvim'   --  workspaces
  use 'windwp/nvim-projectconfig'      -- project specific config files

  if PACKER_BOOTSTRAP then           -- Automatically set up your configuration after cloning packer.nvim
    require("packer").sync()
  end
end)
