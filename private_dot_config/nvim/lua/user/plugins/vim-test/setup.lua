local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<leader>T", ":TestFile<CR>", opts)
