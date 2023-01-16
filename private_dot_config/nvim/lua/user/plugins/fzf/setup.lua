local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

require("fzf-lua").setup({
  files = {
    find_opts = [[-type f -not -path '*/\.git/*']] -- options: [ ignore .git directory ]
  }
})

keymap("n", "<leader>f", ":FzfLua files<cr>", opts)
