-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }


    -- Color Scheme
    use 'EdenEast/nightfox.nvim'

    -- Treesitter
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'nvim-treesitter/playground'

    -- Harpoon
    use 'ThePrimeagen/harpoon'

    -- Undrotree
    use 'mbbill/undotree'

    -- LazyGit
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- Support
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletition
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},

            -- Snipets
            {'L3MON4D3/LuaSnip'},
        }
    }

    -- 42 header
    use {
        "Diogo-ss/42-header.nvim",
        cmd = { "Stdheader" },
        config = function()
            require "42header"setup {
                default_map = true, -- Default mapping <F1> in normal mode.
                auto_update = true, -- Update header when saving.
                user = "crizapat", -- Your user.
                mail = "crizapat@student.42madrid.com", -- Your mail.
            }
        end,

    }

    -- Wich Key
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
end)
