local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<Leader>u', 'u', opts)
map('n', '<Leader>r', '<C-r>', opts)
map('n', '<Leader>l', 'V', opts)

map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
