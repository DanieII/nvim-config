vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "astro", "css", "html", "javascript", "javascriptreact", "json", "jsonc", "scss", "typescript", "typescriptreact", "yaml" },
    callback = function()
        vim.bo.expandtab = true
        vim.bo.tabstop = 2
        vim.bo.softtabstop = 2
        vim.bo.shiftwidth = 2
    end,
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = event.buf })
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = event.buf })
        vim.keymap.set("n", "grr", vim.lsp.buf.references, { buffer = event.buf })
        vim.keymap.set("n", "gri", vim.lsp.buf.implementation, { buffer = event.buf })
        vim.keymap.set("n", "grt", vim.lsp.buf.type_definition, { buffer = event.buf })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = event.buf })
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = event.buf })
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = event.buf })
        vim.keymap.set("n", "<leader>ds", vim.lsp.buf.document_symbol, { buffer = event.buf })
        vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, { buffer = event.buf })
        vim.keymap.set("n", "<leader>lj", vim.diagnostic.goto_next, { buffer = event.buf })
        vim.keymap.set("n", "<leader>lk", vim.diagnostic.goto_prev, { buffer = event.buf })
    end
})

vim.api.nvim_create_autocmd('User', {
    pattern = 'BlinkCmpMenuOpen',
    callback = function()
        require("copilot.suggestion").dismiss()
        vim.b.copilot_suggestion_hidden = true
    end,
})

vim.api.nvim_create_autocmd('User', {
    pattern = 'BlinkCmpMenuClose',
    callback = function()
        vim.b.copilot_suggestion_hidden = false
    end,
})
