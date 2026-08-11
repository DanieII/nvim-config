return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
        main = "nvim-treesitter.configs",
        opts = {
            ensure_installed = {
                "astro",
                "bash",
                "css",
                "html",
                "javascript",
                "json",
                "jsonc",
                "lua",
                "markdown",
                "markdown_inline",
                "php",
                "python",
                "scss",
                "tsx",
                "typescript",
                "yaml",
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
            },
        },
    },
}
