vim.lsp.enable({
    "lua_ls",
    "ts_ls",
    "basedpyright",
    "html",
    "cssls",
    "tailwindcss",
    "emmet_language_server",
})

vim.diagnostic.config({
    virtual_text = true,
    update_in_insert = false,
    severity_sort = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
    },
})
