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
		event = "User FilePost",
		config = function()
			return require('configs.lspconfig')
		end
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {}
	},
}
