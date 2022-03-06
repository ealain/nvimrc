-- Load settings from VIM
vim.cmd('source ~/.vimrc')

-- Manage plugins with packer.nvim.
--   1. Install packer.nvim:
--   https://github.com/wbthomason/packer.nvim/blob/c576ab3f1488ee86d60fd340d01ade08dcabd256/README.md#quickstart
--   2. Run :PackerSync
require('packer').startup(function()

  -- Collection of configurations for the built-in LSP client
  use 'neovim/nvim-lspconfig'

  -- Utility to install LSP servers
  use 'williamboman/nvim-lsp-installer'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Theme
  use 'sainnhe/sonokai'

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
  }
end)


require('treesitter')

require('lsp')

require('gitsigns').setup()

vim.cmd('colorscheme sonokai')
