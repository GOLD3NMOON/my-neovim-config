return {
	keymap = {
    preset = 'default',
    -- ['<CR>'] = function(cmp)
    --       if cmp.is_menu_visible() and cmp.get_selected_entry() then
    --         return { 'accept' }
    --       else
    --         return { vim.api.nvim_replace_termcodes('<CR>', true, true, true) }
    --       end
    --     end,
  },
  completion = {
		keyword = { range = 'full' },
		accept = {
			auto_brackets = { enabled = false },
		},
		list = {
			selection = {
				preselect = false,
				auto_insert = true
			}
		},
		menu = {
			auto_show = true,
			draw = {
				columns = {
					{ "label", "label_description", gap = 1 },
					{ "kind_icon", "kind" }
				}
			},
		},
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 500
		}

	},
	sources = {
		default = { 'lsp', 'path', 'snippets', 'buffer' },
	},
	signature = { enabled = true }
}
