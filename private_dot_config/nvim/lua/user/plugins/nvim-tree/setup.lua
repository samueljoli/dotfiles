-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1

vim.g.loaded_netrwPlugin = 1

vim.api.nvim_set_keymap(
  "n",
  "<leader>e",
  ":NvimTreeToggle<cr>",
  {
    noremap = true,
    silent = true
  }
)

require("nvim-tree").setup({
  sort_by = 'case_insensitive',
  actions = {
    open_file = { quit_on_open = true } -- quite file explorer when opening file
  },
  update_focused_file = {
    enable = true,
    update_root = true
  },
  filters = {
    dotfiles = true
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    debounce_delay = 50
  }
})
