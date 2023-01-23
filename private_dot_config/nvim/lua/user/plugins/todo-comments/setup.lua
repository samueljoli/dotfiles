local status_ok, todo = pcall(require, 'todo-comments')

if not status_ok then
  return
end

local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>tt", "<cmd>TodoTrouble<cr>", opts)
keymap("n", "<leader>tx", "<cmd>TodoQuickFix<cr>", opts)

todo.setup({})
