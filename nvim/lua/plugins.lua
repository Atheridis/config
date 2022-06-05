return require('packer').startup(function()

        -- Jinja support
        use 'lepture/vim-jinja'

        -- Auto pairs for quotes and brackets
        use 'jiangmiao/auto-pairs'

        -- Startify
        use 'mhinz/vim-startify'

        -- Show Hex Colors
        use 'norcalli/nvim-colorizer.lua'

        -- coc
        use {
                'neoclide/coc.nvim',
                branch = 'release'
        }

        use 'sheerun/vim-polyglot'

        -- Theme
        use {
            'pineapplegiant/spaceduck',
            branch = 'main'
        }

        use 'folke/tokyonight.nvim'

        -- Lualine
        use {
            'nvim-lualine/lualine.nvim',
            requires = {'kyazdani42/nvim-web-devicons', opt = true}
        }

        -- Barbar
        use {
            'romgrk/barbar.nvim',
            requires = {'kyazdani42/nvim-web-devicons'}
        }

        -- Nvim-tree
        use {
            'kyazdani42/nvim-tree.lua',
            requires = 'kyazdani42/nvim-web-devicons',
            config = function() require'nvim-tree'.setup {} end
        }

        -- Vim-wiki
        use {
            'vimwiki/vimwiki'
        }

        -- Vim-floaterm
        use {
            'voldikss/vim-floaterm'
        }

        -- vim-surround
        use {
            'tpope/vim-surround'
        }
        
        -- quick-scope
        use {
            'unblevable/quick-scope'
        }

        -- vim-sneak
        use {
            'justinmk/vim-sneak'
        }

        -- vim-commentary
        use {
            'tpope/vim-commentary'
        }

        -- codi
        use {
            'metakirby5/codi.vim'
        }

        -- markdown-preview
        use {
            'iamcco/markdown-preview.nvim'
        }

        -- vim-signify
        use {
            'mhinz/vim-signify'
        }

end)
