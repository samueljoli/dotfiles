local status_ok, hop = pcall(require, 'hop')

if not status_ok then
  return
end

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', 't', ":HopWord<cr>", opts)
vim.api.nvim_set_keymap('n', 'T', ":HopChar1<cr>", opts)

hop.setup()
