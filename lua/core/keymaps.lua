-- keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = false
vim.opt.autoread = true
vim.opt.autoindent = true
vim.opt.smartindent = true


vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.number = true


local keymap = vim.keymap
local opt = {noremap = true, silent = true}

keymap.set('n', '<leader>n', ':nohlsearch<CR>', opt)

-- jk to edit
keymap.set('i', 'jk', '<ESC>', opt)

-- <space>\ to quit
keymap.set('n', '<leader>\\', ":q<CR>" ,opt)
