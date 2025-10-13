vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format({
            async = false,
            filter = function(client) return client.name ~= "ts_ls" end
        })
    end,
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = event.buf })
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = event.buf })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = event.buf })
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = event.buf })
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = event.buf })
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
