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
  use 'wbthomason/packer.nvim'              -- package manager
  use 'ellisonleao/gruvbox.nvim'            -- theme
  use {
    'preservim/nerdtree',                   -- tree explorer
    requires = {
      'Xuyuanp/nerdtree-git-plugin',        -- tree explorer git status
      --'ryanoasis/vim-devicons'
    }
  }
  use 'airblade/vim-gitgutter'
  use 'nvim-lualine/lualine.nvim'           -- vim bar indicator
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'tpope/vim-fugitive'                  -- git
  use 'wakatime/vim-wakatime'               -- monitoring coding time
  use 'jiangmiao/auto-pairs'                -- auto pairs bracket
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'andweeb/presence.nvim'   -- discord presence
  use 'ap/vim-buftabline'  --buffer navigation
  if packer_bootstrap then
    require('packer').sync()
  end
end)

