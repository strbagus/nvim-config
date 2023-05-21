vim.g.mapleader = ' '
vim.g.maplocalleader  = ' '

vim.o.encoding = "UTF-8"
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.number = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true

vim.opt.expandtab = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.wrap = true

vim.opt.scrolloff=10
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<C-j>", "mzJ`z")
vim.keymap.set("x", "p", "\"_dP")
vim.keymap.set("n", "K", ":bnext <CR>")
vim.keymap.set("n", "J", ":bprev <CR>")
vim.cmd "set clipboard=unnamedplus"
vim.cmd "set relativenumber"

-- remapping c-k & c-j & reserved for cmp mapping
local bufnr = vim.api.nvim_get_current_buf()
vim.api.nvim_buf_set_keymap(bufnr, 'i', '<C-j>', ':<C-u><Esc>', { noremap = true, silent = true })
vim.api.nvim_buf_set_keymap(bufnr, 'i', '<C-k>', ':<C-u><Esc>', { noremap = true, silent = true })
