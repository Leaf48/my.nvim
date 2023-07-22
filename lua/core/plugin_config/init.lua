-- load all plugins config

-- themes
-- require('core.plugin_config.themes.gruvbox')
require('core.plugin_config.themes.nightfox')

-- ui
require('core.plugin_config.ui.lualine')
require('core.plugin_config.ui.nvim-tree')
require('core.plugin_config.ui.scroll-bar')
require('core.plugin_config.ui.noice')

-- lsp / cmp
require('core.plugin_config.lsp.cmp')
require('core.plugin_config.lsp.mason')

-- 
require('core.plugin_config.telescope')
require('core.plugin_config.treesitter')
require('core.plugin_config.toggle-term')
require('core.plugin_config.hop')
require('core.plugin_config.register')
require('core.plugin_config.chowcho')
require('core.plugin_config.comment')


require('core.plugin_config.lsp.lspconfig')
