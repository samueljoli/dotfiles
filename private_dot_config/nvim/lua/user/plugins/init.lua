require('user.plugins.gruvbox.setup')

return require('user.plugins.packer.setup').startup(function(use)

  use "wbthomason/packer.nvim"   -- Have packer manage itself
  use "nvim-lua/popup.nvim"      -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"    -- Useful lua functions used in lots of plugins
  use "ellisonleao/gruvbox.nvim" -- gruvebox color scheme

  if PACKER_BOOTSTRAP then       -- Automatically set up your configuration after cloning packer.nvim
    require("packer").sync()
  end
end)
