vim.keymap.set('n', '<c-m>', vim.cmd.GitGutterSignsToggle)
vim.keymap.set("n", "<leader>gn", vim.cmd.GitGutterLineHighlightsToggle)
vim.g.gitgutter_added_sign = '+'
vim.g.gitgutter_modified_sign = '~'
vim.g.gitgutter_removed_sign = '-'
