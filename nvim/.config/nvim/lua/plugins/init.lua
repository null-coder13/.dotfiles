return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
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
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  -- Quickscope
  use 'unblevable/quick-scope'
  use 'vimwiki/vimwiki'
  use 'tbabej/taskwiki'
  use 'plasticboy/vim-markdown'

  -- Commenting
  -- https://github.com/terrortylor/nvim-comment
  -- vim-visual-multi
  -- use 'mg979/vim-visual-multi'
  
  --Completion / LSP
  use {'neovim/nvim-lspconfig' }
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/nvim-cmp'}
  --vsnip
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'tpope/vim-surround'
  -- Color color codes
  use 'norcalli/nvim-colorizer.lua'
  

end)

