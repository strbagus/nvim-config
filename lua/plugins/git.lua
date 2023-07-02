return {
  {
    "lewis6991/gitsigns.nvim",
    dependencies = {
      'Xuyuanp/nerdtree-git-plugin'
    },
    enabled = vim.fn.executable "git" == 1,
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
        signcolumn = true,
        numhl = true,
    },
    config = function(_, opts)
      require('gitsigns').setup(opts)
    end
  }
}
