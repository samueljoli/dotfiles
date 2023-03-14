local lsp = require('lsp-zero')

local cmp = require('cmp')

lsp.preset('per-project')

lsp.set_preferences({
  suggest_lsp_servers = true,
})

lsp.skip_server_setup({'rust_analyzer'})

-- Fix Undefined global 'vim'
lsp.configure('sumneko_lua', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

-- Mappings
local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local luasnip = require("luasnip")

lsp.setup_nvim_cmp({
  mapping = lsp.defaults.cmp_mappings({
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
        -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
        -- they way you will only jump inside the snippet region
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  })
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr }
  local bind = vim.keymap.set

  bind('n', 'rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
end)

-- vim.cmd [[:autocmd BufWritePost * LspZeroFormat]] -- Format on save

lsp.setup()

local rust_lsp = lsp.build_options('rust_analyzer', {
  single_file_support = false,
  settings = {
    ["rust-analyzer"] = {
      assist = {
          importEnforceGranularity = true,
          importPrefix = 'crate',
      },
      cargo = {
          allFeatures = true,
      },
      checkOnSave = {
          command = 'clippy',
      },
      inlayHints = { locationLinks = false },
      diagnostics = {
          enable = true,
          experimental = {
              enable = true,
          },
      },
    }
  }
})

require('rust-tools').setup({server = rust_lsp})
