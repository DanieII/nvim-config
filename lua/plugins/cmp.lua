return {
    'saghen/blink.cmp',
    version = '1.*',
    dependencies = {
        { 'L3MON4D3/LuaSnip', version = 'v2.*' },
        'Kaiser-Yang/blink-cmp-avante',
    },
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
            default = { 'avante', 'lsp', 'path', 'snippets', 'buffer' },
            providers = {
                avante = {
                    module = 'blink-cmp-avante',
                    name = 'Avante',
                }
            }
        },
        enabled = function() return not vim.tbl_contains({ "AvanteInput", "AvantePromptInput" }, vim.bo.filetype) end,
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
