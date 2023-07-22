local builtin = require('telescope.builtin')

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<c-p>', builtin.find_files, opts)
-- vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set("n", "<Space><Space>", ":Telescope frecency<CR>", opts)
vim.keymap.set('n', '<Space>fg', builtin.live_grep, opts)
vim.keymap.set('n', '<Space>fh', builtin.help_tags, opts)
