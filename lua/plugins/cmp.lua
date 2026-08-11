return {
    'saghen/blink.cmp',
    version = '1.*',
    dependencies = {
        { 'L3MON4D3/LuaSnip', version = 'v2.*' },
    },
    opts = {
        snippets = { preset = 'luasnip' },
        keymap = {
            preset = 'enter',
            ['<S-Tab>'] = { 'select_prev', 'fallback' },
            ['<Tab>'] = { 'select_next', 'fallback' },
            ["<M-Space>"] = { "show" }
        },
        appearance = {
            nerd_font_variant = 'normal'
        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
    },
    opts_extend = { "sources.default" }
}
