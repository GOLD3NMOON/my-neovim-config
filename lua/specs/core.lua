return {
	{
		"nvim-tree/nvim-tree.lua",
		opts = function()
			require('configs.nvim-tree')
		end
	},
	{
		"mason-org/mason.nvim",
		opts = function()
			return require('configs.mason')
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			return require('configs.lspconfig')
		end
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
	},
	{
		"saghen/blink.cmp",
		version = '1.*',
		depedencies = { 'rafamadriz/friendly-snippets' },
		opts = function()
			return require('configs.blink-cmp')
		end
	},
	{
		"stevearc/conform.nvim",
		opts = {}
	}
}
