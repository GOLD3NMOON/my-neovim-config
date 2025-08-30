return {
  {
    "nvzone/menu",
    lazy = true,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = { char = "│", highlight = "IblChar" },
      scope = { char = "│", highlight = "IblScopeChar" }
    },
    config = function(_, opts)
      dofile(vim.g.base46_cache .. 'blankline')
      local hooks = require 'ibl.hooks'
      hooks.register(
        hooks.type.WHITESPACE,
        hooks.builtin.hide_first_space_indent_level
      )
      require('ibl').setup(opts)
      dofile(vim.g.base46_cache .. 'blankline')
    end
  },
  {
    "windwp/nvim-autopairs",
    opts = {
      fast_wrap = {},
      disable_filetype = { "TelescopePrompt", "vim" },
    },
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
    },
  },
}
