vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'folke/tokyonight.nvim'

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('theprimeagen/harpoon')

	use('mbbill/undotree')
	use('tpope/vim-fugitive')

    use('ap/vim-css-color')

    use({
        "zbirenbaum/copilot.lua",
        config = function()
            require("copilot").setup({
                suggestion = { enabled = false },
                panel = { enabled = false },
            })
        end,
    })

    use({
      "zbirenbaum/copilot-cmp",
      after = { "copilot.lua" },
      config = function ()
        require("copilot_cmp").setup({
            formatters = {
                label = require("copilot_cmp.format").format_label_text,
                insert_text = require("copilot_cmp.format").format_insert_text,
                preview = require("copilot_cmp.format").deindent,
            },
        })
      end
    })

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
	    {'hrsh7th/cmp-buffer'},     -- Added
	    {'hrsh7th/cmp-path'},     -- Added
	    {'hrsh7th/cmp-nvim-lsp'}, -- Required
	    {'L3MON4D3/LuaSnip'},     -- Required
	  }
	}
end)
