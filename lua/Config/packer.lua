-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Theme
    --[[use({ 'catppuccin/nvim',
    as = 'catppuccin',
    config = function()
        vim.cmd('colorscheme catppuccin')
    end}) ]]--

    use("folke/tokyonight.nvim")
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('laytan/cloak.nvim')
    use("petertriho/nvim-scrollbar")
    use('nvim-treesitter/nvim-treesitter', {run = ':tsupdate'})
    use('nvim-treesitter/playground')
    use('tpope/vim-fugitive')

    --MASON + LSP
    use {
        "williamboman/mason.nvim"
    }
    use{
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
end)
