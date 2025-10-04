return {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = {
        "typescript",
        "typescriptreact",
        "typescript.tsx",
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "astro",
    },
    root_markers = { "package.json", "tsconfig.json" },
    init_options = {
        provideFormatter = false,
    },
}
