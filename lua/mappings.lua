local map = vim.keymap.set

map('n', ';', ':', { desc = 'Cmd command mode' } )
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Explorer' } )
