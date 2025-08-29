return {
	{
		"nvim-tree/nvim-tree.lua",
		opts = require('configs.nvim-tree')
	},
	{
		"mason-org/mason.nvim",
		opts = function()
			return require('configs.mason')
		end
	}
}
