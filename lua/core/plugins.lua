-- plugin manager
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- package manager
  use 'wbthomason/packer.nvim'

  -- theme
  use 'nvim-tree/nvim-web-devicons' -- theme
  use "folke/tokyonight.nvim" -- theme
  use 'ellisonleao/gruvbox.nvim' -- theme
  use 'EdenEast/nightfox.nvim' -- theme
  use 'sainnhe/everforest' -- theme
  use 'lewis6991/gitsigns.nvim' -- For git status with barbar

  -- plugin 
  use 'nvim-tree/nvim-tree.lua' -- side bar

  use 'nvim-lualine/lualine.nvim' -- bottom bar
  use 'nvim-treesitter/nvim-treesitter' -- finder

  use "petertriho/nvim-scrollbar" -- scroll

  use 'terrortylor/nvim-comment' -- comment out

  use 'romgrk/barbar.nvim' -- tab

  use 'RRethy/vim-illuminate' -- highlight the word the cursor

  -- highlight arguments
  use {
    'm-demare/hlargs.nvim',
    config = function() require("hlargs").setup() end

  }

  -- auto pairs
  use { -- parenthesis
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use { -- html
    "windwp/nvim-ts-autotag",
    config = function () require('nvim-ts-autotag').setup() end
  }


  -- notification
  use{
    "folke/noice.nvim",
    'rcarriga/nvim-notify',
    'MunifTanjim/nui.nvim'
  }

  -- cmp
  use {
    "hrsh7th/nvim-cmp", -- main
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    'hrsh7th/cmp-calc'
  }
  -- snippets
  use {
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets"
  }

  -- Managing & installing LSP servers
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- Configuraring lsp servers
  use {
    'hrsh7th/cmp-nvim-lsp',
    'jose-elias-alvarez/typescript.nvim',
    'onsails/lspkind.nvim'
  }

  -- chowcho
  use {'tkmpypy/chowcho.nvim'}

  -- toggle term
  use {
    "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
    end
  }

  -- hop
  use {
    'phaazon/hop.nvim',
    branch = 'v2',
    config = function()
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require"telescope".load_extension("frecency")
    end,
    requires = {"kkharji/sqlite.lua"}
  }

  -- dashboard / startup
  use "nvim-lua/plenary.nvim" -- dependency for dashboard
  use {
    "startup-nvim/startup.nvim",
    requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = function()
      require"startup".setup()
    end
  }

  --------------------------------------------------------
  if packer_bootstrap then
    require('packer').sync()
  end
end)
