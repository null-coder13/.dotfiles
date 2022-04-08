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
  -- Lualine
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- using packer.nvim
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
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
  use 'vimwiki/vimwiki'
  use 'tbabej/taskwiki'
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
  use {'neovim/nvim-lspconfig' }
  use "williamboman/nvim-lsp-installer"
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use 'jose-elias-alvarez/null-ls.nvim'

  --vsnip
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'tpope/vim-surround'
  -- Color color codes
  use 'norcalli/nvim-colorizer.lua'

  --NvimTree
  use 'kyazdani42/nvim-tree.lua'
  

end)

