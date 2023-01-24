local status_ok, trouble = pcall(require, 'trouble')

if not status_ok then
  return
end

local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
keymap("n", "<leader>aw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
keymap("n", "<leader>al", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
keymap("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", opts)
keymap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", opts)
keymap("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", opts)

trouble.setup({})
