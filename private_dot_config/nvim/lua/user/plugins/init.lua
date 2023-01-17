require('user.plugins.gruvbox.setup')

require('user.plugins.fzf.setup')

require('user.plugins.lualine.setup')

require('user.plugins.bufferline.setup')

require('user.plugins.bbye.setup')

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

  if PACKER_BOOTSTRAP then           -- Automatically set up your configuration after cloning packer.nvim
    require("packer").sync()
  end
end)
