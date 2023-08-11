vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.nvim_tree_auto_open = 1

require("nvim-tree").setup()

require("nvim-tree").setup{
  view = {
    width = 40
  }
}


vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<c-m>', ':NvimTreeFocus<CR>', {noremap = true, silent = true})
