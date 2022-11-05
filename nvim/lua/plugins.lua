-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

-- Only required if you have packer configured as `opt`
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Commonly used 
  use 'nvim-lua/plenary.nvim'
  -- Fancy status line
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- Highlight, edit, and navigate code
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
--      run = function() TSupdate end,
  }
  -- Fuzzy finder
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} },
    requires = { {'nvim-treesitter/nvim-treesitter'} }
  }

  -- Git
  use("airblade/vim-gitgutter")
  use("tpope/vim-fugitive")

  -- LSP
   use("neovim/nvim-lspconfig")
   use 'williamboman/mason.nvim'                                                        -- Manage external editor tooling i.e LSP servers
   use 'williamboman/mason-lspconfig.nvim'                                              -- Automatically install language servers to stdpath
   use { 'hrsh7th/nvim-cmp', requires = { 'hrsh7th/cmp-nvim-lsp' } }  
  -- TODO 
  -- use("hrsh7th/cmp-nvim-lsp")
  -- use("hrsh7th/cmp-buffer")
  -- use("hrsh7th/nvim-cmp")
  -- use 'jceb/vim-orgmode'
  -- use junegunn/goyo.vim'
  
  -- Colors
  use 'Shatur/neovim-ayu'
  use 'folke/tokyonight.nvim'
  use 'olivercederborg/poimandres.nvim'
--  config = function()
--      require('poimandres').setup{
--        -- leave this setup function empty for default config
--        -- or refer to the configuration section
--        -- for configuration options
--      }
--  end
--  use 'NTBBloodbath/doom-one.nvim'
--  use 'rafamadriz/neon'
--  use 'yonlu/omni.vim'
--  use 'rktjmp/lush.nvim'
--  use 'EdenEast/nightfox.nvim'
--  use 'rose-pine/neovim'
--  use 'catppuccin/nvim'
end)
