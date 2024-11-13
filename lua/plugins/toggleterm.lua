return {
    'akinsho/toggleterm.nvim',
    opts = {
        size = 20,
	open_mapping = [[<Leader>j]],
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        direction = 'float',
        close_on_exit = true,
        shell = vim.o.shell,
    }
}

