local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

require("fzf-lua").setup({
  files = {
    find_opts = [[-type f -not -path '*/\.git/*']] -- options: [ ignore .git directory ]
  }
})

keymap("n", "<leader>f", ":FzfLua files<cr>", opts) -- open file search

keymap("n", "<leader>ag", ":FzfLua grep_cword<cr>", opts) -- search for current word under cursor
