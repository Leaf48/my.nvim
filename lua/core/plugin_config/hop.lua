require('hop').setup()
vim.keymap.set('n', 'f', ':HopChar1<CR>', {noremap = true, silent = true})
vim.keymap.set('n', 'F', ':HopWord<CR>', {noremap = true, silent = true})
