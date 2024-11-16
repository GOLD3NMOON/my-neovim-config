return {
    {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim"
        },
        opts = { lsp = { auto_attach = true } },
        config = function()
            local navbuddy = require("nvim-navbuddy")
            local actions = require("nvim-navbuddy.actions")
            navbuddy.setup({
                lsp = { auto_attach = true },
                mappings = {
                    ["<esc>"] = actions.close(),
                    ["q"] = actions.close(),
		    ["<Up>"] = actions.previous_sibling(),
                    ["<Down>"] = actions.next_sibling(),
                    ["<Left>"] = actions.parent(),
                    ["<Right>"] = actions.children(),
                },
            })
        end
    },
}
