augroup packer_user_config
  autocmd!
  autocmd BufWritePost ~/.config/nvim/lua/user/plugins/init.lua source <afile> | PackerSync
augroup end
