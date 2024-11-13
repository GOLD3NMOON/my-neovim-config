return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
        },
        opts = function()
            local cmp = require('cmp')
            local luasnip = require('luasnip')

            return {
                snippet = {
                    expand = function(args) luasnip.lsp_expand(args.body) end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                }, {
                    {
                        name = 'buffer',
                        option = {
                            keyword_length = 5,
                            get_bufnrs = function()
                                local bufs = {}
                                for _, buf in ipairs(vim.api.nvim_list_bufs()) do
                                    if vim.api.nvim_buf_is_loaded(buf) and vim.bo[buf].filetype == vim.bo.filetype then
                                        table.insert(bufs, buf)
                                    end
                                end
                                return bufs
                            end
                        }
                    },
                    { name = 'path' },
                }),
                window = {
                    completion = cmp.config.window.bordered({
                        border = 'single',
                        winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None'
                    }),
                    documentation = cmp.config.window.bordered({
                        border = 'single',
                        winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None'
                    }),
                },
            }
        end,
    },
}

