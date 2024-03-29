return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "windwp/nvim-ts-autotag", "JoosepAlviste/nvim-ts-context-commentstring" },
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"lua", "vim"
		},
    highlight = {
      enable = true,
      disable = function(_, bufnr) return vim.api.nvim_buf_line_count(bufnr) > 10000 end,
    },
    incremental_selection = { enable = true },
    indent = { enable = true },
    autotag = { enable = true },
    context_commentstring = { enable = true, enable_autocmd = false },
	},

	config = function(_,opts) require("nvim-treesitter.configs").setup(opts) end
}
