local map = vim.keymap.set
local opt = { noremap = true, silent = true }

map('n', '<leader>,', ':BufferPrevious<CR>', opt)
map('n', '<leader>.', ':BufferNext<CR>', opt)
map('n', '<leader>/', ':BufferClose<CR>', opt)




