local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>w", ":WorkspacesOpen<cr>", opts)

require("workspaces").setup({
  hooks = {
    open_pre = {
      "SessionsStop",
      "silent %bdelete!",
    },
    open = function()
      require('nvim-projectconfig').load_project_config() -- load project specific config

      require("sessions").load(nil, { silent = true }) -- load project specific sessions

      -- require('fzf-lua').files() -- load fzf
    end,
  }
})
