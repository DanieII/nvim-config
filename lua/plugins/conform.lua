return {
    'stevearc/conform.nvim',
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        formatters_by_ft = {
            javascript = { "prettier" },
            javascriptreact = { "prettier" },
            typescript = { "prettier" },
            typescriptreact = { "prettier" },
            python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
            astro = { "prettier" },
            css = { "prettier" },
            scss = { "prettier" },
        },
        format_on_save = {
            timeout_ms = 2500,
            lsp_format = "fallback"
        }
    },
}
