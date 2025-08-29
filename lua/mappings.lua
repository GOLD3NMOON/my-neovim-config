local map = vim.keymap.set

map('n', ';', ':', { desc = 'Cmd command mode' })
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Explorer' })

map("n", "<leader>.", function()
  require("menu").open("default")
end, { desc = 'Open context menu' })

map({ "n", "v" }, "<RightMouse>", function()
  require('menu.utils').delete_old_menus()

  vim.cmd.exec '"normal! \\<RightMouse>"'

  local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
  local options = vim.bo[buf].ft == "NvimTree" and "nvimtree" or "default"

  require("menu").open(options, { mouse = true })
end, { desc = 'Open context menu' })

map("t", "<ESC>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

map("n", "<leader>j", function()
  require("nvchad.term").toggle { pos = "sp" }
end, { desc = "Toggle terminal" })

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Telescope find files" })

map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
