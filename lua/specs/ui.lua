return {
  "nvim-lua/plenary.nvim",
  {
    "nvchad/volt",
    lazy = true
  },
  {
    "nvim-telescope/telescope.nvim",
    depedencies = {
      "nvim-treesitter/nvim-treesitter"
    },
    opts = function()
      return require('configs.telescope')
    end
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true
  },
  {
    "nvchad/ui",
    config = function()
      require "nvchad"
    end
  },
  {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    opts = function()
      return require('configs.treesitter')
    end,
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end
  },
}
