return {
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = { "williamboman/mason.nvim" },
        opts = {
            ensure_installed = {
                "astro-language-server",
                "basedpyright",
                "css-lsp",
                "emmet-language-server",
                "html-lsp",
                "intelephense",
                "lua-language-server",
                "prettier",
                "ruff",
                "tailwindcss-language-server",
                "typescript-language-server",
            },
            run_on_start = true,
        },
    },
}
