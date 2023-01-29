local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local function footer()
  local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))
  local datetime = os.date("  %m-%d-%Y   %H:%M:%S")
  local version = vim.version()
  local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch
  return datetime .. "   Plugins " .. plugins_count .. nvim_version_info
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
  [[                                                 ]],
  [[                                                 ]],
  [[                                                 ]],
  [[                                                 ]],
  [[                                                 ]],
  [[                                                 ]],
  [[                                                 ]],
  [[                                                 ]],
  [[                                                 ]],
  [[                                                 ]],
  [[                                                 ]],
  [[                                                 ]],
  [[                               __                ]],
  [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
  [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
  [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
  [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
  [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
  [[                                                 ]],
  [[                                                 ]],
  [[                                                 ]],
  [[                                                 ]],
}
dashboard.section.buttons.val = {
  dashboard.button("w", "  Find Workspace", ":WorkspacesOpen<CR>"),
  -- dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
  -- dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  -- dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
  -- dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
  -- dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

-- local function footer()
--   -- NOTE: requires the fortune-mod package to work
--   -- local handle = io.popen("fortune")
--   -- local fortune = handle:read("*a")
--   -- handle:close()
--   -- return fortune
--   return "chrisatmachine.com"
-- end

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
