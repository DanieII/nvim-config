return {
    'saghen/blink.cmp',
    version = '1.*',
    dependencies = { 'L3MON4D3/LuaSnip', version = 'v2.*' },
    opts = {
        snippets = { preset = 'luasnip' },
        keymap = {
            preset = 'enter',
            ['<S-Tab>'] = { 'select_prev', 'fallback' },
            ['<Tab>'] = { 'select_next', 'fallback' },
            ["<A-Space>"] = { "show" }
        },
        appearance = {
            nerd_font_variant = 'normal'
        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        enabled = function() return not vim.tbl_contains({ "copilot-chat" }, vim.bo.filetype) end,
        menu = {
            border = "single",
            draw = {
                columns = {
                    { "label",            gap = 10 },
                    { "kind_icon",        gap = 1 },
                    { "kind" },
                    { "label_description" },
                },

                gap = 1,
                treesitter = { "lsp" },
            },
        },
    },
    opts_extend = { "sources.default" }
}
