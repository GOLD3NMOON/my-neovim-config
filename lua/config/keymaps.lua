local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<Leader>u', 'u', opts)
map('n', '<Leader>r', '<C-r>', opts)
map('n', '<Leader>l', 'V', opts)

map('n', '<Leader>f', '<cmd>lua require("telescope.builtin").find_files()<CR>', opts)
map('n', '<Leader>n', '<cmd>Navbuddy<CR>', opts)
map('n', ':', '<cmd>FineCmdline<CR>', opts)
map('n', '<Leader>J', '<cmd>ToggleTerm<CR>', opts)

map('n', '<Leader>e', '<cmd>Neotree toggle<CR>', opts )
