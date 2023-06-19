return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'

  -- Using Packer
  use 'navarasu/onedark.nvim'
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nvim-tree/nvim-web-devicons'
  -- Lualine
  use {
    'hoob3rt/lualine.nvim',
    requires = {'nvim-tree/nvim-web-devicons', opt = true}
  }
  -- using packer.nvim
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'nvim-tree/nvim-web-devicons'}
  -- Autotag
  use 'windwp/nvim-ts-autotag'
  -- Autopairs
  use 'windwp/nvim-autopairs'
  --Whichkey
  use {"folke/which-key.nvim"}
 
  -- Git
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'lewis6991/gitsigns.nvim'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Quickscope
  use 'unblevable/quick-scope'
  -- use 'vimwiki/vimwiki'
  -- use 'tbabej/taskwiki'
  use 'plasticboy/vim-markdown'

  -- Commenting
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- vim-visual-multi
  -- use 'mg979/vim-visual-multi'
  
  --Completion / LSP
  use {'hrsh7th/nvim-cmp'}
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use 'jose-elias-alvarez/null-ls.nvim'

  --vsnip
  -- use 'hrsh7th/cmp-vsnip'
  -- use 'hrsh7th/vim-vsnip'
  -- use 'hrsh7th/vim-vsnip-integ'
  use ({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
  use { 'saadparwaiz1/cmp_luasnip' }
  use "rafamadriz/friendly-snippets"

  use 'tpope/vim-surround'
  -- Color color codes
  use 'norcalli/nvim-colorizer.lua'

  --NvimTree
  -- use 'kyazdani42/nvim-tree.lua'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }
  --nvim-dap
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'theHamsta/nvim-dap-virtual-text'
  

end)

