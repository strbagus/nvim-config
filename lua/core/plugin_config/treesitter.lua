require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "javascript", "php", "vim" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}

