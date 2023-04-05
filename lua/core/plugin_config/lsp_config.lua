local lsp = require('lsp-zero').preset({})

lsp.ensure_installed({
  'tsserver',
  'eslint',
})

lsp.on_attach(function(client, bufnr)
  --lsp.default_keymaps({buffer = bufnr})
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set('n', '<leader>vvr', function() vim.lsp.buf.references() end, opts)
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
